# Viora — Memoria de arquitectura y decisiones del modelo C4

Fecha: 10 de septiembre de 2026. Estado: diseño arquitectónico elaborado para la solución móvil y su entorno de validación académica.

## 1. Propósito y criterio de lectura

Este documento explica las seis vistas elaboradas para Viora y las razones que sostienen sus límites, responsabilidades, tecnologías y conexiones. Está dirigido al equipo y a agentes que deban redactar otras secciones del reporte o convertir la arquitectura en implementación. Es autocontenido y no requiere consultar las imágenes para entender las decisiones.

La base de esta memoria es la sección Markdown y los seis diagramas entregados por el equipo, junto con las decisiones acordadas durante su elaboración. Se distingue entre **diseño adoptado**, **criterios de implementación derivados** y **aspectos pendientes de validación**. La presencia de una tecnología, algoritmo o conexión en C4 no demuestra que esté implementado, desplegado, probado o validado agronómicamente.

## 2. Problema y alcance que gobiernan la arquitectura

Viora aborda la mitigación de la vecería del olivo: la alternancia de producción entre campañas. La solución organiza información de parcelas, condiciones agroclimáticas, muestreos de campo, carga productiva, asesoramiento de aclareo, ejecución y cosechas. Conserva memoria histórica y permite a las cooperativas revisar riesgo, cobertura de muestreo y proyecciones de acopio.

La captura móvil aproxima el registro al trabajo de campo. El soporte de muestreo sin conexión responde a la conectividad intermitente; el backend común mantiene criterios agronómicos y de autorización consistentes para ambas aplicaciones.

El alcance actual no incluye el marketplace de especialistas, la gestión fitosanitaria como segundo problema, la integración SENASA ni el monitoreo satelital con AgroMonitoring del diseño Legacy. Tampoco presupone sensores físicos: Telemetry Simulator genera lecturas identificadas como sintéticas para nodos virtuales. Esas exclusiones impiden que una redacción posterior reincorpore funcionalidades antiguas solo porque aparezcan en documentos auxiliares.

## 3. Lectura correcta de C4 y de las seis vistas

| Vista elaborada | Pregunta que responde | Límite |
|---|---|---|
| System Context | ¿Quién utiliza Viora y con qué sistemas externos interactúa? | Viora como una unidad |
| Container | ¿Qué aplicaciones y almacenes componen Viora y cómo se comunican? | Ocho contenedores lógicos |
| Backend Components | ¿Cómo se organiza el interior del backend? | Un contenedor, doce componentes |
| Android Components | ¿Cómo se organiza el cliente Kotlin? | Un contenedor, quince componentes |
| Cross-platform Components | ¿Cómo se organiza el cliente Flutter? | Un contenedor, quince componentes |
| Deployment | ¿Dónde se ejecutan las instancias y cómo se distribuyen las versiones de prueba? | Entorno Academic Validation |

Los niveles de abstracción usados son Context, Container y Component. Deployment es una vista complementaria que ubica instancias en infraestructura; no es el nivel 4 oficial de C4, que corresponde a Code. El curso solicita Deployment y no se elaboró Code.

Un contenedor C4 puede ser una aplicación o un almacén de datos; no equivale necesariamente a Docker. Un componente agrupa una responsabilidad y puede contener múltiples clases, interfaces y adaptadores. No equivale automáticamente a una clase, pantalla, bounded context o servicio desplegable.

Se eligieron tres vistas de componentes porque concentran la complejidad funcional. Esto no afirma que la landing o el simulador carezcan de lógica. No se necesita expandir todos los contenedores para comprender las decisiones principales.

## 4. System Context: actores y servicios externos

| Actor | Papel en Viora | Consecuencia arquitectónica |
|---|---|---|
| Visitor | Consulta propuesta de valor, planes y acceso a descargas | Landing pública; no requiere entrar a operaciones de campo |
| Olive Producer | Administra parcelas, registra muestras/cosechas y consulta y ejecuta asesoramiento | Captura móvil, almacenamiento local y autorización por parcela |
| Cooperative Technical Manager | Gestiona miembros y revisa riesgo y acopio | Vistas orientadas a cooperativa y control de acceso territorial |

Productor y gestor pueden utilizar cualquiera de los clientes. Kotlin no está reservado a productores ni Flutter a gestores. La navegación depende del rol, pero la seguridad efectiva pertenece al servidor.

| Proveedor | Decisión y motivo | Consumidor y límite |
|---|---|---|
| Mapbox | Visualizar y delimitar parcelas sin desarrollar cartografía propia | SDK en ambos clientes; la geometría y la titularidad se validan en backend |
| Open-Meteo | Obtener series horarias históricas y pronósticos adecuados al caso agroclimático | Adaptador de Telemetry en backend; no calcula por Viora el BBI ni la prescripción |
| Mercado Pago | Delegar el checkout y procesamiento de pagos de suscripción individual | Móvil abre checkout; backend crea/verifica operaciones y recibe webhooks |
| Brevo | Delegar entrega de correos de recuperación | Adaptador de Identity and Access; no se presupone un sistema general de push |
| Cloudinary | Almacenar y servir fotografías de perfil y evidencias | Backend integra medios; PostgreSQL conserva referencias y metadatos pertinentes |

Open-Meteo se adopta por ajuste al dato requerido, no por una afirmación de superioridad universal sobre OpenWeather. La mayor cantidad de servicios de un proveedor no es por sí misma un criterio para añadirlo. AgroMonitoring no se conserva porque la arquitectura aprobada no depende de índices de vegetación o imágenes satelitales. Si cambian los requisitos de datos, se reevalúa el adaptador y su proveedor.

Las condiciones comerciales, cuotas y disponibilidad histórica de los proveedores deben comprobarse al implementar. El diseño no garantiza acceso gratuito ilimitado. El origen y calidad de cada dato deben conservarse; histórico, pronóstico y simulación no son intercambiables.

