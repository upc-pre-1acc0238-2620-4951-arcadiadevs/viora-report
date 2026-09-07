# EventStorming — Paso 6: Modelado de Políticas Reactivas

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Políticas Reactivas y Gestores de Proceso (*Policies*, Post-its Lila, `#9B59B6`)  

---

## 1. Fundamentación Metodológica y Patrón de Diseño Reactivo

### 1.1 El Patrón "WHENEVER ... THEN ..."
En la metodología **EventStorming** (Alberto Brandolini) y la Arquitectura Orientada a Eventos (EDA), una **Política (Policy)** representa una regla de comportamiento reactivo del sistema. Encapsula la lógica de orquestación asíncrona que responde a hechos consumados:

$$\mathbf{WHENEVER}\text{ [Domain Event]}\; [\mathbf{IF}\text{ Condition}] \longrightarrow \mathbf{THEN}\text{ [Execute Command]}$$

```
+---------------------------+        Publica        +--------------------------+
|  AGREGADO ORIGEN          | --------------------> | DOMAIN EVENT (Naranja)   |
|  (Contexto Emisor)        |                       | [Hecho inmutable]        |
+---------------------------+                       +--------------------------+
                                                                 |
                                                                 | Intercepta / Escucha
                                                                 v
                                                    +--------------------------+
                                                    | POLÍTICA REACTIVA (Lila) |
                                                    | WHENEVER Event IF Cond   |
                                                    +--------------------------+
                                                                 |
                                                                 | Despacha automáticamente
                                                                 v
+---------------------------+       Ejecuta         +--------------------------+
|  AGREGADO DESTINO         | <-------------------- | COMANDO (Azul)           |
|  (Contexto Receptor)      |                       | [Intención de acción]    |
+---------------------------+                       +--------------------------+
```

### 1.2 Principios de Diseño Aplicados en Viora
1. **Desacoplamiento Estricto entre Bounded Contexts (Sagas / Process Managers):** Los agregados nunca se invocan mutuamente en transacciones sincrónicas rígidas. La política orquesta la reacción de forma eventual y resiliente.
2. **Automatización Agronómica sin Carga Humana:** En la olivicultura, eventos fisiológicos y meteorológicos críticos (como una ola de calor invernal o una caída de humedad bajo el 18%) demandan reacciones inmediatas del software (reajuste de floración, notificación in-app de auxilio), sin esperar a que el usuario inicie sesión.
3. **Protección de Consistencia Fenológica:** Si ocurre un evento irreversible de la naturaleza (como el endurecimiento del carozo), una política se encarga de invalidar las prescripciones pendientes para impedir que se ejecute un aclareo contraproducente.

---

## 2. Resumen Consolidado de Políticas Reactivas

```
+-----------------------------------------------------------------------------------------------+
|                             MATRIZ DE POLÍTICAS REACTIVAS (VIORA)                             |
+-----------------------------------------------------------------------------------------------+
| POL01: Auto-Activation On Payment Approved            (Pagos -> Suscripción)                 |
| POL02: Producer Affiliation On Cooperative Code       (Suscripción -> Cooperativa)           |
| POL03: Member Contact Sync On Profile Updated          (User Profiles -> Cooperativa)         |
| POL04: Critical Hydric Stress Alert Dispatcher        (Telemetría -> Alerta In-App)          |
| POL05: Thermal Shock Flowering Protection             (Telemetría -> Alerta In-App)          |
| POL06: Agroclimatic Alert Auto-Resolver               (Telemetría -> Monitoreo)              |
| POL07: Auto-BBI Assessment On Plurianual Logs         (Historial Cosechas -> Vecería BBI)    |
| POL08: Floral Yield Readjustment On Winter Heat       (Frío Dinámico -> Carga Frutal)        |
| POL09: Auto-Prescription On Sampling Quota Met        (Muestreo Campo -> Motor de Aclareo)   |
| POL10: Thinning Window Invalidation By Phenology      (Fenología -> Prescripciones Abiertas) |
| POL11: Late Thinning Penalty Adjustment               (Aclareo Tardío -> Eficiencia Mitigad) |
| POL12: Interannual Stabilization Tracking             (Cierre Cosecha -> Curva Histórica)    |
| POL13: Sectorial Risk Aggregation On Overload         (Carga Predial -> Matriz Cooperativa)  |
| POL14: Regional Frost Advisory Auto-Broadcast         (Pronóstico Clima -> Cooperativa)      |
| POL15: Intake Volume Readjustment On Field Sampling   (Muestreo Predial -> Acopio Agregado)  |
+-----------------------------------------------------------------------------------------------+
| TOTAL DE POLÍTICAS REACTIVAS FORMALIZADAS: 15 POLÍTICAS (POL01 - POL15)                      |
+-----------------------------------------------------------------------------------------------+
```

