# Informe Oficial: Documentación de Web Services con OpenAPI (Sprint Actual)
**Plataforma Agronómica Viora (`viora-platform`)**  
**Autor:** Lead Technical Writer & Arquitecto Backend Spring Boot / OpenAPI  
**Fecha de Emisión:** Octubre 2026  
**Versión de API:** `1.0.0` | **Especificación:** OpenAPI 3.0.1 (SpringDoc OpenAPI 2.x)

---

## 1. Introducción y Logros del Sprint

Durante el presente ciclo de desarrollo (Sprint actual), el equipo de ingeniería backend ha consolidado la estandarización, desacoplamiento y documentación interactiva de la capa de Interfaces REST para la plataforma agronómica **Viora**. Basados en una **Arquitectura Hexagonal con Enfoque de Doble Modelo (Model A)** y **Domain-Driven Design (DDD)** sobre **Java 21 LTS y Spring Boot 3**, se ha logrado la especificación formal del 100% de los puntos de entrada HTTP mediante **OpenAPI 3.0 / Swagger UI**. 

Entre los principales hitos técnicos alcanzados destacan:
1. **Adopción Integral de Java 21 Records:** Todos los contratos de entrada (*Request Payloads*) y salida (*Response Resources*) residen en records inmutables fuertemente tipados, erradicando modelos anémicos y garantizando validaciones declarativas estrictas vía Jakarta Validation (`@NotNull`, `@NotBlank`, `@Size`, `@DecimalMin`, `@PositiveOrZero`).
2. **Estandarización Semántica de Códigos HTTP y RFC 7807 Problem Details:** Unificación de respuestas bajo semántica REST (`200 OK`, `201 CREATED`, `204 NO_CONTENT`) y un manejo centralizado de excepciones con `GlobalExceptionHandler` que transforma errores de validación, reglas de negocio o violaciones de integridad en especificaciones semánticas **RFC 7807 (`ProblemDetail`)** sin exponer trazas de infraestructura.
3. **Concurrencia Optimista con `If-Match` / `ETag`:** Implementación de control de revisiones concurrentes mediante cabeceras HTTP (`If-Match`) retornando `412 PRECONDITION FAILED` ante carreras de actualización en cuarteles, sondas IoT y bitácora fenológica.
4. **Desacoplamiento Absoluto mediante Assemblers Puros:** Las entidades y agregados del Dominio no sufren contaminación por anotaciones web o de persistencia; las transformaciones bidireccionales se realizan a través de Assemblers puros en la capa de interfaz.
5. **Autodocumentación Viva e Internacionalización (i18n):** Integración nativa de Swagger UI con ordenamiento alfabético de etiquetas y métodos, habilitación de consola interactiva *Try-it-out*, e internacionalización dinámica de mensajes operativos y mitigaciones agroclimáticas.

---

## 2. Tabla Consolidada de Endpoints

A continuación se presenta la matriz general de los **33 endpoints REST** auditados en los 5 Bounded Contexts del sistema.

* **URL Base Local Swagger UI:** `http://localhost:8080/swagger-ui/index.html` (o redirección `/swagger-ui.html`)
* **URL OpenAPI JSON Spec:** `http://localhost:8080/v3/api-docs`

| Módulo / Bounded Context | Acción / Caso de Uso | Método HTTP | Sintaxis de Llamada (Ruta) | Parámetros (Path/Query/Body/Header) | Códigos HTTP Soportados | URL Documentación (Local) |
| :--- | :--- | :---: | :--- | :--- | :---: | :--- |
| **Orchard Plots** | Delimitar y registrar cuartel | `POST` | `/api/v1/plots` | Body: `CreatePlotResource` | `201`, `400`, `409` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/createPlot` |
| **Orchard Plots** | Listar cuarteles o delta sync | `GET` | `/api/v1/plots` | Query: `updatedSince`, `status` | `200`, `400` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/listPlots` |
| **Orchard Plots** | Consultar detalle de cuartel por ID | `GET` | `/api/v1/plots/{plotId}` | Path: `plotId` | `200`, `404` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/getPlotById` |
| **Orchard Plots** | Actualizar límites y marco con bloqueo optimista | `PUT` | `/api/v1/plots/{plotId}` | Path: `plotId`<br>Header: `If-Match`<br>Body: `UpdatePlotResource` | `200`, `400`, `404`, `409`, `412` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/updatePlot` |
| **Orchard Plots** | Eliminación lógica de cuartel | `DELETE` | `/api/v1/plots/{plotId}` | Path: `plotId`<br>Query: `reason` | `200`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/deletePlot` |
| **Orchard Plots** | Restaurar cuartel archivado | `POST` | `/api/v1/plots/{plotId}/restore` | Path: `plotId` | `200`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Orchard%20Plots/restorePlot` |
| **Phenology Metrics** | Consultar métricas biológicas (BBI / Erez) | `GET` | `/api/v1/plots/{plotId}/metrics` | Path: `plotId`<br>Query: `metricName`, `name` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Phenology%20Metrics/getPlotMetrics` |
| **Harvest Records** | Registrar volumen de cosecha anual | `POST` | `/api/v1/plots/{plotId}/harvest-records` | Path: `plotId`<br>Body: `RecordHarvestYieldResource` | `201`, `400`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Records/recordHarvestYield` |
| **Harvest Records** | Listar historial de cosechas de cuartel | `GET` | `/api/v1/plots/{plotId}/harvest-records` | Path: `plotId`<br>Query: `campaignYear` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Records/listHarvestRecords` |
| **Harvest Records** | Rectificar pesaje de cosecha | `PUT` | `/api/v1/plots/{plotId}/harvest-records/{recordId}` | Path: `plotId`, `recordId`<br>Header: `If-Match`<br>Body: `RectifyHarvestYieldResource` | `200`, `400`, `404`, `412` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Records/rectifyHarvestRecord` |
| **Harvest Records** | Eliminar registro erróneo de cosecha | `DELETE` | `/api/v1/plots/{plotId}/harvest-records/{recordId}` | Path: `plotId`, `recordId`<br>Header: `If-Match` | `200`, `400`, `404`, `412` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Records/removeHarvestRecord` |
| **Agroclimatic Incidents** | Listar todos los incidentes con resumen | `GET` | `/api/v1/agroclimatic-incidents` | Query: `plotId`, `status`, `severity` | `200` | `http://localhost:8080/swagger-ui/index.html#/Agroclimatic%20Incidents/listIncidents` |
| **Agroclimatic Incidents** | Listar incidentes de un cuartel | `GET` | `/api/v1/plots/{plotId}/agroclimatic-incidents` | Path: `plotId`<br>Query: `status`, `severity` | `200`, `404` | `http://localhost:8080/swagger-ui/index.html#/Agroclimatic%20Incidents/listPlotIncidents` |
| **Agroclimatic Incidents** | Consultar detalle de incidente con tendencia | `GET` | `/api/v1/agroclimatic-incidents/{incidentId}` | Path: `incidentId` | `200`, `404` | `http://localhost:8080/swagger-ui/index.html#/Agroclimatic%20Incidents/getIncidentDetail` |
| **Agroclimatic Incidents** | Posponer (snooze) notificaciones de incidente | `POST` | `/api/v1/agroclimatic-incidents/{incidentId}/postponements` | Path: `incidentId`<br>Body: `PostponeIncidentResource` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Agroclimatic%20Incidents/postponeIncident` |
| **Agroclimatic Incidents** | Completar paso de mitigación agronómica | `PUT` | `/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}` | Path: `incidentId`, `stepId`<br>Body: `CompleteMitigationStepResource` | `200`, `404` | `http://localhost:8080/swagger-ui/index.html#/Agroclimatic%20Incidents/completeMitigationStep` |
| **IoT Devices** | Registrar y enlazar nodo sensor a cuartel | `POST` | `/api/v1/plots/{plotId}/iot-devices` | Path: `plotId`<br>Body: `RegisterIoTDeviceResource` | `201`, `400`, `409` | `http://localhost:8080/swagger-ui/index.html#/IoT%20Devices/registerIoTDevice` |
| **IoT Devices** | Listar dispositivos IoT de un cuartel | `GET` | `/api/v1/plots/{plotId}/iot-devices` | Path: `plotId` | `200`, `400` | `http://localhost:8080/swagger-ui/index.html#/IoT%20Devices/listIoTDevices` |
| **IoT Devices** | Calibrar multiplicador de sonda y textura | `PUT` | `/api/v1/plots/{plotId}/iot-devices/{deviceId}` | Path: `plotId`, `deviceId`<br>Header: `If-Match`<br>Body: `CalibrateIoTDeviceResource` | `200`, `400`, `404`, `409`, `412`, `422` | `http://localhost:8080/swagger-ui/index.html#/IoT%20Devices/calibrateIoTDevice` |
| **IoT Devices** | Desvincular y desactivar dispositivo IoT | `DELETE` | `/api/v1/plots/{plotId}/iot-devices/{deviceId}` | Path: `plotId`, `deviceId`<br>Header: `If-Match` | `200`, `400`, `404`, `409`, `412` | `http://localhost:8080/swagger-ui/index.html#/IoT%20Devices/deactivateIoTDevice` |
| **Telemetry Series** | Consultar serie temporal agroclimática/suelo | `GET` | `/api/v1/plots/{plotId}/telemetries` | Path: `plotId`<br>Query: `startDate`, `endDate` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Telemetry%20Series/getTelemetrySeries` |
| **Weather Forecasts** | Consultar pronóstico meteorológico a 7 días | `GET` | `/api/v1/plots/{plotId}/forecasts` | Path: `plotId` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Weather%20Forecasts/getWeatherForecast` |
| **Field Sampling** | Listar estado global de muestreos por cuartel | `GET` | `/api/v1/samplings` | Query: `campaignYear` | `200`, `400` | `http://localhost:8080/swagger-ui/index.html#/Field%20Sampling/getPlotSamplingStates` |
| **Field Sampling** | Ingerir lote de muestreo de campo | `POST` | `/api/v1/plots/{plotId}/samplings` | Path: `plotId`<br>Body: `SubmitSamplingResource` | `201`, `400`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Field%20Sampling/submitSampling` |
| **Field Sampling** | Consultar resumen o detalle de muestreos | `GET` | `/api/v1/plots/{plotId}/samplings` | Path: `plotId`<br>Query: `campaignYear`, `view` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Field%20Sampling/getSamplingSummary` |
| **Thinning Prescriptions** | Registrar plena floración observada | `PUT` | `/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom` | Path: `plotId`<br>Body: `RecordFullBloomResource` | `200`, `400`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Thinning%20Prescriptions/recordFullBloom` |
| **Thinning Prescriptions** | Consultar prescripción técnica activa | `GET` | `/api/v1/plots/{plotId}/thinning-prescriptions` | Path: `plotId`<br>Query: `campaignYear`, `status` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Thinning%20Prescriptions/getActiveThinningPrescription` |
| **Thinning Execution** | Confirmar ejecución de raleo en campo | `POST` | `/api/v1/thinning-prescriptions/{id}/execution-confirmations` | Path: `id`<br>Body: `ConfirmExecutionResource` | `201`, `400`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Thinning%20Execution/confirm` |
| **Thinning Events** | Consultar eventos cronológicos de raleo | `GET` | `/api/v1/thinning-events` | Query: `campaignYear`, `plotId` | `200`, `400`, `404` | `http://localhost:8080/swagger-ui/index.html#/Thinning%20Events/getThinningEvents` |
| **Harvest Settlement** | Liquidar cosecha anual con balanza oficial | `POST` | `/api/v1/plots/{plotId}/harvest-settlements` | Path: `plotId`<br>Body: `SettleHarvestResource` | `201`, `400`, `403`, `404`, `409` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Settlement/settle` |
| **Harvest Settlement** | Listar liquidaciones históricas de cuartel | `GET` | `/api/v1/plots/{plotId}/harvest-settlements` | Path: `plotId` | `200`, `400`, `403`, `404` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Settlement/list` |
| **Harvest Settlement** | Consultar liquidación de campaña individual | `GET` | `/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}` | Path: `plotId`, `campaignYear` | `200`, `400`, `403`, `404` | `http://localhost:8080/swagger-ui/index.html#/Harvest%20Settlement/detail` |
| **Agronomic Dossier Certification** | Certificar informe agronómico colegiado | `POST` | `/api/v1/plots/{plotId}/certifications` | Path: `plotId`<br>Body: `CertifyDossierResource` | `201`, `400`, `404`, `409`, `422`, `500` | `http://localhost:8080/swagger-ui/index.html#/Agronomic%20Dossier%20Certification/certify` |