## 5. Container: distribución de responsabilidades

| Contenedor | Tecnología adoptada en el diseño | Razón y responsabilidad |
|---|---|---|
| Landing Page | HTML5/CSS3/JavaScript | Información pública y enlaces de acceso, separada del producto operativo |
| Android Application | Kotlin/Android | Implementación nativa de las capacidades móviles |
| Cross-platform Application | Flutter/Dart | Segunda implementación móvil con los mismos contratos de negocio |
| Android Local Database | SQLite/Room | Caché por cuenta y cola durable de muestras Kotlin |
| Cross-platform Local Database | SQLite/sqflite | Caché por cuenta y cola durable de muestras Flutter |
| Backend API | Java/Spring Boot, REST/OpenAPI | Autoridad de dominio, permisos, sincronización, cálculo e integraciones |
| Viora Database | PostgreSQL | Persistencia central transaccional para el backend compartido |
| Telemetry Simulator | Java, ejecución programada | Generación controlada de datos sintéticos para validación |

Las bases locales son contenedores lógicos separados para hacer visible su responsabilidad y persistencia. Físicamente residen dentro de la instalación correspondiente. Las aplicaciones no comparten archivos SQLite; comparten información autorizada mediante el backend y PostgreSQL.

Se adopta un **monolito modular** porque permite separar responsabilidades de dominio sin introducir despliegues, protocolos remotos y operación distribuida entre todos los módulos. Ambas aplicaciones reciben las mismas reglas del servidor. El coste es que los módulos comparten el ciclo de despliegue y deben mantener disciplina de interfaces y propiedad de datos. El diagrama no introduce microservicios, un broker ni un repositorio global.

PostgreSQL se comparte físicamente, pero los módulos conservan propiedad lógica de sus registros. Compartir una base no autoriza a cualquier contexto a modificar tablas de otro. Las relaciones de persistencia representan repositorios encapsulados; la API de entrada y el calculador puro no necesitan acceso directo a tablas.

Cloudinary permanece como proveedor externo. No se añade otro bucket propio con las mismas responsabilidades. El simulador tampoco es el componente de ingesta: uno produce datos fuera del proceso del backend y el otro los recibe, valida y clasifica dentro de él.

### 5.1 Contratos de comunicación

- Móviles → Backend API: HTTPS, JSON y transferencias de archivos; JWT cuando corresponde.
- Móviles → base local: operaciones SQLite mediante Room o sqflite, sin red.
- Móviles → Mapbox: recursos de mapa mediante SDK/HTTPS.
- Móviles → Mercado Pago: navegador de checkout alojado.
- Backend → PostgreSQL: JPA/JDBC; TLS requerido en el despliegue propuesto.
- Backend → proveedores: HTTPS mediante adaptadores de los módulos responsables.
- Mercado Pago → Backend: webhook validado; es una relación diferente de crear o consultar pagos.
- Simulador → Backend: HTTPS con credencial de servicio y origen sintético explícito.

Las dos direcciones de Mercado Pago expresan operaciones distintas. No se reemplazan por una flecha ambigua ni se activa una suscripción por regresar del navegador.

## 6. Backend Components y correspondencia con DDD

El Context Mapping describe límites semánticos y contratos entre contextos. El modelo C4 explica cómo esos límites se materializan en software. Un contexto puede generar varios componentes y varios componentes pueden ejecutarse dentro de un único proceso. Las flechas de dependencia C4 tampoco deben copiarse mecánicamente de upstream/downstream: una consulta apunta hacia el proveedor del contrato.


| Componente | Bounded context | Responsabilidad y límite |
|---|---|---|
| Mobile REST API | Adaptador de entrada transversal | Agrupa controladores HTTP y DTO, valida estructura, invoca seguridad y despacha comandos, consultas y lotes. No contiene fórmulas agronómicas ni accede directamente a tablas. No es otro servidor ni un API Gateway desplegable. |
| Identity and Access | Identity and Access Management | Registro, credenciales, JWT, roles y recuperación. Incluye filtros y servicios de Spring Security y el adaptador de Brevo. |
| Profile Management | User Profiles | Datos personales y contacto, fotografía de perfil e integración de medios correspondiente. No administra credenciales ni activa planes. |
| Subscription and Membership | Subscription and Cooperative Membership | Suscripción individual, planes, códigos cooperativos y derechos de uso. Encapsula el cliente de Mercado Pago y su controlador de webhook. |
| Orchard and Plot Management | Olive Orchard and Plot Management | Propiedad, permisos prediales, polígonos GeoJSON, variedad, densidad y superficie. Controla el cupo de hectáreas con Subscription. |
| Agroclimatic Telemetry | Agroclimatic Telemetry and Sensor Monitoring | Nodos virtuales, ingesta del simulador, importación programada de Open-Meteo, series horarias, procedencia, calidad e incidentes agroclimáticos. Incluye su endpoint de ingesta y su adaptador meteorológico. |
| Phenology and Bearing Analytics | Phenology and Historical Bearing Analytics | Historial plurianual, BBI, frío invernal, potencial floral y estado fenológico. Es la única autoridad de cálculo del BBI. Su cálculo periódico de frío reside en este módulo. |
| Field Sampling and Sync | Crop Load Regulation and Thinning Advisory | Recibe lotes offline, valida acceso y representatividad, deduplica reintentos y conserva confirmaciones de procesamiento. Se limita a la sincronización de muestreos prevista en el alcance. |
| Sustainable Load Calculator | Crop Load Regulation and Thinning Advisory | Servicio de dominio determinista para calcular carga sostenible y objetivo de remoción con entradas validadas. No llama proveedores, no autentica usuarios y no persiste registros. |
| Thinning Advisory | Crop Load Regulation and Thinning Advisory | Orquesta el cálculo, utiliza el estado fenológico, emite prescripciones y registra ejecución y evidencia. Conserva los resultados y sus versiones de entrada. |
| Harvest Settlement and Reporting | Harvest Settlement and Performance Reporting | Cierra pesos de campaña y genera expedientes reproducibles. Usa el BBI calculado por Phenology para evaluar la estabilización; no mantiene otro algoritmo de BBI. |
| Cooperative Operations | Cooperative Operations and Territorial Intelligence | Padrón, contacto, riesgo territorial, cobertura muestral y proyección de acopio. Aplica autorización por cooperativa. La emisión/canje de códigos comerciales sigue en Subscription. |

