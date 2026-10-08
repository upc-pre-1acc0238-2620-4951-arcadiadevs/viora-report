# Sprint Backlog: Desglose Técnico de Tareas para Technical Stories (TS) - Sprint 1
**Plataforma Agronómica Viora (`viora-platform`)**  
**Rol:** Scrum Master & Experto en Sprint Backlog / Arquitectura DDD Hexagonal  
**Fecha:** Octubre 2026 | **Sprint:** 1  

---

## 1. Resumen Ejecutivo y Métricas del Sprint

Este documento consolida el rediseño y estandarización técnica de todas las tareas del Sprint Backlog asociadas a las **37 Technical Stories (TS)** del backend de Viora. Las tareas han sido reestructuradas bajo criterios de agilidad rigurosa, reflejando el código fuente activo del repositorio (`src/main/java/**`), las convenciones de **Arquitectura Hexagonal (Model A)** y **Domain-Driven Design (DDD)** sobre Java 21 LTS y Spring Boot 3.

### Métricas Consolidadas

| Métrica del Backlog | Valor Anterior | Valor Actualizado | Observaciones y Reglas |
| :--- | :---: | :---: | :--- |
| **Total de Technical Stories (TS)** | 37 | **37** | Cobertura total de los 5 Bounded Contexts y capa Shared. |
| **Tareas por Technical Story** | 3 a 5 tareas | **2 a 3 tareas** | 34 TS cuentan con 2 tareas; 3 TS de 5 SP cuentan con 3 tareas. |
| **Total de Tareas Técnicas (TS)** | 115 tareas | **77 tareas** | Desacoplamiento limpio entre Dominio/Aplicación e Interfaces/Infraestructura. |
| **Tareas de User Stories / Spikes** | 84 tareas | **84 tareas** | Mantenidas íntegras sin modificaciones colaterales. |
| **Total de Tareas del Sprint 1** | 199 tareas | **161 tareas** | 84 US/Spikes + 77 TS. |
| **Horas Estimadas Tareas TS** | 57.0 h | **53.7 h** | Recalibradas por complejidad relativa (0.5h a 1.0h por tarea). |
| **Horas Totales del Sprint 1** | 131.6 h | **128.3 h** | 74.6 h (US/Spikes) + 53.7 h (TS). |
| **Límite de Palabras: Título (`title`)** | 8 – 15 palabras | **$\le$ 6 palabras** | 100% de títulos cumplen la restricción de concisión. |
| **Límite de Palabras: Descripción (`description`)** | 18 – 35 palabras | **$\le$ 10 palabras** | 100% de descripciones cumplen el límite máximo de 10 palabras. |

---

## 2. Alineación con la Realidad del Repositorio (`viora-platform`)

Todas las tareas reflejan fielmente las definiciones tácticas del repositorio:
1. **Entidades y Agregados DDD:** Modelados como agregados puros con invariantes de dominio (`Plot`, `IoTDevice`, `HarvestRecord`, `FieldSampling`, `HarvestSettlement`, `AgronomicReportCertification`).
2. **Comandos y Consultas CQRS:** Records inmutables en la capa de aplicación (`DelimitPlotCommand`, `UpdatePlotCommand`, `RemovePlotCommand`, `RegisterIoTDeviceCommand`, `GetPlotsDeltaSync`, etc.).
3. **Controladores e Interfaces REST:** Exposición limpia vía `@RestController` con transformación bidireccional mediante Assemblers puros (`PlotController`, `IoTDeviceController`, `FieldSamplingController`, etc.).
4. **Respuesta Estándar RFC 7807 & Concurrencia:** Manejo centralizado de excepciones con `GlobalExceptionHandler` retornando `ProblemDetail` y bloqueo concurrente con cabeceras `If-Match` / `ETag`.

---

## 3. Catálogo Detallado de Tareas Técnicas por Bounded Context

### 3.1. Core & Arquitectura Compartida (Shared)

#### **TS31 | Manejo centralizado de excepciones y errores bajo estándar RFC 7807**
- **ID Trello:** `TS031` | **Story Points:** `1` | **Asignado a:** `Espada, Piero` | **Módulo:** `Shared`
- **User Story Format:** *Como ingeniero de plataforma core, quiero implementar un interceptor global de excepciones en el backend, para garantizar que todas las respuestas de error sigan el estándar RFC 7807 (Problem Details) con códigos HTTP semánticos y sin exponer trazas internas.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS031TASK001` | **Interceptor GlobalExceptionHandler en capa interfaces** | Implementar RestControllerAdvice capturando excepciones y mapeando ProblemDetail RFC7807. | 0.5h | `Done` |
| `TK02` | `TS031TASK002` | **Serialización ProblemDetail y códigos HTTP** | Formatear respuestas ErrorResponseResource en capa infraestructura REST. | 0.5h | `Done` |

#### **TS32 | Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial**
- **ID Trello:** `TS032` | **Story Points:** `1` | **Asignado a:** `Espada, Piero` | **Módulo:** `Shared`
- **User Story Format:** *Como ingeniero de plataforma core, quiero configurar la estrategia de mapeo objeto-relacional en el ORM, para normalizar la conversión automática de propiedades camelCase a snake_case y persistir tipos geométricos espaciales WGS84 de forma consistente.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS032TASK001` | **Estrategia física snake_case en infraestructura** | Configurar PhysicalNamingStrategy de Hibernate para tablas y columnas relacionales. | 0.5h | `Done` |
| `TK02` | `TS032TASK002` | **Persistencia espacial WGS84 en entidades** | Mapear tipos GeoJSON y campos auditables en entidades JPA. | 0.5h | `Done` |

#### **TS33 | Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0**
- **ID Trello:** `TS033` | **Story Points:** `1` | **Asignado a:** `Espada, Piero` | **Módulo:** `Shared`
- **User Story Format:** *Como ingeniero de plataforma core, quiero integrar el generador de contratos OpenAPI 3.0 en el backend, para exponer una interfaz Swagger UI interactiva y esquemas JSON que documenten exhaustivamente todos los endpoints del sistema.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS033TASK001` | **Configurar OpenApiConfig en capa infraestructura** | Definir bean OpenAPI 3.0 con metadatos y servidores. | 0.5h | `Done` |
| `TK02` | `TS033TASK002` | **Documentar interfaces REST en Swagger** | Exponer swagger-ui y esquemas de resources en capa interfaces. | 0.5h | `Done` |

#### **TS34 | Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language**
- **ID Trello:** `TS034` | **Story Points:** `1` | **Asignado a:** `Paredes, Victor` | **Módulo:** `Shared`
- **User Story Format:** *Como ingeniero de plataforma core, quiero configurar el resolvedor de localización y los catálogos de recursos MessageSource en el backend, para interceptar el encabezado HTTP Accept-Language y entregar mensajes de validación y errores RFC 7807 traducidos en Español o Inglés.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS034TASK001` | **Configurar AcceptHeaderLocaleResolver en capa infraestructura** | Registrar resolvedor de locale por encabezado HTTP Accept-Language. | 0.5h | `Done` |
| `TK02` | `TS034TASK002` | **Catálogos MessageSource en capa presentación** | Definir mensajes bilingües properties para validaciones y errores RFC7807. | 0.5h | `Done` |

