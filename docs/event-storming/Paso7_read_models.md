# EventStorming — Paso 7: Identificación de Read Models y Vistas de Decisión

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Modelos de Lectura (*Read Models*, Post-its Verdes, `#2ECC71`) y Proyecciones CQRS  

---

## 1. Fundamentación Metodológica y Principios CQRS

### 1.1 El Rol del Read Model en EventStorming y CQRS
En la metodología **EventStorming** (Alberto Brandolini) y el patrón arquitectónico **CQRS** (*Command Query Responsibility Segregation*), los **Read Models (Post-its Verdes)** representan vistas consolidadas, proyecciones y paneles de información optimizados para la consulta. Proveen a los actores (productores olivareros y gestores técnicos) el contexto cognitivo y agronómico necesario para evaluar el estado del olivar y tomar decisiones informadas antes de invocar un comando.

```
                      +-------------------------------------------------------------+
                      |                   PROYECCIÓN ASÍNCRONA                      |
                      |  (Los eventos de dominio actualizan las vistas de lectura)  |
                      +-------------------------------------------------------------+
                                                     ^
                                                     | Actualiza
                                                     |
+---------------------+     Consulta     +---------------------+     Decide     +---------------------+
| READ MODEL (Verde)  | <--------------- |       ACTOR         | -------------> | COMANDO (Azul)      |
| [Vista / Dashboard] |                  | (Producer / Gestor) |                | [Intención acción]  |
+---------------------+                  +---------------------+                +---------------------+
                                                                                           |
                                                                                           | Ejecuta
                                                                                           v
+---------------------+      Publica     +---------------------+    Aplica Reglas   +---------------------+
| READ MODEL (Verde)  | <--------------- | DOMAIN EVENT (Nar)  | <----------------- | AGREGADO (Amarillo) |
| [Datos actualizados]|   (Proyección)   | [Hecho consumado]   |                    | [Raíz de Dominio]   |
+---------------------+                  +---------------------+                    +---------------------+
```

### 1.2 Modelado de las Necesidades de Consulta en la Arquitectura CQRS
Bajo los principios de diseño de EventStorming, las operaciones de visualización, cálculo de series históricas y filtros de consulta se desacoplan de los eventos de mutación de estado. De este modo, las necesidades informativas de los usuarios se modelan de manera rigurosa como **Read Models** desnormalizados que se actualizan de forma reactiva ante la emisión de eventos de dominio, garantizando alto rendimiento y soporte a la decisión agronómica en campo.

---

## 2. Resumen Consolidado de Read Models por Actor

```
+-----------------------------------------------------------------------------------------------+
|                             RESUMEN DE READ MODELS POR ACTOR / ROL                            |
+-----------------------------------------------------------------------------------------------+
| A. VISTAS DEL PRODUCTOR OLIVARERO (PRODUCER) - 12 READ MODELS                                 |
|    RM01: UserProfileView                       (Identidad, Nombres y Contacto E.164)          |
|    RM02: SubscriptionStatusCardView            (Plan Comercial, Pasarela y Cuotas ha)         |
|    RM03: PlotCadastralMapView                  (Visor Satelital de Polígonos y Densidad)      |
|    RM04: VirtualSensorInventoryView            (Lista de Sondas, Profundidad y Calibración)   |
|    RM05: SoilMoistureAndStressMonitorView      (Gráficas Radiculares en Tiempo Real y Riego)  |
|    RM06: WeatherForecastAndThermalRiskCardView (Pronóstico 7 Días, Heladas y Olas de Calor)   |
|    RM07: HistoricalYieldAndBbiAnalyticsView    (Curva On/Off Plurianual e Índice BBI Hoblyn)  |
|    RM08: WinterChillAccumulationGaugeView      (Velocímetro Porciones Erez vs. Umbral 25-30)  |
|    RM09: InFieldSamplingSummaryView            (Conteo Fruto/Brote y Representatividad >=5)   |
|    RM10: FruitThinningPrescriptionCardView     (% Aclareo, Carga Admisible y Ventana Carozo)  |
|    RM11: InterannualStabilizationCurveView     (Curva de Reducción de Vecería vs. Año Base)   |
|    RM12: CertifiedAgronomicDossierView         (Ficha Técnica Oficial Compilada del Predio)   |
+-----------------------------------------------------------------------------------------------+
| B. VISTAS DEL GESTOR TÉCNICO DE LA COOPERATIVA (TECHNICAL MANAGER) - 03 READ MODELS           |
|    RM13: CooperativeDirectoryAndLicensingView  (Padrón de Socios, Hectáreas y Cupones Canje)  |
|    RM14: CooperativeTerritorialRiskMatrixView  (Semáforo Sectorial Georreferenciado del Valle)|
|    RM15: CooperativeIntakeProjectionDashboard  (Volumen Consolidado de Acopio y Cobertura)    |
+-----------------------------------------------------------------------------------------------+
| TOTAL DE READ MODELS (POST-ITS VERDES): 15 VISTAS ESTRATÉGICAS                                |
+-----------------------------------------------------------------------------------------------+
```