Los componentes de dominio son módulos cohesivos, no clases individuales: encapsulan servicios de aplicación, reglas, repositorios y los adaptadores que les corresponden. La división en doce componentes es una decisión propuesta de diseño, no una afirmación sobre código ya implementado. Los tres componentes de aclareo permanecen dentro de un único bounded context.

### Cómo leer las relaciones

Las flechas indican invocación, uso de un contrato o entrega de un evento según su etiqueta. No todas representan transferencia de datos en una sola dirección: las respuestas de consultas se omiten. Por ello, la dirección de una consulta C4 puede ser inversa a la flecha upstream → downstream del Context Mapping. Un patrón Customer/Supplier o Partnership no implica HTTP ni un microservicio.

La vista muestra los contratos principales de colaboración, no cada endpoint o consulta de repositorio. Incluye los eventos de ciclo de vida `UserAccountRegistered` (IAM → Profiles) y `ProfileCreated` (Profiles → Subscription).

Los contratos de colaboración distinguen consultas y notificaciones:

- Thinning → Phenology: consulta de potencial floral y ventana, y notificación de ejecución tardía. Phenology publica los cambios de frío y potencial definidos en el canvas; Thinning debe reaccionar a ellos mediante ese contrato y revalidar al emitir o confirmar una prescripción.
- Harvest → Phenology: entrega de `CampaignHarvestSettled`. La flecha Phenology → Harvest representa `BiennialBearingIndexAssessed` y permite actualizar la evaluación de estabilización del cierre. No se duplica el BBI ni se reemite un cierre por recibir su evaluación.

Las flechas de persistencia corresponden a repositorios encapsulados por cada módulo. Hay una base PostgreSQL compartida a nivel de despliegue, pero cada bounded context es dueño de sus tablas. Los componentes de Thinning comparten ese contexto y acceden mediante sus contratos; otros contextos no deben consultar sus tablas directamente. La vista omite un repositorio global porque ese diseño debilitaría las fronteras del dominio.

### Flujo central de mitigación de vecería

1. Android o Flutter envía un lote de muestreos a Mobile REST API. Spring Security valida la identidad y el módulo comprueba acceso a la parcela y derechos de uso.
2. Field Sampling and Sync valida registros, deduplica el lote y evalúa representatividad. Un lote insuficiente se conserva con su resultado y no produce una prescripción definitiva.
3. Una ronda representativa activa Thinning Advisory. Este obtiene los atributos agronómicos disponibles en el muestreo validado y el contrato predial, consulta potencial floral y ventana en Phenology, y llama Sustainable Load Calculator.
4. El calculador devuelve valores, sin efectos externos. Thinning valida el resultado y persiste la prescripción junto con la versión de los datos utilizados.
5. El productor confirma la ejecución. Thinning registra fecha y evidencia, comprueba la ventana biológica y comunica ejecución o tardanza a los consumidores definidos en el dominio. Cooperative Operations actualiza sus proyecciones y cobertura cuando cambia la información relevante.
6. Harvest cierra la campaña. Phenology incorpora el cierre a la memoria histórica y recalcula el BBI; Harvest utiliza esa evaluación para el expediente y la curva de estabilización.

### Decisiones que deben guiar la implementación

- **Seguridad:** validar JWT en la entrada y autorización sobre recursos dentro del módulo. Un rol válido no concede acceso a todas las parcelas o cooperativas. Los endpoints de telemetría y webhook tienen mecanismos de autenticación propios; no reutilizan el JWT de un productor. Su ubicación dentro de un módulo no permite eludir la seguridad.
- **Derechos comerciales:** Subscription publica o expone los derechos vigentes; las operaciones agronómicas protegidas los verifican. Orchard controla la cuota en la misma operación transaccional que registra o modifica el área para evitar excedentes por solicitudes concurrentes.
- **Offline:** conservar identificadores estables de lote y registro, vincularlos al usuario/parcela y registrar una huella del contenido. Un reintento idéntico devuelve el resultado previo; reutilizar un identificador con contenido distinto produce conflicto. La deduplicación y la escritura se protegen mediante restricciones únicas y una transacción PostgreSQL. La política de aceptación parcial debe quedar explícita en el contrato REST.
- **Reglas agronómicas:** fórmulas y parámetros son reglas versionadas del dominio. La arquitectura no valida por sí sola su precisión agronómica. Un cálculo debe conservar sus entradas, campaña, instante de evaluación y versión de reglas para poder reproducirse. No generar recomendaciones definitivas cuando los datos sean insuficientes o la ventana no sea válida.
- **Meteorología:** guardar proveedor, coordenadas de referencia, fecha de validez, zona horaria y calidad. Distinguir series históricas, pronósticos y lecturas sintéticas. Las simulaciones no deben mezclarse silenciosamente con datos utilizados para recomendaciones reales. El adaptador traduce los DTO de Open-Meteo al modelo interno.
- **Pagos:** el regreso del navegador desde el checkout no activa un plan. Subscription verifica la notificación y consulta el estado autoritativo en Mercado Pago; valida la correspondencia de la operación y evita aplicar dos veces el mismo resultado. Usa estados y controles de concurrencia para notificaciones repetidas o fuera de orden.
- **Eventos internos:** se ejecutan dentro del backend. Para cambios que deban ser atómicos se proponen manejadores síncronos dentro de la transacción; ante un fallo se revierte y se reintenta la operación idempotente. Si posteriormente se procesan eventos después del commit, será necesario persistir publicaciones pendientes y reintentos. El diagrama no presupone entrega fiable por un evento en memoria después del commit ni requiere un broker externo.
- **Proveedores:** los adaptadores quedan dentro de los módulos consumidores, con contratos propios, límites de tiempo y manejo de errores. Una falla de Open-Meteo no convierte una serie ausente en temperaturas cero; una falla de Cloudinary no debe marcar una evidencia como cargada.
- **Informes:** el expediente usa una instantánea/versionado de los datos de cierre y la evaluación recibida. Rectificar posteriormente el historial no debe alterar silenciosamente un expediente ya emitido.

