# Tactical-Level Domain-Driven Design: Crop Load Regulation and Thinning Advisory

### Bounded Context: Crop Load Regulation and Thinning Advisory (Crop Load Regulation)

**Propósito:** convierte el conteo de frutos cuajados a pie de árbol en una prescripción agronómica accionable. Certifica la representatividad estadística del muestreo, determina la carga frutal que el árbol puede sostener sin comprometer sus reservas, emite el porcentaje de remoción y su ventana biológica, y fiscaliza la ejecución en campo hasta el cierre por endurecimiento del carozo.

Es el único contexto del sistema que emite un acto prescriptivo. No posee la parcela, que pertenece a `Olive Orchard and Plot Management`; no computa el Índice de Vecería Bienal ni las porciones de frío, que pertenecen a `Phenology and Historical Bearing Analytics`; no liquida la cosecha ni evalúa la curva de estabilización, que pertenecen a `Harvest Settlement and Performance Reporting`. Referencia la parcela de forma lógica por `PlotId` y conserva la revisión predial observada al prescribir, sin replicar geometría ni titularidad.

#### Domain Layer

##### Aggregates y Entities

###### FruitThinningPrescription (Aggregate Root)

**Propósito:** protege la coherencia entre la evidencia muestral recogida en campo, la carga admisible derivada de ella, la recomendación emitida y la constancia de ejecución. Corresponde a `AGG08` del catálogo de agregados.

**Atributos:**

- `id: PrescriptionId`, `plotId: PlotId`, `campaignYear: CampaignYear`.
- `observedPlotRevision: long`: revisión de la parcela vigente en el momento de prescribir, obtenida del contexto predial.
- `samplingRounds: List<SamplingRound>`.
- `sustainableLoad: SustainableCropLoad?`, `recommendation: ThinningRecommendation?`, `window: PhenologicalWindow?`.
- `execution: ExecutionConfirmation?`.
- `status: PrescriptionStatus`, `auditTrail: AuditTrail`.

**Métodos:**

- `recordTreeSampling(record: TreeSamplingRecord): void`: incorpora un árbol evaluado a la ronda activa; rechaza conteos no positivos y relaciones fruto/brote fuera de rango agronómico admisible.
- `ingestSamplingsBatch(records: List<TreeSamplingRecord>, evaluator: SamplingRepresentativenessEvaluator): void`: integra un lote sincronizado desde campo y delega en el servicio de dominio la certificación de representatividad de la ronda.
- `determineSustainableCropLoad(inputs: CropLoadInputs, calculator: SustainableCropLoadCalculator): void`: exige ronda representativa; sella en `observedPlotRevision` la revisión predial recibida en las entradas; calcula carga admisible, deriva la recomendación de remoción y fija la ventana fenológica de intervención.
- `closeWindowByPitHardening(at: LocalDate): void`: transición irrevocable a `CLOSED_BY_PIT_HARDENING`; no admite reapertura ni ejecución posterior con efecto mitigador.
- `confirmExecution(confirmation: ExecutionConfirmation): void`: registra la labor efectivamente realizada, califica su oportunidad contra el cierre de ventana y recalcula la carga remanente.
- `voidByPlotRemoval(at: Instant): void`: anula una prescripción cuya parcela dejó de estar activa. Aplica únicamente sobre `SAMPLING_IN_PROGRESS` y `PRESCRIBED`; sobre cualquier otro estado es una operación nula. No publica evento propio, por la razón expuesta al final de la tabla de eventos.
- `isPending(): boolean`, `snapshot(): PrescriptionSnapshot`: consulta inmutable.

**Invariantes y reglas de negocio:**