---

## 3. Catálogo Detallado de Read Models (RM01 a RM15)

---

### A. Vistas del Productor Olivarero (`Producer`)

#### **RM01: UserProfileView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `User Profiles`
* **US / BDD:** `US03`
* **Propósito y Decisión que Habilita:** Permite al usuario consultar su identidad personal civil, nombre formal y número telefónico validado y formateado bajo la norma internacional E.164. Habilita la decisión de corregir o actualizar sus canales de contacto (`CMD08: UpdateContactProfile`).
* **Componentes Visuales y Datos Clave:**
  * Nombre completo y formal del usuario.
  * Código de país (ISO 3166-1) y bandera.
  * Número móvil normalizado E.164 (+51...).
  * Estado de contacto: *Validado*.
* **Eventos que Actualizan la Vista:** `EV08: ProfileCreated`, `EV09: ContactProfileUpdated`.
* **Comandos que Habilita:** `CMD08: UpdateContactProfile`.

---

#### **RM02: SubscriptionStatusCardView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Subscription & Cooperative Membership`
* **US / BDD:** `US06`, `US07`
* **Propósito y Decisión que Habilita:** Tarjeta informativa y panel de estado de la membresía comercial de la plataforma SaaS. Habilita la decisión de procesar la confirmación de pago de renovación individual (`CMD09`) o canjear un código de patrocinio gremial emitido por su cooperativa (`CMD10`).
* **Componentes Visuales y Datos Clave:**
  * Modalidad de suscripción: `INDIVIDUAL_PAID` o `COOPERATIVE_SPONSORED`.
  * Badge de vigencia: *Activa*, *Pendiente de Pago*, *Vencida*.
  * Techo de hectáreas autorizadas (cupo contratado) vs. hectáreas catastradas en uso.
  * Fecha de caducidad del plan anual.
  * Enlace al checkout de pago o formulario de canje de cupón corporativo.
* **Eventos que Actualizan la Vista:** `EV10`, `EV11`, `EV12`, `EV13`.
* **Comandos que Habilita:** `CMD09: ProcessPaymentConfirmation`, `CMD10: RedeemCooperativeCode`.

---

#### **RM03: PlotCadastralMapView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Olive Orchard & Plot Management`
* **US / BDD:** `US09`, `US10`, `US11`, `US12`
* **Propósito y Decisión que Habilita:** Visor geográfico interactivo sobre cartografía satelital que proyecta los polígonos delimitados de los fundos, superficie neta y densidad de árboles. Habilita la decisión de registrar un nuevo sector, corregir linderos GPS o dar de baja un lote.
* **Componentes Visuales y Datos Clave:**
  * Mapa satelital con capas vectoriales de polígonos cerrados (GeoJSON).
  * Ficha por parcela: Área neta (ha), variedad (Criolla de Tacna / Sevillana), marco de plantación ($8\times 8$, $10\times 10$), número total de olivos y densidad poblacional (árboles/ha).
  * Panel de herramientas de dibujo y edición de vértices.
* **Eventos que Actualizan la Vista:** `EV15`, `EV16`, `EV17`.
* **Comandos que Habilita:** `CMD12: DelimitPlot`, `CMD13: UpdatePlotBoundaries`, `CMD14: RemovePlot`.

---