---

## 3. Catálogo Detallado de Políticas Reactivas (POL01 a POL15)

---

### **POL01: Auto-Activation On Payment Approved Policy**
* **Contexto Emisor:** `Subscription & Cooperative Membership`
* **Contexto Receptor:** `Subscription & Cooperative Membership`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `Subscription` $\rightarrow$ `Subscription`
* **US / BDD:** `US06` (Escenario 1)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `SubscriptionPaymentApproved` (`EV10`)
  * **IF:** `paymentGatewayStatus == 'SUCCESS' && transactionAmountMatchesQuota == true`
  * **THEN:** `ActivateSubscription` $\rightarrow$ emite `SubscriptionActivated` (`EV11`).
* **Lógica de Negocio Agronómica:** Cuando la pasarela de pagos notifica que el cargo anual de la licencia SaaS fue procesado con éxito, la plataforma habilita de forma automática la cuenta del productor con el cupo de hectáreas contratado, sin intervención manual de soporte.

---

### **POL02: Producer Affiliation On Cooperative Code Policy**
* **Contexto Emisor:** `Subscription & Cooperative Membership`
* **Contexto Receptor:** `Cooperative Operations & Territorial Intelligence`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `Subscription` $\rightarrow$ `Cooperative`
* **US / BDD:** `US07` (Escenario 1)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `CooperativeCodeRedeemed` (`EV13`)
  * **IF:** `codeStatus == 'VALID' && cooperativeQuotaAvailable == true`
  * **THEN:** `AffiliateCooperativeProducer` (obteniendo los datos de contacto desde `Profile`).
* **Lógica de Negocio Agronómica:** Al canjear un cupón corporativo, el productor obtiene su suscripción y, en el mismo instante, la política lo afilia formalmente a la cartera de socios de la cooperativa utilizando su identidad validada en `Profile`, haciéndolo visible para el gestor técnico en la matriz sectorial.

---

### **POL03: Member Contact Synchronization On Profile Updated Policy**
* **Contexto Emisor:** `User Profiles`
* **Contexto Receptor:** `Cooperative Operations & Territorial Intelligence`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `Profile` $\rightarrow$ `Cooperative`
* **US / BDD:** `US03` (Escenario 1)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `ContactProfileUpdated` (`EV09`)
  * **IF:** `producerIsAffiliatedToCooperative == true`
  * **THEN:** `UpdateCooperativeMemberContact` $\rightarrow$ actualiza teléfono E.164 y nombres en el padrón de socios.
* **Lógica de Negocio Agronómica:** Cuando el productor socio de la cooperativa actualiza su número de teléfono o datos personales en la aplicación móvil, la política sincroniza de inmediato la base de datos de la cooperativa para garantizar que el canal de asistencia técnica y alertas continúe activo.

---