1. No se calcula carga sostenible ni se emite prescripción formal si la ronda de muestreo reúne menos de cinco árboles evaluados en el sector homogéneo. La representatividad estadística es condición previa, no una advertencia posterior.
2. El porcentaje prescrito de remoción nunca supera el cuarenta por ciento de la fruta cuajada. Es un límite de seguridad agronómica, no un parámetro configurable.
3. Detectado el endurecimiento definitivo del endocarpio, la prescripción transiciona de forma irrevocable a `CLOSED_BY_PIT_HARDENING`. A partir de ese punto el aclareo ya no induce retorno floral y el sistema deja de recomendarlo.
4. Una labor confirmada después de la fecha de cierre fenológico se marca `EXECUTED_LATE` y conlleva penalización de la eficiencia mitigadora atribuida a la campaña.
5. *(Derivada, no proviene de `Paso9_aggregates.md`.)* Una parcela sostiene como máximo una prescripción en curso por año agrícola. Una segunda ronda de muestreo sobre la misma campaña amplía la evidencia de la prescripción existente; no origina una paralela.
6. *(Derivada, no proviene de `Paso9_aggregates.md`.)* La prescripción conserva la revisión predial con la que fue calculada. Una revisión posterior de la parcela no altera retroactivamente una recomendación ya emitida, pero sí invalida su vigencia para nuevos cálculos.
7. *(Derivada de `POL16`, no proviene de `Paso9_aggregates.md`.)* La baja de la parcela anula toda prescripción pendiente sobre ella. La anulación alcanza a los estados `SAMPLING_IN_PROGRESS` y `PRESCRIBED`; no alcanza a una prescripción ya ejecutada ni a una cerrada por fenología, porque ambas son hechos consumados que la liquidación de campaña necesita conservar. La anulación no destruye la evidencia muestral recogida.

###### TreeSamplingRecord (Entity Interna de FruitThinningPrescription)

**Propósito:** constancia individual de un árbol testigo evaluado a pie de campo.

**Atributos:** `id: SamplingRecordId`, `treeTag: TreeTag`, `shootCount: ShootCount`, `fruitSetCount: FruitSetCount`, `trunkDiameter: TrunkDiameter`, `samplingDate: LocalDate`.

**Reglas:** la etiqueta del árbol es única dentro de la ronda. Los conteos son estrictamente positivos. El diámetro de tronco se expresa en milímetros y sustenta la normalización de la carga por vigor del árbol.

###### SamplingRound (Entity Interna de FruitThinningPrescription)

**Propósito:** lote muestral que agrupa los árboles evaluados en una salida a campo y certifica si alcanza validez estadística.

**Atributos:** `id: SamplingRoundId`, `records: List<TreeSamplingRecord>`, `representativeness: SamplingRepresentativeness`, `openedAt: Instant`, `completedAt: Instant?`.

**Reglas:** una ronda se declara completa al reunir cinco o más árboles evaluados. Por debajo de ese umbral se cierra como deficiente y habilita una segunda salida a campo sobre la misma prescripción, sin descartar la evidencia ya recogida.

###### ExecutionConfirmation (Entity Interna de FruitThinningPrescription)

**Propósito:** bitácora de la labor de aclareo efectivamente aplicada en campo.

**Atributos:** `id: ExecutionConfirmationId`, `executionDate: LocalDate`, `actualThinningPercentage: ThinningPercentage`, `laborCrewSize: LaborCrewSize`, `timeliness: ExecutionTimeliness`.

**Reglas:** el porcentaje realmente removido puede diferir del prescrito y se registra tal como se declara, sin normalizarlo contra la recomendación. La oportunidad se deriva comparando la fecha de ejecución con el cierre de la ventana; no se informa por el productor.

##### Value Objects (Conceptuales e Inmutables)