#### **RM04: VirtualSensorInventoryView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Agroclimatic Telemetry & Sensor Monitoring`
* **US / BDD:** `US13`, `US15`, `US16`
* **Propósito y Decisión que Habilita:** Panel de gestión de dispositivos sensores edáficos virtuales asignados a las parcelas. Habilita la decisión de calibrar profundidades de sonda según la estratigrafía del suelo o desvincular nodos inactivos.
* **Componentes Visuales y Datos Clave:**
  * Tabla de nodos: ID de sensor, MAC, parcela asociada, coordenadas GPS.
  * Estado operativo: *Vinculado*, *Calibrado*, *Sin datos recientes*.
  * Parámetros edáficos: Profundidad configurada (30 cm o 60 cm), textura del suelo (franco-arenoso) y multiplicador de calibración volumétrica.
* **Eventos que Actualizan la Vista:** `EV18`, `EV19`, `EV20`.
* **Comandos que Habilita:** `CMD15: LinkVirtualSensorNode`, `CMD16: CalibrateVirtualSensorNode`, `CMD17: UnlinkVirtualSensorNode`.

---

#### **RM05: SoilMoistureAndStressMonitorView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Agroclimatic Telemetry & Sensor Monitoring`
* **US / BDD:** `US14`, `US17`, `US18`
* **Propósito y Decisión que Habilita:** Gráfico dinámico de telemetría horaria del contenido volumétrico de agua ($\theta$) a 30 cm y 60 cm de profundidad frente al umbral crítico del 18%. Habilita la decisión inmediata de iniciar el turno de riego de recarga o ajustar tiempos de bombeo.
* **Componentes Visuales y Datos Clave:**
  * Gráfico de líneas temporales (últimas 24h / 7 días) de humedad volumétrica de suelo.
  * Líneas de referencia agronómica: Capacidad de Campo ($22\%$), Punto de Recarga ($18\%$), Punto de Marchitez Permanente ($11\%$).
  * Banner de alerta activa de estrés hídrico con cálculo de horas sugeridas de riego por goteo.
  * Estado de resolución automática tras la recarga.
* **Eventos que Actualizan la Vista:** `EV21`, `EV22`, `EV24`.
* **Comandos que Habilita:** Informa al productor para operar sus válvulas de campo y habilita la verificación post-riego.

---

#### **RM06: WeatherForecastAndThermalRiskCardView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Agroclimatic Telemetry & Sensor Monitoring`
* **US / BDD:** `US18`, `US19`
* **Propósito y Decisión que Habilita:** Tarjetas meteorológicas a 7 días con pronósticos de temperatura máxima, mínima, humedad relativa y riesgo de heladas o golpes de calor. Habilita la decisión de programar riegos defensivos de refrescamiento durante la floración.
* **Componentes Visuales y Datos Clave:**
  * Carousels meteorológicos diarios a 7 días vista con iconos de tendencia climática.
  * Termómetro de alerta por choque térmico: Destacado en rojo si $T_{max} > 32^\circ\text{C}$ con $HR < 20\%$ durante fase fenológica de floración.
  * Indicador de riesgo de helada si $T_{min} \le 1.5^\circ\text{C}$ en noches de invierno.
* **Eventos que Actualizan la Vista:** `EV23`, `EV25`.
* **Comandos que Habilita:** `CMD19: IngestWeatherForecast` (actualización forzada bajo demanda).

---

#### **RM07: HistoricalYieldAndBbiAnalyticsView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Phenology & Historical Bearing Analytics`
* **US / BDD:** `US20`, `US21`
* **Propósito y Decisión que Habilita:** Proyección histórica de rendimientos plurianuales (kg/ha) y visualización del Índice de Vecería de Hoblyn ($BBI$). Habilita la decisión de auditar pesajes erróneos, rectificar cosechas o entender si el predio viene de un año ON o OFF.
* **Componentes Visuales y Datos Clave:**
  * Gráfico de barras plurianual con discriminación cromática: Campañas On (verde alto) vs. Campañas Off (naranja bajo).
  * Tarjeta KPI de Índice BBI: Valor de $0.00$ a $1.00$ con clasificación cualitativa (*Vecería Ligera* $<0.30$, *Moderada* $0.30-0.60$, *Severa* $>0.60$).
  * Indicador de advertencia si la serie tiene menos de 3 campañas (insuficiencia de datos).
  * Tabla editable para rectificación o borrado de pesajes históricos.
* **Eventos que Actualizan la Vista:** `EV26`, `EV27`, `EV28`, `EV29`, `EV30`.
* **Comandos que Habilita:** `CMD20: LogHistoricalHarvests`, `CMD21: RectifyHistoricalHarvest`, `CMD22: DeleteHistoricalHarvest`.