### 3.2. Delimitación y Gestión Catastral (Orchard)

#### **TS11 | Creación y delimitación poligonal de parcelas georreferenciadas**
- **ID Trello:** `TS011` | **Story Points:** `5` | **Asignado a:** `Espada, Piero` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar los vértices poligonales en formato WGS84 a la API, para registrar una nueva parcela y persistir sus propiedades agronómicas.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS011TASK001` | **Agregado Plot en capa dominio** | Modelar agregado Plot con PolygonCoordinates, variedad y marco plantación. | 0.9h | `Done` |
| `TK02` | `TS011TASK002` | **Comando DelimitPlotCommand en capa aplicación** | Procesar DelimitPlotCommand en PlotCommandService persistiendo en PlotRepository. | 0.9h | `Done` |
| `TK03` | `TS011TASK003` | **Controlador PlotController en capa interfaces** | Exponer POST /plots transformando CreatePlotResource a PlotResource. | 0.7h | `Done` |

#### **TS12 | Listado y sincronización incremental delta de parcelas**
- **ID Trello:** `TS012` | **Story Points:** `3` | **Asignado a:** `Espada, Piero` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar el inventario de parcelas con soporte de marcas temporales, para actualizar la base de datos local SQLite mediante sincronización delta eficiente.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS012TASK001` | **Query GetPlotsDeltaSync en capa aplicación** | Implementar consulta delta en PlotQueryService filtrando por updatedSince. | 0.8h | `Done` |
| `TK02` | `TS012TASK002` | **Endpoint listPlots en controlador PlotController** | Exponer GET /plots retornando colección PlotResource con 200. | 0.8h | `Done` |

#### **TS13 | Consulta detallada de información agronómica y espacial de parcela**
- **ID Trello:** `TS013` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar el detalle de una parcela mediante su ID, para visualizar la ficha agronómica completa del predio en la interfaz de usuario.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS013TASK001` | **Query GetPlotByIdQuery en capa aplicación** | Recuperar agregado Plot validando titularidad en PlotQueryServiceImpl. | 0.6h | `Done` |
| `TK02` | `TS013TASK002` | **Endpoint getPlotById en PlotController** | Exponer GET /plots/{plotId} retornando PlotResource vía assembler. | 0.6h | `Done` |

#### **TS14 | Actualización y rectificación integral de parcela con bloqueo optimista**
- **ID Trello:** `TS014` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar los datos actualizados de la parcela mediante el método PUT junto con el parámetro de ruta `{plotId}`, la cabecera `If-Match` y los datos en el cuerpo JSON, para rectificar linderos poligonales, marco de plantación o atributos agronómicos previniendo colisiones de concurrencia.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS014TASK001` | **Comando UpdatePlotCommand en capa aplicación** | Ejecutar UpdatePlotCommand en PlotCommandService validando concurrencia If-Match. | 0.8h | `Done` |
| `TK02` | `TS014TASK002` | **Endpoint updatePlot en controlador PlotController** | Recibir UpdatePlotResource retornando PlotResource con cabecera ETag. | 0.8h | `Done` |

#### **TS15 | Eliminación y baja lógica de parcela del inventario**
- **ID Trello:** `TS015` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar a la API la remoción de una parcela, para dar de baja predios registrados por error o desafectados de la producción.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS015TASK001` | **Comando RemovePlotCommand en capa aplicación** | Procesar baja lógica en PlotCommandService mutando estado agregado. | 0.6h | `Done` |
| `TK02` | `TS015TASK002` | **Endpoint deletePlot en controlador PlotController** | Exponer DELETE /plots/{plotId} retornando 200 OK y PlotResource. | 0.6h | `Done` |

#### **TS44 | Restauración de cuartel olivícola archivado**
- **ID Trello:** `TS044` | **Story Points:** `2` | **Asignado a:** `Espada, Piero` | **Módulo:** `Orchard`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar la restauración de una parcela dada de baja mediante el método POST a `/api/v1/plots/{plotId}/restore` con parámetro de ruta `{plotId}`, para reintegrar el cuartel al inventario productivo activo sin pérdida de historial ni geometrías.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS044TASK001` | **Comando RestorePlotCommand en capa aplicación** | Ejecutar RestorePlotCommand en PlotCommandService reactivando agregado Plot. | 0.6h | `Done` |
| `TK02` | `TS044TASK002` | **Endpoint restorePlot en controlador PlotController** | Exponer POST /plots/{plotId}/restore retornando PlotResource con 200. | 0.6h | `Done` |

### 3.3. Telemetría, Monitoreo y Alertas (Telemetry)

#### **TS16 | Alta y vinculación de nodo sensor virtual a parcela**
- **ID Trello:** `TS016` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero registrar un nodo sensor virtual (microclima o sonda de suelo a 30/60 cm) en la API, para activar la simulación de telemetría agroclimática en la parcela.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS016TASK001` | **Agregado IoTDevice y RegisterIoTDeviceCommand aplicación** | Modelar IoTDevice en dominio y procesar comando vinculación. | 0.8h | `Done` |
| `TK02` | `TS016TASK002` | **Controlador IoTDeviceController en capa interfaces** | Exponer POST /plots/{plotId}/iot-devices transformando RegisterIoTDeviceResource vía assembler. | 0.8h | `Done` |

#### **TS17 | Consulta de inventario de nodos virtuales vinculados a parcela**
- **ID Trello:** `TS017` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar el listado de nodos virtuales de una parcela a la API, para desplegar su estado operativo y última lectura simulada en la interfaz.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS017TASK001` | **Query GetIoTDevicesByPlotId en capa aplicación** | Recuperar lista de agregados IoTDevice vinculados al PlotId. | 0.6h | `Done` |
| `TK02` | `TS017TASK002` | **Endpoint listIoTDevices en controlador IoTDeviceController** | Exponer GET /plots/{plotId}/iot-devices retornando colección IoTDeviceResource. | 0.6h | `Done` |

