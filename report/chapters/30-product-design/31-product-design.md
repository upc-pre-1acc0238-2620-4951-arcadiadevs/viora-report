# Capítulo III: Product UX/UI Design

## Product Design

Esta sección documenta el diseño de producto de Viora como parte integral de la arquitectura del sistema, cubriendo tanto las bases visuales compartidas como la organización del contenido y la propuesta de interacción de las tres superficies del ecosistema: la aplicación del productor, la aplicación del gestor técnico y el landing informativo. El desarrollo se organiza en cinco bloques: Style Guidelines, Information Architecture, Landing Page UI Design, Mobile Applications UX/UI Design y Mobile Applications Prototyping.

### Style Guidelines

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* definir un repositorio central y organizado de assets, fuentes y demás recursos visuales de uso común para el equipo, que garantice una presentación consistente entre el Landing Page y las aplicaciones móviles, desarrollado en tres subsecciones: General Style Guidelines, Web Style Guidelines y Mobile Style Guidelines.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca ya existe en `report/assets/viora-brand/`, con paleta de color, sistema de construcción del logotipo, icono, y las variantes de isologotipo e isotipo en negro, verde y blanco. Falta documentar tipografía, espaciado y tono de comunicación.
>
> *Enlace con la arquitectura de información:* el Style Guide deberá nombrar pantallas y componentes exactamente con las etiquetas fijadas en Labeling Systems y respetar la separación por audiencia (productor, gestor, visitante) establecida en Organization Systems, sin introducir variantes visuales que sugieran una jerarquía distinta de la ya aprobada.

#### General Style Guidelines

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* explicar las decisiones y referencias visuales de Branding, Typography, Colors y Spacing, así como las dimensiones del tono de comunicación (divertido/serio, formal/casual, respetuoso/irreverente, entusiasta/sereno), pudiendo tomarse como referencia un Design System existente con adaptaciones, y sustentar los principios y elementos de diseño considerados.
>
> *Insumos disponibles en el repositorio:* `report/assets/viora-brand/viora-color-palette.png` cubre Colors y `viora-construction-system.png` cubre la construcción del logotipo; las variantes de isologotipo e isotipo resuelven Branding. Quedan pendientes Typography, Spacing y las cuatro dimensiones del tono de comunicación, que no tienen insumo previo.
>
> *Enlace con la arquitectura de información:* el tono y los principios visuales deben ser coherentes con la distinción por audiencia y con el vocabulario controlado de Labeling Systems, de modo que el registro comunicacional no contradiga las asociaciones mentales ya fijadas para cada etiqueta.

#### Web Style Guidelines

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* el enunciado nombra esta subsección como parte de las bases de Style Guidelines, junto con General y Mobile Style Guidelines, sin desarrollar criterios propios distintos de los generales; se entiende que adapta las decisiones de branding, tipografía, color y espaciado de General Style Guidelines a las particularidades del navegador web de escritorio.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* debe ser consistente con la secuencia de ocho bloques del landing y con la ausencia de indexación de las rutas de aplicación, definidas en Organization Systems y en SEO Tags and Meta Tags respectivamente.

#### Mobile Style Guidelines

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* al igual que Web Style Guidelines, el enunciado la nombra como parte de las bases de Style Guidelines sin desarrollar criterios propios; se entiende que adapta las decisiones de General Style Guidelines a las restricciones de las aplicaciones móviles.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* debe considerar explícitamente las condiciones de uso en campo del productor (sol intenso, guantes, dispositivos de gama baja, operación offline) que ya condicionaron los árboles de navegación de Organization Systems y el límite de cinco pestañas inferiores de Navigation Systems.

### Information Architecture

El equipo abordó la arquitectura de información de Viora en dos pasos secuenciales. Primero construyó una ontología del dominio olivarero: un inventario de qué existe (clases), cómo se conecta (relaciones) y qué reglas lo limitan (restricciones de negocio). Solo después, sobre ese vocabulario ya validado, construyó la taxonomía de navegación, facetas y etiquetas que se documenta en las cinco subsecciones siguientes. La razón de este orden es de consistencia: si los labels, los filtros de búsqueda y las rutas de navegación se hubieran diseñado directamente sobre la pantalla, el equipo habría corrido el riesgo de inventar sinónimos, de ofrecer filtros que no corresponden a ningún dato real del sistema, o de proponer rutas que no recorren ninguna relación existente entre las entidades del dominio. Al derivar cada decisión de un vocabulario controlado, cada etiqueta corresponde a una clase o un atributo real, cada filtro de búsqueda corresponde a un atributo real, y cada ruta de navegación recorre una relación real entre entidades del dominio.

El alcance de esta arquitectura de información cubre las tres superficies del ecosistema Viora: la aplicación móvil del productor olivarero, la aplicación móvil del gestor técnico y el landing informativo dirigido a visitantes.

**La ontología como fundamento.** La ontología del dominio identificó veintitrés clases, agrupadas en siete categorías según el tipo de concepto que representan: actores, unidades territoriales, el ciclo productivo anual, las clases de medición y diagnóstico, las intervenciones de manejo, los resultados comerciales y los mecanismos de suscripción y acceso. La tabla siguiente presenta las veintitrés clases con su definición y su respaldo en los requisitos funcionales (RF) e historias de usuario (US) de la especificación.