---

## 3. Catálogo Detallado por Endpoint

```
========================================================================================
BOUNDED CONTEXT: ORCHARD (Delimitación y Gestión Catastral de Cuarteles)
Controlador: PlotController.java
========================================================================================
```

### 3.1. Delimitar y Registrar Cuartel Olivícola
- **Identificador y Propósito:** `createPlot` - Registra un nuevo cuartel georreferenciado, valida la geometría poligonal en WGS84, calcula el área en hectáreas y deriva la densidad arbórea por hectárea según el marco de plantación.
- **Sintaxis de Llamada:** `POST /api/v1/plots`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `body` | `CreatePlotResource` | Body | Sí | JSON con nombre (3-100 car.), variedad permitida, polígono GeoJSON y espaciamientos estrictamente positivos. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "name": "Cuartel San Jerónimo",
  "variety": "CRIOLLA",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.2500,-18.0500],[-70.2400,-18.0500],[-70.2400,-18.0600],[-70.2500,-18.0600],[-70.2500,-18.0500]]]}",
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "producerId": "550e8400-e29b-41d4-a716-446655440000",
  "name": "Cuartel San Jerónimo",
  "variety": "CRIOLLA",
  "areaHa": 1.25,
  "treeDensity": 286,
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0,
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "lastPruningDate": null,
  "status": "ACTIVE",
  "revision": 0
}
```
  - **Campos Clave:** `id` (UUID asignado al cuartel), `areaHa` (superficie calculada automáticamente desde la proyección UTM/WGS84), `treeDensity` (árboles calculados por hectárea mediante fórmula dendrométrica $\frac{10000}{rowSpacing \times treeSpacing}$), `revision` (inicia en 0 para control de concurrencia optimista).

---

### 3.2. Listar Cuarteles con Sincronización Delta
- **Identificador y Propósito:** `listPlots` - Recupera los cuarteles activos del productor o sincroniza incrementalmente para clientes móviles desconectados a partir de una marca de tiempo.
- **Sintaxis de Llamada:** `GET /api/v1/plots`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `updatedSince` | `Instant` | Query | No | Marca de tiempo ISO-8601 UTC para sincronización delta incremental. |
| `status` | `PlotStatus` | Query | No | Filtro de ciclo de vida: `ACTIVE` o `REMOVED_SOFT_DELETE`. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "producerId": "550e8400-e29b-41d4-a716-446655440000",
    "name": "Cuartel San Jerónimo",
    "variety": "CRIOLLA",
    "areaHa": 1.25,
    "treeDensity": 286,
    "rowSpacingM": 7.0,
    "treeSpacingM": 5.0,
    "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
    "lastPruningDate": null,
    "status": "ACTIVE",
    "revision": 0
  }
]
```
  - **Campos Clave:** Arreglo de cuarteles. Si se especifica `updatedSince`, incluye cuarteles modificados o eliminados suavemente desde esa fecha para reconciliación local en SQLite/Room.

---

