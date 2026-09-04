# Especificación Exhaustiva de Requisitos: Ecosistema Viora

Este documento consolida la matriz definitiva de requisitos funcionales y no funcionales del ecosistema **Viora**. 

Cada flujo de negocio, interacción operativa y mecanismo de valor explicado en la arquitectura cuenta aquí con su respectivo **Requisito Funcional (RF)**, **Endpoint RESTful de Developer (RF-DEV)** y **Requisito No Funcional (RNF)** verificable.

---

## 1. Mapeo de Flujos de Negocio a Requisitos

1. **Monetización Dual SaaS (Cuenta Propia vs. Activación por Cooperativa):**
   * **Productor Independiente (`RF-04`):** Se registra, selecciona su plan por hectárea, realiza el pago en Mercado Pago Sandbox (`RF-05`) y activa su cuenta propia.
   * **Socio de Cooperativa (`RF-05`, `RF-06`):** La cooperativa adquiere un *Plan Cooperativo* corporativo. El gestor técnico dispone de una bolsa de cupos y genera **códigos de activación/invitación** (`RF-06`). El agricultor (Teodoro) canjea dicho código en su perfil (`RF-05`), quedando su cuenta activada y vinculada a la cooperativa sin realizar pagos individuales.
2. **Ciclo de Vida de IoT Simulado (`RF-09`, `RF-10`):**
   * El usuario vincula un nodo sensor virtual con nombre y tipo a su parcela (`RF-09`), consulta su estado simulado (batería virtual y fecha de lectura) y puede desvincularlo sin perder datos.
   * El backend genera periódicamente series agroclimáticas realistas de La Yarada (`RF-10`) que alimentan el cálculo de frío.
3. **Viaje Progresivo de Resultados del Agricultor:**
   * **Día 1:** Registro de 3 campañas previas (`RF-15`) y diagnóstico numérico inmediato del **BBI de Hoblyn** (`RF-16`).
   * **Invierno:** Seguimiento en vivo de horas frío y porciones de Erez acumuladas con alerta in-app por picos térmicos >25°C de efecto ENOS (`RF-17`).
   * **Post-cuajado:** Muestreo guiado en campo (`RF-18`), cálculo de carga objetivo (`RF-19`) y prescripción in-app y offline de ventana y porcentaje de aclareo (`RF-20`).
   * **Cosecha y Comparativa:** Cierre de campaña (`RF-21`) y visualización del **Dashboard Comparativo Interanual** (`RF-22`) que contrasta la curva de picos históricos frente a la curva estabilizada con Viora.
4. **Resultados del Gestor Técnico / Asesor (`RF-08`, `RF-23`, `RF-24`):**
   * **Mapa de Cartera (`RF-08`):** Distribución geoespacial de socios en el valle.
   * **Tablero de Riesgo (`RF-23`):** Semáforo de acumulación de frío y sobrecarga de socios.
   * **Modelo Predictivo de Acopio Temprano (`RF-24`):** Proyección con meses de anticipación del volumen total en toneladas de aceituna verde y negra.

---

## 2. Requisitos Funcionales de la Aplicación Móvil (RF-01 al RF-24)