| Grupo | ID | Clase (EN / ES) | Definición | Respaldo RF/US |
|:---|:---|:-------------------------------------|:---------------------------------------------------------------------------------------------|:-------------|
| Actor | A1 | Olive Producer (productor olivarero) | Persona a cargo del manejo agronómico de uno o más fundos; decide aclareo, poda y riego. | RF-01–RF-03; US01–US05 |
| Actor | A2 | Technical Advisor (asesor técnico) | Profesional de la organización olivarera que acompaña a varios productores y consolida la proyección territorial. | RF-01–RF-03, RF-06, RF-08; US12, US31, US32 |
| Actor | A3 | Cooperative (cooperativa) | Organización que agrupa productores, consolida volumen y negocia su colocación comercial. | RF-05, RF-06, RF-23, RF-24; US31, US32 |
| Unidad Territorial | B1 | Plot (parcela) | Unidad espacial y agronómica mínima de gestión; pivote de toda la trazabilidad del sistema. | RF-07, RF-14; US09–US11 |
| Unidad Territorial | B2 | Sensor Node (nodo sensor virtual) | Dispositivo virtual vinculado a una parcela para la ingesta de telemetría simulada por el backend. | RF-09, RF-10; US13–US16 |
| Unidad Territorial | B3 | Territorial Sector (sector territorial) | Agrupación de parcelas por valle o zona para priorizar la asistencia técnica. | RF-08, RF-23; US12, US31 |
| Ciclo Productivo | C1 | Campaign (campaña) | Ciclo anual completo desde el letargo invernal hasta la cosecha y comercialización. | RF-15, RF-21; US20, US29 |
| Ciclo Productivo | C2 | Alternate Bearing (vecería / alternancia productiva) | Fenómeno fisiológico de sucesión ON/OFF cuya causa directa es la sobrecarga frutal. | US20, US26, US29 |
| Ciclo Productivo | C3 | Thinning Window (ventana de aclareo) | Rango fenológico acotado tras el cuajado en que la reducción de carga preserva reservas. | RF-20; US27, US28 |
| Ciclo Productivo | C4 | Plot Campaign (campaña de la parcela) | Instancia anual de una parcela dentro de una campaña; portador real del BBI, la fase ON/OFF y el cierre. | RF-15, RF-16, RF-21, RF-22; US20, US29 |
| Medición / Diagnóstico | D1 | Sampling Round (ronda de muestreo) | Conteo sistemático de frutos por brote en árboles muestra, registrado en campo. | RF-12, RF-18; US24, US25 |
| Medición / Diagnóstico | D2 | Crop Load (carga frutal) | Cantidad de fruto que soporta el árbol respecto de su estructura; única variable directamente regulable por el productor. | RF-19; US26 |
| Medición / Diagnóstico | D3 | Harvest Record (registro de cosecha) | Anotación del peso y calibre obtenidos al cierre de campaña. | RF-15, RF-21; US20, US21, US29 |
| Medición / Diagnóstico | D4 | BBI / Biennial Bearing Index (índice de alternancia) | Indicador que cuantifica la alternancia comparando campañas consecutivas, en un rango de 0 (estable) a 1 (alternancia severa). | RF-16; US20 |
| Medición / Diagnóstico | D5 | Chill Accumulation (acumulación de frío) | Acumulación invernal de frío que condiciona la inducción floral de la campaña siguiente. | RF-17; US22, US23 |
| Intervención | E1 | Fruit Thinning (aclareo) | Eliminación de parte de los frutos cuajados para reducir carga y preservar reservas. | RF-20; US28 |
| Intervención | E2 | Thinning Prescription (prescripción de aclareo) | Recomendación calculada de porcentaje de remoción y ventana de ejecución, derivada del muestreo. | RF-20; US27 |
| Intervención | E3 | Thinning Execution Record (registro de ejecución) | Asiento de la labor de aclareo efectivamente realizada, con fecha y porcentaje real. | US28 |
| Resultado Comercial | F1 | Campaign Closure (cierre de campaña) | Asentamiento definitivo de los kilos cosechados y recálculo del BBI y la línea base. | RF-21, RF-22; US29 |
| Resultado Comercial | F2 | Cooperative Intake Projection (proyección de acopio) | Estimación temprana del tonelaje agregado verde y negro a partir de las cargas de los socios. | RF-24; US32 |
| Resultado Comercial | F3 | Technical Dossier (expediente técnico) | Documento auditable con la ficha de la parcela, el BBI, el frío acumulado y las prescripciones. | RF-13; US30 |
| Suscripción / Acceso | G1 | Subscription (suscripción) | Modalidad comercial de acceso, por hectárea o corporativa, con tarifas en soles peruanos. | RF-04; US06 |
| Suscripción / Acceso | G2 | Cooperative Membership (membresía cooperativa) | Vínculo entre un socio y una cooperativa habilitado por un código de activación. | RF-05, RF-06 |

Sobre ese vocabulario de clases, la ontología estableció veintidós relaciones que fijan qué puede conectarse con qué y con qué cardinalidad. Estas relaciones son las únicas rutas que la navegación de Organization Systems tiene permitido recorrer.

| ID | Sujeto | Predicado | Objeto | Cardinalidad | Sustento |
|:---|:------------|:------------------------|:----------------------------------------------|:------------------|:-------------|
| R1 | Producer | gestiona | Plot | 1:N | RF-07; US09, US10 |
| R2 | Cooperative | afilia (vía membresía y sector) | Plot | 1:N | RF-06, RF-08; US12 |
| R3 | Technical Advisor | supervisa | Plot | 1:N | RF-08, RF-23; US31 |
| R4 | Plot | pertenece a, reificada en Plot Campaign | Campaign | N:M resuelta 1:1 por Plot Campaign | RF-15; US20 |
| R5 | Plot Campaign | cierra como | Campaign Closure | 1:1 | RF-21; US29 |
| R6 | Plot | aloja | Sensor Node | 1:N | RF-09; US13 |
| R7 | Sensor Node | emite (vía series térmicas) | Chill Accumulation | 1:N | RF-10, RF-17; US22 |
| R8 | Chill Accumulation | condiciona | Floral Induction (atributo de Plot Campaign) | N:1 | Mecanismo fisiológico documentado en la investigación de campo |
| R9 | ENSO | amplifica (anomalía térmica) | Chill Accumulation | 1:N | RF-17; US23 |
| R10 | Harvest Record | alimenta | BBI | N:1 (mínimo 3 registros) | RF-15, RF-16; US20 |
| R11 | BBI | caracteriza | Alternate Bearing | 1:1 por Plot Campaign evaluada | RF-16; US20 |
| R12 | Sampling Round | estima | Crop Load | 1:1 por ronda representativa | RF-18, RF-19; US24–US26 |
| R13 | Sampling Round | deriva | Thinning Prescription | 1:1 por ventana | RF-20; US27 |
| R14 | Crop Load | justifica | Thinning Prescription | 1:1 | RF-19, RF-20; US26, US27 |
| R15 | Thinning Window | restringe | Fruit Thinning | 1:N | RF-20; US27, US28 |
| R16 | Thinning Prescription | autoriza | Fruit Thinning | 1:N | US27, US28 |
| R17 | Fruit Thinning | registra como | Thinning Execution Record | 1:1 por labor | US28 |
| R18 | Excess Crop Load | agota | Carbohydrate Reserves (atributo de Plot) | 1:1 fisiológico | Mecanismo fisiológico documentado en la investigación de campo |
| R19 | Depleted Reserves | inhibe | Floral Induction de la Plot Campaign siguiente | 1:1 | Mecanismo fisiológico documentado en la investigación de campo |
| R20 | Campaign Closure | actualiza | Cooperative Intake Projection | N:1 | RF-21, RF-24; US29, US32 |
| R21 | Thinning Execution Record | reproyecta | Cooperative Intake Projection | N:1 | US32 |
| R22 | Subscription / Cooperative Membership | habilita (hasta cupo de hectáreas) | Plot | 1:N | RF-04–RF-06 |