---

#### **RM08: WinterChillAccumulationGaugeView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Phenology & Historical Bearing Analytics`
* **US / BDD:** `US22`, `US23`
* **Propósito y Decisión que Habilita:** Velocímetro dinámico que monitorea el avance de Porciones de Frío acumuladas bajo el modelo de Erez durante el invierno tacneño (Mayo a Agosto). Habilita la decisión de prepararse para una brotación heterogénea si hubo déficit térmico por efecto ENOS.
* **Componentes Visuales y Datos Clave:**
  * Gráfico de aguja tipo Gauge: Porciones de frío actuales ($0$ a $40$ UF) vs. umbral varietal de salida de dormancia ($25-30$ UF para Criolla de Tacna).
  * Semáforo de cumplimiento: *En progreso*, *Requerimiento Cumplido*, *Déficit Crítico*.
  * Historial de eventos de calor anómalo invernal ($>24^\circ\text{C}$) que provocaron pérdida de intermediarios térmicos.
  * Porcentaje de ajuste proyectado sobre la fertilidad floral potencial.
* **Eventos que Actualizan la Vista:** `EV31`, `EV32`, `EV33`, `EV34`.
* **Comandos que Habilita:** Alimenta la necesidad de muestreo temprano de cuajado (`CMD24`).

---

#### **RM09: InFieldSamplingSummaryView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Crop Load Regulation & Thinning Advisory`
* **US / BDD:** `US24`, `US25`
* **Propósito y Decisión que Habilita:** Panel de control de muestreo de cuajado a pie de árbol. Muestra los conteos de frutos por brote mixto y el termómetro de representatividad estadística. Habilita la decisión de cerrar el lote muestral o continuar evaluando árboles en campo.
* **Componentes Visuales y Datos Clave:**
  * Contador en vivo de árboles muestreados en el sector homogéneo.
  * Barra de progreso de representatividad: Alerta en amarillo si $<5$ árboles (muestra insuficiente), indicador verde si $\ge 5$ árboles (muestra estadísticamente representativa).
  * Densidad promedio de frutos/brote y frutos por metro lineal de copa.
  * Indicador preliminar de sobrecarga potencial si la media supera $4.5$ frutos/brote.
* **Eventos que Actualizan la Vista:** `EV35`, `EV36`, `EV37`, `EV38`.
* **Comandos que Habilita:** `CMD24: RecordInFieldTreeSampling`, `CMD25: IngestFieldSamplingsBatch`.

---

#### **RM10: FruitThinningPrescriptionCardView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Crop Load Regulation & Thinning Advisory`
* **US / BDD:** `US26`, `US27`, `US28`
* **Propósito y Decisión que Habilita:** Tarjeta estratégica de prescripción de aclareo. Presenta el porcentaje exacto de frutos que deben ser removidos para evitar que el árbol colapse en vecería, junto a un reloj de cuenta regresiva de la ventana biológica (antes del endurecimiento del carozo). Habilita la decisión de contratar cuadrillas y ejecutar la labor en campo.
* **Componentes Visuales y Datos Clave:**
  * Indicador porcentual de remoción frutal prescrita (e.g. *"Aclareo requerido: 25%"* o *"Carga en equilibrio: 0%"*).
  * Comparativa gráfica: Carga actual estimada vs. Carga frutal agronómicamente admisible.
  * Cronómetro de ventana fenológica: Días y fecha límite de intervención biológica antes del endurecimiento del carozo (lignificación del endocarpio).
  * Formulario de confirmación de intervención: Fecha de ejecución, cuadrilla empleada y porcentaje real removido.
* **Eventos que Actualizan la Vista:** `EV39`, `EV40`, `EV41`, `EV42`, `EV43`, `EV44`, `EV45`.
* **Comandos que Habilita:** `CMD26: DetermineSustainableCropLoad`, `CMD28: ConfirmThinningExecution`.

---

#### **RM11: InterannualStabilizationCurveView**
* **Actor Destinatario:** `Producer`
* **Contextos Proyectados:** `Harvest Settlement & Performance Reporting`
* **US / BDD:** `US29`
* **Propósito y Decisión que Habilita:** Gráfico de serie temporal plurianual que ilustra la amortiguación del ciclo de vecería a lo largo de las temporadas en que se aplicó aclareo regulatorio. Habilita la decisión de validar la rentabilidad económica del programa de aclareo.
* **Componentes Visuales y Datos Clave:**
  * Curva de rendimientos reales frente a la curva teórica oscilatoria sin regulación.
  * Indicador de estabilización: Disminución porcentual del BBI respecto a la campaña base de ingreso a la plataforma.
  * Resumen de liquidación de la última cosecha: Kilogramos de aceituna verde y negra asentados.
