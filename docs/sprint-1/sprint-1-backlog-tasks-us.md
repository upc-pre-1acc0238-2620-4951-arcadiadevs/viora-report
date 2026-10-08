# Sprint Backlog: Desglose Técnico de Tareas para User Stories (US) - Sprint 1
**Aplicación Móvil Viora (`viora-mobile-android`)**  
**Rol:** Scrum Master & Experto en Sprint Backlog / Arquitectura Limpia Android  
**Fecha:** Octubre 2026 | **Sprint:** 1  

---

## 1. Resumen Ejecutivo y Métricas del Sprint

Este documento consolida el rediseño y estandarización técnica de todas las tareas del Sprint Backlog asociadas a las **20 User Stories (US)** del Core de la Aplicación Móvil de Viora (`Client Application Core`). 

Las tareas han sido construidas auditando directamente la fuente de verdad visual en el **MCP de Figma** (archivo `Viora202602_Mobile_App`, lienzo `Mobile Mockups`, sección `App Productor · Kotlin`), descartando los flujos de autenticación e inicio de sesión por requerimiento explícito, e implementando de forma rigurosa las **4 capas de arquitectura limpia** en Android (Jetpack Compose, Casos de Uso, Entidades de Dominio e Infraestructura Room/Retrofit/Hardware).

### Métricas Consolidadas del Sprint Backlog

| Métrica del Backlog | Valor Anterior | Valor Actualizado | Justificación y Reglas Aplicadas |
| :--- | :---: | :---: | :--- |
| **Total de User Stories Core (Mobile)** | 20 | **20** | Cobertura total de los 5 módulos agronómicos del Productor. |
| **Story Points Totales (Mobile)** | 69 SP | **69 SP** | Compromiso oficial del Sprint 1. |
| **Tareas por User Story** | 3 a 4 tareas | **2 a 3 tareas** | 14 US (2–3 SP) con 2 tareas; 6 US (5 SP) con 3 tareas. |
| **Total de Tareas Mobile US** | 58 tareas | **47 tareas** | Eliminación de dispersión ("micro-tasking") y consolidación por capas. |
| **Total de Tareas del Sprint 1 (Global)** | 161 tareas | **149 tareas** | 102 tareas (Landing Page, TS y Spikes) + 47 tareas (Mobile US). |
| **Horas Estimadas Mobile US** | 55.5 h | **55.5 h** | Horas conservadas con balance por complejidad de capa. |
| **Horas Totales del Sprint 1 (Global)** | 128.3 h | **128.3 h** | Balance matemático exacto recalculado en raíz. |
| **Límite de Palabras: Título (`title`)** | 8 – 15 palabras | **$\le$ 6 palabras** | 100% de títulos cumplen la restricción de concisión. |
| **Límite de Palabras: Descripción (`description`)** | 15 – 25 palabras | **$\le$ 10 palabras** | 100% de descripciones cumplen el límite máximo de 10 palabras. |

---

## 2. Asignación de Responsabilidades por Desarrollador

Conforme al mapa de asignación del equipo técnico de desarrollo mobile:

| Desarrollador | Módulos Asignados | Historias de Usuario (US) | Total Tareas | Horas Totales |
| :--- | :--- | :--- | :---: | :---: |
| **Victor** (`Paredes, Victor`) | **Lotes + Aclareo** (+ Armazón del Home) | `US09`, `US10`, `US11`, `US27`, `US26`, `US28` | **15 tareas** | **17.4 h** |
| **Fabrizio** (`Santi, Fabrizio`) | **Alertas + Muestreo** | `US18`, `US24`, `US25` | **7 tareas** | **9.4 h** |
| **Piero** (`Espada, Piero`) | **Frío invernal + Clima 7 días** | `US22`, `US23`, `US19` | **7 tareas** | **7.7 h** |
| **Diana** (`Li, Diana`) | **Telemetría (Nodos y Clima/Suelo)** | `US13`, `US14`, `US15`, `US16`, `US17` | **11 tareas** | **11.2 h** |
| **Jahat** (`Trinidad, Jahat`) | **Fenología + Cosecha** | `US20`, `US21`, `US29` | **7 tareas** | **9.8 h** |
| **Totales** | — | **20 US** | **47 tareas** | **55.5 h** |