Doce reglas de negocio ontológicas complementan las clases y las relaciones, fijando los valores límite y las condiciones que ninguna pantalla, filtro o ruta de navegación puede contradecir.

| ID | Regla | Valor / condición | Fuente |
|:---|:--------------------------------------------|:----------------------------------------------------------------------------------------|:-------------|
| BR1 | Rango del BBI | 0,00 a 1,00 (0 = estable, 1 = alternancia severa) | RF-16; US20 |
| BR2 | Mínimo histórico para BBI oficial | al menos 3 campañas consecutivas por parcela; con menos, el sistema declara insuficiencia | RF-15; US20 |
| BR3 | Remoción de aclareo | entre 0 % y 40 %; cualquier valor mayor se rechaza | US27 |
| BR4 | Umbral de sobrecarga severa | carga estimada superior al 30 % sobre la capacidad calibrada de la variedad | US26, US31 |
| BR5 | Cierre de ventana de aclareo | cierra con el endurecimiento del carozo; la consulta o ejecución posterior emite advertencia de eficacia reducida | RF-20; US27, US28 |
| BR6 | Referencia de grados-día no computable en el MVP | ~680 grados-día como referencia agronómica, sin cálculo disponible; el cierre se determina por el evento observado | Decisión de modelado, sin traza RF |
| BR7 | Ventana de frío | acumulación entre el 1 de mayo y el 31 de agosto, con alerta por temperatura diurna sostenida sobre 25 °C | RF-17; US22, US23 |
| BR8 | Representatividad del muestreo | mínimo 5 árboles distribuidos en el lote; con menos se bloquea el cálculo | US25, US26 |
| BR9 | Archivado lógico de parcela | la baja marca la parcela como inactiva y preserva cosechas, muestreos y prescripciones | RF-DEV-10 |
| BR10 | Cobertura mínima de proyección cooperativa | con menos del 50 % de parcelas socias muestreadas, la proyección se marca preliminar | US32 |
| BR11 | Moneda y planes visibles | tarifas en soles peruanos (PEN); plan por hectárea o membresía corporativa | RF-LP-05; US36; RF-04 |
| BR12 | Telemetría simulada sin hardware físico | los nodos sensores son dispositivos virtuales cuya serie térmica y de humedad genera el backend | RF-09, RF-10; US13–US17 |

**Tres decisiones de modelado.** Tres decisiones de la ontología condicionan de forma directa el resto de la arquitectura de información y conviene destacarlas antes de entrar en la taxonomía.

La primera es que el clima se modela como contexto y amplificador de la vecería, nunca como su causa raíz. La causa directa de la alternancia productiva es la sobrecarga de carga frutal, que es la única variable que el productor puede regular deliberadamente; el frío insuficiente y el fenómeno ENOS condicionan y amplifican un ciclo que ya se inició por sobrecarga, pero no lo originan. Esta decisión tiene una consecuencia directa sobre el producto: ninguna pantalla presenta el clima como diagnóstico de la vecería, y la etiqueta de clima se mantiene siempre como lectura contextual, separada de la prescripción de aclareo.

La segunda es que la ronda de muestreo y la prescripción de aclareo se modelan como entidades separadas, no como una sola. La ronda de muestreo registra un hecho observado en campo —árboles contados, frutos por brote, fecha, estado de sincronización— mientras que la prescripción registra una decisión calculada —porcentaje de remoción y ventana vigente—. Ambas tienen ciclos de vida distintos: una ronda puede existir sin llegar a generar una prescripción si la muestra no es representativa, y una prescripción puede auditarse contra varias ejecuciones parciales. Fusionar ambas entidades impediría distinguir un muestreo pendiente de sincronizar de una prescripción vigente, y esa distinción es la que sostiene la separación de pantallas descrita en Organization Systems.

La tercera es que la campaña de la parcela se modela como una clase propia y no como un simple calificador disperso en otras relaciones. El cruce entre una parcela y una campaña concreta —por ejemplo, "Parcela El Olivar, Campaña 2026"— es el portador real del índice de alternancia, de la fase ON u OFF del ciclo productivo, del estado de la inducción floral y del cierre de esa campaña en esa parcela específica; ninguno de esos datos pertenece a la parcela en abstracto ni a la campaña en abstracto, porque dos parcelas del mismo productor pueden estar en fases opuestas durante el mismo año. Declarar esta clase convierte en un nodo verificable lo que la navegación ya recorría de forma implícita como "Parcela mayor que Campaña 2026", y es ese nodo el que la interfaz instancia en la ruta jerárquica Parcela / Campaña.

**Dos fronteras declaradas.** La arquitectura de información reconoce dos fronteras abiertas que conviene declarar de forma explícita.

La primera es un conflicto identificado entre dos fuentes de la especificación sobre qué ocurre cuando se da de baja una parcela: una historia de usuario describe una eliminación definitiva del inventario, mientras que un requisito funcional posterior describe un archivado lógico que preserva el historial. El equipo adoptó el archivado lógico porque es la única alternativa consistente con el resto del modelo: la regla de negocio que exige un mínimo de tres campañas consecutivas para calcular el índice de alternancia oficial, junto con el cierre de campaña que recalcula la línea base sobre esa misma serie histórica, quedarían rotos si una baja definitiva destruyera los registros previos de la parcela. Reconciliar formalmente la historia de usuario original con esta decisión de modelado queda declarado como una deuda pendiente de la especificación de requisitos, no como un punto resuelto.

La segunda frontera es la de la simulación de telemetría. Los nodos sensores del sistema son dispositivos virtuales: se registran, se consultan y se desvinculan como entidades de la aplicación, pero la serie térmica y de humedad que emiten la genera el backend, conforme a los requisitos funcionales de gestión de nodos y de ingesta de telemetría. Ningún cálculo del producto mínimo viable —ni la acumulación de frío, ni la alerta por el fenómeno ENOS, ni la alerta de estrés hídrico— depende de hardware efectivamente instalado en campo. El despliegue de estaciones microclimáticas y sondas de suelo reales queda fuera del alcance actual y diferido a una etapa posterior del producto.

#### Organization Systems