### **POL04: Critical Hydric Stress Alert Dispatcher Policy**
* **Contexto Emisor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Contexto Receptor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `TelemetrySeries` $\rightarrow$ `TelemetrySeries`
* **US / BDD:** `US18` (Escenario 1)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `HydricStressAlertTriggered` (`EV22`)
  * **IF:** `soilVolumetricWaterContent < 0.18` (humedad $<18\%$ a 30 cm de profundidad radicular)
  * **THEN:** `SurfaceAgroclimaticInAppAlert` (notificación in-app inmediata, persistida para consulta offline, sin dependencia de servidores push externos — RF-20).
* **Lógica de Negocio Agronómica:** En el suelo arenoso/franco-arenoso de La Yarada-Los Palos, el estrés hídrico durante cuajado produce aborto masivo. La política despacha una alerta in-app de emergencia con la recomendación inmediata de horas de riego de recarga.

---

### **POL05: Thermal Shock Flowering Protection Policy**
* **Contexto Emisor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Contexto Receptor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `TelemetrySeries` $\rightarrow$ `TelemetrySeries`
* **US / BDD:** `US18` (Escenario 2)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `ThermalThresholdAlertTriggered` (`EV23`)
  * **IF:** `airTemperature > 32.0°C && relativeHumidity < 20.0% && currentPhenologicalStage == 'Flowering'`
  * **THEN:** `SurfaceAgroclimaticInAppAlert` (alerta in-app de golpe de calor en floración, sin dependencia de servidores push externos — RF-20).
* **Lógica de Negocio Agronómica:** Las olas de calor seco en floración deshidratan el estigma e impiden la fecundación del olivo Criolla. La política avisa al productor para que active riegos cortos de refrescamiento microclimático.

---

### **POL06: Agroclimatic Alert Auto-Resolver Policy**
* **Contexto Emisor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Contexto Receptor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `TelemetrySeries` $\rightarrow$ `TelemetrySeries`
* **US / BDD:** `US18` (Escenario 3)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `AgroclimaticAlertResolved` (`EV24`)
  * **IF:** `soilVolumetricWaterContent >= 0.22 && activeIncidentExists == true`
  * **THEN:** `CloseActiveAgroclimaticIncident` (marcar incidente como normalizado en el historial).
* **Lógica de Negocio Agronómica:** Tras ejecutarse el turno de riego y estabilizarse el bulbo húmedo radicular por encima de capacidad de campo, el sistema normaliza el semáforo sin requerir que el agricultor cierre manualmente la alarma.

---

### **POL07: Auto-BBI Assessment On Plurianual Logs Policy**
* **Contexto Emisor:** `Phenology & Historical Bearing Analytics`
* **Contexto Receptor:** `Phenology & Historical Bearing Analytics`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `AgronomicReport` $\rightarrow$ `AgronomicReport`
* **US / BDD:** `US20` (Escenario 1)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `HistoricalHarvestsLogged` (`EV26`)
  * **IF:** `validConsecutiveCampaignsCount >= 3`
  * **THEN:** `AssessBiennialBearingIndex` $\rightarrow$ calcula y emite `BiennialBearingIndexAssessed` (`EV27`).
* **Lógica de Negocio Agronómica:** En cuanto el olivicultor completa el ingreso de al menos 3 campañas históricas consecutivas, la política dispara automáticamente el cálculo matemático del índice BBI de Hoblyn et al.:
  $$BBI = \frac{1}{n-1}\sum_{t=1}^{n-1}\frac{|Y_t - Y_{t+1}|}{Y_t + Y_{t+1}}$$
  determinando el grado de vecería del predio.

---

### **POL08: Floral Yield Readjustment On Winter Heat Policy**
* **Contexto Emisor:** `Phenology & Historical Bearing Analytics`
* **Contexto Receptor:** `Crop Load Regulation & Thinning Advisory`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `ChillAccumulationTracker` $\rightarrow$ `FruitThinningPrescription`
* **US / BDD:** `US23` (Escenario 1 y 2)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `WinterThermalAnomalyDetected` (`EV33`)
  * **IF:** `consecutiveDaysAbove24C >= 3 && currentMonth in ['May', 'Jun', 'Jul', 'Aug']`
  * **THEN:** `ReadjustPotentialFloralYield` $\rightarrow$ emite `PotentialFloralYieldReadjusted` (`EV34`).