### 3.3. Consultar Detalle de Cuartel por Identificador
- **Identificador y Propósito:** `getPlotById` - Devuelve la información agronómica, marco dendrométrico y límites geográficos de un cuartel específico.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID representativo del cuartel. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "producerId": "550e8400-e29b-41d4-a716-446655440000",
  "name": "Cuartel San Jerónimo",
  "variety": "CRIOLLA",
  "areaHa": 1.25,
  "treeDensity": 286,
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0,
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "lastPruningDate": "2026-06-15",
  "status": "ACTIVE",
  "revision": 1
}
```
  - **Campos Clave:** `lastPruningDate` (fecha de última labor de poda registrada), `revision` (versión actual del agregado para bloqueo optimista). Si no existe o pertenece a otro productor inactivo, devuelve `404 Not Found`.

---

### 3.4. Actualizar Límites y Marco de Cuartel con Bloqueo Optimista
- **Identificador y Propósito:** `updatePlot` - Modifica el nombre, marco de plantación, poda o polígono catastral, recalculando densidad e impidiendo sobrescrituras concurrentes mediante cabecera `If-Match`.
- **Sintaxis de Llamada:** `PUT /api/v1/plots/{plotId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `If-Match` | `String` | Header | Sí | Número de revisión esperado (ej. `"0"` o `0`). |
| `body` | `UpdatePlotResource` | Body | Sí | Payload con marco corregido, fecha de poda y polígono. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "name": "Cuartel San Jerónimo Rectificado",
  "rowSpacingM": 6.5,
  "treeSpacingM": 4.5,
  "lastPruningDate": "2026-09-10",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.2500,-18.0500],[-70.2400,-18.0500],[-70.2400,-18.0600],[-70.2500,-18.0600],[-70.2500,-18.0500]]]}",
  "variety": "SEVILLANA"
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "producerId": "550e8400-e29b-41d4-a716-446655440000",
  "name": "Cuartel San Jerónimo Rectificado",
  "variety": "SEVILLANA",
  "areaHa": 1.25,
  "treeDensity": 342,
  "rowSpacingM": 6.5,
  "treeSpacingM": 4.5,
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "lastPruningDate": "2026-09-10",
  "status": "ACTIVE",
  "revision": 1
}
```
  - **Manejo de Errores Específicos:** Si la cabecera `If-Match` difiere de la revisión en base de datos, el endpoint responde inmediatamente con `412 PRECONDITION_FAILED` y ProblemDetail `plot.revision.mismatch`.

---

### 3.5. Eliminación Lógica de Cuartel Olivícola (Soft Delete)
- **Identificador y Propósito:** `deletePlot` - Desactiva un cuartel del inventario operativo sin destruir su trazabilidad histórica ni sus registros de cosecha o telemetría pasados.
- **Sintaxis de Llamada:** `DELETE /api/v1/plots/{plotId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel a archivar. |
| `reason` | `String` | Query | No | Motivo de la baja (valor por defecto: `"Manual plot removal"`). |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "message": "Plot deleted successfully"
}
```

---

### 3.6. Restaurar Cuartel Olivícola Archivado
- **Identificador y Propósito:** `restorePlot` - Reincorpora un cuartel previamente archivado al inventario activo con su historial intacto.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/restore`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel archivado. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "producerId": "550e8400-e29b-41d4-a716-446655440000",
  "name": "Cuartel San Jerónimo Rectificado",
  "variety": "SEVILLANA",
  "areaHa": 1.25,
  "treeDensity": 342,
  "rowSpacingM": 6.5,
  "treeSpacingM": 4.5,
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "lastPruningDate": "2026-09-10",
  "status": "ACTIVE",
  "revision": 2
}
```

```
========================================================================================
BOUNDED CONTEXT: PHENOLOGY (Monitoreo Biológico, Índice Hoblyn y Horas Frío)
Controladores: PhenologyMetricController.java, HarvestRecordController.java
========================================================================================
```

### 3.7. Consultar Métricas Biológicas y Alternancia del Olivo
- **Identificador y Propósito:** `getPlotMetrics` - Evalúa y retorna indicadores biológicos calculados para el cuartel: el Índice de Vecería de Hoblyn (BBI) y las porciones de frío invernal acumuladas bajo el modelo Dinámico Erez-Fishman.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/metrics`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `metricName` | `String` | Query | No | Filtro de métrica: `BIENNIAL_BEARING_INDEX` o `EREZ_CHILLING_PORTIONS`. |
| `name` | `String` | Query | No | Alias alternativo de filtro para retrocompatibilidad móvil. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "metricName": "BIENNIAL_BEARING_INDEX",
    "value": 0.38,
    "qualitativeCategory": "MODERATE_ALTERNATION",
    "details": {
      "formula": "Hoblyn (1936)",
      "campaignsEvaluated": 4
    },
    "evaluatedAt": "2026-10-01T10:00:00Z"
  },
  {
    "metricName": "EREZ_CHILLING_PORTIONS",
    "value": 28.5,
    "qualitativeCategory": "SATISFIED",
    "details": {
      "model": "Dynamic Erez-Fishman",
      "thresholdTarget": 27.0,
      "completionPercentage": 105.56,
      "seasonStart": "2026-06-01",
      "completionDate": "2026-08-18",
      "idleDays": 0,
      "seasonState": "COMPLETED"
    },
    "evaluatedAt": "2026-10-01T10:00:00Z"
  }
]
```
  - **Campos Clave:** `qualitativeCategory` (clasificación agronómica: `REGULAR`, `MODERATE_ALTERNATION`, `SEVERE_ALTERNATION`, o `SATISFIED`/`DEFICIT`), `completionPercentage` (% de satisfacción del umbral vernal Erez).

---

### 3.8. Registrar Rendimiento de Cosecha Anual
- **Identificador y Propósito:** `recordHarvestYield` - Asienta el volumen total de cosecha cosechada en kilogramos para una campaña anual, desglosando aceituna verde y negra, y recalculando el índice de vecería de Hoblyn.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/harvest-records`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `RecordHarvestYieldResource` | Body | Sí | Campaña (2000 hasta año actual), volumen total en kg > 0 y desglose verde/negro >= 0. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "campaignYear": 2025,
  "totalYieldKg": 14250.0,
  "greenKg": 8200.0,
  "blackKg": 6050.0,
  "notes": "Cosecha óptima con maduración fenológica adecuada."
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "id": "550e8400-e29b-41d4-a716-446655440001",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2025,
  "totalYieldKg": 14250.0,
  "greenKg": 8200.0,
  "blackKg": 6050.0,
  "bearingClassification": "ON_YEAR",
  "calculatedBbi": 0.42,
  "recordedAt": "2026-09-27T17:00:00Z"
}
```
  - **Campos Clave:** `bearingClassification` (diagnóstico de año de alta carga `ON_YEAR`, baja carga `OFF_YEAR` o equilibrado `BALANCED`), `calculatedBbi` (índice actualizado Hoblyn BBI).

---

### 3.9. Listar Historial de Cosechas por Cuartel
- **Identificador y Propósito:** `listHarvestRecords` - Devuelve la serie cronológica plurianual de pesajes de cosecha y clasificaciones de vecería.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/harvest-records`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `campaignYear` | `Integer` | Query | No | Filtro opcional por año de campaña (1980 - 2100). |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "id": "550e8400-e29b-41d4-a716-446655440001",
    "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "campaignYear": 2025,
    "totalYieldKg": 14250.0,
    "greenKg": 8200.0,
    "blackKg": 6050.0,
    "bearingClassification": "ON_YEAR",
    "calculatedBbi": 0.42,
    "recordedAt": "2026-09-27T17:00:00Z"
  }
]
```

---

### 3.10. Rectificar Pesaje de Cosecha con Bloqueo Optimista
- **Identificador y Propósito:** `rectifyHarvestRecord` - Corrige los kilogramos entregados o composición verde/negra por ajustes de báscula de almazara, recalculando el BBI y requiriendo cabecera `If-Match`.
- **Sintaxis de Llamada:** `PUT /api/v1/plots/{plotId}/harvest-records/{recordId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `recordId` | `String` | Path | Sí | UUID de la entrada de cosecha. |
| `If-Match` | `String` | Header | No | Revisión esperada del tracker fenológico. |
| `body` | `RectifyHarvestYieldResource` | Body | Sí | Volúmenes corregidos en kilogramos. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "totalYieldKg": 15800.0,
  "greenKg": 9100.0,
  "blackKg": 6700.0,
  "notes": "Ajuste por calibración de báscula de almazara oficial."
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "550e8400-e29b-41d4-a716-446655440001",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2025,
  "totalYieldKg": 15800.0,
  "greenKg": 9100.0,
  "blackKg": 6700.0,
  "bearingClassification": "ON_YEAR",
  "calculatedBbi": 0.45,
  "recordedAt": "2026-09-27T17:00:00Z"
}
```

---

### 3.11. Eliminar Registro Erróneo de Cosecha
- **Identificador y Propósito:** `removeHarvestRecord` - Elimina un registro de campaña duplicado o erróneo, recalculando el BBI sobre las campañas restantes y permitiendo su posterior reinscripción.
- **Sintaxis de Llamada:** `DELETE /api/v1/plots/{plotId}/harvest-records/{recordId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `recordId` | `String` | Path | Sí | UUID de la entrada de cosecha a remover. |
| `If-Match` | `String` | Header | No | Revisión optimista esperada. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "message": "Harvest record deleted successfully"
}
```

```
========================================================================================
BOUNDED CONTEXT: TELEMETRY (Telemetría IoT, Incidentes Agroclimáticos y Pronósticos)
Controladores: AgroclimaticIncidentController.java, IoTDeviceController.java,
               TelemetryController.java, WeatherForecastController.java