El enunciado exige dos decisiones complementarias en esta subsección: en qué grupos de información se aplica cada estructura de organización visual (jerárquica, secuencial o matricial) y en qué casos se utiliza cada esquema de categorización de contenido (alfabético, cronológico, por tópicos o por audiencia). Ambas decisiones se derivan directamente de las clases y relaciones de la ontología, y se documentan a continuación antes de presentar los tres árboles de navegación resultantes.

**Estructuras de organización visual**

| Estructura | Dónde aplica | Sustento ontológico |
|:---|:----------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|
| Jerárquica | "Mis parcelas / Campaña 2026 / Muestreos, Prescripción, Cierre" en la app del productor; "Cooperativa / Sector / Socio / Parcela" en la cartera del gestor. | Recorre la gestión del productor sobre sus parcelas, la pertenencia de la parcela a la campaña y la afiliación y supervisión que sostienen la cartera del gestor. Plot es el pivote espacial de todo el modelo. |
| Secuencial | Flujo de muestreo guiado (elegir parcela, contar árboles, ver carga, recibir prescripción); checkout de suscripción (plan, hectáreas, pago, activación). | Recorre la cadena de muestreo que estima la carga y deriva la prescripción, y la habilitación de parcelas por suscripción o membresía. Cada paso exige completar el anterior por la regla de representatividad mínima del muestreo. |
| Matricial | Panel de riesgo del gestor: cartera de socios cruzada por estado de semáforo o por fase fenológica; proyección de acopio verde y negra por sector. | Cruza la supervisión priorizada del gestor con los cierres y ejecuciones que alimentan la proyección de acopio. Ninguna pantalla del productor usa una organización matricial: en campo se descarta por el riesgo de sobrecarga cognitiva del usuario. |

**Esquemas de categorización**

| Esquema | Dónde aplica | Dónde NO aplica |
|:---|:-------------------------------------------------------------------------------------------------|:----------------------------------------------------------------------|
| Por audiencia | Nivel raíz de todo el ecosistema: productor, gestor técnico y visitante, cada uno con una superficie propia y un vocabulario propio. | Los permisos y los datos nunca se mezclan entre audiencias: el visitante no ve parcelas y el productor no ve la cartera agregada de la cooperativa. |
| Cronológico | Campañas en orden descendente; muestreos dentro de una campaña; estado de la ventana de aclareo. | No se usa para ordenar lo que es un estado más que una fecha: el semáforo de riesgo ordena por severidad, no por antigüedad. |
| Por tópico | El clima y el frío acumulado, agregados en Inicio y transversales a todas las parcelas; los nodos sensores, dentro de la parcela que los aloja; la carga, dentro de la campaña; el acopio, en la vista del gestor. | El clima nunca se presenta como causa de la vecería, sino como contexto que la condiciona; por eso el tópico climático se lee agregado en Inicio y se administra —los nodos— por parcela, nunca mezclado con el diagnóstico de carga. |
| Alfabético | Listados largos sin prioridad agronómica: nómina de socios, sectores territoriales, equipo en el landing. | Nunca en las parcelas del productor, que ordenan por actividad o estado, ni en los resultados de búsqueda, que ordenan de forma cronológica descendente por defecto. |

**Árbol de navegación de la aplicación del productor**

La app del productor organiza su contenido en cinco pestañas inferiores, con una profundidad máxima de tres niveles, pensada para un usuario que opera en campo con sol intenso, guantes y dispositivos de gama baja:

- **Inicio**
  - Clima de mis parcelas (series de telemetría simulada y pronóstico a siete días)
  - Ventana de hoy
  - Avisos de sincronización
- **Parcelas**
  - Parcela (por cada parcela del productor)
    - Campaña 2026
    - Campañas cerradas
    - Ficha de parcela
    - Nodos
  - Nueva parcela
  - Parcelas archivadas
- **Muestreo**
  - Muestreo guiado (flujo de cuatro pasos)
  - Muestreos pendientes
  - Historial de muestreos
- **Cosecha**
  - Registro de cosecha
  - Cierre de campaña
  - Expediente técnico
- **Cuenta**
  - Suscripción
  - Cooperativa y código
  - Ayuda

La pantalla de una campaña concreta de una parcela —por ejemplo, Campaña 2026, que instancia la clase que reifica el cruce entre parcela y campaña— concentra cinco secciones sin abrir un nivel adicional de navegación: muestreos de esa campaña con su indicador de pendiente o sincronizado, carga agregada con su porcentaje de sobrecarga, prescripción vigente con su porcentaje de remoción y ventana, ejecución con fecha y porcentaje real, y cierre, disponible solo cuando la campaña finaliza.

**Árbol de navegación de la aplicación del gestor**

La app del gestor organiza su contenido en un menú lateral de seis secciones, apto para un usuario que trabaja mayormente con conexión estable:

- **Panel de riesgo** (organización matricial)
  - Semáforo por socio (sobrecarga severa mayor al 30 %)
    - Parcela del socio
    - Prescripción emitida
    - Contacto del socio
  - Por sector territorial
  - Por fase fenológica
- **Cartera**
  - Socio (por cada socio de la cooperativa)
    - Parcelas del socio
    - Membresía y código
    - Expediente por parcela
  - Nuevo socio
  - Sectores
- **Acopio**
  - Proyección verde y negra
    - Detalle por sector
    - Cobertura porcentual e incertidumbre
  - Comparado cierre contra proyección
  - Cierre de socio
- **Prescripciones**
  - Prescripciones por socio
    - Acuse del productor
  - Historial
- **Pesajes**
  - Pesaje del día
  - Pesajes por socio y campaña
- **Cuenta**
  - Suscripción corporativa
  - Miembros y códigos

**Taxonomía del landing**

El landing organiza su contenido como una secuencia única de scroll persuasivo dirigida al visitante, en ocho bloques:

| # | Bloque | Contenido |
|:---|:-----------------|:--------------------------------------------------------------------------------------------------------|
| 1 | Hero | Propuesta de valor: estabilizar la producción frente a la vecería regulando la carga frutal. Llamado a la acción para descargar la app o ver los planes. |
| 2 | Beneficios por audiencia | Tres tarjetas: productor (muestreo offline en 15 minutos, prescripción de aclareo), cooperativa (semáforo territorial, proyección de acopio) y técnico (expediente auditable). |
| 3 | Métricas Lean UX | Indicadores de resultado, no de vanidad: porcentaje de parcelas estabilizadas, campañas con tres o más registros consecutivos, precisión de la proyección frente al cierre real. |
| 4 | Video | Demostración del muestreo guiado en campo, de duración breve y subtitulada. |
| 5 | Equipo | Nómina en orden alfabético, con rol y contacto. |
| 6 | Planes | Plan Productor por hectárea frente a Plan Cooperativo corporativo, en soles peruanos, con equivalencia en dólares únicamente informativa. Llamado a la acción por plan y enlaces de descarga para Android e iOS. |
| 7 | Llamado a la acción final | Doble acción: crear cuenta o activar código de membresía cooperativa. |
| 8 | Pie legal | Razón social, contacto, enlace a la política de privacidad conforme a la Ley N.º 29733 de protección de datos personales del Perú, y términos del servicio. |