### 2.1. Gestión de Identidad, Acceso y Suscripciones SaaS (Generic Subdomains)

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-01** | **Registro y Perfil de Usuario**: Permitir a productores y gestores registrarse con nombres, país de residencia, número celular normalizado bajo estándar internacional E.164, correo electrónico y contraseña (mínimo 8 caracteres con combinación alfanumérica). | Identity & Access Management | `/api/v1/auth/sign-up`, `/api/v1/users/{userId}` | Garantiza la captura normalizada del teléfono bajo estándar E.164 según país de origen para entrega de alertas y expansión regional a Chile y Argentina. |
| **RF-02** | **Autenticación y Sesión Persistente**: Autenticar credenciales mediante tokens JWT, permitiendo mantener la sesión activa en el dispositivo móvil. | Identity & Access Management | `/api/v1/auth/sign-in`, `/api/v1/auth/refresh-token` | Evita que el agricultor tenga que reingresar credenciales continuamente durante labores en campo. |
| **RF-03** | **Control de Acceso Basado en Roles (RBAC)**: Segmentar permisos y pantallas entre los roles: Productor Olivarero y Gestor Técnico. | Identity & Access Management | Claims en JWT: `ROLE_PRODUCTOR`, `ROLE_GESTOR` | Separa la gestión del predio familiar de la vista global de acopio de la cooperativa. |
| **RF-04** | **Suscripción y Pago Directo (Plan Productor)**: Permitir al agricultor independiente suscribirse mediante checkout en Mercado Pago Sandbox según su área. | Subscription & Billing | `/api/v1/subscriptions`, `/api/v1/webhooks/mercadopago` | Habilita la monetización digital directa del productor individual que no pertenece a una cooperativa. |
| **RF-05** | **Activación de Cuenta de Socio por Código de Cooperativa**: Permitir al agricultor ingresar un código de activación para habilitar su cuenta bajo la suscripción cooperativa. | Subscription & Billing | `/api/v1/users/{userId}/cooperative-memberships` | Permite al socio acceder a todas las funciones sin realizar pagos individuales, cubierto por la cooperativa. |
| **RF-06** | **Administración de Cartera de Socios y Cupos (Gestor)**: Permitir al gestor técnico ver cupos utilizados/disponibles, generar códigos de activación y gestionar socios. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/invitation-codes`, `/members` | Otorga a la directiva cooperativa el control de licencias corporativas y altas/bajas de su nómina. |

---

### 2.2. Mapeo GIS, Dispositivos IoT y Clima Simulado (Supporting Subdomains)

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-07** | **Delimitación Georreferenciada con GPS Interno**: Trazar el polígono de la parcela sobre mapa satelital utilizando el sensor GPS interno del dispositivo móvil para centrar la ubicación del predio y fijar vértices en campo, calculando el área en hectáreas. | Plot Geospatial Tracking | `/api/v1/plots` | Acceso al hardware interno del dispositivo (GPS exigido por rúbrica) para asegurar exactitud espacial y conteo de árboles. |
| **RF-08** | **Visualización de Cartera con GPS en Tiempo Real (Gestor)**: Mostrar al gestor técnico un mapa satelital con los predios socios, utilizando el sensor GPS interno del dispositivo para mostrar su ubicación en tiempo real ("Mi ubicación actual"), calcular distancias a cada fundo y optimizar las rutas de asistencia técnica en campo. | Plot Geospatial Tracking | `/api/v1/plots?cooperativeId={id}` | Acceso al hardware interno del dispositivo (GPS del asesor) para ordenar parcelas por cercanía y reducir tiempos de traslado en La Yarada. |
| **RF-09** | **Vinculación y Gestión de Nodos IoT Virtuales**: Permitir registrar, consultar estado simulado y desvincular nodos sensores asociados a la parcela. | IoT Device Provisioning | `/api/v1/plots/{plotId}/iot-devices` | Asocia formalmente el monitoreo agroclimático con el lote del productor en la interfaz de la app. |
| **RF-10** | **Consulta de Telemetría Agroclimática Simulada**: Visualizar series de temperatura horaria, humedad ambiental y suelo generadas por el backend. | Weather & Telemetry | `/api/v1/plots/{plotId}/telemetries` | Alimenta los modelos de frío y estado del cultivo sin requerir despliegue de hardware físico. |
| **RF-11** | **Pronóstico Meteorológico Externo**: Consultar previsiones del tiempo a 7 días integrándose con una API meteorológica pública. | Weather & Telemetry | `/api/v1/plots/{plotId}/forecasts` | Anticipa eventos de calor anómalos durante el invierno o floración para planificar manejos preventivos. |
| **RF-12** | **Operatividad Offline-First y Sincronización**: Permitir el registro de muestreos y consulta de datos sin internet, sincronizándose al recuperar conexión. | Data Synchronization | `GET /api/v1/plots?updatedSince={ISO}` + SQLite local | Garantiza que Teodoro Mamani trabaje directamente al pie del árbol en zonas rurales sin cobertura. |
| **RF-13** | **Generación de Reporte Técnico de Parcela (PDF)**: Exportar un documento PDF con la ficha del lote, histórico de cosechas, BBI y prescripción de aclareo. | Reporting | `/api/v1/plots/{plotId}?format=pdf` | Brinda un documento auditable para trámites financieros, certificaciones de campo o informes técnicos. |

---

### 2.3. Núcleo de Regulación de Carga Frutal y Vecería (Core Domain)

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-14** | **Caracterización Agronómica de Parcelas**: Registrar variedad (Sevillana, Criolla), densidad de árboles por hectárea y edad de la plantación. | Olive Crop Characterization | `/api/v1/plots/{plotId}` | Datos agronómicos base sobre los cuales se parametrizan los cálculos de cuajado y floración. |
| **RF-15** | **Historial Plurianual de Cosechas**: Registrar cosechas de al menos 3 campañas anteriores (kilos totales, kg/árbol y proporción verde/negra). | Historical Yield & BBI | `/api/v1/plots/{plotId}/harvest-records` | Estructura la memoria productiva del fundo para diagnosticar la severidad de la alternancia del lote. |
| **RF-16** | **Cálculo Automatizado del Índice BBI (Hoblyn)**: Computar el índice de vecería (0.00 a 1.00) a partir de los datos históricos y clasificar el nivel de alternancia. | Historical Yield & BBI | `/api/v1/plots/{plotId}/metrics?name=BBI` | Ofrece al agricultor un diagnóstico numérico objetivo e inmediato desde el primer día de uso de la app. |
| **RF-17** | **Cómputo Dinámico de Frío Invernal y Alerta ENOS**: Acumular horas frío y porciones de Erez de mayo a agosto a partir de series térmicas; emitir alerta in-app si se detectan temperaturas > 25°C sostenidas en invierno que anulan la acumulación de frío (efecto El Niño / ENOS). | Chilling & Phenology Engine | `/api/v1/plots/{plotId}/metrics?name=CHILLING` | Modela la fisiología real del olivo costero y previene al productor ante inviernos cálidos anómalos que destruyen la inducción floral. |
| **RF-18** | **Muestreo Guiado de Cuajado en Campo**: Guiar al agricultor en el conteo sistemático de frutos por brote en árboles muestra en 15 minutos. | Crop Load Regulation | `/api/v1/plots/{plotId}/samplings` | Sustituye la estimación subjetiva al ojo por un dato cuantitativo riguroso de carga en el árbol. |
| **RF-19** | **Cálculo Algorítmico de Carga Frutal Objetivo**: Calcular la cantidad máxima sostenible de frutos por árbol y kilogramos para la campaña. | Crop Load Regulation | `/api/v1/plots/{plotId}/samplings` | Define el balance exacto para cosechar fruta comercial grande sin agotar las reservas de la próxima campaña. |
| **RF-20** | **Prescripción de Ventana e Intensidad de Aclareo**: Emitir notificación in-app y permitir consulta offline del porcentaje de frutos a remover (ej. 30%) y el rango de fechas límite antes del endurecimiento del carozo. | Crop Load Regulation | `/api/v1/plots/{plotId}/thinning-prescriptions` | Notificación autónoma local sin dependencia de servidores push externos; elimina el miedo a tirar fruta verde y asegura calibres comerciales. |
| **RF-21** | **Cierre de Campaña y Recálculo de Línea Base**: Asentar los kilos cosechados al final del ciclo, recalculando el BBI histórico de la parcela. | Historical Yield & BBI | `/api/v1/plots/{plotId}/harvest-records` | Retroalimenta los modelos agronómicos del fundo y comprueba el retorno de inversión del productor. |
| **RF-22** | **Dashboard Comparativo Interanual de Estabilización**: Gráfica que contrasta la curva de cosechas históricas frente a la curva estabilizada con Viora y caída del BBI. | Historical Yield & BBI | `/api/v1/plots/{plotId}/stability-comparatives` | **Demuestra que la solución genera resultados:** evidencia visual y numérica de la erradicación del año cero. |
| **RF-23** | **Tablero de Monitoreo de Riesgo de Socios (Gestor)**: Semáforo para el asesor técnico con el estado fenológico, frío y nivel de sobrecarga de los socios. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/dashboard` | Permite al equipo agronómico de la cooperativa priorizar la asistencia técnica en los fundos con sobrecarga. |
| **RF-24** | **Modelo Predictivo de Acopio Agregado Temprano**: Proyectar el volumen total de cosecha cooperativa (verde y negra) consolidando las cargas de los socios. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/acopio-projections` | Elimina la incertidumbre logística en almazara: permite comprar salmuera anticipada y firmar contratos seguros. |

---

## 3. Requisitos de Developer y Endpoints RESTful (RF-DEV-01 al RF-DEV-19)

Endpoints RESTful puros, sin verbos en las URIs, operados con métodos HTTP semánticos y con trazabilidad 1:1 a los RF móviles:

| Código | Requisito Técnico (API) | Método y URI RESTful | RF Móvil Cubierto | Contrato y Descripción |
| :--- | :--- | :--- | :---: | :--- |
| **RF-DEV-01** | **Registro de Usuario** | `POST /api/v1/auth/sign-up` | **RF-01**, **RF-03** | Body: `{ email, password, fullName, role, phoneNumber }`. Valida rol (`PRODUCTOR` o `GESTOR`). |
| **RF-DEV-02** | **Inicio de Sesión** | `POST /api/v1/auth/sign-in` | **RF-02** | Body: `{ email, password }`. Retorna Access Token JWT con claims de rol y Refresh Token. |
| **RF-DEV-03** | **Perfil de Usuario** | `GET /api/v1/users/{userId}`, `PATCH /api/v1/users/{userId}` | **RF-01** | Consulta y actualización parcial de datos de contacto del usuario. |
| **RF-DEV-04** | **Checkout Productor Independiente** | `POST /api/v1/subscriptions` | **RF-04** | Body: `{ planType: "PRODUCER", hectares: number }`. Retorna preferencia Mercado Pago Sandbox. |
| **RF-DEV-05** | **Webhook de Mercado Pago** | `POST /api/v1/webhooks/mercadopago` | **RF-04** | Receptor asíncrono de notificaciones de pago para activación inmediata de la suscripción. |
| **RF-DEV-06** | **Códigos de Activación de Cooperativa** | `POST /api/v1/cooperatives/{coopId}/invitation-codes`, `GET ...` | **RF-06** | El gestor genera códigos de activación para su bolsa de socios y consulta cupos disponibles. |
| **RF-DEV-07** | **Canje de Código de Activación de Socio** | `POST /api/v1/users/{userId}/cooperative-memberships` | **RF-05** | Body: `{ invitationCode }`. Asocia al agricultor a la licencia corporativa sin pago individual. |
| **RF-DEV-08** | **Crear Parcela Georreferenciada** | `POST /api/v1/plots` | **RF-07**, **RF-14** | Body: `{ name, areaHectares, coordinates, variety, plantDensity, plantationYear }`. |
| **RF-DEV-09** | **Listado de Parcelas / Sincronización** | `GET /api/v1/plots` | **RF-07**, **RF-08**, **RF-12** | Query params: `?userId={id}`, `?cooperativeId={id}`, `?updatedSince={ISO}`. Resuelve mapas y delta sync. |
| **RF-DEV-10** | **Detalle y Edición de Parcela** | `GET /api/v1/plots/{plotId}`, `PATCH /api/v1/plots/{plotId}` | **RF-07**, **RF-14** | Consulta y actualización de atributos técnicos de la parcela. |
| **RF-DEV-11** | **Gestión de Nodos IoT Virtuales** | `POST /api/v1/plots/{plotId}/iot-devices`, `DELETE .../{deviceId}` | **RF-09** | Vincula un sensor virtual (nombre y tipo) a la parcela o lo desvincula. |
| **RF-DEV-12** | **Consulta de Telemetría Simulada** | `GET /api/v1/plots/{plotId}/telemetries` | **RF-10**, **RF-17** | Query params: `?latest=true` o `?startDate={ISO}&endDate={ISO}`. Retorna series térmicas horarias. |
| **RF-DEV-13** | **Pronóstico Meteorológico** | `GET /api/v1/plots/{plotId}/forecasts` | **RF-11** | Consulta previsiones meteorológicas consumiendo API pública externa. |
| **RF-DEV-14** | **Histórico de Cosechas** | `POST /api/v1/plots/{plotId}/harvest-records`, `GET .../harvest-records` | **RF-15**, **RF-21** | Body: `{ campaignYear, totalYieldKg, greenKg, blackKg }`. Auditoría anual de producción. |
| **RF-DEV-15** | **Métricas: BBI y Frío Invernal (con Alerta ENOS)** | `GET /api/v1/plots/{plotId}/metrics` | **RF-16**, **RF-17** | Query params: `?name=BBI` (índice Hoblyn) o `?name=CHILLING` (porciones Erez, horas frío y flag `enosAnomalyDetected: boolean`). |
| **RF-DEV-16** | **Muestreos de Cuajado y Carga Objetivo** | `POST /api/v1/plots/{plotId}/samplings`, `GET .../samplings` | **RF-18**, **RF-19** | Body: conteo de frutos por brote. La respuesta computa y retorna la carga objetivo del árbol. |
| **RF-DEV-17** | **Prescripción de Aclareo** | `GET /api/v1/plots/{plotId}/thinning-prescriptions` | **RF-20** | Retorna la ventana de aclareo (fechas límite) y el porcentaje de frutos a remover, consumible offline. |
| **RF-DEV-18** | **Tablero Semafórico de Riesgo de Socios** | `GET /api/v1/cooperatives/{coopId}/risk-dashboard` | **RF-23** | Consulta el estado fenológico consolidado, vulnerabilidad térmica y sobrecarga frutal de los predios socios. |
| **RF-DEV-19** | **Consolidado de Acopio Cooperativo** | `GET /api/v1/cooperatives/{coopId}/acopio-projections` | **RF-24** | Query param: `?campaignYear={year}`. Agrega las cargas proyectadas de todos los socios (verde y negra). |

---

## 4. Fundamentos de Arquitectura Core del Backend (RF-CORE-01 al RF-CORE-04)

| Código | Fundamento de Arquitectura | Descripción Técnica | Componente o Estándar |
| :--- | :--- | :--- | :--- |
| **RF-CORE-01** | **Arquitectura en Capas DDD** | Separación limpia de responsabilidades: Dominio (reglas y modelos puros), Aplicación (casos de uso), Infraestructura (persistencia, pasarelas, simulador) y Presentación (controladores REST). | Domain-Driven Design (DDD) |
| **RF-CORE-02** | **Manejo Centralizado de Excepciones** | Interceptor global que procesa errores y responde bajo el estándar RFC 7807 (Problem Details), entregando estados HTTP semánticos y mensajes legibles sin stacktraces. | ControllerAdvice / Problem Details |
| **RF-CORE-03** | **Convenciones de Nomenclatura y Mapeo** | Mapeo automático de propiedades camelCase en código a columnas de base de datos snake_case y tablas pluralizadas en el ORM. | ORM Naming Strategy |
| **RF-CORE-04** | **Documentación Viva de APIs con OpenAPI** | Generación interactiva del contrato Swagger UI disponible en `/swagger-ui.html` para inspección de esquemas y pruebas de endpoints. | OpenAPI 3.0 / Swagger UI |

---

## 5. Requisitos de Investigación Técnica: Spikes (RF-SPK-01 al RF-SPK-03)

Exactamente tres Spikes técnicos que mitigan riesgos e incertidumbre en los tres frentes clave:

| Código | Investigación Técnica (Spike) | Criterio de Aceptación (PoC Entregable) | Justificación y Mitigación de Riesgo |
| :--- | :--- | :--- | :--- |
| **RF-SPK-01** | **Modelo Matemático Dinámico de Erez para Frío Invernal** | Algoritmo en backend que procese series horarias de temperatura simulada y calcule porciones de frío de Erez contrastándolas contra umbrales del olivo. | Reduce la incertidumbre matemática y agronómica al modelar inviernos costeros cálidos en La Yarada. |
| **RF-SPK-02** | **Persistencia Local y Sincronización Offline-First en Móvil** | Prototipo de base de datos SQLite local (Room en Android / sqflite en multiplataforma) que permita registrar muestreos sin red y sincronizarlos al reconectar. | Mitiga el riesgo de bloqueo operativo en zonas rurales sin cobertura celular al pie del olivo. |
| **RF-SPK-03** | **Integración de Mercado Pago Checkout Pro (Sandbox) para Suscripciones SaaS** | Prototipo que genere preferencias de pago en Mercado Pago Sandbox para planes diferenciados y procese el webhook de confirmación. | Cumple con el Anexo D del curso (Spike de pasarela de pago para SaaS) y valida la viabilidad del cobro digital. |

---

## 6. Requisitos de la Landing Page Web (RF-LP-01 al RF-LP-08)

| Código | Requisito Funcional (Landing Page) | Justificación | Propuesta de Valor |
| :--- | :--- | :--- | :--- |
| **RF-LP-01** | **Hero Section y Propuesta de Valor**: Presentar encabezado persuasivo y elementos visuales explicando cómo Viora rompe la vecería olivarera. | Captar el interés del visitante en los primeros segundos de navegación web. | Comunica la solución al problema principal del productor: cosechas alternantes. |
| **RF-LP-02** | **Redirección a Tiendas Móviles (CTAs)**: Botones destacados de descarga hacia Google Play Store (Android) y Apple App Store (iOS). | Canalizar la intención del visitante hacia la instalación de la aplicación móvil. | Convierte visitas web en usuarios activos en sus dispositivos móviles. |
| **RF-LP-03** | **Beneficios para el Productor Olivarero**: Sección orientada a Teodoro Mamani destacando regulación de carga, aclareo y calibres comerciales mayores. | Generar empatía inmediata con el agricultor familiar independiente. | Demuestra cómo la app estabiliza los ingresos familiares año tras año. |
| **RF-LP-04** | **Beneficios para el Gestor Cooperativo**: Sección orientada a Rubén Ticona explicando el modelo de acopio temprano y mapa de parcelas socias. | Activar el interés de directivos y profesionales agronómicos de cooperativas. | Explica cómo Viora elimina la incertidumbre logística en la recepción de fruto. |
| **RF-LP-05** | **Visualización de Tarifas en Soles (PEN)**: Tabla comparativa transparente del Plan Productor (S/ por ha/año) y Plan Cooperativo (S/ anual corporativo), con referencia a expansión internacional en roadmap. | Transparentar la estructura de precios local del SaaS antes de la descarga móvil sin sobrecosto de multimoneda. | Facilita la decisión de compra en moneda nacional y simplifica la lógica de facturación del MVP. |
| **RF-LP-06** | **Presentación del Equipo Fundador**: Fichas de los integrantes del equipo con roles y enlaces profesionales (LinkedIn / GitHub). | Humanizar la marca y evidenciar la solvencia técnica del equipo de desarrollo. | Construye confianza y legitimidad ante directivas agrarias y evaluadores. |
| **RF-LP-07** | **Términos de Servicio**: Enlace en el pie de página a las condiciones contractuales de uso del SaaS y delimitación de responsabilidades. | Formalizar el marco legal de uso del servicio digital. | Otorga certeza y transparencia jurídica a usuarios y organizaciones. |
| **RF-LP-08** | **Política de Privacidad**: Enlace en el pie de página a la política de tratamiento y confidencialidad de datos agrícolas (Ley N° 29733). | Garantizar el cumplimiento regulatorio en el tratamiento de datos productivos. | Brinda tranquilidad sobre la privacidad de la información de cosecha del fundo. |

---

## 7. Matriz de Requisitos No Funcionales Verificables (RNF)

| Código | Atributo de Calidad | Requisito No Funcional | Criterio Verificable / Evidencia | Justificación |
| :--- | :--- | :--- | :--- | :--- |
| **RNF-01** | Desarrollo Móvil Nativo | La aplicación para el Productor Olivarero debe desarrollarse de forma nativa en Android utilizando lenguaje Kotlin y Jetpack Compose. | Código fuente nativo en repositorio, Gradle configurado, APK ejecutable en smartphone físico Android. | Cumple el requisito de desarrollo móvil nativo del curso y optimiza la interfaz para teléfonos de campo. |
| **RNF-02** | Desarrollo Multiplataforma | La aplicación para el Gestor Técnico debe desarrollarse en framework multiplataforma (Flutter o React Native) compatible con Android e iOS. | Código fuente multiplataforma, ejecución en emulador/dispositivo móvil o tablet. | Cumple el requisito de experiencia móvil multiplataforma para supervisión en tablet o smartphone. |
| **RNF-03** | Persistencia Offline-First | La app móvil debe persistir datos localmente en SQLite (vía Room o sqflite), permitiendo operar sin conexión a internet. | Registro de muestreos en modo avión; los datos persisten al reiniciar la app y se sincronizan al recuperar señal. | Permite que Teodoro Mamani utilice la app al pie del olivo en zonas rurales sin cobertura. |
| **RNF-04** | Persistencia Relacional | El backend debe utilizar un motor de base de datos relacional PostgreSQL para la persistencia central de parcelas, usuarios y cosechas. | Scripts DDL/migraciones (Flyway o JPA), diagrama relacional consistente, contenedor de base de datos activo. | Garantiza integridad referencial y atomicidad (ACID) en los datos históricos del cultivo. |
| **RNF-05** | Seguridad y Roles (RBAC) | El acceso a los recursos de la API debe estar protegido por tokens JWT con claims de rol (`ROLE_PRODUCTOR` y `ROLE_GESTOR`). | Peticiones sin token retornan HTTP `401 Unauthorized`; llamadas con rol indebido retornan `403 Forbidden`. | Protege la privacidad de las parcelas y evita que un productor acceda a reportes globales de otros socios. |
| **RNF-06** | Internacionalización (i18n) | La aplicación móvil y los mensajes del backend deben soportar Español (`es`) e Inglés (`en`) mediante archivos de recursos localizados. | Conmutación de idioma en la interfaz móvil; resolución dinámica mediante cabecera `Accept-Language` en API. | Prepara la solución para mercados internacionales y evaluadores bilingües. |
| **RNF-07** | Simulación Agroclimática | El backend debe incorporar un servicio simulador que genere series temporales de clima para alimentar los modelos sin hardware físico. | Endpoint `/telemetries` retorna datos periódicos coherentes con la estacionalidad de La Yarada sin requerir sensores reales. | Viabiliza la evaluación integral del software dentro del alcance académico del ciclo sin dependencia de hardware. |
| **RNF-08** | Documentación de API | Todos los endpoints del backend deben estar documentados interactivamente mediante OpenAPI 3.0 (Swagger UI). | Interfaz Swagger operativa en `/swagger-ui.html` mostrando esquemas de petición, respuesta y autenticación JWT. | Evidencia obligatoria de diseño y prueba de integración frontend-backend. |
| **RNF-09** | Especificación BDD | Los criterios de aceptación de las historias de usuario deben especificarse mediante archivos ejecutables `.feature` con sintaxis Gherkin. | Archivos `.feature` estructurados con escenarios `Given-When-Then` en el repositorio del proyecto. | Evidencia explícita exigida en la rúbrica del curso para la validación de software. |
| **RNF-10** | Contenerización DevOps | El backend y la base de datos deben estar contenerizados mediante Docker y orquestados con Docker Compose. | Archivo `docker-compose.yml` funcional que levanta la API y la BD con un único comando (`docker compose up`). | Asegura portabilidad y reproducibilidad del entorno de evaluación en cualquier máquina del docente o equipo. |
| **RNF-11** | Estandarización de Telecomunicaciones (E.164) | La validación y normalización de números telefónicos internacionales debe regirse por la norma ITU-T E.164 utilizando la biblioteca estándar libphonenumber en backend y frontend. | Comprobación de prefijo internacional y longitud oficial según el país seleccionado; rechazo de números inválidos. | Garantiza consistencia de datos, interoperabilidad y viabiliza la expansión internacional del SaaS. |
| **RNF-LP-01** | Diseño Responsivo (RWD) | La landing page debe adaptarse fluidamente a pantallas móviles, tablets y computadoras de escritorio. | Inspección en DevTools en resoluciones móvil (375px), tablet (768px) y desktop (1200px) sin scroll horizontal. | La mayoría de agricultores y directivos abrirán el enlace desde enlaces compartidos en sus teléfonos móviles. |
| **RNF-LP-02** | Accesibilidad Visual | Tipografía clara, jerarquía visual definida y relaciones de contraste adecuadas entre textos y fondos. | Textos legibles bajo luz diurna, elementos interactivos con área táctil accesible y fuentes modernas. | Facilita la lectura a agricultores de mediana y avanzada edad (como Teodoro Mamani). |
| **RNF-LP-03** | Estructura Semántica SEO | Construcción con etiquetas semánticas HTML5 (`header`, `main`, `section`, `footer`) y metadatos básicos descriptivos. | Código HTML estructurado con un único `h1`, metatags `title` y `description` acordes a Viora. | Permite que motores de búsqueda y enlaces en redes sociales generen previsualizaciones correctas. |
| **RNF-LP-04** | Redirección Inteligente | Enlaces directos a las tiendas de aplicaciones oficiales destacando la plataforma según el dispositivo del usuario. | Botones con enlaces hacia Google Play Store y App Store, o visualización de código QR en pantallas de escritorio. | Minimiza la fricción para que el usuario descargue e instale la app en su dispositivo. |

---

## 8. Balance Cuantitativo del Ecosistema

* **Requisitos Funcionales Móviles:** **24 RF** (Incluye flujo dual de suscripciones, comparativa de resultados, IoT simulado y vecería).
* **Requisitos Técnicos de Developer (API RESTful):** **18 Endpoints** limpios y bien definidos.
* **Fundamentos de Arquitectura Core:** **4 Fundamentos**.
* **Spikes de Investigación Técnica:** **3 Spikes** (Erez, Offline-First y Mercado Pago Sandbox).
* **Requisitos Funcionales de Landing Page:** **8 RF**.
* **Requisitos No Funcionales Verificables:** **14 RNF**.
* **Gran Total Consolidado:** **71 Requisitos** estructurados, trazables y perfectamente dimensionados.