### Integraciones y elementos de apoyo

| Elemento | Conexión representada |
|---|---|
| Android Application y Cross-platform Application | HTTPS/JSON hacia Mobile REST API; mismas reglas de negocio del servidor. |
| Telemetry Simulator | Endpoint de ingesta de Agroclimatic Telemetry, con credencial de servicio y registros explícitamente sintéticos. |
| Open-Meteo | Adaptador meteorológico de Agroclimatic Telemetry. |
| Mercado Pago | Cliente y webhook de Subscription and Membership. |
| Brevo | Adaptador de correo de Identity and Access. |
| Cloudinary | Adaptadores de fotografía de Profiles y evidencia de Thinning. |
| Viora Database | Persistencia PostgreSQL de los módulos mediante JPA/JDBC. |

Mapbox no aparece porque, en el Container Diagram aprobado, lo consumen directamente las aplicaciones móviles. La landing y las bases SQLite tampoco se conectan a componentes del backend. Su ausencia en esta vista respeta el alcance de un único contenedor.


## 7. Android Application Components


| Componente | Responsabilidad |
|---|---|
| App Navigation | Destinos por sesión y rol, pila de navegación y enlaces de retorno validados. Navegar a una pantalla no concede autorización en el servidor. |
| Account and Profile UI | Registro, inicio de sesión, recuperación, perfil y selección de fotografía. |
| Plot Management UI | Selección y edición de parcelas, variedad, densidad y configuración de nodos virtuales. |
| Field Sampling UI | Muestreo guiado y presentación de borradores y resultados de sincronización. |
| Agronomy and Harvest UI | Clima, frío, BBI, historial, prescripciones, confirmación de ejecución, evidencia, cierre y descarga de expedientes. Agrupa pantallas relacionadas, con ViewModels propios; no es una sola pantalla ni un ViewModel global. |
| Cooperative Operations UI | Padrón, riesgos, cobertura y proyección de acopio del gestor. |
| Subscription UI | Planes, derechos vigentes, canje de códigos, emisión autorizada de códigos y acceso al checkout. |
| Plot Map Adapter | Integra Mapbox y encapsula representación y edición de polígonos GeoJSON. |
| Hosted Checkout Coordinator | Solicita al backend la URL del checkout, abre Custom Tabs y consulta el estado al regresar. |
| Session Manager | Estado de sesión, ámbito de cuenta y almacenamiento protegido de tokens. Keystore protege las claves criptográficas; los tokens se almacenan cifrados en almacenamiento privado, no como claves del Keystore. |
| Feature Repositories | Agrupación de repositorios por funcionalidad —cuenta, parcelas, agronomía, cooperativa y suscripción— con interfaces independientes. Comparte adaptadores de datos, no una clase universal con todas las operaciones. |
| Sampling Repository | Contrato de muestreo local-first, identificadores estables, lotes pendientes y reconciliación de confirmaciones del servidor. |
| Sampling Sync | Encapsula programación de trabajo único y CoroutineWorker; invoca el repositorio de muestreo al disponer de conectividad y sesión válida. |
| Backend API Client | Retrofit/OkHttp, DTO, JSON, archivos, autenticación HTTP, refresco de token y errores de transporte tipados. |
| Local Data Access | DAOs y transacciones Room para caché autorizada y cola durable de muestreos. |

Las unidades UI encapsulan Composables y ViewModels de sus funcionalidades. Los ViewModels exponen estado observable y reciben acciones; no acceden directamente a Room ni a Retrofit. El adaptador de mapas se integra desde la capa de presentación y encapsula las APIs de Mapbox; los ViewModels no deben retener Activity, MapView ni Context. Los componentes de esta vista representan responsabilidades cohesivas; no obligan a crear quince módulos Gradle.

### Elementos de apoyo y shapes

- Olive Producer y Cooperative Technical Manager: `Person`, fuera del contenedor Android.
- Los quince componentes internos: `Component`, con la paleta azul de Viora.
- Android Local Database: `Cylinder`, fuera del límite de la aplicación en esta vista, coherente con el Container Diagram. Es la base local en el dispositivo, no un servicio remoto.
- Backend API: `Shell`, como contenedor de apoyo; su interior no se expande en esta vista.
- Mapbox y Mercado Pago: sistemas externos con `RoundedBox` y color rojo.

Las llamadas de API hacia Mercado Pago y el webhook se excluyen de esta vista porque no describen el interior de Android. Permanecen en Container y Backend Components. Tampoco se incluyen Cloudinary, Brevo u Open-Meteo: Android accede a esas capacidades mediante el backend aprobado.

### Flujo offline de muestreo