#### **TS18 | Desvinculación de nodo virtual preservando trazabilidad histórica**
- **ID Trello:** `TS018` | **Story Points:** `2` | **Asignado a:** `Espada, Piero` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar la desvinculación de un nodo virtual a la API, para retirar sensores obsoletos preservando las lecturas históricas asociadas al lote.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS018TASK001` | **Comando DeactivateIoTDeviceCommand en capa aplicación** | Desactivar agregado IoTDevice preservando series históricas en base. | 0.6h | `Done` |
| `TK02` | `TS018TASK002` | **Endpoint deactivateIoTDevice en controlador IoTDeviceController** | Exponer DELETE con cabecera If-Match retornando 200 OK. | 0.6h | `Done` |

#### **TS42 | Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela**
- **ID Trello:** `TS042` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar los parámetros de calibración mediante el método PUT al endpoint `/api/v1/plots/{plotId}/iot-devices/{deviceId}` con parámetros de ruta `{plotId}`, `{deviceId}` y cabecera `If-Match`, para ajustar las lecturas telemétricas según las condiciones edafoclimáticas del predio previniendo inconsistencias de concurrencia.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS042TASK001` | **Comando CalibrateIoTDeviceCommand en capa aplicación** | Aplicar factores de calibración en agregado IoTDevice verificando concurrencia. | 0.6h | `Done` |
| `TK02` | `TS042TASK002` | **Endpoint calibrateIoTDevice en IoTDeviceController** | Procesar CalibrateIoTDeviceResource retornando IoTDeviceResource con 200 OK. | 0.6h | `Done` |

#### **TS19 | Consulta de series temporales de telemetría ambiental y de suelo**
- **ID Trello:** `TS019` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar las lecturas horarias de microclima y humedad de suelo a la API, para graficar las curvas térmicas e hídricas en los paneles de control de la parcela.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS019TASK001` | **Query GetTelemetrySeriesByPlotId en capa aplicación** | Consultar serie temporal filtrando por fechas en TelemetryQueryService. | 0.8h | `Done` |
| `TK02` | `TS019TASK002` | **Controlador TelemetryController en capa interfaces** | Exponer GET /plots/{plotId}/telemetries retornando TelemetrySeriesResource con 200. | 0.8h | `Done` |

#### **TS20 | Consulta de pronóstico meteorológico geolocalizado a 7 días**
- **ID Trello:** `TS020` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar el pronóstico meteorológico para la coordenada centroide de la parcela, para advertir al productor sobre olas de calor, heladas o vientos desecantes.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS020TASK001` | **Query GetWeatherForecast en capa aplicación** | Obtener pronóstico meteorológico semanal en WeatherForecastQueryService mediante cliente. | 0.8h | `Done` |
| `TK02` | `TS020TASK002` | **Controlador WeatherForecastController en capa interfaces** | Exponer GET /plots/{plotId}/forecasts retornando WeatherForecastResource con 200. | 0.8h | `Done` |

#### **TS46 | Consulta global de incidentes agroclimáticos con contadores y filtrado**
- **ID Trello:** `TS046` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar la lista general de incidentes mediante el método GET al endpoint `/api/v1/agroclimatic-incidents` con parámetros de consulta de estado y paginación, para poblar el centro de alertas de la aplicación móvil y desplegar los contadores de severidad territorial.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS046TASK001` | **Query GetAgroclimaticIncidents en capa aplicación** | Filtrar incidentes por severidad consolidando contadores en servicio. | 0.8h | `Done` |
| `TK02` | `TS046TASK002` | **Endpoint listIncidents en AgroclimaticIncidentController** | Exponer GET /agroclimatic-incidents retornando IncidentListResponseResource con 200. | 0.8h | `Done` |

#### **TS47 | Consulta de incidentes agroclimáticos asociados a un cuartel específico**
- **ID Trello:** `TS047` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar los incidentes agroclimáticos de una parcela mediante el método GET a `/api/v1/plots/{plotId}/agroclimatic-incidents` con parámetro de ruta `{plotId}` y filtros de consulta, para desplegar los riesgos agroclimáticos y recomendaciones en la ficha individual del cuartel.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS047TASK001` | **Filtrado por PlotId en IncidentQueryService** | Recuperar incidentes agroclimáticos vinculados a una parcela específica. | 0.6h | `Done` |
| `TK02` | `TS047TASK002` | **Endpoint listPlotIncidents en AgroclimaticIncidentController** | Exponer GET /plots/{plotId}/agroclimatic-incidents retornando IncidentListResponseResource con 200. | 0.6h | `Done` |

#### **TS48 | Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación**
- **ID Trello:** `TS048` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar el detalle exhaustivo de una alerta mediante el método GET a `/api/v1/agroclimatic-incidents/{incidentId}` con parámetro de ruta `{incidentId}`, para visualizar la serie temporal de la anomalía, el checklist interactivo de mitigación y el diagnóstico agronómico.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS048TASK001` | **Query GetAgroclimaticIncidentById en capa aplicación** | Recuperar agregado AgroclimaticIncident con pasos de mitigación asociados. | 0.8h | `Done` |
| `TK02` | `TS048TASK002` | **Endpoint getIncidentDetail en AgroclimaticIncidentController** | Exponer GET /agroclimatic-incidents/{incidentId} retornando IncidentDetailResource con 200. | 0.8h | `Done` |

#### **TS49 | Postergación temporal de notificaciones de incidente agroclimático (Snooze)**
- **ID Trello:** `TS049` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero postergar las notificaciones de un incidente mediante el método POST a `/api/v1/agroclimatic-incidents/{incidentId}/postponements` con parámetro de ruta `{incidentId}` y cuerpo JSON (`postponeHours`), para silenciar temporalmente los avisos push durante la ventana horaria definida sin resolver la alerta en el lote.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS049TASK001` | **Comando PostponeIncident en capa aplicación** | Procesar PostponeAgroclimaticIncidentCommand mutando fecha postergación en agregado. | 0.6h | `Done` |
| `TK02` | `TS049TASK002` | **Endpoint postponeIncident en AgroclimaticIncidentController** | Exponer POST postponements retornando IncidentDetailResource con 200. | 0.6h | `Done` |