* **Lógica de Negocio Agronómica:** Las temperaturas invernales $>24^\circ\text{C}$ destruyen los intermediarios térmicos del modelo de Erez (efecto Niño costero en Tacna). La política castiga automáticamente la proyección de inducción floral y recalibra la meta de carga esperada para la primavera.

---

### **POL09: Auto-Prescription On Sampling Quota Met Policy**
* **Contexto Emisor:** `Crop Load Regulation & Thinning Advisory`
* **Contexto Receptor:** `Crop Load Regulation & Thinning Advisory`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `FruitThinningPrescription` $\rightarrow$ `FruitThinningPrescription`
* **US / BDD:** `US25` (Escenario 1), `US26`, `US27`
* **Regla Reactiva Formal:**
  * **WHENEVER:** `SamplingRoundCompleted` (`EV37`)
  * **IF:** `evaluatedTreesCount >= 5 && isPitHardened == false`
  * **THEN:** `DetermineSustainableCropLoad` $\rightarrow$ ejecuta motor agronómico, emitiendo `SustainableCropLoadDetermined` (`EV39`) y `ThinningPrescribed` (`EV41`).
* **Lógica de Negocio Agronómica:** Cuando el muestreo de campo alcanza representatividad estadística mínima ($\ge 5$ árboles en la parcela), la política dispara el balance de carga sin demora, entregando al productor el porcentaje de fruta a aclarear antes de que venza la ventana útil.

---

### **POL10: Thinning Window Invalidation By Phenology Policy**
* **Contexto Emisor:** `Crop Load Regulation & Thinning Advisory`
* **Contexto Receptor:** `Crop Load Regulation & Thinning Advisory`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `FruitThinningPrescription` $\rightarrow$ `FruitThinningPrescription`
* **US / BDD:** `US27` (Escenario 3)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `ThinningWindowClosedByPitHardening` (`EV43`)
  * **IF:** `prescriptionStatus in ['PRESCRIBED', 'PENDING_EXECUTION']`
  * **THEN:** `ExpirePendingThinningPrescriptions` (marcar prescripción como expirada biológicamente).
* **Lógica de Negocio Agronómica:** Una vez que el endocarpio se lignifica (endurecimiento del hueso, típicamente en diciembre), la semilla ya sintetizó giberelinas que inhiben la inducción floral del año siguiente. Aclarear después de esta fecha solo genera costos de mano de obra sin beneficio mitigador; la política cierra y anula las órdenes pendientes.

---

### **POL11: Late Thinning Penalty Adjustment Policy**
* **Contexto Emisor:** `Crop Load Regulation & Thinning Advisory`
* **Contexto Receptor:** `Phenology & Historical Bearing Analytics`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `FruitThinningPrescription` $\rightarrow$ `AgronomicReport`
* **US / BDD:** `US28` (Escenario 2)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `LateThinningExecutionRecorded` (`EV45`)
  * **IF:** `executionDate > pitHardeningDate`
  * **THEN:** `RecalculateMitigationEfficiencyFactor` (aplicar factor de castigo a la proyección del BBI).
* **Lógica de Negocio Agronómica:** Si un productor aclara tarde, la política registra una penalización en el modelo de alternancia, advirtiendo al agricultor y al agrónomo que la eficacia para el retorno floral de la campaña venidera disminuyó en más del 70%.

---

### **POL12: Interannual Stabilization Tracking Policy**
* **Contexto Emisor:** `Harvest Settlement & Performance Reporting`
* **Contexto Receptor:** `Harvest Settlement & Performance Reporting`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `AgronomicReport` $\rightarrow$ `AgronomicReport`
* **US / BDD:** `US29` (Escenario 1 y 2)
* **Regla Reactiva Formal:**
  * **WHENEVER:** `CampaignHarvestSettled` (`EV46`)
  * **IF:** `historicalSeriesCount >= 3`
  * **THEN:** `EvaluateYieldStabilizationCurve` $\rightarrow$ emite `YieldStabilizationCurveEvaluated` (`EV47`).