* **Eventos que Actualizan la Vista:** `EV46`, `EV47`.
* **Comandos que Habilita:** `CMD29: SettleCampaignHarvest`.

---

#### **RM12: CertifiedAgronomicDossierView**
* **Actor Destinatario:** `Producer` / `TechnicalManager`
* **Contextos Proyectados:** `Harvest Settlement & Performance Reporting`
* **US / BDD:** `US30`
* **Propósito y Decisión que Habilita:** Vista compilada del expediente técnico predial que reúne delimitación catastral, cumplimiento de frío, bitácora de muestreos, constancia de aclareo y balance de cosecha. Habilita la decisión de exportar la ficha oficial para trámites ante cooperativas, programas de financiamiento (Agrobanco) o certificación de calidad de aceite.
* **Componentes Visuales y Datos Clave:**
  * Ficha técnica resumen con sello digital y código de validación agronómica.
  * Historial integrado de intervenciones y parámetros microclimáticos de la temporada.
  * Botón de exportación estructurada del expediente predial en PDF.
* **Eventos que Actualizan la Vista:** `EV48`.
* **Comandos que Habilita:** `CMD30: GenerateAgronomicDossier`.

---

### B. Vistas del Gestor Técnico de la Cooperativa (`TechnicalManager`)

#### **RM13: CooperativeDirectoryAndLicensingView**
* **Actor Destinatario:** `TechnicalManager`
* **Contextos Proyectados:** `Subscription & Cooperative Membership`, `Cooperative Operations & Territorial Intelligence`
* **US / BDD:** `US08`, `US31`
* **Propósito y Decisión que Habilita:** Panel administrativo consolidado del padrón de olivicultores adscritos a la cooperativa. Habilita la decisión de generar nuevos lotes de códigos corporativos de invitación, cancelar anticipadamente los que ya no se van a distribuir, o dar seguimiento al canje de membresías.
* **Componentes Visuales y Datos Clave:**
  * Métricas de adopción: Total socios afiliados, plazas contratadas frente a plazas comprometidas (`seatLimit` / `issuedSeats`), superficie contratada frente a superficie comprometida (`contractedArea` / `issuedArea`) y cupones efectivamente canjeados.
  * Directorio filtrable de socios: Nombre, DNI/RUC, teléfono de contacto E.164, número de parcelas y fecha de alta.
  * Módulo de generación y descarga de lotes de códigos alfanuméricos de invitación, con el estado de cada código (`AVAILABLE`, `REDEEMED`, `EXPIRED`) y su fecha de caducidad.
* **Eventos que Actualizan la Vista:** `EV13`, `EV14`, `EV52`.
* **Comandos que Habilita:** `CMD11: GenerateInvitationCodesBatch`, `CMD33: ShortenInvitationCodeExpiry`.

---

#### **RM14: CooperativeTerritorialRiskMatrixView**
* **Actor Destinatario:** `TechnicalManager`
* **Contextos Proyectados:** `Cooperative Operations & Territorial Intelligence`
* **US / BDD:** `US31`
* **Propósito y Decisión que Habilita:** Mapa y matriz territorial agregada con semáforo fenológico de riesgo (verde, amarillo, rojo) desglosado por sectores del valle de Tacna (La Yarada, Magollo, Los Palos). Habilita la decisión de priorizar visitas agronómicas de extensión y despachar alertas colectivas por sobrecarga o heladas.
* **Componentes Visuales y Datos Clave:**
  * Visor geoespacial con clústeres prediales coloreados según nivel de riesgo fenológico.
  * Matriz sectorial de alertas: Conteo de predios en estrés hídrico, predios con déficit de frío invernal y porcentaje de hectáreas en sobrecarga frutal inminente.
  * Filtros por sector geográfico, variedad y estrato de tamaño de productor.
  * Botón de emisión de boletín agronómico sectorial de advertencia.
* **Eventos que Actualizan la Vista:** `EV49`.
* **Comandos que Habilita:** `CMD31: EvaluateCooperativeRiskMatrix`.