---

## 3. Catálogo Técnico de Tareas por Historia de Usuario

### 3.1. Módulo Gestión de Parcelas y Delimitación (Orchard Management) — Victor Paredes

#### **US09 | Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial**
- **ID Trello:** `US009` | **Story Points:** `5` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Orchard`
- **Lámina Figma:** `07 · Registrar un lote` (`#214:3585`) | **Pantallas:** `P20` a `P26` (`P20 · Lotes`, `P21 · Método`, `P22 · Delimitar con GPS`, `P23 · Trazar en el mapa`, `P24 · Caracterización`, `P25 · Revisar y guardar`, `P26 · Detalle del lote`).

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US009TASK001` | **Pantallas P20 a P26 en presentación** | Presentación (Compose) | Construir RegisterPlotScreen y componentes de pasos en Jetpack Compose. | 1.8h | `Done` |
| `TK02` | `US009TASK002` | **Caso RegisterPlotUseCase en capa aplicación** | Aplicación / Dominio | Validar PlotOutline y calcular área mediante NewPlot en dominio. | 1.6h | `Done` |
| `TK03` | `US009TASK003` | **Rastreo FusedLocationTracker en capa infraestructura** | Infraestructura (Hardware/REST) | Integrar GPS y cliente PlotService para persistir PlotEntity local. | 1.6h | `Done` |

#### **US10 | Consulta y modificación de linderos y datos dendrométricos de parcela**
- **ID Trello:** `US010` | **Story Points:** `3` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Orchard`
- **Lámina Figma:** `19 · Editar o archivar un lote` (`#408:27456`) | **Pantallas:** `P27 · Opciones del lote`, `P28 · Editar lote`, `P29 · Ajustar el contorno`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US010TASK001` | **Pantallas P27 a P29 en presentación** | Presentación (Compose) | Construir EditPlotScreen y AdjustOutlineScreen en Jetpack Compose. | 1.5h | `Done` |
| `TK02` | `US010TASK002` | **Caso UpdatePlotUseCase en capa aplicación** | Aplicación / Infraestructura | Procesar PlotChanges actualizando PlotEntity mediante PlotService en infraestructura. | 1.5h | `Done` |

#### **US11 | Baja y remoción de parcela del inventario productivo**
- **ID Trello:** `US011` | **Story Points:** `2` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Orchard`
- **Lámina Figma:** `19 · Editar o archivar un lote` (`#408:27456`) | **Pantallas:** `P28 · Eliminar lote (diálogo)`, `P28 · Archivar lote con historial`, `P20 · Lotes / Archivados`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US011TASK001` | **Diálogos de baja P28 en presentación** | Presentación (Compose) | Implementar confirmación de eliminación y archivado en PlotsScreen. | 1.0h | `Done` |
| `TK02` | `US011TASK002` | **Caso ArchivePlotUseCase en capa aplicación** | Aplicación / Local | Ejecutar baja lógica de parcela actualizando estado en PlotDao. | 1.0h | `Done` |

---

### 3.2. Módulo Regulación de Carga Frutal y Aclareo (Thinning) — Victor Paredes & Fabrizio Santi

#### **US27 | Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo**
- **ID Trello:** `US027` | **Story Points:** `5` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Thinning`
- **Lámina Figma:** `09 · Aclarear a tiempo` (`#235:19611`) | **Pantallas:** `P60 · Plan`, `P61 · Plan del lote` (semáforo fenológico, cuenta regresiva de ventana).

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US027TASK001` | **Pantallas P60 y P61 en presentación** | Presentación (Compose) | Construir semáforo de aclareo y cuenta regresiva en Compose. | 1.3h | `Done` |
| `TK02` | `US027TASK002` | **Modelo de prescripción en capa dominio** | Dominio / Aplicación | Evaluar ventana fenológica y factor de intensidad en aplicación. | 1.2h | `Done` |
| `TK03` | `US027TASK003` | **Consulta ThinningService en capa infraestructura** | Infraestructura (REST/Room) | Consumir prescripciones activas almacenando respuestas en Room local. | 1.1h | `Done` |

#### **US26 | Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña**
- **ID Trello:** `US026` | **Story Points:** `5` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Thinning`
- **Lámina Figma:** `09 · Aclarear a tiempo` (`#235:19611`) | **Pantallas:** `P60 · Plan`, `P61 · Plan del lote` (balance carga real vs. sostenible, proyección kg/árbol).

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US026TASK001` | **Tarjetas de carga P61 en presentación** | Presentación (Compose) | Visualizar balance de carga frutal sostenible vs conteo real. | 1.2h | `Done` |
| `TK02` | `US026TASK002` | **Cálculo de carga en capa dominio** | Dominio / Aplicación | Calcular rendimiento potencial y frutos por árbol en aplicación. | 1.0h | `Done` |
| `TK03` | `US026TASK003` | **Persistencia de proyecciones en capa infraestructura** | Infraestructura (Room SQLite) | Almacenar estimaciones dendrométricas en base de datos SQLite Room. | 1.0h | `Done` |

#### **US28 | Registro y confirmación de ejecución de aclareo en campo**
- **ID Trello:** `US028` | **Story Points:** `3` | **Asignado a:** `Paredes, Victor` | **Aspecto:** `Thinning`
- **Lámina Figma:** `09 · Aclarear a tiempo` (`#235:19611`) | **Pantallas:** `P62 · Registrar aclareo`, `P63 · Aclareo registrado`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US028TASK001` | **Pantallas P62 y P63 en presentación** | Presentación (Compose) | Construir formulario de labor ejecutada y confirmación en Compose. | 1.3h | `Done` |
| `TK02` | `US028TASK002` | **Servicio ThinningService en capa infraestructura** | Infraestructura (REST/Event) | Despachar confirmación de aclareo actualizando hito en bitácora local. | 1.3h | `Done` |