1. Field Sampling UI entrega el muestreo al repositorio. Este valida los campos locales y genera identificadores estables vinculados a usuario, parcela y campaña.
2. Local Data Access guarda el registro y su estado pendiente en una transacción Room. Solo después del commit la UI confirma que está guardado en el dispositivo.
3. La UI solicita a Sampling Sync programar trabajo. App Navigation también reconcilia pendientes al iniciar/restaurar una sesión, cubriendo una terminación del proceso entre el commit local y la programación.
4. WorkManager ejecuta el trabajo bajo restricciones de red; el coordinador comprueba que la cuenta del trabajo coincide con la sesión vigente y llama Sampling Repository.
5. El repositorio forma un lote estable y usa Backend API Client. Los reintentos del mismo lote conservan identificadores y contenido; no crean nuevas operaciones para intentar el mismo envío.
6. La respuesta del backend se aplica en una transacción local. Solo los registros confirmados se marcan como sincronizados. Si el servidor procesó el lote pero se perdió la respuesta, la idempotencia del backend permite repetirlo sin duplicarlo.
7. Room/Flow actualiza el estado de pantalla. Los registros rechazados conservan el motivo y se muestran al usuario. Una corrección debe seguir el contrato de versiones/identificadores acordado; no reutilizar un ID inmutable para contenido diferente.

WorkManager permite trabajo persistente y diferido, pero no garantiza envío inmediato ni ejecución sin restricciones del sistema operativo. Red disponible tampoco garantiza acceso al servidor. Los fallos transitorios admiten backoff; errores de validación o permisos no se reintentan indefinidamente. Una sesión expirada exige refresco controlado o nueva autenticación.

### Límites y decisiones de implementación

- **Alcance sin conexión:** guardar muestreos y consultar datos autorizados ya disponibles. El diseño no promete emisión offline de prescripciones ni pagos, cierre de campaña o cambios administrativos offline. Las escrituras de otras funcionalidades requieren confirmación del servidor; no se presentan como completadas por una actualización optimista.
- **Caché:** para lecturas almacenadas, Room es la fuente observable de la UI. Cada actualización remota refresca esa caché. Mostrar fecha y condición de sincronización; una prescripción almacenada puede haber expirado. La operación definitiva se valida en el backend.
- **Reglas agronómicas:** Android no vuelve a implementar Erez, BBI ni el cálculo de carga sostenible. Puede validar formato y coherencia básica, pero la representatividad y las reglas de negocio son autoritativas en el servidor.
- **Identidad:** los datos locales y el trabajo pendiente se particionan por usuario. Al salir o cambiar de cuenta se detienen los envíos de la cuenta anterior y no se muestran sus registros. No borrar silenciosamente muestreos pendientes; avisar antes de un descarte y establecer una política explícita de conservación protegida.
- **Sesión:** Backend API Client consulta Session Manager para los tokens y serializa el refresco para evitar carreras. Las llamadas públicas de registro, login y recuperación no exigen un token válido ni disparan un bucle de refresco. Las respuestas de autenticación actualizan Session Manager a través de los repositorios. No incluir tokens o cuerpos sensibles en logs.
- **Pagos:** el coordinador abre una URL HTTPS creada por el backend y validada contra destinos permitidos. Volver del navegador o recibir un app link no prueba el pago. Se consulta el backend hasta un estado conocido o se muestra pendiente; la app no procesa webhooks ni contiene secretos de Mercado Pago.
- **Mapas:** Mapbox se usa directamente para visualización/edición y solo con credenciales públicas apropiadas para el SDK. La validación final de geometría, permisos y cuota pertenece al backend. El muestreo offline no depende de que los mapas puedan descargarse; una estrategia de mapas offline requiere diseño adicional y no se presupone aquí.
- **Archivos:** fotografías y evidencias se seleccionan con APIs de Android y se transfieren mediante Backend API Client al backend, que integra Cloudinary. Los expedientes se descargan por ese mismo cliente. No se introduce un bucket ni un segundo almacén de dominio en Android; el manejo temporal de archivos utiliza almacenamiento privado y permisos de URI apropiados.
- **Inyección de dependencias:** emplear interfaces e inyección por constructor para sustituir repositorios, clientes y fuentes locales durante las pruebas. La selección de un framework de DI no exige otro componente arquitectónico.

### Correspondencia con el backend

| Funcionalidad Android | Responsabilidad del servidor |
|---|---|
| Cuenta y perfil | IAM y Profile Management |
| Parcelas y nodos | Orchard y Agroclimatic Telemetry |
| Muestreo y sincronización | Field Sampling and Sync |
| Clima, BBI, historia y frío | Telemetry y Phenology |
| Prescripción y ejecución | Thinning Advisory, con Sustainable Load Calculator |
| Cierre e informes | Harvest Settlement and Reporting |
| Cooperativa | Cooperative Operations |
| Suscripción y checkout | Subscription and Membership |

Todos esos contratos HTTP pasan por Backend API Client y el contenedor Backend API. Los componentes del servidor no se dibujan dentro del contenedor Android.


## 8. Cross-platform Application Components


| Componente | Responsabilidad | Tecnología propuesta |
|---|---|---|
| App Navigation | Destinos por sesión/rol, enlaces validados y reconciliación al retomar la app. | Dart, go_router |
| Account and Profile UI | Registro, autenticación, recuperación, contacto y fotografía de perfil. | Widgets y ViewModels con ChangeNotifier |
| Plot Management UI | Selección y edición predial, atributos y configuración de nodos virtuales. | Widgets y ViewModels con ChangeNotifier |
| Field Sampling UI | Muestreo guiado, guardado local y estados pendiente/rechazado/sincronizado. | Widgets y ViewModels con ChangeNotifier |
| Agronomy and Harvest UI | Clima, frío, BBI, historial, prescripción, ejecución, evidencia, cierre e informes. | Widgets y ViewModels con ChangeNotifier |
| Cooperative Operations UI | Miembros, riesgo territorial, cobertura y proyección de acopio. | Widgets y ViewModels con ChangeNotifier |
| Subscription UI | Planes, derechos, canje y emisión autorizada de códigos y acceso a checkout. | Widgets y ViewModels con ChangeNotifier |
| Plot Map Adapter | Renderiza mapas y encapsula edición de polígonos y conversión GeoJSON. | mapbox_maps_flutter |
| Hosted Checkout Coordinator | Obtiene la URL creada por el backend, abre el navegador y vuelve a consultar el estado. | url_launcher |
| Session Manager | Sesión y cuenta activa; lectura, rotación y eliminación controlada de tokens protegidos. | flutter_secure_storage |
| Feature Repositories | Contratos de datos de cuenta, parcelas, agronomía, cooperativa y suscripción. | Dart Future y Stream |
| Sampling Repository | Escrituras local-first, IDs estables, lotes pendientes y confirmaciones por registro. | Dart Future y Stream |
| Sampling Sync | Sincronización en primer plano y trabajo programado según las posibilidades del sistema operativo. | workmanager y ciclo de vida Flutter |
| Backend API Client | REST, DTO, archivos, refresco de token y errores de transporte. | Dio |
| Local Data Access | Transacciones SQLite, caché por cuenta, pendientes e invalidación explícita. | sqflite |