* **Lógica de Negocio Agronómica:** Al cerrar la recolección anual (kilos entregados de aceituna verde y negra), la política actualiza la curva de estabilización plurianual, comparando la reducción de la amplitud veceril respecto a la campaña base preprescriptiva.

---

### **POL13: Sectorial Risk Aggregation On Overload Policy**
* **Contexto Emisor:** `Crop Load Regulation & Thinning Advisory`
* **Contexto Receptor:** `Cooperative Operations & Territorial Intelligence`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `FruitThinningPrescription` $\rightarrow$ `Cooperative`
* **US / BDD:** `US26` (Escenario 2), `US31`
* **Regla Reactiva Formal:**
  * **WHENEVER:** `OverloadRiskDetected` (`EV40`)
  * **IF:** `producerIsAffiliatedToCooperative == true`
  * **THEN:** `FlagSectorialRiskInCooperativeMatrix` $\rightarrow$ actualiza el semáforo a *Alerta Roja de Sobrecarga* para el sector predial.
* **Lógica de Negocio Agronómica:** Si una parcela individual entra en sobrecarga severa, la cooperativa debe conocerlo inmediatamente. La política suma este predio al conteo de riesgo sectorial, alertando al gestor técnico sobre la inminencia de un año OFF colectivo en ese valle.

---

### **POL14: Regional Frost Advisory Auto-Broadcast Policy**
* **Contexto Emisor:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Contexto Receptor:** `Cooperative Operations & Territorial Intelligence`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `TelemetrySeries` $\rightarrow$ `Cooperative`
* **US / BDD:** `US19`, `US31`
* **Regla Reactiva Formal:**
  * **WHENEVER:** `WeatherForecastIngested` (`EV25`)
  * **IF:** `minForecastTemperature <= 1.5°C && forecastHorizonHours <= 48`
  * **THEN:** `BroadcastRegionalFrostAdvisory` $\rightarrow$ despacha alerta zonal masiva a todos los olivicultores del sector vulnerable.
* **Lógica de Negocio Agronómica:** Las heladas radiativas de invierno en los valles interiores de Tacna (Magollo / Los Palos) pueden dañar brotes productivos. Si el pronóstico meteorológico detecta una caída crítica de temperatura, la política emite una alerta sectorial preventiva antes de que caiga la noche.

---

### **POL15: Intake Volume Readjustment On Field Sampling Policy**
* **Contexto Emisor:** `Crop Load Regulation & Thinning Advisory`
* **Contexto Receptor:** `Cooperative Operations & Territorial Intelligence`
* **Agregado Origen $\rightarrow$ Agregado Destino:** `FruitThinningPrescription` $\rightarrow$ `Cooperative`
* **US / BDD:** `US25`, `US32`
* **Regla Reactiva Formal:**
  * **WHENEVER:** `SamplingRoundCompleted` (`EV37`)
  * **IF:** `producerIsAffiliatedToCooperative == true`
  * **THEN:** `ProjectCooperativeIntakeVolume` $\rightarrow$ recalcula y emite `CooperativeIntakeVolumeProjected` (`EV50`).
* **Lógica de Negocio Agronómica:** Cada vez que un socio finaliza un muestreo estadísticamente válido, la política recalcula el volumen total de acopio esperado por la cooperativa, permitiendo a la planta procesadora ajustar contratos de venta y capacidad de salmuera con meses de anticipación.

---

## 4. Matriz de Trazabilidad: Evento Disparador $\rightarrow$ Política $\rightarrow$ Comando Destino