========================================================================================
```

### 3.12. Listar Todos los Incidentes Agroclimáticos con Contadores
- **Identificador y Propósito:** `listIncidents` - Lista incidentes de estrés hídrico, olas de calor y heladas a nivel global con métricas agregadas (`activeCount`, `criticalCount`, `warningCount`, `normalizedCount`).
- **Sintaxis de Llamada:** `GET /api/v1/agroclimatic-incidents`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Query | No | Filtro opcional por UUID de cuartel. |
| `status` | `String` | Query | No | Estado: `ACTIVE`, `SNOOZED`, `NORMALIZED`. |
| `severity` | `String` | Query | No | Severidad: `WARNING`, `CRITICAL`. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "summary": {
    "activeCount": 2,
    "criticalCount": 1,
    "warningCount": 1,
    "normalizedCount": 5
  },
  "incidents": [
    {
      "id": "7c9e6679-5e2a-4a6f-871d-5a9e3a6c1234",
      "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "plotName": "Cuartel San Jerónimo",
      "plotVariety": "Criolla",
      "type": "HEAT_WAVE",
      "severity": "CRITICAL",
      "status": "ACTIVE",
      "headline": "heat_wave.headline",
      "metricName": "AMBIENT_TEMPERATURE",
      "currentValue": 36.5,
      "thresholdValue": 36.0,
      "unit": "°C",
      "triggeredAt": "2026-10-07T08:00:00Z",
      "triggerDate": "2026-10-07",
      "timeWindow": "11:00 - 16:00",
      "stressDurationMinutes": 120,
      "snoozedUntil": null
    }
  ]
}
```

---

### 3.13. Listar Incidentes Agroclimáticos de un Cuartel
- **Identificador y Propósito:** `listPlotIncidents` - Lista los incidentes agroclimáticos circunscritos a un cuartel particular.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/agroclimatic-incidents`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `status` | `String` | Query | No | Filtro: `ACTIVE`, `SNOOZED`, `NORMALIZED`. |
| `severity` | `String` | Query | No | Filtro: `WARNING`, `CRITICAL`. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK` (Estructura idéntica a 3.12, acotada al cuartel).

---

### 3.14. Consultar Detalle de Incidente con Tendencia y Pasos
- **Identificador y Propósito:** `getIncidentDetail` - Proporciona el diagnóstico agronómico completo, la serie temporal de tendencia semanal y la lista de verificación interactiva de mitigación.
- **Sintaxis de Llamada:** `GET /api/v1/agroclimatic-incidents/{incidentId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `incidentId` | `String` | Path | Sí | UUID del incidente agroclimático. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "7c9e6679-5e2a-4a6f-871d-5a9e3a6c1234",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "plotName": "Cuartel San Jerónimo",
  "plotVariety": "Criolla",
  "type": "HEAT_WAVE",
  "severity": "CRITICAL",
  "status": "ACTIVE",
  "headline": "heat_wave.headline",
  "metricName": "AMBIENT_TEMPERATURE",
  "currentValue": 36.5,
  "thresholdValue": 36.0,
  "unit": "°C",
  "triggeredAt": "2026-10-07T08:00:00Z",
  "triggerDate": "2026-10-07",
  "timeWindow": "11:00 - 16:00",
  "stressDurationMinutes": 120,
  "snoozedUntil": null,
  "mitigationSteps": [
    {
      "id": "a1b2c3d4-1111-4000-8000-000000000001",
      "instructionKey": "heat_wave.step.pre_irrigation",
      "instruction": "Efectúa un riego de refresco en la noche para reducir estrés radiativo.",
      "completed": false,
      "completedAt": null
    }
  ],
  "weeklyTrend": [
    {
      "timestamp": "2026-10-07T08:00:00Z",
      "value": 36.5,
      "threshold": 36.0
    }
  ]
}
```
  - **Campos Clave:** `mitigationSteps` (tareas prescritas adaptativas i18n), `weeklyTrend` (puntos para graficar evolución vs. umbral de daño foliar/estomático).

---

### 3.15. Posponer (Snooze) Notificaciones de Incidente
- **Identificador y Propósito:** `postponeIncident` - Silencia las notificaciones móviles de un incidente activo durante una cantidad específica de horas.
- **Sintaxis de Llamada:** `POST /api/v1/agroclimatic-incidents/{incidentId}/postponements`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `incidentId` | `String` | Path | Sí | UUID del incidente. |
| `body` | `PostponeIncidentResource` | Body | Sí | `durationHours` estrictamente positivo. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "durationHours": 4
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "message": "incident.postponed_successfully"
}
```

---

### 3.16. Completar Paso de Mitigación Agronómica
- **Identificador y Propósito:** `completeMitigationStep` - Marca una tarea de campo de mitigación como ejecutada.
- **Sintaxis de Llamada:** `PUT /api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `incidentId` | `String` | Path | Sí | UUID del incidente. |
| `stepId` | `String` | Path | Sí | UUID del paso de mitigación. |
| `body` | `CompleteMitigationStepResource` | Body | No | Flag opcional `completed` (booleano). |

- **Ejemplo de Request Body (JSON):**
```json
{
  "completed": true
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "message": "mitigation_step.completed_successfully"
}
```

---

### 3.17. Registrar y Enlazar Dispositivo IoT a Cuartel
- **Identificador y Propósito:** `registerIoTDevice` - Instancia una estación microclimática virtual o sonda edáfica y la vincula espacialmente al cuartel.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/iot-devices`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `RegisterIoTDeviceResource` | Body | Sí | Nombre (2-100 car.), tipo (`MICROCLIMATE` o `SOIL_PROBE`), profundidad (1-200 cm), multiplicador de calibración [0.50, 2.00]. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "name": "Sonda Edáfica Sector Norte",
  "type": "SOIL_PROBE",
  "depthCm": 30,
  "soilTextureType": "SANDY_LOAM",
  "calibrationMultiplier": 1.05
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "id": "550e8400-e29b-41d4-a716-446655440001",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "name": "Sonda Edáfica Sector Norte",
  "type": "SOIL_PROBE",
  "depthCm": 30,
  "soilTextureType": "SANDY_LOAM",
  "calibrationMultiplier": 1.05,
  "status": "ACTIVE",
  "lastReadingTimestamp": null,
  "revision": 0
}
```
  - **Campos Clave:** `calibrationMultiplier` (factor empírico de corrección textural), `status` (`ACTIVE`), `revision` (0 para bloqueo optimista).