#### **TS50 | Completado de paso de mitigación agronómica de incidente**
- **ID Trello:** `TS050` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Telemetry`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero asentar la ejecución de un paso del protocolo de mitigación mediante el método PUT a `/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}` con parámetros de ruta `{incidentId}` y `{stepId}` y cuerpo JSON, para registrar las labores de respuesta en campo y actualizar el estado de resolución del incidente.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS050TASK001` | **Comando CompleteMitigationStep en capa aplicación** | Procesar CompleteMitigationStepCommand en dominio evaluando resolución del incidente. | 0.6h | `Done` |
| `TK02` | `TS050TASK002` | **Endpoint completeMitigationStep en AgroclimaticIncidentController** | Exponer PUT mitigation-steps/{stepId} retornando IncidentDetailResource con 200. | 0.6h | `Done` |

### 3.4. Fenología, Cosechas y Vecería (Phenology)

#### **TS21 | Asentamiento de cosecha anual por campaña para auditoría productiva**
- **ID Trello:** `TS021` | **Story Points:** `3` | **Asignado a:** `Paredes, Victor` | **Módulo:** `Phenology`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar los kilogramos cosechados al cierre de la temporada a la API, para registrar la producción anual del lote y alimentar el cálculo del índice BBI.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS021TASK001` | **Agregado HarvestRecord y RecordHarvestYieldCommand aplicación** | Modelar HarvestRecord en dominio y procesar comando pesaje. | 0.8h | `Done` |
| `TK02` | `TS021TASK002` | **Controlador HarvestRecordController en capa interfaces** | Exponer POST harvest-records transformando RecordHarvestYieldResource con assembler. | 0.8h | `Done` |

#### **TS22 | Consulta del historial plurianual de cosechas de la parcela**
- **ID Trello:** `TS022` | **Story Points:** `2` | **Asignado a:** `Paredes, Victor` | **Módulo:** `Phenology`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar el historial de cosechas de una parcela a la API, para renderizar la curva interanual de rendimiento productivo en la interfaz.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS022TASK001` | **Query GetHarvestRecordsByPlotId en capa aplicación** | Recuperar colección de HarvestRecords ordenadas cronológicamente por campaña. | 0.6h | `Done` |
| `TK02` | `TS022TASK002` | **Endpoint listHarvestRecords en HarvestRecordController** | Exponer GET harvest-records retornando lista HarvestRecordResource con 200. | 0.6h | `Done` |

#### **TS43 | Rectificación de pesaje de cosecha anual con bloqueo optimista**
- **ID Trello:** `TS043` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Phenology`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar una solicitud de rectificación de pesaje mediante el método PUT a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `{plotId}`, `{recordId}`, cabecera `If-Match` y cuerpo JSON (`rectifiedYieldKg`, `rectificationReason`), para corregir inconsistencias en pesajes históricos y recomputar reactivamente el Índice de Vecería (BBI).*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS043TASK001` | **Comando RectifyHarvestYieldCommand en capa aplicación** | Ejecutar rectificación en HarvestRecord verificando versión concurrente If-Match. | 0.6h | `Done` |
| `TK02` | `TS043TASK002` | **Endpoint rectifyHarvestRecord en HarvestRecordController** | Exponer PUT con If-Match retornando HarvestRecordResource con 200. | 0.6h | `Done` |

#### **TS45 | Eliminación de registro erróneo de cosecha en histórico fenológico**
- **ID Trello:** `TS045` | **Story Points:** `2` | **Asignado a:** `Santi, Fabrizio` | **Módulo:** `Phenology`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero eliminar un pesaje de cosecha asentado por error mediante el método DELETE a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `{plotId}` y `{recordId}`, para purgar datos anómalos del historial y recalcular el Índice de Vecería (BBI) del cuartel.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS045TASK001` | **Comando RemoveHarvestRecordCommand en capa aplicación** | Remover registro erróneo en repositorio HarvestRecordRepository verificando titularidad. | 0.6h | `Done` |
| `TK02` | `TS045TASK002` | **Endpoint removeHarvestRecord en HarvestRecordController** | Exponer DELETE con If-Match retornando HarvestRecordResource con 200. | 0.6h | `Done` |

#### **TS23 | Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez**
- **ID Trello:** `TS023` | **Story Points:** `5` | **Asignado a:** `Santi, Fabrizio` | **Módulo:** `Phenology`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar los indicadores matemáticos de vecería y frío invernal a la API, para desplegar el índice BBI y las porciones de frío acumuladas con alertas térmicas ENOS.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS023TASK001` | **Servicio BiennialBearingIndexCalculator en capa dominio** | Programar cálculo matemático BBI Hoblyn sobre campañas históricas. | 1.0h | `Done` |
| `TK02` | `TS023TASK002` | **Query GetPlotMetricsQuery en capa aplicación** | Computar porciones frío Erez y consolidar métricas fenológicas. | 0.9h | `Done` |
| `TK03` | `TS023TASK003` | **Controlador PhenologyMetricController en capa interfaces** | Exponer GET /plots/{plotId}/metrics retornando PhenologyMetricResource con 200. | 0.6h | `Done` |

### 3.5. Muestreos de Cuajado y Aclareo (Thinning)

#### **TS51 | Consulta de estado global de muestreos de cuarteles (Plot Picker)**
- **ID Trello:** `TS051` | **Story Points:** `3` | **Asignado a:** `Santi, Fabrizio` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar el estado consolidado de muestreos de todos los cuarteles mediante el método GET al endpoint `/api/v1/samplings` con parámetro de consulta de campaña, para renderizar el selector de predios (Plot Picker) en la interfaz móvil destacando el avance y suficiencia de cada lote.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS051TASK001` | **Query GetPlotSamplingStates en capa aplicación** | Consolidar suficiencia muestral de predios en SamplingQueryServiceImpl. | 0.8h | `Done` |
| `TK02` | `TS051TASK002` | **Controlador PlotSamplingCollectionController en interfaces** | Exponer GET /samplings retornando PlotSamplingCollectionSummaryResource con 200. | 0.8h | `Done` |

#### **TS24 | Registro y sincronización de muestreos guiados de cuajado en campo**
- **ID Trello:** `TS024` | **Story Points:** `5` | **Asignado a:** `Santi, Fabrizio` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar los registros de conteo de frutos y brotes tomados a pie de árbol mediante el método POST con parámetro de ruta `{plotId}` y cuerpo JSON con árboles evaluados (incluyendo el diámetro de tronco como atributo opcional nullable), para sincronizar los muestreos offline y calcular la carga frutal del predio sin bloquear el proceso si no se midió el tronco.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS024TASK001` | **Agregado FieldSampling en capa dominio** | Modelar FieldSampling con árboles evaluados e invariantes muestrales. | 0.9h | `Done` |
| `TK02` | `TS024TASK002` | **Comando IngestFieldSamplingsBatchCommand en aplicación** | Ingerir lote de muestreos calculando media cuajado transaccionalmente. | 0.9h | `Done` |
| `TK03` | `TS024TASK003` | **Controlador FieldSamplingController en capa interfaces** | Exponer POST samplings procesando SubmitSamplingResource retornando 201. | 0.7h | `Done` |