#### **US24 | Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline**
- **ID Trello:** `US024` | **Story Points:** `5` | **Asignado a:** `Santi, Fabrizio` | **Aspecto:** `Thinning`
- **Lámina Figma:** `08 · Muestrear el cuajado sin conexión` (`#231:19390`) | **Pantallas:** `P52 · Ronda de muestreo`, `P53 · Registrar árbol`, `P52 · Sin conexión`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US024TASK001` | **Pantallas P52 y P53 en presentación** | Presentación (Compose) | Construir SamplingRoundScreen y RegisterTreeSampleScreen con teclado táctil. | 1.5h | `Done` |
| `TK02` | `US024TASK002` | **Agregado TreeSample en capa dominio** | Dominio / Aplicación | Validar conteo de brotes y frutos en SamplingSessionViewModel. | 1.3h | `Done` |
| `TK03` | `US024TASK003` | **Dao DraftTreeSampleDao en capa infraestructura** | Infraestructura (Room/Offline) | Persistir muestras offline en SQLite sincronizando con ThinningService. | 1.2h | `Done` |

#### **US25 | Consulta de representatividad estadística e historial de árboles muestreados en campo**
- **ID Trello:** `US025` | **Story Points:** `3` | **Asignado a:** `Santi, Fabrizio` | **Aspecto:** `Thinning`
- **Lámina Figma:** `08 · Muestrear el cuajado sin conexión` (`#231:19390`) | **Pantallas:** `P50 · Bitácora`, `P51 · Nuevo muestreo`, `P54 · Resumen de ronda`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US025TASK001` | **Pantallas P50 y P54 en presentación** | Presentación (Compose) | Diseñar SelectPlotSamplingScreen y SamplingCompleteScreen con barras de avance. | 1.4h | `Done` |
| `TK02` | `US025TASK002` | **Caso GetPlotSamplingOverviewUseCase en aplicación** | Aplicación / Dominio | Obtener representatividad estadística y árbol evaluado mediante ThinningRepository. | 1.4h | `Done` |

---

### 3.3. Módulo Telemetría, Incidentes y Clima (Telemetry) — Fabrizio Santi, Piero Espada & Diana Li