| Clase | Atributos | Métodos y validación |
|---|---|---|
| `PrescriptionId`, `SamplingRecordId`, `SamplingRoundId`, `ExecutionConfirmationId` | `value: UUID` | `of(value): Id`; UUID no nulo. |
| `PlotId` | `value: UUID` | Referencia lógica inmutable a la parcela de `Olive Orchard and Plot Management`. No se replica geometría ni titularidad. |
| `CampaignYear` | `value: Integer` | `of(value)`; año agrícola de cuatro dígitos dentro del rango operativo del sistema. |
| `TreeTag` | `value: String` | `of(value)`; etiqueta normalizada no vacía; única dentro de la ronda. |
| `ShootCount`, `FruitSetCount` | `value: Integer` | `of(value)`; entero estrictamente positivo. |
| `TrunkDiameter` | `millimeters: Decimal` | `of(mm)`; valor finito positivo; sustenta la normalización por vigor. |
| `SamplingRepresentativeness` | `evaluatedTrees: Integer`, `requiredTrees: Integer` | `isSufficient(): boolean`; el mínimo requerido es cinco árboles por sector homogéneo. |
| `SustainableCropLoad` | `value: Decimal`, `unit: CropLoadUnit` | `of(value, unit)`; carga admisible expresada en frutos por árbol o frutos por metro de copa. No negativa. |
| `ThinningRecommendation` | `removalPercentage: ThinningPercentage`, `rationale: String` | `requiresIntervention(): boolean`; una recomendación de cero por ciento es una prescripción válida, no la ausencia de prescripción. |
| `ThinningPercentage` | `value: Decimal` | `of(value)`; rango cerrado de cero a cuarenta por ciento. |
| `PhenologicalWindow` | `opensOn: LocalDate`, `closesOn: LocalDate` | `contains(date): boolean`; el cierre corresponde a la lignificación estimada del endocarpio y es anterior a ella. |
| `LaborCrewSize` | `value: Integer` | `of(value)`; entero no negativo; cero admisible en ejecución mecanizada. |
| `ExecutionTimeliness` | enum | `OPTIMAL`, `LATE`. Derivado, nunca declarado por el actor. |
| `CropLoadUnit` | enum | `FRUITS_PER_TREE`, `FRUITS_PER_CANOPY_METER`. |
| `PrescriptionStatus` | enum | `SAMPLING_IN_PROGRESS`, `PRESCRIBED`, `CLOSED_BY_PIT_HARDENING`, `EXECUTED_OPTIMAL`, `EXECUTED_LATE`, `VOIDED_BY_PLOT_REMOVAL`. Los cinco primeros provienen de `Paso9_aggregates.md:241`; el sexto se incorpora por la decisión de compensación descrita más abajo. |
| `AuditTrail` | `createdAt: Instant`, `updatedAt: Instant`, `actorId: UUID` | Trazabilidad de autoría coherente con el resto de contextos. |

`CropLoadInputs` agrupa las entradas externas que alimentan el cálculo y no constituye estado del agregado:

| Entrada | Origen | Obligatoriedad |
|---|---|---|
| `sampledDensity` | Ronda muestral propia del agregado | Obligatoria |
| `plotContext` | `Olive Orchard and Plot Management` | Obligatoria |
| `chillFulfillment` | Phenology, vía `EV32` | Obligatoria |
| `floralYieldFactor` | Phenology, vía `EV34` | Opcional; ausente si la campaña no sufrió anomalía térmica |
| `historicalBbi: Optional<BiennialBearingIndex>` | Phenology, vía `EV27` | **Opcional por diseño** |

`BiennialBearingIndex` es un value object definido por Phenology, no por este contexto; se transporta en el payload de `EV27` y aquí se conserva en la proyección sin redefinirlo ni reinterpretarlo.

El Índice de Vecería Bienal es opcional por una restricción del contexto emisor, no por conveniencia de este. `phenology-and-analytics-tactical-ddd.md:41` establece que el cálculo de Hoblyn exige un mínimo de tres campañas agrícolas consecutivas registradas; por debajo de ese umbral el índice permanece indeterminado y Phenology emite `HistoricalDataInsufficiencyDetected` (`EV28`) en lugar de `EV27`.

Esto convierte la ausencia de BBI en el caso de adopción, no en un caso borde: un productor que digitaliza sus predios por primera vez carece de memoria plurianual y, por tanto, de índice. El motor de cálculo debe emitir una prescripción válida sin esa entrada. Una prescripción calculada sin BBI es legítima y no se marca como degradada frente al productor; internamente se registra qué entradas participaron, para que la evaluación posterior de eficacia mitigadora en `Harvest Settlement and Performance Reporting` no compare prescripciones construidas sobre bases distintas.