---

### 3.18. Listar Dispositivos IoT Enlazados al Cuartel
- **Identificador y Propósito:** `listIoTDevices` - Consulta el parque de sensores activos y sondas instaladas en el cuartel.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/iot-devices`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "id": "550e8400-e29b-41d4-a716-446655440001",
    "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "name": "Sonda Edáfica Sector Norte",
    "type": "SOIL_PROBE",
    "depthCm": 30,
    "soilTextureType": "SANDY_LOAM",
    "calibrationMultiplier": 1.05,
    "status": "ACTIVE",
    "lastReadingTimestamp": "2026-10-07T12:00:00Z",
    "revision": 0
  }
]
```

---

### 3.19. Calibrar Multiplicador y Parámetros de Sonda IoT
- **Identificador y Propósito:** `calibrateIoTDevice` - Ajusta el factor de corrección empírica y profundidad de una sonda activa con soporte de concurrencia optimista (`If-Match`).
- **Sintaxis de Llamada:** `PUT /api/v1/plots/{plotId}/iot-devices/{deviceId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `deviceId` | `String` | Path | Sí | UUID del dispositivo sensor. |
| `If-Match` | `String` | Header | No | Revisión esperada. |
| `body` | `CalibrateIoTDeviceResource` | Body | Sí | Multiplicador en [0.50, 2.00], textura de suelo y profundidad. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "calibrationMultiplier": 1.15,
  "soilTextureType": "LOAM",
  "depthCm": 45
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "550e8400-e29b-41d4-a716-446655440001",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "name": "Sonda Edáfica Sector Norte",
  "type": "SOIL_PROBE",
  "depthCm": 45,
  "soilTextureType": "LOAM",
  "calibrationMultiplier": 1.15,
  "status": "ACTIVE",
  "lastReadingTimestamp": "2026-10-07T12:00:00Z",
  "revision": 1
}
```

---

### 3.20. Desvincular y Desactivar Dispositivo Sensor IoT
- **Identificador y Propósito:** `deactivateIoTDevice` - Da de baja lógicamente una sonda o estación del cuartel preservando intacta la serie temporal de telemetría previa.
- **Sintaxis de Llamada:** `DELETE /api/v1/plots/{plotId}/iot-devices/{deviceId}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `deviceId` | `String` | Path | Sí | UUID del dispositivo. |
| `If-Match` | `String` | Header | No | Revisión optimista. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "message": "IoT device unlinked successfully"
}
```

---

### 3.21. Consultar Serie Temporal de Telemetría Agroclimática
- **Identificador y Propósito:** `getTelemetrySeries` - Recupera lecturas horarias cronológicas de microclima y humedad de suelo en un rango de fechas.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/telemetries`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `startDate` | `Instant` | Query | No | Filtro de inicio inclusive (ISO-8601 UTC). |
| `endDate` | `Instant` | Query | No | Filtro de fin inclusive (ISO-8601 UTC). |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "temperature": 23.5,
    "humidity": 58.2,
    "soilMoisture": 28.4,
    "solarRadiation": 680.0,
    "stemWaterPotential": -1.2,
    "recordedAt": "2026-10-07T14:00:00Z"
  }
]
```
  - **Campos Clave:** `temperature` (°C), `humidity` (% relativo), `soilMoisture` (% volumétrico de agua en suelo), `solarRadiation` ($W/m^2$), `stemWaterPotential` (potencial hídrico xilemático en MPa).

---

### 3.22. Consultar Pronóstico Meteorológico a 7 Días con Alerta de Helada
- **Identificador y Propósito:** `getWeatherForecast` - Entrega proyecciones meteorológicas georreferenciadas a 7 días, computando automáticamente el riesgo biológico de helada si la mínima es inferior a 2.0 °C.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/forecasts`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "dailyForecasts": [
    {
      "forecastDate": "2026-10-08",
      "maxTemperature": 24.5,
      "minTemperature": 1.5,
      "precipitationProbability": 10.0,
      "windSpeedKmh": 12.0,
      "isFrostRisk": true,
      "syncedAt": "2026-10-07T12:00:00Z"
    }
  ],
  "generatedAt": "2026-10-07T13:00:00Z"
}
```
  - **Campos Clave:** `isFrostRisk` (booleano `true` activa advertencias tempranas para sistemas antihelada), `minTemperature` (temperatura mínima en °C).

```
========================================================================================
BOUNDED CONTEXT: THINNING (Muestreo de Campo, Prescripción Técnica y Raleo de Frutos)
Controladores: PlotSamplingCollectionController.java, FieldSamplingController.java,
               ThinningPrescriptionController.java, ThinningExecutionController.java,
               ThinningEventController.java
========================================================================================
```

### 3.23. Listar Estado Global de Muestreos de Cuarteles (Plot Picker)
- **Identificador y Propósito:** `getPlotSamplingStates` - Entrega el avance de representatividad estadística (árboles muestreados vs. faltantes) de todos los cuarteles para la pantalla de selección móvil.
- **Sintaxis de Llamada:** `GET /api/v1/samplings`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `campaignYear` | `Integer` | Query | No | Campaña agrícola (por defecto año actual UTC). |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
[
  {
    "plotId": "550e8400-e29b-41d4-a716-446655440001",
    "plotName": "Cuartel San Jerónimo",
    "variety": "Sevillana",
    "areaHectares": 1.25,
    "campaignYear": 2026,
    "samplingStatus": "IN_PROGRESS",
    "sampledTreesCount": 3,
    "treesNeeded": 2,
    "isRepresentative": false
  }
]
```
  - **Campos Clave:** `treesNeeded` (número de árboles adicionales necesarios para alcanzar el mínimo estadístico de 5 árboles), `isRepresentative` (`false` bloquea la emisión de la prescripción técnica).

---

### 3.24. Ingerir Lote de Muestreo de Campo
- **Identificador y Propósito:** `submitSampling` - Ingesta observaciones de árboles y brotes contados en campo con clave de idempotencia (`clientBatchId`), deduplicando árboles evaluados.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/samplings`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `SubmitSamplingResource` | Body | Sí | UUID de lote del cliente, campaña (1980-2100) y lista de observaciones no vacía. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "clientBatchId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "samples": [
    {
      "treeTag": "T-01",
      "shootCount": 10,
      "fruitSetCount": 120,
      "trunkDiameterMm": 165.5,
      "samplingDate": "2026-10-06"
    },
    {
      "treeTag": "T-02",
      "shootCount": 12,
      "fruitSetCount": 140,
      "trunkDiameterMm": 170.0,
      "samplingDate": "2026-10-06"
    }
  ]
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "sampledTreesCount": 5,
  "sampledShootsCount": 60,
  "sampledFruitSetCount": 680,
  "meanFruitsPerShoot": 11.33,
  "isRepresentative": true,
  "treesNeeded": 0,
  "loadUnit": "FRUITS_PER_SHOOT"
}
```
  - **Campos Clave:** `meanFruitsPerShoot` (carga media de cuajado observada en frutos por brote), `isRepresentative` (`true` cuando $\ge 5$ árboles únicos han sido consolidados).

---

### 3.25. Consultar Resumen o Detalle de Muestreos de Campo
- **Identificador y Propósito:** `getSamplingSummary` - Permite consultar el resumen estadístico global o, mediante el parámetro `view=detailed`, el desglose individual por árbol observado.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/samplings`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `campaignYear` | `Integer` | Query | No | Campaña agrícola (por defecto año actual UTC). |
| `view` | `String` | Query | No | Selector de vista: `summary` (por defecto) o `detailed`. |

- **Ejemplo y Explicación del Response (Vista Detallada):**
  - **HTTP Status:** `200 OK`