Las unidades UI agrupan pantallas relacionadas; cada pantalla o flujo tiene su ViewModel, evitando un ViewModel global. `Feature Repositories` agrupa repositorios independientes por funcionalidad, no una clase universal. Los adaptadores y repositorios se inyectan por constructor; las bibliotecas de DI no necesitan otro recuadro. Las elecciones de paquetes son propuestas de implementación, no una afirmación de que el proyecto ya los tenga instalados.

### Diferencias concretas respecto de Android nativo

- Compose y ViewModel de Android se sustituyen por Widgets y ViewModels Dart con ChangeNotifier. Los Widgets reciben estado y envían acciones; no consultan SQLite o Dio directamente.
- Los repositorios usan Future para operaciones y Stream para cambios observables. sqflite no proporciona por sí solo consultas reactivas equivalentes a Room/Flow: los repositorios invalidan y vuelven a consultar después de los commits, y emiten instantáneas actualizadas.
- El cliente REST usa Dio, preservando el contrato HTTP del servidor y los identificadores idempotentes.
- Los tokens se protegen mediante flutter_secure_storage y los mecanismos de la plataforma. Es necesario configurar su accesibilidad en iOS y su comportamiento de copia de seguridad según la versión seleccionada. Las credenciales no pertenecen a las tablas de muestreo ni a los logs.
- El checkout se abre mediante url_launcher en navegador externo. El retorno se gestiona mediante enlaces validados o el evento de reanudación, y siempre se consulta al backend.
- Sampling Sync combina intento en primer plano con trabajo del plugin workmanager. No promete intervalos exactos ni ejecución continua, especialmente en iOS.

### Flujo offline

1. Field Sampling UI llama Sampling Repository. Este asigna identificadores estables ligados a usuario, parcela y campaña y valida campos básicos.
2. Local Data Access guarda el registro y el estado pendiente en una sola transacción sqflite. La confirmación de guardado local se muestra después del commit.
3. Se solicita sincronización tras guardar, por reintento del usuario o al iniciar/retomar la app. La programación de background complementa esos intentos.
4. Sampling Sync verifica la cuenta, la sesión y las condiciones de ejecución. El repositorio toma un lote durable y lo envía mediante Backend API Client.
5. Un reintento conserva el mismo ID y contenido. Si hubo procesamiento remoto pero se perdió la respuesta, la deduplicación del backend impide insertar otra vez los mismos muestreos.
6. Las confirmaciones se aplican por registro en una transacción. Los rechazados mantienen su motivo; solo los confirmados se marcan sincronizados. Se actualiza la instantánea observable de la UI.

Las acciones offline cubren captura de muestreos y consulta de datos previamente almacenados. Pagos, cierre definitivo de campaña, cambios administrativos y emisión de nuevas prescripciones requieren respuesta del servidor. Una pantalla puede mostrar información en caché, identificando su antigüedad; no la presenta como una decisión recién validada.

### Reglas para una sincronización fiable

- La cola de pendientes reside en SQLite, no en un Timer ni únicamente en memoria. El intervalo o ciclo de vida de un Widget no determina la conservación de datos.
- Un callback de background puede ejecutarse en un isolate distinto: debe inicializar sus dependencias, abrir el almacenamiento y recuperar la cuenta autorizada. No comparte automáticamente Providers, ChangeNotifiers, conexiones o Streams con el isolate de UI.
- Primer plano y background pueden coincidir. El repositorio debe reclamar lotes de forma transaccional mediante un estado/lease recuperable y mantener idempotencia en el servidor. Un mutex de Dart en un solo isolate no basta para coordinar ambos.
- Si el proceso muere, los lotes reclamados deben poder recuperarse. Si el usuario cambia de cuenta, no deben enviarse registros usando el token de otra persona. Comprobar el ámbito de cuenta antes de enviar y antes de aplicar resultados.
- Los refrescos de credenciales requieren coordinación entre ejecutores; evitar que dos trabajos roten simultáneamente el mismo refresh token o que un resultado antiguo restaure una sesión cerrada. Usar control de generación de sesión y una estrategia de exclusión compatible con los isolates.
- Los cambios del isolate de background no notifican mágicamente los Streams de UI. Al retomar la aplicación se recarga el estado desde SQLite; mientras esté activa se puede usar una señal explícita de invalidación.
- Si el sistema no autoriza background o el almacén seguro no está accesible en ese momento, conservar pendientes y reintentar al abrir/desbloquear la app. No guardar una copia insegura de los tokens como solución alternativa.
- Reintentar fallos transitorios con backoff. Los errores de permisos o validación requieren resolución; no se envían indefinidamente. La disponibilidad de red no equivale a disponibilidad de la API.
- Un Timer puede servir para intentos durante la sesión activa, pero no ofrece garantías cuando la aplicación está suspendida o terminada. La frecuencia de background depende del sistema operativo y de su configuración.

### Integraciones y autoridad del backend

