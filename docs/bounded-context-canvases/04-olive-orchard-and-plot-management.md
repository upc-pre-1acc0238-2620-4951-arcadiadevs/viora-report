# **Name:** Olive Orchard and Plot Management

---

### **Purpose**

Gestiona la delimitación georreferenciada y caracterización dendrométrica de los predios. Captura polígonos cerrados, tipifica la variedad botánica y determina la densidad de árboles por hectárea, publicando eventos hacia Agroclimatic Telemetry, Phenology, Crop Load Regulation y la Aplicación móvil. Su propósito es establecer la base espacial y agronómica indispensable sobre la cual operan los sensores de campo y los algoritmos predictivos de vecería.

### **Strategic Classification**

* **Domain:** Supporting Subdomain (fundación territorial, geométrica y dendrométrica de los predios)
* **Business Model:** Operational Foundation & Spatial Inventory (catastro geoespacial y caracterización varietal)
* **Evolution:** Custom-Built (adaptado a la topografía de valles olivareros y variedades)

### **Domain Roles**

* **Plot Spatial Delimiter:** Procesa y valida geometrías poligonales cerradas GeoJSON y calcula la cabida neta en hectáreas.
* **Varietal Cadastre Custodian:** Registra la variedad botánica cultivada en cada cuartel.
* **Tree Density Calculator:** Computa la densidad arbórea (árboles/ha) a partir del marco de plantación.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Productor / Aplicación Móvil** & **Satellite Basemap & GIS Provider** ➔ `DelimitPlot`, `UpdatePlotBoundaries`
* **Productor / Aplicación Móvil** ➔ `RemovePlot`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* Plot
* CadastralPolygon
* OliveVariety
* PlantingGrid
* DendrometricAttributes
* PlotStatus

### **Business Decisions**

*(Key business rules, policies and decisions)*
El productor dibuja en el mapa la parcela de su campo (el terreno donde va a trabajar), indicando tamaño, variedad y densidad de árboles. La decisión: todo el cálculo posterior (sensores, rendimiento) depende de que exista una parcela bien definida y georreferenciada. Es la base territorial de todo el sistema.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `PlotDelimited`, `PlotBoundariesUpdated` ➔ **Agroclimatic Telemetry & Sensor Monitoring**, **Aplicación Móvil**
* `PlotRemoved` ➔ **Aplicación Móvil**

---

### **Assumptions**

1. La cartografía satelital provista por el proveedor GIS ofrece resolución suficiente para digitalizar vértices prediales.
2. Cada cuartel delimitado posee condiciones homogéneas de variedad y edad de plantación.
3. El productor dispone de conectividad GPS en campo o digitaliza sus vértices sobre la imagen satelital.

### **Verification Metrics**

1. 90 % de cuarteles cuya superficie neta calculada es aceptada sin corrección posterior por parte del productor.
2. 80 % de cuarteles activos con variedad, marco de plantación y densidad arbórea registrados antes de iniciar la fase de muestreo.
3. Cero pérdidas de histórico agronómico ante bajas de parcela; toda eliminación es lógica y reversible en su trazabilidad.
4. La superficie catastrada activa se mantiene dentro de la cuota contratada.

### **Open Questions**

1. ¿Se integrará importación directa de archivos Shapefile (.shp) o KML provistos por entidades agrarias?
2. ¿Se permitirá subdividir un cuartel existente si el productor cambia el marco de riego o de poda en una sección?