| ID Política | Nombre de la Política | Evento Disparador (`EVxx`) | Contexto Origen $\rightarrow$ Destino | Comando / Acción Ejecutada |
| :---: | :--- | :--- | :--- | :--- |
| **POL01** | *Auto-Activation On Payment Approved* | `EV10` (`SubscriptionPaymentApproved`) | Suscripciones $\rightarrow$ Suscripciones | `ActivateSubscription` (`EV11`) |
| **POL02** | *Producer Affiliation On Cooperative Code* | `EV13` (`CooperativeCodeRedeemed`) | Suscripciones $\rightarrow$ Cooperativa | `AffiliateCooperativeProducer` |
| **POL03** | *Member Contact Sync On Profile Updated* | `EV09` (`ContactProfileUpdated`) | Profiles $\rightarrow$ Cooperativa | `UpdateCooperativeMemberContact` |
| **POL04** | *Critical Hydric Stress Alert Dispatcher* | `EV22` (`HydricStressAlertTriggered`) | Telemetría $\rightarrow$ Telemetría | `SurfaceAgroclimaticInAppAlert` |
| **POL05** | *Thermal Shock Flowering Protection* | `EV23` (`ThermalThresholdAlertTriggered`) | Telemetría $\rightarrow$ Telemetría | `SurfaceAgroclimaticInAppAlert` |
| **POL06** | *Agroclimatic Alert Auto-Resolver* | `EV24` (`AgroclimaticAlertResolved`) | Telemetría $\rightarrow$ Telemetría | `CloseActiveAgroclimaticIncident` |
| **POL07** | *Auto-BBI Assessment On Plurianual Logs* | `EV26` (`HistoricalHarvestsLogged`) | Analítica Vecería $\rightarrow$ Analítica Vecería | `AssessBiennialBearingIndex` (`EV27`) |
| **POL08** | *Floral Yield Readjustment On Winter Heat* | `EV33` (`WinterThermalAnomalyDetected`) | Frío Erez $\rightarrow$ Regulación Carga | `ReadjustPotentialFloralYield` (`EV34`) |
| **POL09** | *Auto-Prescription On Sampling Quota Met* | `EV37` (`SamplingRoundCompleted`) | Muestreo Campo $\rightarrow$ Regulación Carga | `DetermineSustainableCropLoad` (`EV39`) |
| **POL10** | *Thinning Window Invalidation By Phenology* | `EV43` (`ThinningWindowClosedByPitHardening`)| Regulación Carga $\rightarrow$ Regulación Carga | `ExpirePendingThinningPrescriptions` |
| **POL11** | *Late Thinning Penalty Adjustment* | `EV45` (`LateThinningExecutionRecorded`) | Regulación Carga $\rightarrow$ Analítica Vecería | `RecalculateMitigationEfficiencyFactor` |
| **POL12** | *Interannual Stabilization Tracking* | `EV46` (`CampaignHarvestSettled`) | Cierre Cosecha $\rightarrow$ Cierre Cosecha | `EvaluateYieldStabilizationCurve` (`EV47`)|
| **POL13** | *Sectorial Risk Aggregation On Overload* | `EV40` (`OverloadRiskDetected`) | Regulación Carga $\rightarrow$ Cooperativa | `FlagSectorialRiskInCooperativeMatrix` |
| **POL14** | *Regional Frost Advisory Auto-Broadcast* | `EV25` (`WeatherForecastIngested`) | Telemetría $\rightarrow$ Cooperativa | `BroadcastRegionalFrostAdvisory` |
| **POL15** | *Intake Volume Readjustment On Sampling* | `EV37` (`SamplingRoundCompleted`) | Regulación Carga $\rightarrow$ Cooperativa | `ProjectCooperativeIntakeVolume` (`EV50`) |

---

## 5. Consideraciones de Cierre

Las 15 políticas reactivas formalizadas orquestan la automatización asíncrona del ecosistema Viora. Al desacoplar la emisión de eventos de la ejecución de comandos receptores, se garantiza que las alertas fenológicas, la sincronización de contactos de socios, la protección frente al estrés hídrico y las proyecciones cooperativas se actualicen dinámicamente preservando la autonomía y consistencia de cada contexto delimitado.