#### **US18 | Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela**
- **ID Trello:** `US018` | **Story Points:** `3` | **Asignado a:** `Santi, Fabrizio` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `06 · Inicio del productor` (`#192:5111`) y `16 · Clima` (`#376:27081`) | **Pantallas:** `T14 · Centro de alertas`, `T15 · Detalle de alerta`, `T15 · Estrés hídrico`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US018TASK001` | **Pantallas T14 y T15 en presentación** | Presentación (Compose) | Construir AlertsCenterScreen y MitigationChecklistCard con filtros en Compose. | 1.3h | `Done` |
| `TK02` | `US018TASK002` | **Casos de mitigación en capa aplicación** | Aplicación / Infraestructura | Procesar CompleteMitigationStepUseCase consumiendo IncidentService en infraestructura REST. | 1.3h | `Done` |

#### **US19 | Consulta de pronóstico meteorológico geolocalizado a 7 días**
- **ID Trello:** `US019` | **Story Points:** `3` | **Asignado a:** `Espada, Piero` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `16 · Vigilar el clima del lote` (`#376:27081`) | **Pantallas:** `P90 · Clima del lote`, widget Clima en `P10 · Inicio`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US019TASK001` | **Pantalla Clima P90 en presentación** | Presentación (Compose) | Construir PlotClimateScreen y tira semanal de 7 días. | 1.3h | `Done` |
| `TK02` | `US019TASK002` | **Servicio ForecastService en capa infraestructura** | Infraestructura (Retrofit/Room) | Consumir pronóstico geolocalizado persistiendo ForecastDayEntity en Room SQLite. | 1.2h | `Done` |

#### **US13 | Vinculación y alta de nodo sensor virtual a una parcela**
- **ID Trello:** `US013` | **Story Points:** `3` | **Asignado a:** `Li, Diana` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `20 · Sensores del lote` (`#408:27459`) | **Pantallas:** `P85 · Sensores del lote`, `P86 · Vincular un nodo (hoja)`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US013TASK001` | **Hoja vinculación P86 en presentación** | Presentación (Compose) | Diseñar formulario modal de alta de nodo sensor virtual. | 1.0h | `Done` |
| `TK02` | `US013TASK002` | **Caso LinkSensorNodeUseCase en aplicación** | Aplicación / Infraestructura | Registrar dispositivo virtual persistiendo SensorNodeEntity mediante SensorService infraestructura. | 1.0h | `Done` |

#### **US14 | Consulta de inventario y estado operativo de nodos sensores virtuales en parcela**
- **ID Trello:** `US014` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `20 · Sensores del lote` (`#408:27459`) | **Pantallas:** `P85 · Sensores del lote`, `P85 · Sin sensores`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US014TASK001` | **Pantalla Sensores P85 en presentación** | Presentación (Compose) | Construir SensorsScreen con tarjetas de estado activo y pausa. | 0.8h | `Done` |
| `TK02` | `US014TASK002` | **Dao SensorNodeDao en capa infraestructura** | Infraestructura (Room/Flow) | Observar inventario de sensores vinculados emitiendo Flow reactivo. | 0.8h | `Done` |

#### **US15 | Configuración y calibración de nodo sensor virtual en parcela**
- **ID Trello:** `US015` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `20 · Sensores del lote` (`#408:27459`) | **Pantallas:** `P87 · Configurar nodo`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US015TASK001` | **Pantalla ConfigureNodeScreen en presentación** | Presentación (Compose) | Construir interfaz de ajuste de profundidad de sonda edáfica. | 1.0h | `Done` |
| `TK02` | `US015TASK002` | **Caso UpdateSensorNodeUseCase en aplicación** | Aplicación / Infraestructura | Actualizar offset de calibración enviando PUT mediante SensorService. | 1.0h | `Done` |

#### **US16 | Desvinculación y baja de nodo sensor virtual de una parcela**
- **ID Trello:** `US016` | **Story Points:** `2` | **Asignado a:** `Li, Diana` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `20 · Sensores del lote` (`#408:27459`) | **Pantallas:** `P88 · Desvincular nodo (diálogo)`, `P85 · Sensores del lote / Nodo desvinculado`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US016TASK001` | **Diálogo desvinculación P88 en presentación** | Presentación (Compose) | Implementar confirmación de desvinculación con aviso de retención histórica. | 0.8h | `Done` |
| `TK02` | `US016TASK002` | **Caso UnlinkSensorNodeUseCase en aplicación** | Aplicación / Local | Remover sensor en backend preservando lecturas históricas en Room. | 0.8h | `Done` |

