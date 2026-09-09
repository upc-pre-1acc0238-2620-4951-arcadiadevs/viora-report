# **Name:** Harvest Settlement and Performance Reporting

---

### **Purpose**

Gestiona la liquidación definitiva de cosecha y la evaluación de estabilización productiva. Concilia los kilos cosechados, computa la atenuación de la vecería respecto al año base y compila el expediente técnico, publicando eventos hacia Phenology y la Aplicación móvil, relacionándose con Thinning para contrastar la ejecución del aclareo. Su propósito es certificar el rendimiento productivo anual y validar el éxito mitigatorio alcanzado en el olivar.

### **Strategic Classification**

* **Domain:** Core Subdomain (cierre productivo anual, evaluación de estabilización interanual y certificación técnica)
* **Business Model:** Performance Verification & Certification Generator (verificación del éxito mitigatorio y generación de expedientes técnicos)
* **Evolution:** Custom-Built (fórmula de estabilización de vecería y compilador PDF inmutable)

### **Domain Roles**

* **Harvest Weight Assessor:** Asienta los pesos definitivos de aceituna recolectada por estado de madurez.
* **Interannual Stabilization Evaluator:** Computa la atenuación de la vecería respecto a la campaña base.
* **Agronomic Dossier Compiler:** Compila el expediente técnico agronómico oficial del predio.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Productor / Aplicación Móvil** ➔ `SettleCampaignHarvest`
* **Aplicación Móvil** ➔ `GenerateAgronomicDossier`
* **Crop Load Regulation & Thinning Advisory** ➔ `ThinningExecutionConfirmed`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* AgronomicReport
* HarvestSettlement
* StabilizationTrendCurve
* AgronomicDossier

### **Business Decisions**

*(Key business rules, policies and decisions)*
La decisión: al final de la campaña se asientan los pesos reales de la cosecha como auditoría inmutable. Esto certifica si el aclareo cumplió su objetivo de reducir la oscilación de producción entre años, y alimenta la curva de estabilización con datos reales.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `CampaignHarvestSettled` ➔ **Aplicación móvil**
* `YieldStabilizationCurveEvaluated` ➔ **Aplicación móvil**
* `AgronomicDossierGenerated` ➔ **Aplicación móvil**

---

### **Assumptions**

1. Los comprobantes o pesajes de balanza ingresados por el productor corresponden fielmente a los kilos extraídos del cuartel.
2. El productor concluyó la faena de cosecha antes de proceder al asentamiento de campaña.
3. El expediente compilado servirá como constancia técnica para cooperativas, compradores y entidades de crédito agrícola.

### **Verification Metrics**

1. Reducción de 30 % de la amplitud de vecería registrada en los cuarteles que ejecutaron su prescripción de aclareo.
2. 100 % de cuarteles con campaña asentada, luego de prescripción emitida en esa campaña.
3. 70 % de expedientes generados que el productor o el gestor efectivamente descarga y presenta ante un tercero.
4. 100 % de cierres de campaña incorpora una nueva entrada a la serie histórica que sostiene el cálculo del BBI del año siguiente.

### **Open Questions**

1. ¿Se integrará firma digital avanzada basada en certificados PKI reconocidos para el dossier oficial?
2. ¿Se requerirá validación o refrendo del ticket de balanza por parte de la cooperativa acopiadora?