Varias decisiones de diseño de estos tres árboles merecen justificarse explícitamente. El cierre de campaña aparece dos veces en la app del productor —dentro de la propia campaña y en la pestaña Cosecha— porque se trata del mismo objeto accedido por dos rutas distintas, nunca de dos registros independientes. Los nodos sensores cuelgan de la parcela que los aloja y no de una pestaña propia, tanto porque recorren la relación real entre parcela y nodo como porque la app del productor no admite una sexta pestaña sin comprometer la usabilidad en campo; el detalle de un nodo es una pantalla dentro de esa misma hoja, no un cuarto nivel de navegación, de modo que la profundidad máxima declarada de tres niveles se mantiene. En la app del gestor, el expediente técnico vive dentro de Cartera y no dentro de Cuenta, porque es evidencia agronómica de una parcela y no administración comercial; esta ubicación es consistente con la app del productor, donde el expediente cuelga de Cosecha y no de Cuenta, de modo que en ambas superficies el expediente se alcanza desde el dato agronómico que documenta. Los miembros y códigos de membresía, en cambio, sí viven en Cuenta en ambas superficies, por tratarse de administración comercial separada de la operación agronómica. Todos los árboles respetan además dos límites de diseño: ningún nivel de navegación supera siete elementos más menos dos, y ninguna ruta de las tres superficies excede tres niveles de profundidad.

#### Labeling Systems

La regla general del sistema de etiquetas es un vocabulario controlado: cada concepto del dominio recibe exactamente una etiqueta, construida con el mínimo número de palabras posible, sin sinónimos alternativos en ninguna pantalla. Cada etiqueta se elige, además, por la asociación mental que crea en el productor o en el gestor al leerla, de modo que un usuario que ve "Prescripción" entienda que encontrará un porcentaje y una ventana calculados, sin necesidad de que el sistema se lo explique cada vez.

| Etiqueta en pantalla | Concepto ontológico | Regla de uso | Asociación que crea |
|:---|:---|:---|:---|
| Muestreo de cuajado | Sampling Round | Forma completa en títulos y encabezados; la abreviatura "Muestreo" se admite solo en la pestaña de navegación por límite de ancho. Nunca "conteo", "cata", "medición" ni "muestra" a secas. | Rondas pendientes de sincronizar y el historial de la parcela, no la prescripción, que vive un nivel más abajo. |
| Carga | Crop Load | Lectura agregada. Nunca "producción estimada", que corresponde al acopio. | El estado actual del árbol, no una acción a ejecutar. |
| Prescripción / Prescripciones | Thinning Prescription | Singular en la app del productor, plural en la vista agregada del gestor. Nunca "recomendación", "sugerencia", "orden" ni "directiva". | Un cálculo derivado del muestreo, con porcentaje y ventana propios, no una orden administrativa. |
| Aclareo | Fruit Thinning | La labor física. Nunca "raleo" como etiqueta principal, nunca "poda". | La ejecución física en campo, distinta de la prescripción que la autoriza. |
| Ejecución | Thinning Execution Record | Lo efectivamente hecho, con fecha y porcentaje real. Nunca "aplicación" ni "avance". | Un registro auditable de lo ya realizado, no un plan pendiente. |
| Ventana: abierta / cerrada | Thinning Window | Estado binario con fecha de cierre. Nunca "período", "plazo" ni "temporada". | Un plazo agronómico con fecha de cierre concreta, no un rango flexible. |
| Cierre | Campaign Closure | Asentamiento definitivo. Nunca "liquidación" ni "finalizar" como sustantivo. | El fin auditado de la campaña y el recálculo del índice, no un pago. |
| Cosecha | Harvest Record | Pesos y calibres registrados. Nunca "producción" como etiqueta de registro. | Los kilos y calibres de la parcela, no un juicio sobre el rendimiento. |
| Alternancia | Alternate Bearing y BBI | El fenómeno y su índice. Nunca "vecería" en la navegación ni en un indicador visual; se admite en textos explicativos del landing y en la ayuda. Nunca "bianualidad". | El fenómeno de sucesión ON/OFF de la parcela y su índice numérico, no una alerta climática. |
| Frío acumulado | Chill Accumulation | Acumulación entre el 1 de mayo y el 31 de agosto. Nunca "clima" como etiqueta de esta métrica específica, porque "Clima" es el nodo agregado de Inicio que además incluye telemetría y pronóstico. | Una condición previa a la floración, no el diagnóstico de la vecería. |
| Acopio | Cooperative Intake Projection | Tonelaje agregado verde y negro. Nunca "recepción" ni "compra". | El tonelaje agregado de la cooperativa por campaña, no los kilos de una parcela individual. |
| Pesajes | Harvest Record, vista operativa | Pesaje del día, siempre con fecha y socio. | El registro operativo diario por socio, no la proyección agregada de acopio. |
| Semáforo | Vista de severidad de riesgo | Solo tres estados: óptimo, vigilar o sobrecarga. Nunca porcentajes crudos como etiqueta. | Una prioridad de atención por severidad, no un porcentaje exacto. |
| Expediente | Technical Dossier | Documento auditable. Nunca "informe", "reporte" ni "ficha", porque ficha es la vista en pantalla y expediente es el documento descargable. | Un documento descargable y auditable, no la vista en pantalla de la parcela. |
| Suscripción | Subscription | Plan, estado y vigencia. Nunca "membresía" para el plan individual, porque membresía es el vínculo con la cooperativa. | El plan de pago individual y su vigencia, no el vínculo con la cooperativa. |
| Código de cooperativa | Cooperative Membership | Invitación canjeable. Nunca "cupón", "voucher" ni "token". | Una invitación que exime del pago individual, no un descuento. |
| Parcela archivada | Plot con archivado lógico | Siempre con el aviso de que conserva su historial. Nunca "eliminar" ni "borrar". | Una parcela fuera del flujo activo pero con su historial intacto y consultable. |
| Nodos | Sensor Node | Siempre en plural, con el tipo de dispositivo visible. Nunca "sensores" a secas, "dispositivos" ni "IoT". | El inventario de nodos virtuales de esa parcela y su estado, no la lectura del clima, que vive en Inicio. |
| Clima | Nodo agregado de frío, telemetría simulada y pronóstico | Lectura contextual únicamente; nunca se presenta como causa de la vecería. Nunca "estación" ni "sensores" como etiqueta de este nodo. | Series de temperatura y humedad de las parcelas y el pronóstico a siete días, no la administración de nodos. |