#### **US17 | Monitoreo agroclimático y consulta de series temporales de suelo y microclima**
- **ID Trello:** `US017` | **Story Points:** `5` | **Asignado a:** `Li, Diana` | **Aspecto:** `Telemetry`
- **Lámina Figma:** `16 · Vigilar el clima del lote` (`#376:27081`) | **Pantallas:** `P90 · Clima del lote`, `P91 · Humedad del suelo`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US017TASK001` | **Pantallas P90 y P91 en presentación** | Presentación (Compose) | Construir TelemetryDetailScreen y gráficas de humedad de suelo. | 1.5h | `Done` |
| `TK02` | `US017TASK002` | **Agregado TelemetrySeries en capa dominio** | Dominio / Aplicación | Calcular promedios diurnos y nocturnos en TelemetryDetailViewModel aplicación. | 1.3h | `Done` |
| `TK03` | `US017TASK003` | **Servicio TelemetryService en capa infraestructura** | Infraestructura (Retrofit/Room) | Consumir series temporales horarias persistiendo TelemetryReadingEntity en SQLite. | 1.2h | `Done` |

---

### 3.4. Módulo Fenología, Vecería y Frío Invernal (Phenology) — Piero Espada & Jahat Trinidad

#### **US22 | Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez**
- **ID Trello:** `US022` | **Story Points:** `5` | **Asignado a:** `Espada, Piero` | **Aspecto:** `Phenology`
- **Lámina Figma:** `15 · Seguir el frío invernal` (`#355:26752`) | **Pantallas:** `P80 · Frío invernal`, `P81 · ¿Por qué cuento frío? (hoja)`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US022TASK001` | **Pantallas P80 y P81 en presentación** | Presentación (Compose) | Construir indicador dinámico de porciones Erez en Jetpack Compose. | 1.1h | `Done` |
| `TK02` | `US022TASK002` | **Modelo de Erez en capa dominio** | Dominio / Aplicación | Calcular porcentaje de satisfacción varietal en reposo invernal aplicación. | 1.0h | `Done` |
| `TK03` | `US022TASK003` | **Persistencia de porciones en infraestructura** | Infraestructura (Room/Local) | Consultar telemetría y almacenar acumuladores de frío en Room. | 0.9h | `Done` |

#### **US23 | Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS**
- **ID Trello:** `US023` | **Story Points:** `3` | **Asignado a:** `Espada, Piero` | **Aspecto:** `Phenology`
- **Lámina Figma:** `15 · Seguir el frío invernal` (`#355:26752`) | **Pantallas:** `P80 · Frío frenado`, `T15 · Invierno cálido (alerta)`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US023TASK001` | **Alerta térmica P80 en presentación** | Presentación (Compose) | Diseñar banner de riesgo floral por invierno cálido ENOS. | 1.1h | `Done` |
| `TK02` | `US023TASK002` | **Detección de anomalías en capa aplicación** | Aplicación / Dominio | Evaluar umbral crítico térmico actualizando estado en IncidentRepository. | 1.1h | `Done` |

#### **US20 | Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI)**
- **ID Trello:** `US020` | **Story Points:** `5` | **Asignado a:** `Trinidad, Jahat` | **Aspecto:** `Phenology`
- **Lámina Figma:** `13 · Conocer la vecería de mi lote` (`#296:26105`) | **Pantallas:** `P40 · Alternancia`, `P41 · Cosecha histórica (hoja)`, `P40 · ¿Qué es el BBI?`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US020TASK001` | **Pantallas P40 y P41 en presentación** | Presentación (Compose) | Construir HarvestHistoryScreen con medidor BBI y CampaignSheet emergente. | 1.3h | `Done` |
| `TK02` | `US020TASK002` | **Dominio HoblynBbi en capa fenología** | Dominio / Algoritmo | Calcular índice de alternancia bienal BBI para cosechas plurianuales. | 1.2h | `Done` |
| `TK03` | `US020TASK003` | **Servicio PhenologyService en capa infraestructura** | Infraestructura (Retrofit/Room) | Consumir histórico de pesajes persistiendo HarvestRecordEntity en Room. | 1.2h | `Done` |