Las únicas conexiones directas con sistemas externos son Mapbox y Mercado Pago. El adaptador de mapas usa el SDK Flutter y devuelve polígonos al flujo predial; la validación de cuota, propiedad y geometría permanece en el backend. No se presupone descarga de mapas offline.

Hosted Checkout Coordinator obtiene la URL a través de Feature Repositories y Backend API Client. Valida el destino antes de abrir el navegador. Un app link, un parámetro de retorno o la vuelta a primer plano no acreditan un pago: la app consulta el estado al backend. Los webhooks son responsabilidad del servidor.

Open-Meteo, Brevo y Cloudinary permanecen detrás del Backend API. Fotografías, evidencia e informes se transfieren por ese cliente HTTP. Las fórmulas de BBI, frío y carga sostenible, la representatividad definitiva y las reglas de prescripción no se duplican en Dart.

Los permisos visuales por rol mejoran la navegación, pero cada operación debe volver a autorizarse en el backend. Los datos locales se particionan por cuenta, no se exponen después de cambiar de usuario y no se descartan silenciosamente cuando hay muestreos pendientes.

### Shapes y alcance de la vista

- Quince componentes internos con forma `Component` y paleta azul de Viora.
- Productor y gestor con forma `Person`.
- Cross-platform Local Database como `Cylinder`, contenedor de apoyo fuera del límite de la aplicación. Representa SQLite local por instalación, no un servicio remoto.
- Backend API como `Shell`, sin expandir sus componentes internos.
- Mapbox y Mercado Pago como sistemas externos `RoundedBox` en rojo.

La vista excluye las relaciones Backend API ↔ Mercado Pago, ya presentes en Container y Backend Components, porque no explican el interior del cliente Flutter.


## 9. Deployment: entorno de validación académica

El entorno Academic Validation ubica instancias de los ocho contenedores. Se propone Vercel para la landing, Render para el backend Docker/Java y el simulador como cron independiente, y Filess.io para PostgreSQL. Son decisiones de despliegue; esta memoria no certifica recursos aprovisionados.

Cada cliente y su SQLite se ubican dentro del sandbox de su aplicación en un dispositivo Android representativo. Los dos nodos no exigen dos teléfonos por persona: ambas aplicaciones pueden coexistir con identificadores distintos. Flutter se valida aquí mediante su build Android; iOS no se declara desplegado por el solo hecho de usar Flutter.

Firebase App Distribution entrega APKs firmados a evaluadores invitados. Se registra cada aplicación por separado, aunque ambas tengan como destino Android. Es infraestructura de distribución, no un backend de dominio ni un runtime móvil. Sus flechas de entrega de artefactos se distinguen de las llamadas durante el uso. No hace falta añadirlo como sexta integración operativa en System Context.

El navegador del visitante solicita los recursos de la landing a Vercel. Los proveedores permanecen en infraestructura administrada por ellos, sin inventar su topología interna. Mercado Pago se representa en modo de pruebas. El backend tiene un endpoint HTTPS accesible para clientes y webhooks; las credenciales de PostgreSQL permanecen en el servidor.

El cron del simulador debe ejecutar un lote finito y terminar. No se debe combinar ese contrato con un proceso Java infinito que espere permanentemente nuevas ejecuciones; si la implementación necesita permanecer activa, se revisará el nodo como worker. El horario, plan y versión de runtime aún deben concretarse.

El statement requiere describir la distribución física (pp. 18–19), explicar el proceso desde los repositorios hasta la publicación en Software Deployment Configuration (p. 25) y usar Firebase App Distribution en Video App Validation (p. 31). El diagrama satisface la parte de diseño; las evidencias de ejecución se incorporarán durante los sprints.

## 10. Registro resumido de decisiones

| ID | Decisión | Motivo | Consecuencia o compromiso |
|---|---|---|---|
| ADR-01 | Un único problema principal: vecería | Mantener coherencia entre requisitos y solución | No reincorporar módulos fitosanitarios o marketplace de Legacy |
| ADR-02 | Dos clientes móviles, un backend | Cumplir las estrategias nativa y multiplataforma con reglas comunes | Mantener paridad mediante contratos y pruebas, no por semejanza de diagramas |
| ADR-03 | Monolito modular | Separar dominio con operación sencilla | Despliegue compartido y disciplina de fronteras |
| ADR-04 | Muestreo local-first | Continuar captura con conectividad intermitente | Cola durable, estados visibles, reintentos e idempotencia |
| ADR-05 | Cálculo agronómico centralizado | Evitar resultados divergentes entre clientes | El cliente no emite nuevas prescripciones autoritativas offline |
| ADR-06 | Calculador puro separado de asesoramiento | Aislar fórmulas de orquestación y efectos externos | Entradas versionadas y pruebas deterministas |
| ADR-07 | Un propietario del BBI | Evitar algoritmos duplicados y reportes inconsistentes | Harvest consume la evaluación de Phenology |
| ADR-08 | Adaptadores por módulo consumidor | Acotar dependencia de proveedores | DTO externos no definen el modelo de dominio |
| ADR-09 | Mapbox directo desde los clientes | Integrar visualización interactiva en móvil | La autorización y validación predial permanecen en servidor |
| ADR-10 | Checkout alojado y verificación del servidor | Separar experiencia móvil de procesamiento de pagos | Retorno móvil no equivale a pago confirmado |
| ADR-11 | Una base central y dos almacenes locales | Combinar consistencia de dominio con captura offline | Partición por cuenta y reconciliación explícita |
| ADR-12 | Telemetría simulada etiquetada | Validación sin hardware real | No confundir demostración con medición real |
| ADR-13 | Eventos internos, sin broker supuesto | Colaboración modular dentro del backend | Definir atomicidad, reintentos y durabilidad cuando proceda |
| ADR-14 | Firebase App Distribution para validación | Cumplir canal de pruebas indicado en el statement | APKs firmados, registros separados y evaluadores invitados |
| ADR-15 | Deployment académico sobre Android | Representar un entorno concreto y realizable | iOS requiere su propia preparación y validación |