```json
{
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "sampledTreesCount": 5,
  "sampledShootsCount": 60,
  "sampledFruitSetCount": 680,
  "meanFruitsPerShoot": 11.33,
  "isRepresentative": true,
  "treesNeeded": 0,
  "loadUnit": "FRUITS_PER_SHOOT",
  "trees": [
    {
      "roundId": "9f44b9db-9b84-4d41-bf75-fd9f3f0be0d1",
      "treeTag": "T-01",
      "shootCount": 10,
      "fruitSetCount": 120,
      "trunkDiameterMm": 165.5,
      "samplingDate": "2026-10-06"
    }
  ]
}
```

---

### 3.26. Registrar Plena Floración Observada en Cuartel
- **Identificador y Propósito:** `recordFullBloom` - Asienta la fecha fenológica en que la mayoría de flores abrieron en el cuartel, origen indispensable para calcular la ventana de intervención de raleo. Si todos los datos están completos, emite la prescripción técnica inmediatamente.
- **Sintaxis de Llamada:** `PUT /api/v1/plots/{plotId}/thinning-prescriptions/full-bloom`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `RecordFullBloomResource` | Body | Sí | Campaña y fecha `observedOn` (no puede ser futura ni de otro año). |

- **Ejemplo de Request Body (JSON):**
```json
{
  "campaignYear": 2026,
  "observedOn": "2026-10-01"
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "7b2d5a39-c1f4-4b53-bca9-59eb88d440aa",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "targetFruitsPerShoot": 8.0,
  "percentageToRemove": 29.39,
  "loadUnit": "FRUITS_PER_SHOOT",
  "status": "PRESCRIBED",
  "fullBloomOn": "2026-10-01",
  "windowOpensOn": "2026-10-15",
  "windowClosesOn": "2026-11-20",
  "windowBasis": "FULL_BLOOM_PLUS_PROFILE_OFFSETS",
  "profileVersion": "sevillana-v1",
  "profileStatus": "AGRONOMIST_APPROVED",
  "isWindowOpen": false,
  "blockers": [],
  "issuedAt": "2026-10-07T14:30:00Z"
}
```
  - **Campos Clave:** `percentageToRemove` (% de frutos a aclarear para sostener calibre comercial), `windowOpensOn` y `windowClosesOn` (rango biológicamente óptimo para intervenir), `blockers` (lista de precondiciones pendientes; vacía al emitirse).

---

### 3.27. Consultar Prescripción Técnica Activa y Bloqueadores
- **Identificador y Propósito:** `getActiveThinningPrescription` - Obtiene la prescripción técnica vigente. Si aún no cumple los requisitos, lista explícitamente qué insumos faltan en el atributo `blockers`.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/thinning-prescriptions`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `campaignYear` | `Integer` | Query | No | Campaña agrícola. |
| `status` | `String` | Query | No | Filtro de estado: `ACTIVE` (restringe a `PRESCRIBED`). |

- **Ejemplo y Explicación del Response (Prescripción Bloqueada por Muestreo):**
  - **HTTP Status:** `200 OK`
```json
{
  "id": "7b2d5a39-c1f4-4b53-bca9-59eb88d440aa",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "targetFruitsPerShoot": null,
  "percentageToRemove": null,
  "loadUnit": "FRUITS_PER_SHOOT",
  "status": "SAMPLING_IN_PROGRESS",
  "fullBloomOn": "2026-10-01",
  "windowOpensOn": null,
  "windowClosesOn": null,
  "windowBasis": "FULL_BLOOM_PLUS_PROFILE_OFFSETS",
  "profileVersion": "sevillana-v1",
  "profileStatus": "AGRONOMIST_APPROVED",
  "isWindowOpen": false,
  "blockers": [
    "SAMPLING_NOT_REPRESENTATIVE"
  ],
  "issuedAt": null
}
```

---

### 3.28. Confirmar Ejecución de Raleo en Campo y Proyección de Calibre
- **Identificador y Propósito:** `confirm` - Registra la labor física de raleo ejecutada por la cuadrilla agrícola, evaluando la oportunidad temporal (`OPTIMAL` vs `LATE`), el balance de carga residual y la proyección de calibre comercial IOC.
- **Sintaxis de Llamada:** `POST /api/v1/thinning-prescriptions/{id}/execution-confirmations`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `id` | `String` | Path | Sí | UUID de la prescripción técnica prescrita. |
| `body` | `ConfirmExecutionResource` | Body | Sí | Fecha de ejecución (no futura), % removido real [0, 100], biomasa removida en kg >= 0, tamaño de cuadrilla > 0 y notas. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "executedDate": "2026-10-20",
  "actualRemovalPercentage": 28.0,
  "removedKg": 450.0,
  "laborCrewSize": 5,
  "notes": "Raleo manual ejecutado en fecha óptima con cuadrilla experimentada."
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "prescriptionId": "7b2d5a39-c1f4-4b53-bca9-59eb88d440aa",
  "confirmationId": "c1b2a3d4-2222-4000-8000-000000000002",
  "confirmationStatus": "OPTIMAL",
  "executedDate": "2026-10-20",
  "actualRemovalPercentage": 28.0,
  "removedKg": 450.0,
  "laborCrewSize": 5,
  "notes": "Raleo manual ejecutado en fecha óptima con cuadrilla experimentada.",
  "isOpportune": true,
  "recordedAt": "2026-10-20T18:00:00Z",
  "warning": null,
  "loadBalance": {
    "preThinningFruitsPerShoot": 11.33,
    "residualFruitsPerShoot": 8.16,
    "targetFruitsPerShoot": 8.0,
    "deltaFruitsPerShoot": 0.16,
    "loadRatio": 1.02,
    "loadState": "BALANCED"
  },
  "caliberProjection": {
    "status": "ESTIMATED",
    "mostLikelyFruitsPerKg": 104.3,
    "fruitsPerKgLow": 93.8,
    "fruitsPerKgHigh": 116.0,
    "mostLikelySizeGrade": "101/110",
    "sizeGradeLow": "91/100",
    "sizeGradeHigh": "111/120",
    "confidenceLevel": 0.80,
    "calibrationObservations": 12,
    "requiredObservations": 8,
    "model": "LOAD_RESPONSE_V1"
  }
}
```
  - **Campos Clave:** `confirmationStatus` (`OPTIMAL` dentro de ventana; `LATE` fuera de ventana con advertencia), `loadState` (`BALANCED`), `mostLikelySizeGrade` (calibre comercial proyectado según escala oficial del COI).

---