##### Domain Services

- **`SamplingRepresentativenessEvaluator`**: servicio sin estado que evalúa si una ronda alcanza validez estadística. `evaluate(round: SamplingRound): SamplingRepresentativeness`. Aísla el umbral de cinco árboles y su eventual ajuste por heterogeneidad del sector, de modo que el agregado no codifique el criterio muestral.

- **`SustainableCropLoadCalculator`**: servicio sin estado que encapsula el motor agronómico propietario. `calculate(inputs: CropLoadInputs): SustainableCropLoad`. Combina la densidad frutal muestreada, el vigor derivado del diámetro de tronco, la acumulación de frío cumplida, el factor de fertilidad floral vigente y, cuando está disponible, el Índice de Vecería Bienal histórico. Es el núcleo de valor del contexto y la razón de su clasificación como núcleo primario.

  El servicio opera de forma degradada ante cualquiera de sus entradas opcionales ausentes y nunca rechaza el cálculo por esa causa. Sin Índice de Vecería Bienal pierde la señal de en qué fase de la alternancia se encuentra la parcela y sostiene la recomendación sobre densidad muestreada y vigor. Sin factor de fertilidad floral asume que la campaña no sufrió estrés térmico invernal y no aplica corrección a la baja sobre la meta de carga, que es el comportamiento correcto: la ausencia de ese factor significa que la anomalía no ocurrió, no que se desconozca su efecto. En ambos casos la prescripción resultante es válida y ejecutable. Rechazar el cálculo por falta de historial dejaría sin servicio precisamente al productor que recién incorpora sus predios.

- **`ThinningWindowSentinel`**: servicio sin estado que determina la ventana de intervención y evalúa su vigencia. `resolveWindow(inputs: CropLoadInputs): PhenologicalWindow` y `classifyExecution(window, executionDate): ExecutionTimeliness`. Concentra el criterio fenológico para que ni el agregado ni la capa de aplicación lo repliquen.

##### Repositories (Interfaces en Domain)

**`FruitThinningPrescriptionRepository`**:

- `findById(id: PrescriptionId): Optional<FruitThinningPrescription>`.
- `findActiveByPlotAndCampaign(plotId: PlotId, campaignYear: CampaignYear): Optional<FruitThinningPrescription>`: sostiene la invariante de prescripción única por parcela y año agrícola.
- `findPendingExecutionByPlot(plotId: PlotId, at: Instant): List<FruitThinningPrescription>`: prescripciones emitidas con ventana abierta y sin ejecución confirmada.
- `save(prescription: FruitThinningPrescription): FruitThinningPrescription`: persiste el agregado completo con sus rondas y su constancia de ejecución.

##### Domain Events

Los once eventos del contexto usan el sobre inmutable `eventId`, `aggregateId`, `occurredOn`, `schemaVersion`, e incorporan `plotId` y `campaignYear` para que los consumidores ubiquen la parcela y la campaña sin consultar de vuelta.