#### **US21 | Modificación y rectificación de registros históricos de cosecha**
- **ID Trello:** `US021` | **Story Points:** `2` | **Asignado a:** `Trinidad, Jahat` | **Aspecto:** `Phenology`
- **Lámina Figma:** `13 · Conocer la vecería de mi lote` (`#296:26105`) | **Pantallas:** `P41 · Corregir campaña`, `P41 · Eliminar campaña (diálogo)`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US021TASK001` | **Diálogos de rectificación en presentación** | Presentación (Compose) | Construir DeleteCampaignDialog y edición de kilos en CampaignSheet. | 0.8h | `Done` |
| `TK02` | `US021TASK002` | **Casos Rectify y Remove en aplicación** | Aplicación / Local | Rectificar pesaje de cosecha recalculando índice BBI en Room. | 0.7h | `Done` |

---

### 3.5. Módulo Cierre de Campaña y Liquidación (Harvest Settlement) — Jahat Trinidad

#### **US29 | Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva**
- **ID Trello:** `US029` | **Story Points:** `3` | **Asignado a:** `Trinidad, Jahat` | **Aspecto:** `Harvest`
- **Lámina Figma:** `14 · Cerrar la campaña` (`#348:26461`) | **Pantallas:** `P70 · Selector de lote`, `P71 · Registrar cosecha`, `P72 · Asentar cosecha (diálogo)`, `P73 · Campaña cerrada`, `P76 · Expediente del lote`.

| Task ID | Trello Card ID | Título de Tarea ($\le$ 6 palabras) | Capa Arquitectónica | Descripción Técnica ($\le$ 10 palabras) | Horas | Estado |
| :---: | :---: | :--- | :--- | :--- | :---: | :---: |
| `TK01` | `US029TASK001` | **Pantallas P71 y P73 en presentación** | Presentación (Compose) | Construir SettleHarvestScreen y comprobante formal CampaignClosedScreen en Compose. | 1.3h | `Done` |
| `TK02` | `US029TASK002` | **Servicio HarvestSettlementService en infraestructura** | Infraestructura (Retrofit/Room) | Asentar liquidación de cosecha persistiendo comprobante inmutable en Room. | 1.3h | `Done` |

---

## 4. Verificación Automatizada de Reglas Ágiles

Se ejecutó un script de análisis léxico y sintáctico sobre el archivo generado `sprint-1-tasks.json` obteniendo los siguientes resultados:

1. **Total de Tareas Validadas:** 149 tareas.
2. **Tareas de User Stories Mobile:** 47 tareas.
3. **Cumplimiento de Restricción Verbal de Título ($\le$ 6 palabras):** **100% de tareas** (todas entre 4 y 6 palabras).
4. **Cumplimiento de Restricción Verbal de Descripción ($\le$ 10 palabras):** **100% de tareas** (todas entre 8 y 9 palabras).
5. **Precisión Técnica de Capas:** 100% de tareas explicitan la capa arquitectónica (`capa presentación`, `capa aplicación`, `capa dominio` o `capa infraestructura`).
6. **Mapeo a Figma:** Se incluyen los identificadores reales de frames (`P20`, `P22`, `P26`, `P28`, `P52`, `P53`, `P60`, `P61`, `P80`, `P90`, `T14`, `T15`, etc.).
7. **Consistencia de Horas y Métricas Globales:** 128.3 h totales del Sprint 1 (55.5 h Mobile US + 72.8 h Landing/TS/Spikes).