### 3.29. Consultar Eventos Cronológicos de Raleo (Bitácora Agronómica)
- **Identificador y Propósito:** `getThinningEvents` - Alimenta el feed de la bitácora móvil unificando eventos de rondas de muestreo completadas y operaciones de raleo ejecutadas.
- **Sintaxis de Llamada:** `GET /api/v1/thinning-events`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `campaignYear` | `Integer` | Query | No | Campaña agrícola. |
| `plotId` | `String` | Query | No | Filtro opcional por UUID de cuartel. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK`
```json
{
  "events": [
    {
      "id": "a1b2c3d4-0001-4000-8000-000000000001",
      "eventType": "THINNING_EXECUTED",
      "prescriptionId": "7b2d5a39-c1f4-4b53-bca9-59eb88d440aa",
      "confirmationId": "c1b2a3d4-2222-4000-8000-000000000002",
      "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
      "plotName": "Cuartel San Jerónimo",
      "campaignYear": 2026,
      "occurredAt": "2026-10-20T18:00:00Z",
      "evaluatedTreesCount": null,
      "totalShootsCount": null,
      "totalFruitsCount": null,
      "meanFruitsPerShoot": null,
      "isRepresentative": null,
      "removalPercentage": 28.0,
      "removedKg": 450.0,
      "executedDate": "2026-10-20",
      "laborCrewSize": 5,
      "timeliness": "OPTIMAL"
    }
  ]
}
```

```
========================================================================================
BOUNDED CONTEXT: SETTLEMENT (Liquidación Oficial de Cosecha y Certificación Agronómica)
Controladores: HarvestSettlementController.java, AgronomicReportCertificationController.java
========================================================================================
```

### 3.30. Liquidar Cosecha de Campaña con Balanza Oficial
- **Identificador y Propósito:** `settle` - Registra el pesaje oficial de báscula de entrega (verde/negro), congela el balance de cumplimiento contra la prescripción de raleo y calcula la curva de estabilización interanual de vecería.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/harvest-settlements`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `SettleHarvestResource` | Body | Sí | Campaña (2000-2100), pesos en kg (al menos uno positivo) y calibre comercial opcional. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "campaignYear": 2026,
  "greenOlivesKg": 8200.0,
  "blackOlivesKg": 6050.0,
  "commercialFruitsPerKg": 105.0,
  "notes": "Liquidación oficial auditada de entrega a planta procesadora."
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "id": "99aa88bb-1234-4000-8000-000000000001",
  "reportId": "REP-2026-CUARTEL-SAN-JERONIMO",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "greenOlivesKg": 8200.0,
  "blackOlivesKg": 6050.0,
  "totalYieldKg": 14250.0,
  "commercialFruitsPerKg": 105.0,
  "notes": "Liquidación oficial auditada de entrega a planta procesadora.",
  "status": "SETTLED",
  "settledAt": "2026-10-07T15:00:00Z",
  "thinningBalance": {
    "status": "EXECUTED_ON_TIME",
    "executedDate": "2026-10-20",
    "prescribedRemovalPercentage": 29.39,
    "actualRemovalPercentage": 28.0,
    "deviationPercentagePoints": -1.39
  },
  "stabilization": {
    "status": "EVALUATED",
    "baselineCampaigns": 3,
    "settledCampaigns": 3,
    "baselineYieldKg": 11500.0,
    "baselineAlternationIndex": 0.45,
    "managedAlternationIndex": 0.22,
    "amplitudeReductionRate": 0.51,
    "targetAchieved": true,
    "interannualVarianceKg2": 320000.0,
    "coefficientOfVariation": 0.08,
    "requiredConsecutivePairs": 2
  }
}
```
  - **Campos Clave:** `thinningBalance` (desviación en puntos porcentuales entre lo prescrito y lo ejecutado), `stabilization.targetAchieved` (`true` indica que la tasa de reducción de amplitud ARR superó el objetivo del 30%).

---

### 3.31. Listar Liquidaciones de Cosecha de un Cuartel
- **Identificador y Propósito:** `list` - Devuelve todas las liquidaciones históricas de un cuartel, ordenadas de la campaña más reciente a la más antigua.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/harvest-settlements`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK` (Arreglo JSON de `HarvestSettlementResource`).

---

### 3.32. Consultar Liquidación de Cosecha de una Campaña Individual
- **Identificador y Propósito:** `detail` - Recupera la liquidación congelada de una campaña específica del cuartel.
- **Sintaxis de Llamada:** `GET /api/v1/plots/{plotId}/harvest-settlements/{campaignYear}`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `campaignYear` | `Integer` | Path | Sí | Año de campaña liquidada (2000 - 2100). |

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `200 OK` (Estructura idéntica a 3.30).

---

### 3.33. Certificar Dossier Agronómico Colegiado
- **Identificador y Propósito:** `certify` - Emite el informe técnico formal en PDF para una campaña liquidada, calculando el hash criptográfico SHA-256 de los bytes exactos del documento y estampando la firma del agrónomo colegiado.
- **Sintaxis de Llamada:** `POST /api/v1/plots/{plotId}/certifications`
- **Especificación de Parámetros:**
| Nombre | Tipo | Ubicación | Obligatorio | Descripción / Restricciones |
| :--- | :--- | :---: | :---: | :--- |
| `plotId` | `String` | Path | Sí | UUID del cuartel. |
| `body` | `CertifyDossierResource` | Body | Sí | Campaña (2000-2100), firma auditora declarada, nombre del perito, registro CIP y notas opcionales. |

- **Ejemplo de Request Body (JSON):**
```json
{
  "campaignYear": 2026,
  "auditorSignature": "CIP-49120-ING-AGRONOMO-SANCHEZ",
  "certifiedBy": "Ing. Agrónomo Carlos Sánchez",
  "cipNumber": "49120",
  "notes": "Dossier verificado con curva de estabilización de vecería validada."
}
```

- **Ejemplo y Explicación del Response:**
  - **HTTP Status:** `201 CREATED`
```json
{
  "certificationId": "cert-11223344-5566-7788-99aa-bbccddeeff00",
  "reportId": "REP-2026-CUARTEL-SAN-JERONIMO",
  "plotId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "campaignYear": 2026,
  "verificationHash": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
  "auditorSignature": "CIP-49120-ING-AGRONOMO-SANCHEZ",
  "certifiedBy": "Ing. Agrónomo Carlos Sánchez",
  "cipNumber": "49120",
  "certifiedAt": "2026-10-07T16:00:00Z"
}
```
  - **Campos Clave:** `verificationHash` (cadena de 64 caracteres hexadecimales correspondiente al digest SHA-256 del PDF emitido para auditoría inmutable), `cipNumber` (matrícula del Colegio de Ingenieros).

---

## 4. Guía de Interacción y Capturas para Swagger UI

Esta sección proporciona una guía paso a paso con los casos de prueba más representativos para ejecutar en Swagger UI (`http://localhost:8080/swagger-ui/index.html`), detallando los valores exactos, el resultado esperado y el título recomendado para las capturas del informe final.

```
+---------------------------------------------------------------------------------------------------+
| NOTA OPERATIVA: Antes de ejecutar las pruebas en Swagger UI, asegúrate de haber inicializado      |
| el entorno de base de datos o el perfil demo ejecutando ./mvnw spring-boot:run.                   |
+---------------------------------------------------------------------------------------------------+
```

### Caso de Prueba 1: Delimitación de Cuartel Olivícola (POST /api/v1/plots)
1. **Endpoint en Swagger UI:** `Orchard Plots` -> `POST /api/v1/plots`
2. **Acción:** Presionar el botón **"Try it out"**.
3. **Payload a ingresar en el Body:**
```json
{
  "name": "Cuartel Experimental Viora",
  "variety": "CRIOLLA",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.2500,-18.0500],[-70.2400,-18.0500],[-70.2400,-18.0600],[-70.2500,-18.0600],[-70.2500,-18.0500]]]}",
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0
}
```
4. **Resultado Esperado:** 
   - Código `201 Created`.
   - Response Body con `id` generado, `areaHa: 1.25`, `treeDensity: 286`, `status: "ACTIVE"` y `revision: 0`.
5. **Título y Descripción de Captura Sugerida:**
   - **Título:** `fig-01-swagger-crear-cuartel.png`
   - **Descripción:** *"Interacción exitosa en Swagger UI: Delimitación de nuevo cuartel georreferenciado con derivación automática de densidad dendrométrica (Código 201)."*

---

### Caso de Prueba 2: Ingesta de Lote de Muestreo de Campo (POST /api/v1/plots/{plotId}/samplings)
1. **Endpoint en Swagger UI:** `Field Sampling` -> `POST /api/v1/plots/{plotId}/samplings`
2. **Acción:** Presionar **"Try it out"**.
3. **Valores de Prueba:**
   - `plotId`: `3fa85f64-5717-4562-b3fc-2c963f66afa6` (o el ID retornado en el Caso 1).
   - **Request Body:**
```json
{
  "clientBatchId": "c9e8a7b6-1234-4567-89ab-cdef01234567",
  "campaignYear": 2026,
  "samples": [
    {"treeTag": "ARBOL-01", "shootCount": 10, "fruitSetCount": 85, "trunkDiameterMm": 150.0, "samplingDate": "2026-10-06"},
    {"treeTag": "ARBOL-02", "shootCount": 10, "fruitSetCount": 92, "trunkDiameterMm": 155.0, "samplingDate": "2026-10-06"},
    {"treeTag": "ARBOL-03", "shootCount": 10, "fruitSetCount": 78, "trunkDiameterMm": 148.0, "samplingDate": "2026-10-06"},
    {"treeTag": "ARBOL-04", "shootCount": 10, "fruitSetCount": 88, "trunkDiameterMm": 152.0, "samplingDate": "2026-10-06"},
    {"treeTag": "ARBOL-05", "shootCount": 10, "fruitSetCount": 95, "trunkDiameterMm": 160.0, "samplingDate": "2026-10-06"}
  ]
}
```
4. **Resultado Esperado:** 
   - Código `201 Created`.
   - Response Body con `isRepresentative: true`, `treesNeeded: 0`, `sampledTreesCount: 5`, `meanFruitsPerShoot: 8.76`.