Dos decisiones de renombrado quedan registradas porque el equipo descartó explícitamente los términos alternativos que había considerado. La vista del gestor sobre las prescripciones se llamó en una versión previa "Directivas"; el equipo la descartó por introducir un término ajeno al vocabulario controlado del dominio y la reemplazó por "Prescripciones", la misma palabra que usa el productor para el mismo concepto en su propia superficie. Del mismo modo, la vista operativa de los registros de cosecha se llamó en una versión previa "Tolva", nombre del equipo físico de la almazara y no del dato que efectivamente se registra; el equipo la descartó por la misma razón y la reemplazó por "Pesajes".

#### SEO Tags and Meta Tags

Solo el landing es indexable dentro del ecosistema Viora. Las rutas de las aplicaciones del productor y del gestor exponen datos de parcelas y de productores identificables, y se excluyen de indexación conforme a la Ley N.º 29733 de protección de datos personales del Perú. Por esa razón, los elementos de SEO propiamente dichos se definen únicamente para el landing, mientras que las aplicaciones móviles reciben en su lugar los elementos de optimización para tienda de aplicaciones (ASO) que exige el enunciado.

**Landing**

| Elemento | Valor | Límite |
|:---|:---------------------------------------------------------------------------------------------------------------------|:---|
| Title | Viora: estabiliza tu olivar frente a la vecería | 60 caracteres |
| Description | Regula la carga frutal de tu olivo en Tacna con aclareo guiado y detén la alternancia productiva. Conoce los planes. | 155 caracteres |
| Keywords | vecería, alternancia productiva, aclareo, carga frutal, olivo, Tacna | — |
| Author | Equipo Viora | — |

**Open Graph**

| Propiedad | Valor |
|:---|:---------------------------------------------------------------------------------------------------|
| og:title | Viora: estabiliza tu olivar frente a la vecería |
| og:description | Regula la carga frutal de tu olivo en Tacna con aclareo guiado y detén la alternancia productiva. |
| og:type | website |
| og:locale | es_PE |

**App del productor**

| Elemento | Valor | Límite |
|:---|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---|
| App Title | Viora Productor | 30 caracteres |
| App Subtitle | Aclareo guiado para tu olivar | 30 caracteres |
| App Keywords | muestreo de cuajado, aclareo, carga frutal, cosecha, historial de campañas, olivo | 100 caracteres |
| App Description | Registra el muestreo de cuajado de tu parcela sin conexión en 15 minutos y recibe la prescripción de aclareo que corresponde a tu carga frutal. Consulta el historial de tus campañas y el expediente técnico de cada parcela cuando lo necesites. | 4000 caracteres |

**App del gestor**

| Elemento | Valor | Límite |
|:---|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---|
| App Title | Viora Gestor | 30 caracteres |
| App Subtitle | Cartera y riesgo de tus socios | 30 caracteres |
| App Keywords | cartera de socios, semáforo de riesgo, sobrecarga, proyección de acopio, sector territorial | 100 caracteres |
| App Description | Supervisa la cartera de socios de tu cooperativa con un semáforo de riesgo por sobrecarga y prioriza tu visita a campo por sector. Consulta la proyección de acopio verde y negra antes del cierre de campaña. | 4000 caracteres |

#### Searching Systems

El sistema de búsqueda de Viora se limita a objetos y atributos que existen realmente en el modelo del dominio: cada faceta de filtrado corresponde a un atributo declarado en la ontología, nunca a un criterio inventado en la pantalla.

**Qué se busca y con qué filtros**

| Objeto buscable | Facetas disponibles |
|:---|:-----------------------------------------------------------------------------------------------------|
| Parcelas | variedad (Sevillana o Criolla), sector territorial, estado activa o archivada, rango del índice de alternancia |
| Campañas | estado abierta o cerrada, año, fase ON u OFF |
| Muestreos | estado pendiente o sincronizado, campaña, parcela |
| Prescripciones | diagnóstico óptima o sobrecarga, estado de la ventana abierta o cerrada, rango de remoción de 0 % a 40 % |
| Socios (gestor) | sector, estado de membresía activa o revocada, severidad del semáforo |
| Prescripciones emitidas (gestor) | socio, campaña, con o sin acuse del productor |
| Nodos | tipo (estación microclimática o sonda de suelo), estado vinculado o desvinculado, parcela |

**Cómo lucen los resultados**

El orden por defecto de los resultados es cronológico descendente: la campaña más reciente aparece primero, y dentro de una campaña, el muestreo más reciente aparece primero. Cada resultado exhibe un indicador visual de estado según la clase a la que pertenece: pendiente o sincronizado para los muestreos, abierta o cerrada para las ventanas y las campañas, óptimo, vigilar o sobrecarga para el semáforo de riesgo, y preliminar cuando la cobertura de muestreo de una proyección de acopio es menor al 50 %. Todo resultado se presenta siempre con su anclaje jerárquico visible —por ejemplo, la parcela y la campaña a la que pertenece— y nunca aparece como un dato huérfano sin ese contexto.

**Qué no es buscable en el producto mínimo viable**

| Excluido | Motivo |
|:---|:---------------------------------------------------------------------------------------------|
| Valor numérico de grados-día | Sin requisito ni historia de usuario que lo respalde en el repositorio; el cierre de la ventana se determina por el evento observado, no por ese cálculo. |
| Reservas de carbohidratos como magnitud | Es un mecanismo fisiológico conceptual, no un dato transaccional con sensor o conteo propio. |
| Análisis foliar, potencial hídrico del tallo y relación hoja-fruto | Atributos extensibles sin requisito funcional propio en el producto mínimo viable; no son datos obligatorios. |
| Texto libre dentro del PDF del expediente técnico | El expediente se localiza por parcela y campaña, no por su contenido textual. |
| Lecturas crudas de telemetría por valor puntual | La serie es simulada y de alta frecuencia; se consulta por parcela y rango de fechas, nunca buscando un valor exacto de temperatura o humedad. |

