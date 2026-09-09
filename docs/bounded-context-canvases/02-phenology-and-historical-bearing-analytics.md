# **Name:** Phenology and Historical Bearing Analytics

---

### **Purpose**

Gestiona la memoria histórica de producción y la modelación bioclimática predictiva del olivo. Computa el Índice de Vecería Bienal, acumula porciones de frío invernal a partir de datos de Telemetry, y rastrea transiciones fenológicas, publicando eventos hacia Crop Load Regulation and Thinning Advisory y la Aplicación móvil. Su propósito es prever patrones de alternancia y anticipar brotaciones heterogéneas derivadas de inviernos cálidos.

### **Strategic Classification**

* **Domain:** Core Subdomain (Diferenciador Primario de Inteligencia Bioclimática y Memoria Productiva)
* **Business Model:** Core Intellectual Property & Bioclimatic Forecaster (modelación matemática de vecería y acumulación de frío)
* **Evolution:** Custom-Built (fórmula científica BBI de Hoblyn et al., 1936 + Modelo Dinámico de Erez para el olivo)

### **Domain Roles**

* **Historical Bearing Evaluator:** Modela y clasifica la severidad de la alternancia productiva mediante el índice BBI.
* **Pluriannual Yield Chronicler:** Registra y audita las cosechas de campañas anteriores.
* **Winter Chill Dynamic Computer:** Computa porciones dinámicas de frío invernal según el modelo de Erez.
* **Thermal Anomaly Watchdog:** Detecta olas de calor invernal por efecto ENOS y reajusta la carga floral potencial.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Productor / Aplicación Móvil** ➔ `LogHistoricalHarvests`
* **Productor / Aplicación Móvil** ➔ `RectifyHistoricalHarvest`, `DeleteHistoricalHarvest`
* **System** ➔ `ComputeDailyChillAccumulation`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* ChillAccumulationTracker
* DynamicModelErezState
* ColdRequirement
* ChillFulfillmentStatus
* ThermalHeatwaveCounter
* HistoricalHarvestEntry
* BiennialBearingIndex (BBI)
* OnYear / OffYear:

### **Business Decisions**

*(Key business rules, policies and decisions)*
El olivo necesita acumular una cantidad mínima de frío invernal para florecer bien. La decisión: el sistema calcula diariamente cuánto frío se ha acumulado y avisa cuándo se cumplió el requerimiento, porque eso determina si la floración será buena. Si ocurre una ola de calor invernal, se recalcula a la baja la floración esperada.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `HistoricalHarvestsLogged`, `HistoricalDataInsufficiencyDetected` ➔ **Aplicación móvil**
* `BiennialBearingIndexAssessed` ➔ **Harvest Settlement & Performance Reporting**, **Aplicación móvil**
* `HistoricalHarvestRectified`, `HistoricalHarvestDeleted` ➔ **Aplicación móvil**
* `WinterChillPortionsAccumulated`, `ColdRequirementFulfilled` ➔ **Crop Load Regulation & Thinning Advisory**

---

### **Assumptions**

1. Los registros históricos declarados de cosechas previas reflejan de forma razonable la producción total del cuartel.
2. Las temperaturas horarias alimentadas por telemetría corresponden fielmente al microclima térmico del olivar en invierno.
3. Las variedades responden al rango de satisfacción de 25 a 30 porciones dinámicas de frío.

### **Verification Metrics**

1. 90 % de cuarteles activos que alcanzan las 3 campañas mínimas y obtienen un BBI oficial.
2. 95 % de índices BBI que se mantienen estables tras rectificaciones o depuraciones de la serie histórica.
3. 80 % de campañas con anomalía térmica invernal detectada en las que la carga potencial fue reajustada antes de emitir prescripción.

### **Open Questions**

1. ¿Se contemplará una calibración empírica diferenciada del requerimiento de porciones de frío entre Criolla y Sevillana?
2. ¿Se incorporarán coeficientes de poda de invierno como variable moderadora del índice BBI?