5. **Título y Descripción de Captura Sugerida:**
   - **Título:** `fig-02-swagger-ingesta-muestreo.png`
   - **Descripción:** *"Respuesta en Swagger UI a la ingesta de lote de 5 árboles alcanzando representatividad estadística para prescripción de raleo (Código 201)."*

---

### Caso de Prueba 3: Registro de Plena Floración y Emisión de Prescripción (PUT /api/v1/plots/{plotId}/thinning-prescriptions/full-bloom)
1. **Endpoint en Swagger UI:** `Thinning Prescriptions` -> `PUT /api/v1/plots/{plotId}/thinning-prescriptions/full-bloom`
2. **Acción:** Presionar **"Try it out"**.
3. **Valores de Prueba:**
   - `plotId`: `3fa85f64-5717-4562-b3fc-2c963f66afa6`
   - **Request Body:**
```json
{
  "campaignYear": 2026,
  "observedOn": "2026-10-01"
}
```
4. **Resultado Esperado:** 
   - Código `200 OK`.
   - Response Body con `status: "PRESCRIBED"`, `percentageToRemove > 0`, `windowOpensOn: "2026-10-15"`, `windowClosesOn: "2026-11-20"`, `blockers: []`.
5. **Título y Descripción de Captura Sugerida:**
   - **Título:** `fig-03-swagger-emision-prescripcion.png`
   - **Descripción:** *"Registro fenológico de plena floración y emisión instantánea de prescripción técnica con ventana de intervención calculada (Código 200)."*

---

### Caso de Prueba 4: Liquidación Oficial de Cosecha y Balance de Cumplimiento (POST /api/v1/plots/{plotId}/harvest-settlements)
1. **Endpoint en Swagger UI:** `Harvest Settlement` -> `POST /api/v1/plots/{plotId}/harvest-settlements`
2. **Acción:** Presionar **"Try it out"**.
3. **Valores de Prueba:**
   - `plotId`: `3fa85f64-5717-4562-b3fc-2c963f66afa6`
   - **Request Body:**
```json
{
  "campaignYear": 2026,
  "greenOlivesKg": 8200.0,
  "blackOlivesKg": 6050.0,
  "commercialFruitsPerKg": 105.0,
  "notes": "Pesaje oficial auditado de recepción."
}
```
4. **Resultado Esperado:** 
   - Código `201 Created`.
   - Response Body con `status: "SETTLED"`, `totalYieldKg: 14250.0`, desglose de `thinningBalance` y estado de `stabilization`.
5. **Título y Descripción de Captura Sugerida:**
   - **Título:** `fig-04-swagger-liquidacion-cosecha.png`
   - **Descripción:** *"Liquidación formal de cosecha de campaña en Swagger UI con cálculo de balanza de raleo y estabilización interanual (Código 201)."*

---

### Caso de Prueba 5: Validación RFC 7807 ante Error de Concurrencia Optimista (PUT /api/v1/plots/{plotId})
1. **Endpoint en Swagger UI:** `Orchard Plots` -> `PUT /api/v1/plots/{plotId}`
2. **Acción:** Presionar **"Try it out"**.
3. **Valores de Prueba:**
   - `plotId`: `3fa85f64-5717-4562-b3fc-2c963f66afa6`
   - `If-Match`: `"999"` *(Revisión intencionalmente errónea para disparar colisión)*
   - **Request Body:**
```json
{
  "name": "Intento de Sobrescritura Concurrente",
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0,
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "variety": "CRIOLLA"
}
```
4. **Resultado Esperado:** 
   - Código `412 Precondition Failed`.
   - Response Body con formato estándar **RFC 7807 (`ProblemDetail`)**:
```json
{
  "type": "about:blank",
  "title": "Precondition Failed",
  "status": 412,
  "detail": "The plot revision has changed. Please reload.",
  "instance": "/api/v1/plots/3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```
5. **Título y Descripción de Captura Sugerida:**
   - **Título:** `fig-05-swagger-error-rfc7807-ifmatch.png`
   - **Descripción:** *"Captura de respuesta estandarizada RFC 7807 ProblemDetail generada por GlobalExceptionHandler ante falla de cabecera If-Match (Código 412)."*

---

## 5. Metadatos de Versionamiento y Git

### 5.1. Repositorio Oficial
* **Repositorio SSH:** `git@github.com:upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform.git`
* **Repositorio HTTPS:** `https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform`

### 5.2. Comando Git Sugerido para Auditoría de Commits
Para inspeccionar de manera reproducible los commits asociados a la capa web, documentación OpenAPI, DTOs y controladores, se debe ejecutar:
```bash
git log --oneline --grep="docs\|swagger\|openapi\|rest\|controller" -n 15
```

Para una visualización tabular con autor y fecha:
```bash
git log --pretty=format:"%h|%an|%ad|%s" --date=short --grep="docs\|swagger\|openapi\|rest\|controller" -n 15
```

### 5.3. Tabla de Commits del Sprint (Auditoría de Cambios)

| Commit Hash | Autor | Fecha | Descripción del Cambio |
| :---: | :--- | :---: | :--- |
| `57b0ade` | Santi2007939 | 2026-10-05 | feat(test): add plot sampling collection controller integration test |
| `20aaaad` | Santi2007939 | 2026-10-05 | feat(controllers): add controller, sampling coverage evaluator, sampling resources and their assemblers |
| `a5c6c94` | Jahat Trinidad | 2026-10-04 | docs(mobile): mark us29 settlement query gap as closed |
| `932dc56` | DaronCameloft | 2026-10-04 | docs(thinning): record the prescription inputs and contract |
| `7e70abc` | Jahat Trinidad | 2026-10-04 | docs(api): move the us20 gap entries from 0.25.0 to 0.27.0 |
| `bd0ca3e` | Jahat Trinidad | 2026-10-04 | docs(api): record the us20 bbi and campaign year alignment in mobile gaps |
| `383fd8b` | Jahat Trinidad | 2026-10-04 | feat(phenology): restrict recorded harvest campaigns to 2000 and the current year |
| `fc55a26` | Santi2007939 | 2026-10-04 | docs: add adr, update branch and implement alerts |
| `da10a40` | Santi2007939 | 2026-10-04 | feat(controllers): add agroclimatic incident controller, resources and assemblers |
| `9afdbb7` | Piero | 2026-10-03 | fix(phenology): align openapi schema example and mock test key to thresholdTarget |
| `6a885c5` | Piero | 2026-10-03 | docs(phenology): mark us22 chilling metric extras as resolved in mobile gaps |
| `1587607` | Piero | 2026-10-03 | feat(phenology): expose chill season extras in metric resource and controller |
| `6cd5881` | DaronCameloft | 2026-10-03 | docs(api): track the backend endpoints the mobile app needs per developer |
| `8fc5bef` | DaronCameloft | 2026-10-03 | Merge branch 'feature/plot-restore' into develop. |
| `23814aa` | DaronCameloft | 2026-10-03 | docs(api): document the plot restore endpoint |

---

### Dictamen de Auditoría y Certificación Técnica
El presente informe confirma que la totalidad de los servicios REST expuestos por la plataforma **Viora** cumplen con los estándares de diseño de API de grado de producción, inmutabilidad de tipos en Java 21, adhesión formal al estándar **OpenAPI 3.0** y separación estricta de responsabilidades de acuerdo con los principios de Arquitectura Hexagonal y DDD.