#### Navigation Systems

La app del productor navega mediante cinco pestañas inferiores, diseñadas para funcionar predominantemente sin conexión:

| Pestaña | Acceso sin conexión | Contenido |
|:---|:---------------------------------------|:-----------------------------------------------------------------------|
| Inicio | Sí, con la última sincronización | Clima de parcelas con la última serie cacheada, ventana de hoy, avisos de sincronización |
| Parcelas | Sí, en su totalidad | Ficha, campañas, nodos e historial completo |
| Muestreo | Sí, en su totalidad | Flujo guiado y muestreos pendientes |
| Cosecha | Sí para el registro; el cierre exige conexión | Registros, cierre y expediente |
| Cuenta | Parcial (la consulta es posible, el pago no) | Suscripción, código de cooperativa, ayuda |

El cierre de campaña exige conexión porque recalcula el índice de alternancia y la línea base en el servidor: se prepara sin conexión y se confirma en cuanto el dispositivo se conecta. El pronóstico meteorológico a siete días también exige conexión, por tratarse de una consulta a un servicio externo, mientras que las series de telemetría simulada sí se cachean y se consultan sin conexión.

La app del gestor navega mediante un menú lateral con las seis secciones descritas en Organization Systems, con pestañas internas por sector territorial dentro del Panel de riesgo; el menú admite seis secciones porque el gestor trabaja predominantemente en oficina y con conexión estable, sin la restricción de guantes y sol directo que condiciona a la app del productor.

La ruta de migas de pan —por ejemplo, "Parcela, Campaña 2026, Prescripción"— recorre siempre una jerarquía real de gestión, pertenencia y derivación entre esas entidades, y permanece visible desde el tercer nivel de navegación; un toque sobre ella retrocede siempre un nivel real de esa jerarquía, nunca hacia una pestaña sin relación con la pantalla actual.

El sistema admite además enlaces profundos hacia pantallas específicas, la mayoría operables sin conexión:

| Enlace profundo | Destino | Disponible sin conexión |
|:---|:---------------------------------------|:-----------------------------------------------|
| Parcela | Ficha de parcela | Sí |
| Parcela y campaña | Campaña de la parcela | Sí |
| Parcela y nodos | Inventario de nodos de la parcela | Sí, con el estado de la última sincronización |
| Nuevo muestreo | Paso 1 del flujo guiado | Sí |
| Muestreo | Ronda de muestreo, incluso pendiente | Sí |
| Prescripción | Prescripción vigente y ventana | Sí, con la última vigente cacheada |
| Cierre de cosecha | Preparación de cierre | Parcial: se prepara sin conexión y se confirma con conexión |
| Acopio (gestor) | Proyección de acopio | No, por ser un dato agregado de servidor |

La siguiente tabla demuestra que ninguna rama o rutas de las tres superficies fue diseñada de forma arbitraria: cada una recorre una clase, una relación o una regla concreta de la ontología, con su respaldo directo en requisitos e historias de usuario.

| Rama / hoja | Clase | Relación | Regla | RF / US |
|:---|:---|:---|:---|:---|
| Inicio, Clima de parcelas | Chill Accumulation | Emisión de telemetría y amplificación por ENOS | Ventana de frío; telemetría simulada | RF-10, RF-11, RF-17; US17–US19, US22, US23 |
| Inicio, Ventana de hoy | Thinning Window | Restricción sobre el aclareo | Cierre de ventana | RF-20; US27, US28 |
| Parcelas, Ficha de parcela | Plot | Gestión del productor | Archivado lógico | RF-07, RF-14; US09–US11 |
| Parcelas, Parcela, Nodos | Sensor Node | Alojamiento en la parcela | Telemetría simulada | RF-09; US13–US16 |
| Parcela, Campaña | Campaign | Pertenencia de la parcela a la campaña | — | RF-15; US20 |
| Campaña, Muestreos | Sampling Round | Estimación de carga | Representatividad mínima | RF-18, RF-12; US24, US25 |
| Campaña, Carga | Crop Load | Estimación y justificación de la prescripción | Umbral de sobrecarga severa | RF-19; US26 |
| Campaña, Prescripción | Thinning Prescription | Derivación y justificación | Rango de remoción; cierre de ventana | RF-20; US27 |
| Campaña, Ejecución | Thinning Execution Record | Autorización y registro | Cierre de ventana | US28 |
| Campaña, Cierre | Campaign Closure | Cierre de la campaña de la parcela | — | RF-21, RF-22; US29 |
| Cosecha, Registro | Harvest Record | Alimentación del índice de alternancia | Mínimo histórico | RF-15, RF-21; US20, US21 |
| Cosecha, Expediente | Technical Dossier | Compilación derivada | — | RF-13; US30 |
| Cuenta, Suscripción | Subscription | Habilitación de parcelas | Moneda y planes visibles | RF-04; US06 |
| Cuenta, Código de cooperativa | Cooperative Membership | Habilitación de parcelas | — | RF-05, RF-06 |
| Gestor, Panel de riesgo / Semáforo | — (vista agregada) | Supervisión | Umbral de sobrecarga severa | RF-08, RF-23; US31 |
| Gestor, Cartera / Sectores | Cooperative, Territorial Sector | Afiliación | — | RF-06, RF-08; US12 |
| Gestor, Acopio verde y negra | Cooperative Intake Projection | Actualización y reproyección | Cobertura mínima | RF-24; US32 |
| Gestor, Prescripciones | Thinning Prescription (vista) | Supervisión y autorización | Rango de remoción; cierre de ventana | US27, US28, US31 |
| Gestor, Pesajes | Harvest Record (vista) | Actualización de la proyección | — | RF-15; US29, US32 |
| Gestor, Miembros y códigos | Cooperative Membership | Supervisión | — | RF-06; US12 |
| Landing, bloques Hero, Beneficios y Llamado a la acción | Producer, Technical Advisor, Alternate Bearing, Cooperative Membership | Habilitación de parcelas | — | RF-LP-01, RF-LP-02; US33–US35 |
| Landing, bloque Planes | Subscription | Habilitación de parcelas | Moneda y planes visibles | RF-LP-05; US36; RF-04 |
| Landing, bloques Métricas, Video, Equipo y Pie legal | — | — | — | RF-LP-03, RF-LP-04, RF-LP-06–RF-LP-08; US35, US37–US43 |
| Búsqueda y sus indicadores de estado | Sampling Round, Campaign, Thinning Window, BBI, Thinning Prescription | Estimación y derivación del muestreo | Rango del índice; representatividad; cobertura mínima | RF-12–RF-20; US24–US27, US31 |