#### **TS25 | Consulta de representatividad estadística y estado de muestreo**
- **ID Trello:** `TS025` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero solicitar el estado de representatividad de muestreos a la API, para notificar al usuario si ha evaluado suficientes árboles para generar prescripciones confiables.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS025TASK001` | **Query GetSamplingSummary en capa aplicación** | Calcular representatividad muestral mínima n>=5 en capa aplicación. | 0.8h | `Done` |
| `TK02` | `TS025TASK002` | **Endpoint getSamplingSummary en FieldSamplingController** | Exponer GET /samplings retornando SamplingSummaryResource según vista view. | 0.8h | `Done` |

#### **TS52 | Registro de fecha de plena floración observada en cuartel**
- **ID Trello:** `TS052` | **Story Points:** `3` | **Asignado a:** `Santi, Fabrizio` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero registrar la fecha de plena floración del olivar mediante el método PUT a `/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `observedOn`), para calibrar la base cronológica y calcular con precisión la ventana fenológica de aclareo antes del endurecimiento del carozo.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS052TASK001` | **Comando RecordFullBloomCommand en capa aplicación** | Procesar RecordFullBloomCommand calibrando ventana fenológica de raleo. | 0.8h | `Done` |
| `TK02` | `TS052TASK002` | **Endpoint recordFullBloom en ThinningPrescriptionController** | Exponer PUT full-bloom procesando RecordFullBloomResource retornando 200. | 0.8h | `Done` |

#### **TS26 | Consulta de prescripción técnica de aclareo y ventana fenológica**
- **ID Trello:** `TS026` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar la prescripción agronómica activa mediante el método GET al endpoint `/api/v1/plots/{plotId}/thinning-prescriptions` con parámetro de ruta `{plotId}` y filtro de estado `ACTIVE`, para desplegar el porcentaje de remoción recomendado, la ventana fenológica de intervención y la lista explícita de bloqueadores en caso de información faltante.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS026TASK001` | **Query GetActiveThinningPrescription en capa aplicación** | Calcular recomendación de remoción frutal en ThinningAdvisorService. | 0.8h | `Done` |
| `TK02` | `TS026TASK002` | **Controlador ThinningPrescriptionController en capa interfaces** | Exponer GET thinning-prescriptions retornando ThinningPrescriptionResource con 200. | 0.8h | `Done` |

#### **TS27 | Confirmación y registro de ejecución de labor de aclareo en campo**
- **ID Trello:** `TS027` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar la confirmación de ejecución de aclareo mediante el método POST a `/api/v1/thinning-prescriptions/{id}/execution-confirmations` con parámetro de ruta `{id}` y cuerpo JSON (`executedDate`, `actualRemovalPercentage`, `removedKg`, `laborCrewSize`, `notes`), para asentar la práctica en la bitácora, actualizar el balance de carga residual y proyectar el calibre comercial COI.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS027TASK001` | **Comando ConfirmThinningExecutionCommand en capa aplicación** | Registrar ejecución real de raleo actualizando estado agregado. | 0.8h | `Done` |
| `TK02` | `TS027TASK002` | **Controlador ThinningExecutionController en capa interfaces** | Exponer POST execution-confirmations procesando ConfirmExecutionResource retornando 201. | 0.8h | `Done` |

#### **TS53 | Consulta de eventos cronológicos y bitácora agronómica de raleo**
- **ID Trello:** `TS053` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Thinning`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar la bitácora histórica de intervenciones de aclareo mediante el método GET a `/api/v1/thinning-events` con parámetros opcionales de consulta (`campaignYear`, `plotId`), para visualizar en orden cronológico todos los eventos de muestreo, prescripción y confirmación ejecutados en el predio.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS053TASK001` | **Query GetThinningEventsQuery en capa aplicación** | Recuperar bitácora cronológica de raleo en ThinningQueryService. | 0.6h | `Done` |
| `TK02` | `TS053TASK002` | **Controlador ThinningEventController en capa interfaces** | Exponer GET /thinning-events retornando lista ThinningEventResource con 200. | 0.6h | `Done` |

### 3.6. Liquidación y Certificación Colegiada (Harvest)

#### **TS39 | Asentamiento formal y balance de liquidación de cosecha de fin de campaña**
- **ID Trello:** `TS039` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Módulo:** `Harvest`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero enviar la liquidación formal de cosecha mediante el método POST a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `greenOlivesKg`, `blackOlivesKg`, `commercialFruitsPerKg`, `notes`), para asentar la balanza oficial de fin de campaña, computar el balance frente a la prescripción y congelar la curva de estabilización interanual.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS039TASK001` | **Agregado HarvestSettlement y SettleCampaignHarvestCommand aplicación** | Modelar liquidación en dominio y procesar pesaje oficial. | 0.9h | `Done` |
| `TK02` | `TS039TASK002` | **Controlador HarvestSettlementController en capa interfaces** | Exponer POST harvest-settlements transformando SettleHarvestResource retornando 201. | 0.8h | `Done` |

#### **TS54 | Listado de liquidaciones oficiales de cosecha por cuartel**
- **ID Trello:** `TS054` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Harvest`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar el historial de cierres formales de cosecha mediante el método GET a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `{plotId}` y parámetros de consulta de paginación, para desplegar la serie plurianual de pesajes oficiales y balance de entrega en la ficha del cuartel.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS054TASK001` | **Query GetHarvestSettlementsByPlotId en capa aplicación** | Recuperar historial de liquidaciones de parcela en servicio. | 0.6h | `Done` |
| `TK02` | `TS054TASK002` | **Endpoint list en HarvestSettlementController** | Exponer GET harvest-settlements retornando colección HarvestSettlementResource con 200. | 0.6h | `Done` |