| Evento | Payload específico | Disparador y consumidores |
|---|---|---|
| `TreeFruitSetSampledInField` — EV35 | `prescriptionId`, `plotId`, `treeTag`, `shootCount`, `fruitSetCount`, `diameterMm`, `samplingDate` | Registro individual a pie de árbol (CMD24). Aplicación móvil. |
| `FieldSamplingsIngested` — EV36 | `prescriptionId`, `plotId`, `samplingRoundId`, `ingestedCount` | Lote sincronizado desde campo (CMD25). Aplicación móvil. |
| `SamplingRoundCompleted` — EV37 | `prescriptionId`, `plotId`, `samplingRoundId`, `evaluatedTrees`, `completedAt` | Ronda que alcanza representatividad (CMD25). Consumo interno para la prescripción automática y `Cooperative Operations and Territorial Intelligence` para recalibrar la proyección de acopio. |
| `SamplingRepresentativenessDeficientDetected` — EV38 | `prescriptionId`, `plotId`, `samplingRoundId`, `evaluatedTrees`, `requiredTrees` | Ronda por debajo del umbral (CMD25). Aplicación móvil. |
| `SustainableCropLoadDetermined` — EV39 | `prescriptionId`, `plotId`, `sustainableLoad`, `unit`, `observedPlotRevision` | Carga admisible determinada (CMD26). Aplicación móvil. |
| `OverloadRiskDetected` — EV40 | `prescriptionId`, `plotId`, `observedDensity`, `sustainableLoad`, `severity` | Densidad frutal por encima de la capacidad de sustento (CMD26). `Cooperative Operations and Territorial Intelligence` para el semáforo territorial. |
| `ThinningPrescribed` — EV41 | `prescriptionId`, `plotId`, `removalPercentage`, `windowOpensOn`, `windowClosesOn` | Prescripción con remoción mayor que cero (CMD26). Aplicación móvil. |
| `ThinningDeclaredUnnecessary` — EV42 | `prescriptionId`, `plotId`, `rationale` | Carga en equilibrio biológico, remoción de cero por ciento (CMD26). Aplicación móvil. |
| `ThinningWindowClosedByPitHardening` — EV43 | `prescriptionId`, `plotId`, `pitHardeningDate` | Lignificación del endocarpio detectada (CMD27). Consumo interno para expirar prescripciones pendientes y aplicación móvil. |
| `ThinningExecutionConfirmed` — EV44 | `prescriptionId`, `plotId`, `executionDate`, `actualThinningPercentage`, `laborCrewSize`, `remainingLoad` | Labor dentro de ventana óptima (CMD28). `Harvest Settlement and Performance Reporting` para vincular remoción ejecutada con el balance final cosechado. |
| `LateThinningExecutionRecorded` — EV45 | `prescriptionId`, `plotId`, `executionDate`, `windowClosedOn`, `actualThinningPercentage` | Labor fuera de ventana (CMD28). `Phenology and Historical Bearing Analytics` para aplicar la penalización sobre la eficiencia de mitigación. |

El catálogo del agregado está cerrado en estos once eventos, numerados `EV35` a `EV45`. Los identificadores inmediatamente posteriores pertenecen a otros agregados, de modo que ningún evento adicional puede incorporarse sin renumerar el catálogo global.

**Ausencia deliberada de evento para la anulación.** La transición a `VOIDED_BY_PLOT_REMOVAL` no publica evento de dominio. La restricción de numeración lo impediría, pero la razón de fondo es de diseño: el hecho que interesa a los demás contextos es la baja de la parcela, no la consecuencia que este contexto deriva de ella. Ese hecho ya viaja en `PlotRemoved` (`EV17`), emitido por su propietario. Reemitirlo bajo otro nombre duplicaría una verdad ajena y obligaría a los consumidores a decidir cuál de las dos señales es autoritativa. Quien necesite reaccionar a la baja se suscribe a `EV17`; el estado de la prescripción anulada queda disponible por consulta.

##### Eventos consumidos de otros bounded contexts

| Evento | Contexto emisor | Uso |
|---|---|---|
| `ColdRequirementFulfilled` — EV32 | Phenology and Historical Bearing Analytics | Confirma la salida del reposo invernal y habilita la ronda de muestreo de la campaña. |
| `PotentialFloralYieldReadjusted` — EV34 | Phenology and Historical Bearing Analytics | Ajusta a la baja la meta de carga esperada tras una anomalía térmica invernal. Entrada del motor de cálculo. |
| `BiennialBearingIndexAssessed` — EV27 | Phenology and Historical Bearing Analytics | Aporta el Índice de Vecería Bienal de la parcela, que sitúa la campaña en la fase de alternancia y calibra la severidad de la remoción. Entrada opcional del motor. |
| `PlotDelimited` — EV15, `PlotBoundariesUpdated` — EV16 | Olive Orchard and Plot Management | Mantienen la proyección predial propia del contexto: variedad, marco de plantación, densidad y revisión vigente. |
| `PlotRemoved` — EV17 | Olive Orchard and Plot Management | Invalida la proyección predial y dispara la anulación de toda prescripción pendiente sobre la parcela. Es la compensación que sustituye a la consulta síncrona de elegibilidad de baja. |