Los bloques de métricas, video, equipo y pie legal del landing no trazan a ninguna clase ni relación del dominio porque no representan objetos agronómicos: trazan directamente a sus requisitos de landing correspondientes. Forzar una correspondencia ontológica en esos cuatro bloques introduciría una trazabilidad inexistente.

Por último, el equipo identificó siete riesgos de la arquitectura de información y su mitigación correspondiente, que cierran esta subsección:

| # | Riesgo | Mitigación |
|:---|:---|:---|
| 1 | Sobrecarga cognitiva en campo por sol intenso, guantes y dispositivos de gama baja | Pestaña Muestreo con flujo de cuatro pasos amplios, sin organización matricial en el productor, clima como lectura y no como acción, y toda la operación de campo disponible sin conexión |
| 2 | Confusión entre el muestreo y la prescripción | Nodos hermanos con etiquetas disjuntas ("Muestreo de cuajado" como hecho observado, "Prescripción" como decisión calculada) y una regla de etiquetado que prohíbe sinónimos |
| 3 | Índice de alternancia sin las tres campañas mínimas, en un productor nuevo | Con menos de tres cierres no se muestra el índice, sino un indicador de historial insuficiente; la prescripción sigue disponible porque solo exige un muestreo representativo |
| 4 | Ventana de aclareo cerrada por endurecimiento del carozo | Indicador de "ventana cerrada" con advertencia de eficacia reducida en la prescripción y en la ejecución; se permite registrar igual, con fines de auditoría, pero nunca como éxito pleno |
| 5 | El archivado de una parcela se percibe como un borrado | Etiqueta "Parcela archivada" con el aviso de que conserva su historial; las parcelas archivadas viven en una sección propia, fuera del flujo activo pero siempre consultables |
| 6 | La proyección de acopio preliminar se toma como un compromiso firme | Indicador de "preliminar, alta incertidumbre" cuando la cobertura de muestreo es menor al 50 %; el tonelaje verde y negro siempre se muestra con año y cobertura visibles |
| 7 | Un nodo sensor virtual se confunde con un equipo físico instalado en campo | Etiqueta "Nodos" con el tipo de dispositivo siempre visible y aviso del origen simulado de la serie; ninguna pantalla presenta la telemetría como una medición de un equipo real ni ofrece diagnóstico de hardware |

### Landing Page UI Design

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* elaborar la propuesta de UI del Landing Page, iniciando con una introducción que explique cómo el equipo traduce las decisiones de diseño visual y de arquitectura de información a la interfaz.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la propuesta debe instanciar exactamente la secuencia de ocho bloques y el vocabulario de etiquetas del landing definidos en Organization Systems y Labeling Systems, sin agregar bloques ni renombrarlos.

#### Landing Page Wireframe

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los wireframes del Landing Page para navegador de escritorio y para navegador móvil, evidenciando la aplicación de los principios y elementos de diseño, el diseño inclusivo y la arquitectura de información.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireframe debe reflejar fielmente la secuencia de scroll de ocho bloques definida en Organization Systems, sin reordenarla ni introducir bloques adicionales.

#### Landing Page Mock-up

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los mock-ups del Landing Page para navegador de escritorio y para navegador móvil, evidenciando principios y elementos de diseño, diseño inclusivo, arquitectura de información y el Design System establecido para los productos digitales.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* el mock-up debe aplicar el Design System pendiente sobre la misma secuencia de bloques y las mismas etiquetas ya fijadas en Organization Systems y Labeling Systems, sin alterar la arquitectura de información aprobada.

### Mobile Applications UX/UI Design

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar la propuesta visual y de interacción de las aplicaciones móviles que constituyen la experiencia de usuario de los productos digitales.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la propuesta debe instanciar los árboles de navegación del productor y del gestor definidos en Organization Systems, respetando la profundidad máxima de tres niveles y el vocabulario de Labeling Systems.

#### Mobile Applications Wireframes

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los wireframes de las aplicaciones móviles, evidenciando principios y elementos de diseño, diseño inclusivo y arquitectura de información, utilizando las herramientas indicadas por la cátedra.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireframe debe corresponder a un nodo real de los árboles de navegación definidos en Organization Systems, sin agregar niveles ni introducir etiquetas fuera del vocabulario controlado de Labeling Systems.

#### Mobile Applications Wireflow Diagrams

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar los wireflows, considerando un wireflow por cada meta de usuario y por cada persona de usuario de cada aplicación del alcance, recomendándose elaborar antes los task flows correspondientes; cada wireflow requiere una meta de usuario redactada y una explicación del flujo representado.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireflow debe recorrer únicamente las rutas de navegación y los enlaces profundos declarados en Navigation Systems.

#### Mobile Applications Mock-ups

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los mock-ups de las aplicaciones móviles, evidenciando principios y elementos de diseño, diseño inclusivo, arquitectura de información y el Design System establecido, utilizando las herramientas indicadas por la cátedra.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* los mock-ups deben aplicar el Design System sobre los mismos nodos de navegación y las mismas etiquetas ya definidos en Organization Systems y Labeling Systems, sin modificar la arquitectura de información aprobada.

#### Mobile Applications User Flow Diagrams

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar los user flows, considerando uno por cada meta de usuario y persona de usuario, consistentes con los wireflows de los que derivan, incluyendo los mock-ups de las pantallas junto con la ruta esperada y las rutas alternativas; cada user flow requiere una meta de usuario redactada y una explicación de los flujos y condiciones representados.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la ruta esperada y las rutas alternativas deben ser consistentes con las rutas de Navigation Systems, y con las facetas de Searching Systems cuando el flujo incluya una búsqueda.

### Mobile Applications Prototyping

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* incluir prototipos de UI para navegador de escritorio y navegador móvil con simulación de interacción y navegación, acordes con la propuesta de rutas de los user flow diagrams, iniciando con una introducción sobre los principales criterios de las decisiones de interacción y evidenciando su relación con las decisiones de arquitectura de información, en particular el sistema de navegación y los tipos de interacción seleccionados; para cada aplicación debe incluirse una captura del video y un enlace al video correspondiente.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la simulación de interacción y navegación debe reproducir fielmente el sistema de navegación —pestañas inferiores, menú lateral, migas de pan y enlaces profundos— definido en Navigation Systems.
