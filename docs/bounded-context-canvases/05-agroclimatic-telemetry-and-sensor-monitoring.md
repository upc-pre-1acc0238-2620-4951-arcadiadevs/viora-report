# **Name:** Agroclimatic Telemetry and Sensor Monitoring

---

### **Purpose**

Gestiona la sensometría edáfica y la vigilancia microclimática continua de los olivares. Administra nodos de sensores virtuales, ingesta series horarias de humedad y previsiones agrometeorológicas, y publica eventos de alerta crítica hacia la Aplicación móvil y Cooperative Operations ante estrés hídrico, choques térmicos y heladas. Su propósito es vigilar en tiempo real el estado hídrico y térmico del suelo para proteger la floración, el cuajado y la viabilidad del cultivo.

### **Strategic Classification**

* **Domain:** Supporting Subdomain (sensometría edáfica, series temporales y vigilancia meteorológica)
* **Business Model:** Real-Time Environmental Sensor & Risk Watchdog (detección temprana de anomalías microclimáticas y estrés)
* **Evolution:** Custom-Built (fusión de modelos de sensores virtuales con estaciones)

### **Domain Roles**

* **Virtual Sensor Node Provisioner:** Vincula, calibra y desvincula nodos de sensometría edáfica en cuarteles delimitados.
* **Soil Moisture Ingestion Processor:** Recibe y persiste series horarias de humedad radicular a 30 y 60 cm.
* **Agroclimatic Risk Sentinel:** Evalúa umbrales agronómicos y despacha alertas de estrés hídrico y choque térmico.
* **Weather Forecast Consumer:** Ingesta el pronóstico a 7 días y anticipa el riesgo de heladas radiativas.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Productor / Aplicación Móvil** ➔ `LinkVirtualSensorNode`, `CalibrateVirtualSensorNode`, `UnlinkVirtualSensorNode`
* **System** ➔ `IngestHourlyTelemetry`
* **Agroclimatic Weather API** ➔ `IngestWeatherForecast`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* VirtualSensorNode
* CalibrationParameters
* SensorNodeStatus
* TelemetrySeries
* HourlyTelemetryReading
* WeatherForecastDay
* AgroclimaticIncident

### **Business Decisions**

*(Key business rules, policies and decisions)*
El productor asocia un sensor físico al suelo de una parcela ya delimitada. La decisión clave: el sensor solo se acepta si queda dentro de los límites de la parcela. A partir de ahí empieza a enviar datos de humedad y clima que alimentan las alertas automáticas de estrés del olivo.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `VirtualSensorNodeLinked`, `VirtualSensorNodeCalibrated`, `VirtualSensorNodeUnlinked` ➔ **Aplicación Móvil**
* `TelemetryDataIngested`, `HydricStressAlertTriggered`, `ThermalThresholdAlertTriggered`, `AgroclimaticAlertResolved` ➔ **Agroclimatic Telemetry and Sensor Monitoring**
* `WeatherForecastIngested` ➔ **Aplicación Móvil**

---

### **Assumptions**

1. La API meteorológica externa ofrece reportes horarios de estaciones cercanas.
2. Los modelos de sensometría virtual reflejan con precisión la curva de retención hídrica en suelos.
3. El productor configura las profundidades de monitoreo concordantes con la zona de máxima absorción radicular del olivo.

### **Verification Metrics**

1. 90 % de incidentes de estrés hídrico que se resuelven dentro de la campaña sin pérdida de cuajado reportada.
2. 90 % de alertas de estrés o choque térmico que el productor consulta y sobre las que ejecuta una acción de riego o alivio térmico.
3. 95 % de cuarteles con nodo vinculado que mantienen serie horaria ininterrumpida durante la ventana crítica de floración y cuajado.
4. 95 % de eventos de helada efectivamente ocurridos que contaron con aviso previo.

### **Open Questions**

1. ¿Se integrarán estaciones meteorológicas físicas privadas del productor en una segunda versión?
2. ¿Se contemplará el cálculo dinámico de evapotranspiración de referencia?