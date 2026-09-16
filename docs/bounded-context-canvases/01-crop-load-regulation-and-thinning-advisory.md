# **Name:** Crop Load Regulation and Thinning Advisory

---

### **Purpose**

Gestiona la evaluación de carga frutal, generación de prescripciones de aclareo y auditoría de labores en campo. Procesa muestreos a pie de árbol, calcula la carga admisible sostenible, emite prescripciones de porcentaje de descarga y fiscaliza la ventana límite, publicando eventos hacia Harvest, Cooperative y la Aplicación móvil. Su propósito es intervenir oportunamente para prevenir que el año con menos resultados de la alternancia se prolongue.

### **Strategic Classification**

* **Domain:** Core Subdomain (Núcleo de Valor Primario y Algoritmo Propietario de Mitigación de Vecería)
* **Business Model:** Core Operational Value & Decision Automation (prescripciones accionables de aclareo frutal oportuno)
* **Evolution:** Custom-Built (motor experto agronómico)

### **Domain Roles**

* **Sampling Statistical Evaluator:** Audita la representatividad muestral del conteo a pie de árbol.
* **Sustainable Load Calculator:** Determina la carga frutal admisible que preserva las reservas del árbol.
* **Thinning Prescription Generator:** Emite el porcentaje prescrito de remoción frutal y su ventana fenológica.
* **Execution Auditor & Window Sentinel:** Supervisa la ejecución en campo y fiscaliza el cierre de la ventana por endurecimiento del carozo.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Productor / Aplicación Móvil** ➔ `RecordInFieldTreeSampling`, `IngestFieldSamplingsBatch`
* **System / Productor** ➔ `DetermineSustainableCropLoad`
* **System** ➔ `CloseThinningWindowByPhenology`
* **Productor / Aplicación Móvil** ➔ `ConfirmThinningExecution`
* **Phenology & Historical Bearing Analytics** ➔ `ColdRequirementFulfilled`, `PotentialFloralYieldReadjusted`, `BiennialBearingIndexAssessed`
* **Olive Orchard & Plot Management** ➔ `PlotDelimited`, `PlotBoundariesUpdated`, `PlotRemoved`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* FruitThinningPrescription
* TreeSamplingRecord
* SamplingRound
* SustainableCropLoad
* ThinningRecommendation
* PhenologicalWindow
* ExecutionConfirmation
* PrescriptionStatus
* Endurecimiento del carozo

### **Business Decisions**

*(Key business rules, policies and decisions)*
La decisión central del sistema: reemplazar la intuición del productor por un cálculo agronómico que dice cuántos frutos conviene sacar del árbol (0%-40%). Para eso, primero verifica que los conteos de campo sean estadísticamente representativos; después calcula la carga admisible y emite la prescripción. La ejecución debe ocurrir dentro de una ventana biológica; si se hace tarde, se penaliza porque afecta la producción del año siguiente. Si hay riesgo de sobrecarga, se notifica a la cooperativa.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `TreeFruitSetSampledInField`, `FieldSamplingsIngested` ➔ **Aplicación móvil**
* `SamplingRoundCompleted` ➔ **Cooperative Operations & Territorial Intelligence**, **Aplicación móvil**
* `SamplingRepresentativenessDeficientDetected` ➔ **Aplicación móvil**
* `SustainableCropLoadDetermined`, `ThinningPrescribed`, `ThinningDeclaredUnnecessary` ➔ **Aplicación móvil**
* `OverloadRiskDetected` ➔ **Cooperative Operations & Territorial Intelligence**
* `ThinningWindowClosedByPitHardening` ➔ **Aplicación móvil**
* `ThinningExecutionConfirmed` ➔ **Harvest Settlement & Performance Reporting**
* `LateThinningExecutionRecorded` ➔ **Phenology & Historical Bearing Analytics**

---

### **Assumptions**

1. El conteo de frutos cuajados es ejecutado de forma honesta y metodológica por el productor siguiendo la guía interactiva en la app móvil.
2. Los árboles testigo seleccionados corresponden a la variedad representativa del cuartel.
3. La intervención de aclareo frutal se realiza de forma manual mediante jornaleros o mecánicamente antes del endurecimiento del carozo.

### **Verification Metrics**

1. 90 % de ejecuciones confirmadas dentro de la ventana fenológica frente a las registradas.
2. 95 % Proporción de prescripciones emitidas que derivan en labor confirmada en campo, y no en prescripciones expiradas.
3. 85 % de rondas que alcanzan representatividad sin requerir una segunda salida a campo.

### **Open Questions**

1. ¿Se integrará soporte para conteo fotográfico asistido por visión computacional en dispositivos móviles en una siguiente fase?
2. ¿Se permitirá ajustar la prescripción ante eventos imprevistos de caída natural de fruto?