#### **TS55 | Consulta detallada de liquidación de cosecha por campaña individual**
- **ID Trello:** `TS055` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Módulo:** `Harvest`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero consultar el comprobante formal de una liquidación específica mediante el método GET a `/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}` con parámetros de ruta `{plotId}` y `{campaignYear}`, para visualizar el pesaje certificado, el balance frente a la prescripción y el Índice de Reducción de Alternancia (ARR).*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS055TASK001` | **Query GetHarvestSettlementByCampaignYear en capa aplicación** | Consultar liquidación anual calculando balance ARR en servicio. | 0.6h | `Done` |
| `TK02` | `TS055TASK002` | **Endpoint detail en HarvestSettlementController** | Exponer GET harvest-settlements/{campaignYear} retornando HarvestSettlementResource con 200. | 0.6h | `Done` |

#### **TS40 | Certificación criptográfica colegiada del expediente agronómico inmutable**
- **ID Trello:** `TS040` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Módulo:** `Harvest`
- **User Story Format:** *Como desarrollador de aplicaciones cliente, quiero registrar la certificación colegiada del expediente mediante el método POST a `/api/v1/plots/{plotId}/certifications` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `auditorSignature`, `certifiedBy`, `cipNumber`, `notes`), para sellar el dossier técnico de la campaña y generar la huella criptográfica SHA-256 inmutable de no repudiación.*

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :---: | :---: |
| `TK01` | `TS040TASK001` | **Comando CertifyAgronomicDossierCommand en capa aplicación** | Generar hash SHA-256 inmutable validando colegiatura CIP agrónomo. | 0.9h | `Done` |
| `TK02` | `TS040TASK002` | **Controlador AgronomicReportCertificationController en interfaces** | Exponer POST certifications procesando CertifyDossierResource retornando 201. | 0.8h | `Done` |

---

## 4. Tabla de Auditoría y Verificación de Restricciones

A continuación se presenta la verificación formal de conteo de palabras para cada una de las 77 tareas:

| Technical Story | Task ID | Título de Tarea | Palabras Título | Descripción Técnica | Palabras Desc | Cumple Regla |
| :--- | :---: | :--- | :---: | :--- | :---: | :---: |
| `TS31` | `TK01` | Interceptor GlobalExceptionHandler en capa interfaces | 5/6 | Implementar RestControllerAdvice capturando excepciones y mapeando ProblemDetail RFC7807. | 8/10 | ✅ SÍ |
| `TS31` | `TK02` | Serialización ProblemDetail y códigos HTTP | 5/6 | Formatear respuestas ErrorResponseResource en capa infraestructura REST. | 7/10 | ✅ SÍ |
| `TS32` | `TK01` | Estrategia física snake_case en infraestructura | 5/6 | Configurar PhysicalNamingStrategy de Hibernate para tablas y columnas relacionales. | 9/10 | ✅ SÍ |
| `TS32` | `TK02` | Persistencia espacial WGS84 en entidades | 5/6 | Mapear tipos GeoJSON y campos auditables en entidades JPA. | 9/10 | ✅ SÍ |
| `TS33` | `TK01` | Configurar OpenApiConfig en capa infraestructura | 5/6 | Definir bean OpenAPI 3.0 con metadatos y servidores. | 8/10 | ✅ SÍ |
| `TS33` | `TK02` | Documentar interfaces REST en Swagger | 5/6 | Exponer swagger-ui y esquemas de resources en capa interfaces. | 9/10 | ✅ SÍ |
| `TS34` | `TK01` | Configurar AcceptHeaderLocaleResolver en capa infraestructura | 5/6 | Registrar resolvedor de locale por encabezado HTTP Accept-Language. | 8/10 | ✅ SÍ |
| `TS34` | `TK02` | Catálogos MessageSource en capa presentación | 5/6 | Definir mensajes bilingües properties para validaciones y errores RFC7807. | 9/10 | ✅ SÍ |
| `TS11` | `TK01` | Agregado Plot en capa dominio | 5/6 | Modelar agregado Plot con PolygonCoordinates, variedad y marco plantación. | 9/10 | ✅ SÍ |
| `TS11` | `TK02` | Comando DelimitPlotCommand en capa aplicación | 5/6 | Procesar DelimitPlotCommand en PlotCommandService persistiendo en PlotRepository. | 7/10 | ✅ SÍ |
| `TS11` | `TK03` | Controlador PlotController en capa interfaces | 5/6 | Exponer POST /plots transformando CreatePlotResource a PlotResource. | 7/10 | ✅ SÍ |
| `TS12` | `TK01` | Query GetPlotsDeltaSync en capa aplicación | 5/6 | Implementar consulta delta en PlotQueryService filtrando por updatedSince. | 8/10 | ✅ SÍ |
| `TS12` | `TK02` | Endpoint listPlots en controlador PlotController | 5/6 | Exponer GET /plots retornando colección PlotResource con 200. | 8/10 | ✅ SÍ |
| `TS13` | `TK01` | Query GetPlotByIdQuery en capa aplicación | 5/6 | Recuperar agregado Plot validando titularidad en PlotQueryServiceImpl. | 7/10 | ✅ SÍ |
| `TS13` | `TK02` | Endpoint getPlotById en PlotController | 4/6 | Exponer GET /plots/{plotId} retornando PlotResource vía assembler. | 7/10 | ✅ SÍ |
| `TS14` | `TK01` | Comando UpdatePlotCommand en capa aplicación | 5/6 | Ejecutar UpdatePlotCommand en PlotCommandService validando concurrencia If-Match. | 7/10 | ✅ SÍ |
| `TS14` | `TK02` | Endpoint updatePlot en controlador PlotController | 5/6 | Recibir UpdatePlotResource retornando PlotResource con cabecera ETag. | 7/10 | ✅ SÍ |
| `TS15` | `TK01` | Comando RemovePlotCommand en capa aplicación | 5/6 | Procesar baja lógica en PlotCommandService mutando estado agregado. | 8/10 | ✅ SÍ |
| `TS15` | `TK02` | Endpoint deletePlot en controlador PlotController | 5/6 | Exponer DELETE /plots/{plotId} retornando 200 OK y PlotResource. | 8/10 | ✅ SÍ |
| `TS16` | `TK01` | Agregado IoTDevice y RegisterIoTDeviceCommand aplicación | 5/6 | Modelar IoTDevice en dominio y procesar comando vinculación. | 8/10 | ✅ SÍ |
| `TS16` | `TK02` | Controlador IoTDeviceController en capa interfaces | 5/6 | Exponer POST /plots/{plotId}/iot-devices transformando RegisterIoTDeviceResource vía assembler. | 7/10 | ✅ SÍ |
| `TS17` | `TK01` | Query GetIoTDevicesByPlotId en capa aplicación | 5/6 | Recuperar lista de agregados IoTDevice vinculados al PlotId. | 8/10 | ✅ SÍ |
| `TS17` | `TK02` | Endpoint listIoTDevices en controlador IoTDeviceController | 5/6 | Exponer GET /plots/{plotId}/iot-devices retornando colección IoTDeviceResource. | 6/10 | ✅ SÍ |
| `TS18` | `TK01` | Comando DeactivateIoTDeviceCommand en capa aplicación | 5/6 | Desactivar agregado IoTDevice preservando series históricas en base. | 8/10 | ✅ SÍ |
| `TS18` | `TK02` | Endpoint deactivateIoTDevice en controlador IoTDeviceController | 5/6 | Exponer DELETE con cabecera If-Match retornando 200 OK. | 8/10 | ✅ SÍ |
| `TS19` | `TK01` | Query GetTelemetrySeriesByPlotId en capa aplicación | 5/6 | Consultar serie temporal filtrando por fechas en TelemetryQueryService. | 8/10 | ✅ SÍ |
| `TS19` | `TK02` | Controlador TelemetryController en capa interfaces | 5/6 | Exponer GET /plots/{plotId}/telemetries retornando TelemetrySeriesResource con 200. | 7/10 | ✅ SÍ |
| `TS20` | `TK01` | Query GetWeatherForecast en capa aplicación | 5/6 | Obtener pronóstico meteorológico semanal en WeatherForecastQueryService mediante cliente. | 8/10 | ✅ SÍ |
| `TS20` | `TK02` | Controlador WeatherForecastController en capa interfaces | 5/6 | Exponer GET /plots/{plotId}/forecasts retornando WeatherForecastResource con 200. | 7/10 | ✅ SÍ |
| `TS21` | `TK01` | Agregado HarvestRecord y RecordHarvestYieldCommand aplicación | 5/6 | Modelar HarvestRecord en dominio y procesar comando pesaje. | 8/10 | ✅ SÍ |
| `TS21` | `TK02` | Controlador HarvestRecordController en capa interfaces | 5/6 | Exponer POST harvest-records transformando RecordHarvestYieldResource con assembler. | 7/10 | ✅ SÍ |
| `TS22` | `TK01` | Query GetHarvestRecordsByPlotId en capa aplicación | 5/6 | Recuperar colección de HarvestRecords ordenadas cronológicamente por campaña. | 8/10 | ✅ SÍ |
| `TS22` | `TK02` | Endpoint listHarvestRecords en HarvestRecordController | 4/6 | Exponer GET harvest-records retornando lista HarvestRecordResource con 200. | 8/10 | ✅ SÍ |
| `TS23` | `TK01` | Servicio BiennialBearingIndexCalculator en capa dominio | 5/6 | Programar cálculo matemático BBI Hoblyn sobre campañas históricas. | 8/10 | ✅ SÍ |
| `TS23` | `TK02` | Query GetPlotMetricsQuery en capa aplicación | 5/6 | Computar porciones frío Erez y consolidar métricas fenológicas. | 8/10 | ✅ SÍ |
| `TS23` | `TK03` | Controlador PhenologyMetricController en capa interfaces | 5/6 | Exponer GET /plots/{plotId}/metrics retornando PhenologyMetricResource con 200. | 7/10 | ✅ SÍ |
| `TS24` | `TK01` | Agregado FieldSampling en capa dominio | 5/6 | Modelar FieldSampling con árboles evaluados e invariantes muestrales. | 8/10 | ✅ SÍ |
| `TS24` | `TK02` | Comando IngestFieldSamplingsBatchCommand en aplicación | 4/6 | Ingerir lote de muestreos calculando media cuajado transaccionalmente. | 8/10 | ✅ SÍ |
| `TS24` | `TK03` | Controlador FieldSamplingController en capa interfaces | 5/6 | Exponer POST samplings procesando SubmitSamplingResource retornando 201. | 7/10 | ✅ SÍ |
| `TS25` | `TK01` | Query GetSamplingSummary en capa aplicación | 5/6 | Calcular representatividad muestral mínima n>=5 en capa aplicación. | 8/10 | ✅ SÍ |
| `TS25` | `TK02` | Endpoint getSamplingSummary en FieldSamplingController | 4/6 | Exponer GET /samplings retornando SamplingSummaryResource según vista view. | 8/10 | ✅ SÍ |
| `TS26` | `TK01` | Query GetActiveThinningPrescription en capa aplicación | 5/6 | Calcular recomendación de remoción frutal en ThinningAdvisorService. | 7/10 | ✅ SÍ |
| `TS26` | `TK02` | Controlador ThinningPrescriptionController en capa interfaces | 5/6 | Exponer GET thinning-prescriptions retornando ThinningPrescriptionResource con 200. | 7/10 | ✅ SÍ |
| `TS27` | `TK01` | Comando ConfirmThinningExecutionCommand en capa aplicación | 5/6 | Registrar ejecución real de raleo actualizando estado agregado. | 8/10 | ✅ SÍ |
| `TS27` | `TK02` | Controlador ThinningExecutionController en capa interfaces | 5/6 | Exponer POST execution-confirmations procesando ConfirmExecutionResource retornando 201. | 7/10 | ✅ SÍ |
| `TS39` | `TK01` | Agregado HarvestSettlement y SettleCampaignHarvestCommand aplicación | 5/6 | Modelar liquidación en dominio y procesar pesaje oficial. | 8/10 | ✅ SÍ |
| `TS39` | `TK02` | Controlador HarvestSettlementController en capa interfaces | 5/6 | Exponer POST harvest-settlements transformando SettleHarvestResource retornando 201. | 7/10 | ✅ SÍ |
| `TS40` | `TK01` | Comando CertifyAgronomicDossierCommand en capa aplicación | 5/6 | Generar hash SHA-256 inmutable validando colegiatura CIP agrónomo. | 8/10 | ✅ SÍ |
| `TS40` | `TK02` | Controlador AgronomicReportCertificationController en interfaces | 4/6 | Exponer POST certifications procesando CertifyDossierResource retornando 201. | 7/10 | ✅ SÍ |
| `TS42` | `TK01` | Comando CalibrateIoTDeviceCommand en capa aplicación | 5/6 | Aplicar factores de calibración en agregado IoTDevice verificando concurrencia. | 9/10 | ✅ SÍ |
| `TS42` | `TK02` | Endpoint calibrateIoTDevice en IoTDeviceController | 4/6 | Procesar CalibrateIoTDeviceResource retornando IoTDeviceResource con 200 OK. | 7/10 | ✅ SÍ |
| `TS43` | `TK01` | Comando RectifyHarvestYieldCommand en capa aplicación | 5/6 | Ejecutar rectificación en HarvestRecord verificando versión concurrente If-Match. | 8/10 | ✅ SÍ |
| `TS43` | `TK02` | Endpoint rectifyHarvestRecord en HarvestRecordController | 4/6 | Exponer PUT con If-Match retornando HarvestRecordResource con 200. | 8/10 | ✅ SÍ |
| `TS44` | `TK01` | Comando RestorePlotCommand en capa aplicación | 5/6 | Ejecutar RestorePlotCommand en PlotCommandService reactivando agregado Plot. | 7/10 | ✅ SÍ |
| `TS44` | `TK02` | Endpoint restorePlot en controlador PlotController | 5/6 | Exponer POST /plots/{plotId}/restore retornando PlotResource con 200. | 7/10 | ✅ SÍ |
| `TS45` | `TK01` | Comando RemoveHarvestRecordCommand en capa aplicación | 5/6 | Remover registro erróneo en repositorio HarvestRecordRepository verificando titularidad. | 8/10 | ✅ SÍ |
| `TS45` | `TK02` | Endpoint removeHarvestRecord en HarvestRecordController | 4/6 | Exponer DELETE con If-Match retornando HarvestRecordResource con 200. | 8/10 | ✅ SÍ |
| `TS46` | `TK01` | Query GetAgroclimaticIncidents en capa aplicación | 5/6 | Filtrar incidentes por severidad consolidando contadores en servicio. | 8/10 | ✅ SÍ |
| `TS46` | `TK02` | Endpoint listIncidents en AgroclimaticIncidentController | 4/6 | Exponer GET /agroclimatic-incidents retornando IncidentListResponseResource con 200. | 7/10 | ✅ SÍ |
| `TS47` | `TK01` | Filtrado por PlotId en IncidentQueryService | 5/6 | Recuperar incidentes agroclimáticos vinculados a una parcela específica. | 8/10 | ✅ SÍ |
| `TS47` | `TK02` | Endpoint listPlotIncidents en AgroclimaticIncidentController | 4/6 | Exponer GET /plots/{plotId}/agroclimatic-incidents retornando IncidentListResponseResource con 200. | 7/10 | ✅ SÍ |
| `TS48` | `TK01` | Query GetAgroclimaticIncidentById en capa aplicación | 5/6 | Recuperar agregado AgroclimaticIncident con pasos de mitigación asociados. | 8/10 | ✅ SÍ |
| `TS48` | `TK02` | Endpoint getIncidentDetail en AgroclimaticIncidentController | 4/6 | Exponer GET /agroclimatic-incidents/{incidentId} retornando IncidentDetailResource con 200. | 7/10 | ✅ SÍ |
| `TS49` | `TK01` | Comando PostponeIncident en capa aplicación | 5/6 | Procesar PostponeAgroclimaticIncidentCommand mutando fecha postergación en agregado. | 7/10 | ✅ SÍ |
| `TS49` | `TK02` | Endpoint postponeIncident en AgroclimaticIncidentController | 4/6 | Exponer POST postponements retornando IncidentDetailResource con 200. | 7/10 | ✅ SÍ |
| `TS50` | `TK01` | Comando CompleteMitigationStep en capa aplicación | 5/6 | Procesar CompleteMitigationStepCommand en dominio evaluando resolución del incidente. | 8/10 | ✅ SÍ |
| `TS50` | `TK02` | Endpoint completeMitigationStep en AgroclimaticIncidentController | 4/6 | Exponer PUT mitigation-steps/{stepId} retornando IncidentDetailResource con 200. | 7/10 | ✅ SÍ |
| `TS51` | `TK01` | Query GetPlotSamplingStates en capa aplicación | 5/6 | Consolidar suficiencia muestral de predios en SamplingQueryServiceImpl. | 7/10 | ✅ SÍ |
| `TS51` | `TK02` | Controlador PlotSamplingCollectionController en interfaces | 4/6 | Exponer GET /samplings retornando PlotSamplingCollectionSummaryResource con 200. | 7/10 | ✅ SÍ |
| `TS52` | `TK01` | Comando RecordFullBloomCommand en capa aplicación | 5/6 | Procesar RecordFullBloomCommand calibrando ventana fenológica de raleo. | 7/10 | ✅ SÍ |
| `TS52` | `TK02` | Endpoint recordFullBloom en ThinningPrescriptionController | 4/6 | Exponer PUT full-bloom procesando RecordFullBloomResource retornando 200. | 7/10 | ✅ SÍ |
| `TS53` | `TK01` | Query GetThinningEventsQuery en capa aplicación | 5/6 | Recuperar bitácora cronológica de raleo en ThinningQueryService. | 7/10 | ✅ SÍ |
| `TS53` | `TK02` | Controlador ThinningEventController en capa interfaces | 5/6 | Exponer GET /thinning-events retornando lista ThinningEventResource con 200. | 8/10 | ✅ SÍ |
| `TS54` | `TK01` | Query GetHarvestSettlementsByPlotId en capa aplicación | 5/6 | Recuperar historial de liquidaciones de parcela en servicio. | 8/10 | ✅ SÍ |
| `TS54` | `TK02` | Endpoint list en HarvestSettlementController | 4/6 | Exponer GET harvest-settlements retornando colección HarvestSettlementResource con 200. | 8/10 | ✅ SÍ |
| `TS55` | `TK01` | Query GetHarvestSettlementByCampaignYear en capa aplicación | 5/6 | Consultar liquidación anual calculando balance ARR en servicio. | 8/10 | ✅ SÍ |
| `TS55` | `TK02` | Endpoint detail en HarvestSettlementController | 4/6 | Exponer GET harvest-settlements/{campaignYear} retornando HarvestSettlementResource con 200. | 7/10 | ✅ SÍ |

---

## 5. Conclusión

El Sprint Backlog de tareas técnicas del **Sprint 1** se encuentra 100% normalizado, validado bajo sintaxis JSON estricta en [`sprint-1-tasks.json`](./sprint-1-tasks.json) y sincronizado con los ítems del backlog en [`sprint-1-backlog-items.json`](./sprint-1-backlog-items.json). Cada tarea proporciona directivas técnicas inequívocas de implementación para los ingenieros asignados sin sobrecargar la gestión del tablero.