---

#### **RM15: CooperativeIntakeProjectionDashboardView**
* **Actor Destinatario:** `TechnicalManager`
* **Contextos Proyectados:** `Cooperative Operations & Territorial Intelligence`
* **US / BDD:** `US32`
* **Propósito y Decisión que Habilita:** Tablero analítico de proyección temprana del volumen de cosecha que recibirá la planta procesadora de la cooperativa. Habilita la decisión de negociar contratos forward con la agroindustria y dimensionar las líneas de fermentación y tanques de salmuera.
* **Componentes Visuales y Datos Clave:**
  * Proyección de acopio total en toneladas métricas, discriminando por destino: Aceituna de mesa (verde/negra) y aceituna para molienda de aceite de oliva virgen extra.
  * Termómetro de cobertura muestral del padrón: Alerta destacada en ámbar si menos del 60% de los socios ha ingresado muestreos representativos.
  * Gráfico de benchmarking comparativo de curvas de vecería entre sectores del valle.
* **Eventos que Actualizan la Vista:** `EV50`, `EV51`.
* **Comandos que Habilita:** `CMD32: ProjectCooperativeIntakeVolume`.

---

## 4. Matriz de Trazabilidad: Read Model $\rightarrow$ Eventos Fuente $\rightarrow$ Comandos Habilitados

| ID Read Model | Nombre de la Vista | Actor | Evento(s) Fuente de Actualización | Comando(s) Habilitado(s) |
| :---: | :--- | :--- | :--- | :--- |
| **RM01** | `UserProfileView` | `Producer` | `EV08`, `EV09` | `CMD08` |
| **RM02** | `SubscriptionStatusCardView` | `Producer` | `EV10`, `EV11`, `EV12`, `EV13` | `CMD09`, `CMD10` |
| **RM03** | `PlotCadastralMapView` | `Producer` | `EV15`, `EV16`, `EV17` | `CMD12`, `CMD13`, `CMD14` |
| **RM04** | `VirtualSensorInventoryView` | `Producer` | `EV18`, `EV19`, `EV20` | `CMD15`, `CMD16`, `CMD17` |
| **RM05** | `SoilMoistureAndStressMonitorView` | `Producer` | `EV21`, `EV22`, `EV24` | Operación de riego de campo |
| **RM06** | `WeatherForecastAndThermalRiskCardView`| `Producer` | `EV23`, `EV25` | `CMD19` |
| **RM07** | `HistoricalYieldAndBbiAnalyticsView` | `Producer` | `EV26`, `EV27`, `EV28`, `EV29`, `EV30` | `CMD20`, `CMD21`, `CMD22` |
| **RM08** | `WinterChillAccumulationGaugeView` | `Producer` | `EV31`, `EV32`, `EV33`, `EV34` | Preparación muestreo (`CMD24`)|
| **RM09** | `InFieldSamplingSummaryView` | `Producer` | `EV35`, `EV36`, `EV37`, `EV38` | `CMD24`, `CMD25` |
| **RM10** | `FruitThinningPrescriptionCardView` | `Producer` | `EV39`, `EV40`, `EV41`, `EV42`, `EV43`, `EV44`, `EV45` | `CMD26`, `CMD28` |
| **RM11** | `InterannualStabilizationCurveView` | `Producer` | `EV46`, `EV47` | `CMD29` |
| **RM12** | `CertifiedAgronomicDossierView` | `Producer` / `Gestor` | `EV48` | `CMD30` |
| **RM13** | `CooperativeDirectoryAndLicensingView`| `TechnicalManager` | `EV13`, `EV14`, `EV52` | `CMD11`, `CMD33` |
| **RM14** | `CooperativeTerritorialRiskMatrixView`| `TechnicalManager` | `EV49` | `CMD31` |
| **RM15** | `CooperativeIntakeProjectionDashboard` | `TechnicalManager` | `EV50`, `EV51` | `CMD32` |

---

## 5. Consideraciones de Cierre

La delimitación de estos 15 Read Models estructura la interfaz informativa de Viora bajo el patrón CQRS. Al mantener las proyecciones de lectura separadas del modelo transaccional de escritura, se asegura que los tableros analíticos, los semáforos de riesgo y los expedientes técnicos puedan consultarse de forma instantánea sin imponer sobrecarga computacional sobre los agregados de dominio.