El contexto predial detallado se obtiene además por consulta al contrato `GetPlotContext` expuesto por `Olive Orchard and Plot Management`, que devuelve geometría, variedad, marco, densidades, estado y revisión. La prescripción sella la revisión leída en `observedPlotRevision`.

##### Decisiones de contrato

Las tres definiciones que condicionaban las capas de aplicación e infraestructura quedaron resueltas el 2026-09-12 y propagadas a los documentos afectados. El detalle del proceso figura en `docs/auditoria-integracion-cross-bc.md`.

1. **Disponibilidad del Índice de Vecería Bienal. Resuelta.** Este contexto se suscribe a `BiennialBearingIndexAssessed` (`EV27`) y mantiene una proyección del último índice conocido por parcela. La suscripción no abre una relación nueva: viaja por la misma relación de Partnership que ya transporta `EV32` y `EV34`. Se descartó la consulta síncrona al recurso `GET /api/v1/plots/{plotId}/metrics?name=BBI` que Phenology expone, porque acoplaría la emisión de una prescripción a la disponibilidad de otro contexto. El índice ingresa al motor como entrada opcional, según lo establecido en `CropLoadInputs`.

   `phenology-and-analytics-tactical-ddd.md` refleja la suscripción y advierte que, por debajo de tres campañas registradas, el índice permanece indeterminado y se emite `EV28` en su lugar.

2. **Tratamiento de la baja de parcela con prescripción activa. Resuelta.** Se invierte la dependencia. `Olive Orchard and Plot Management` da de baja la parcela sin consultar a este contexto y publica `PlotRemoved` (`EV17`); este contexto reacciona anulando toda prescripción pendiente. No se expone contrato de elegibilidad de baja y no se abre la relación bc1 hacia bc4.

   La ficha de `CMD14` en `Paso5_commands.md` declaraba la restricción como invariante clave. Una restricción que abarca dos agregados alojados en contextos distintos no puede ser invariante de agregado: las invariantes se sostienen dentro de un único límite transaccional, y la consistencia entre agregados separados se resuelve por consistencia eventual y compensación. La fuente quedó anotada con esa reclasificación, que no la contradice sino que la corrige.

   Propagación aplicada: `PrescriptionStatus` incorpora `VOIDED_BY_PLOT_REMOVAL`; `Paso6_policies.md` formaliza `POL16`, que enlaza `EV17` con la anulación de prescripciones pendientes; `Paso5_commands.md` registra la nota de reclasificación en la ficha de `CMD14`; y `olive-orchard-plot.md` quedó desprendido de `PlotRemovalGuardPort`, del value object `PlotRemovalEligibility`, de su adaptador y de la cláusula que obligaba a este contexto a adquirir su bloqueo por parcela. El mecanismo `PlotTransactionGate` subsiste como recurso interno de Orchard, dado que también lo emplea su manejador de actualización de límites.

3. **Corrección del canvas de origen. Resuelta.** El canvas `01-crop-load-regulation-and-thinning-advisory.md` declaraba recibir `ReadjustPotentialFloralYield`, que es el comando interno con que Phenology ejecuta `POL08` y no un mensaje de frontera; el mensaje que cruza es el evento resultante, `PotentialFloralYieldReadjusted`. Declaraba además una salida de `EV45` hacia `Harvest Settlement` que ninguna política respalda, y no registraba la entrada predial ni la salida de `EV37` hacia `Cooperative Operations`. El canvas quedó corregido, junto con la afirmación equivalente del canvas de Phenology sobre `EV31`.

   Con independencia de esa corrección, este documento se redacta contra las fuentes del event storming. Los canvases son documentos de resumen y no constituyen capa de contrato.