Estos identificadores pertenecen a esta memoria; no prueban la existencia previa de ADRs formales en el repositorio.

## 11. Cómo usar esta arquitectura en otras secciones

| Sección posterior | Qué derivar del C4 | Qué debe definirse adicionalmente |
|---|---|---|
| Tactical DDD | Propietarios, contratos y separación calculador/orquestador | Agregados, invariantes, entidades, value objects y repositorios |
| Modelo de datos | Propiedad modular y persistencia central/local | Tablas, claves, restricciones, migraciones y políticas de retención |
| OpenAPI | Contratos comunes, lotes offline, autenticación y errores | Endpoints, DTO, códigos HTTP, versiones y aceptación parcial |
| Diseño de interfaces | Capacidades por rol y estado de sincronización | Pantallas, navegación, mensajes y accesibilidad |
| Testing | Límites y riesgos de integración | Casos, datos, automatización y evidencia real |
| Deployment Configuration | Nodos, artefactos y proveedores propuestos | Pasos reproducibles, URLs, variables, firmas, versiones y planes |
| Sprint Evidence | Productos y colaboraciones a demostrar | Capturas, resultados y enlaces de implementaciones reales |

Los flujos críticos a verificar incluyen pérdida de respuesta después del commit remoto, duplicación de lote, cambio de cuenta con pendientes, webhook repetido/fuera de orden, datos agroclimáticos insuficientes y cierre de campaña seguido de cálculo de BBI. Son criterios derivados del diseño, no pruebas ya ejecutadas.

No deducir de los recuadros un número obligatorio de tablas, clases, módulos Gradle o endpoints. No inventar Kafka, Redis, Kubernetes, notificaciones push, mapas offline, sensores físicos, despliegue iOS ni publicación en tiendas. Cualquier incorporación debe justificarse mediante un requisito y actualizar las vistas afectadas.

## 12. Precisiones sobre la sección Markdown recibida

Estas precisiones evitan propagar afirmaciones demasiado amplias. No modifican los archivos originales ni alteran la arquitectura aprobada.

1. **Deployment no es el nivel 4 de C4.** Describirlo como vista complementaria utilizada por el curso en lugar de Code.
2. **Doce componentes no equivalen a doce bounded contexts.** Mobile REST API es transversal; tres componentes pertenecen al contexto de regulación de carga. La correspondencia detallada del capítulo 6 guía la redacción.
3. **No todos los componentes persisten.** Sustainable Load Calculator es puro y Mobile REST API despacha operaciones. Las flechas de persistencia se aplican solo a módulos que poseen registros.
4. **Field Sampling UI utiliza Sampling Repository.** No afirmar que las seis interfaces delegan toda persistencia a Feature Repositories. Este último representa varios repositorios funcionales, no un objeto global.
5. **Mercado Pago también es consumido por el backend.** La aplicación abre el checkout; Subscription crea/verifica el pago y procesa el webhook.
6. **El checkout está alojado por Mercado Pago.** El backend crea u obtiene su URL; no aloja el checkout del proveedor.
7. **Flutter comparte intención funcional, no ejecución idéntica.** Room/Flow y sqflite requieren mecanismos diferentes; la paridad es un objetivo que debe probarse.
8. **App Navigation procesa enlaces validados.** No describir su responsabilidad únicamente como disparar deep links. En Flutter también reconcilia pendientes al iniciar o retomar la aplicación.
9. **Sincronizar tras commit significa después del guardado local.** No confundirlo con una confirmación de recepción del backend.
10. **Los registros de Firebase son por aplicación/build identificable.** En esta vista ambas aplicaciones se distribuyen para Android; no son registros separados entre Android e iOS.
11. **La infraestructura es propuesta.** Utilizar futuro o formulación de diseño hasta disponer de evidencia de despliegue y conectividad.
12. **Las flechas desde personas representan interacción de usuario.** La etiqueta Kotlin/in-process del diagrama Android debe leerse como interacción con la UI; la persona no ejecuta una llamada Kotlin. No trasladar esa etiqueta a una especificación de protocolo.

## 13. Aspectos pendientes que C4 no resuelve

Quedan por concretar versiones de dependencias y runtimes; esquema OpenAPI; política de aceptación parcial de lotes; resolución de conflictos; rotación de credenciales; conservación de pendientes al cerrar sesión; fórmulas, umbrales y validación agronómica; esquema físico y migraciones; respaldos y restauración; planes y límites de proveedores; TLS verificable en la instancia de base; URLs y firmas de APK; periodicidad del simulador y evidencias de pruebas.

Los cálculos y expedientes requieren procedencia, instante, campaña y versión de reglas e insumos. La arquitectura facilita trazabilidad, pero no demuestra eficacia de mitigación ni precisión predictiva. No deben escribirse porcentajes de mejora o garantías de producción sin evidencia.

## 14. Convenciones visuales y mantenimiento

Verde identifica personas, azul elementos propios y rojo sistemas externos. Cylinder identifica almacenes; Component, unidades internas; Shell, procesos de servidor; MobileDevicePortrait, clientes móviles; WebBrowser, presentación web. El azul claro de bases y componentes core es una convención de esta solución, no una obligación universal de C4. Las relaciones dirigidas se interpretan por su etiqueta; no se dibuja cada respuesta de red.

Las modificaciones de alcance deben propagarse desde contexto hacia contenedores, componentes afectados y despliegue. Las decisiones de tecnología se reflejan en etiquetas y contratos; cambiar un proveedor exige revisar también configuración y pruebas. El layout y las posiciones de los recuadros no cambian por sí mismos las responsabilidades.

Esta memoria no inserta imágenes ni exige sus rutas. Se conserva fuera del repositorio del reporte, que se utilizó como fuente de solo lectura.
