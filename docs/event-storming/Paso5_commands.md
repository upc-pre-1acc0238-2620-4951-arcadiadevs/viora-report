# EventStorming — Paso 5: Definición de Comandos y Actores (Intenciones de Acción)

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Comandos (Post-its Azules, `#3498DB`) y Actores / Disparadores (Post-its Amarillos Pequeños, `#F1C40F`)  

---

## 1. Introducción y Marco de Modelado Transaccional

En la quinta etapa metodológica de EventStorming, se procede a modelar las intenciones de cambio de estado en el sistema. Los **Comandos** representan solicitudes explícitas de acción formuladas en modo imperativo (*PascalCase*), las cuales son dirigidas hacia un agregado del dominio para su validación transaccional y procesamiento de invariantes.

Para asegurar rigor formal bajo principios de Domain-Driven Design (DDD) y el patrón CQRS:

1. **Intención Imperativa vs. Hecho Consumado:** Cada comando representa una intención de mutación (e.g., `RegisterUserAccount`, `DelimitPlot`, `DetermineSustainableCropLoad`), mientras que el evento resultante plasma el hecho completado tras verificar las reglas de negocio.
2. **Bifurcaciones de Resultado (Éxito / Fallo de Negocio):** Un comando como `AuthenticateUser` produce `UserAuthenticated` (`EV02`) ante credenciales válidas, o `UserAuthenticationFailed` (`EV03`) ante discrepancias de seguridad. El fallo de negocio es un hecho del dominio, no un comando en sí mismo.
3. **Evaluación Autónoma de Invariantes y Alertas:** Al emitir `DetermineSustainableCropLoad`, el agregado correspondiente evalúa los umbrales fisiológicos. Si la relación supera los límites sostenibles, el agregado emite automáticamente `OverloadRiskDetected` (`EV40`) sin requerir un comando manual adicional.
4. **Procesos Algorítmicos Asíncronos:** El comando programado `ComputeDailyChillAccumulation` ejecuta el modelo dinámico y, ante anomalías térmicas invernales (>24°C durante más de 3 días consecutivos), dispara la alerta `WinterThermalAnomalyDetected` (`EV33`).

### 1.3 Tipos de Actores e Iniciadores (Trigger Origin)
1. **`Producer` (Actor Humano):** Olivicultor de Tacna que gestiona sus fundos, muestreos en campo y labores de aclareo.
2. **`TechnicalManager` (Actor Humano):** Ingeniero agrónomo o directivo de la cooperativa que coordina el padrón, la matriz de riesgo y las alertas sectoriales.
3. **`External Gateway` (Sistema Externo):** Plataformas de terceros que inician transacciones en Viora mediante Webhooks (e.g. Pasarela de Pagos Mercado Pago Checkout Pro).
4. **`System Scheduler` (Tiempo / Daemon):** Temporizadores automatizados del sistema que ejecutan ingestas climáticas y cómputos matemáticos sin intervención humana.

---

## 2. Resumen Consolidado de Comandos por Bounded Context

```
+-----------------------------------------------------------------------------------------+
|                         RESUMEN DE COMANDOS POR BOUNDED CONTEXT                         |
+-----------------------------------------------------------------------------------------+
| 1. Identity & Access Management (IAM):                06 Comandos (CMD01 - CMD06)       |
| 2. User Profiles:                                     02 Comandos (CMD07 - CMD08)       |
| 3. Subscription & Cooperative Membership:             04 Comandos (CMD09-CMD11, CMD33)  |
| 4. Olive Orchard & Plot Management:                   03 Comandos (CMD12 - CMD14)       |
| 5. Agroclimatic Telemetry & Sensor Monitoring:        05 Comandos (CMD15 - CMD19)       |
| 6. Phenology & Historical Bearing Analytics:          06 Comandos (CMD20-CMD23, 34-35)  |
| 7. Crop Load Regulation & Thinning Advisory (Core):   05 Comandos (CMD24 - CMD28)       |
| 8. Harvest Settlement & Performance Reporting:        02 Comandos (CMD29 - CMD30)       |
| 9. Cooperative Operations & Territorial Intelligence: 02 Comandos (CMD31 - CMD32)       |
+-----------------------------------------------------------------------------------------+
| TOTAL DE COMANDOS DEL SISTEMA (POST-ITS AZULES):      35 COMANDOS                       |
+-----------------------------------------------------------------------------------------+
```

> **Nota sobre los rangos de identificadores.** Los rangos correlativos del cuadro corresponden a la
> **asignación original del taller de EventStorming**, donde cada bloque se dimensionó exacto a su
> contenido y no dejó holgura. Las **incorporaciones posteriores** derivadas de decisiones de diseño se
> anexan al final del catálogo conservando su pertenencia real al Bounded Context y al Timeline que les
> corresponde, sin renumerar los identificadores ya emitidos. Por eso el Contexto 3 figura como
> `CMD09-CMD11, CMD33`: `CMD33` es una incorporación posterior de ese mismo contexto, ubicada en el
> Timeline 2 (Suscripción).

---

## 3. Catálogo Detallado de Comandos (CMD01 a CMD35)

### Contexto 1: Identity & Access Management (IAM)

#### **CMD01: RegisterUserAccount**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US01`
* **Propósito de Negocio:** Dar de alta a un nuevo usuario en la plataforma con correo electrónico, contraseña cifrada con Argon2id y rol de trabajo asignado.
* **Payload Clave:** `email`, `rawPassword`, `targetRole`.
* **Invariantes Clave:** Correo no debe existir previamente; contraseña debe cumplir entropía mínima (8 caracteres, combinación alfanumérica).
* **Evento(s) Resultante(s):**
  * `EV01` (`UserAccountRegistered`) en caso de éxito.

#### **CMD02: AuthenticateUser**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US02`
* **Propósito de Negocio:** Validar la identidad del usuario contra su credencial cifrada y abrir sesión operativa emitiendo el par de tokens JWT (Access Token y Refresh Token).
* **Payload Clave:** `email`, `passwordPlain`, `ipAddress`, `userAgent`.
* **Invariantes Clave:** La cuenta debe estar activa; verificación de hash segura; control de tasa de intentos fallidos.
* **Evento(s) Resultante(s):**
  * `EV02` (`UserAuthenticated`) si las credenciales son válidas.
  * `EV03` (`UserAuthenticationFailed`) si la contraseña es errónea o el usuario no existe.

#### **CMD03: RefreshUserSession**
* **Iniciador / Actor:** `Producer` / `TechnicalManager` (Cliente Web/Móvil en segundo plano)
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US02` (Escenario 3)
* **Propósito de Negocio:** Renovar el Access Token caducado utilizando un Refresh Token válido sin interrumpir la experiencia del productor en campo.
* **Payload Clave:** `refreshTokenString`.
* **Invariantes Clave:** Refresh Token no expirado, no revocado previamente y perteneciente al sujeto original.
* **Evento(s) Resultante(s):**
  * `EV04` (`UserSessionRefreshed`).

#### **CMD04: ChangeUserPassword**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US04`
* **Propósito de Negocio:** Modificar la clave de acceso de forma voluntaria desde la configuración de la cuenta autenticada.
* **Payload Clave:** `userId`, `currentPasswordPlain`, `newPasswordPlain`.
* **Invariantes Clave:** La clave previa debe coincidir con el hash actual; la nueva clave debe diferir de la anterior y satisfacer requisitos de complejidad.
* **Evento(s) Resultante(s):**
  * `EV05` (`PasswordChanged`).

#### **CMD05: RequestPasswordReset**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US05` (Escenario 1)
* **Propósito de Negocio:** Solicitar un enlace de recuperación de contraseña tras olvido de credenciales.
* **Payload Clave:** `email`.
* **Invariantes Clave:** Generar token criptográfico efímero con vigencia de 15 minutos si el correo existe.
* **Evento(s) Resultante(s):**
  * `EV06` (`PasswordResetRequested`).

#### **CMD06: ResetUserPassword**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `UserAccount`
* **US / BDD:** `US05` (Escenario 2)
* **Propósito de Negocio:** Consumir el token de recuperación recibido por correo y registrar la nueva contraseña de acceso.
* **Payload Clave:** `resetTokenString`, `newPasswordPlain`.
* **Invariantes Clave:** Token vigente, firma criptográfica válida y token de un solo uso (invalidado de inmediato tras consumo).
* **Evento(s) Resultante(s):**
  * `EV07` (`PasswordResetCompleted`).

---

### Contexto 2: User Profiles

#### **CMD07: CreateProfile**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `Profile`
* **US / BDD:** `US01` (Onboarding de Identidad)
* **Propósito de Negocio:** Formalizar el perfil de contacto del agricultor con nombres completos, país de residencia y número telefónico móvil validado bajo el estándar internacional E.164 mediante `libphonenumber`.
* **Payload Clave:** `fullName`, `country`, `phoneNumber` (E.164).
* **Invariantes Clave:** `fullName` no vacío; número telefónico válido y de longitud correcta para el país seleccionado bajo la norma E.164.
* **Evento(s) Resultante(s):**
  * `EV08` (`ProfileCreated`).

#### **CMD08: UpdateContactProfile**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `Profile`
* **US / BDD:** `US03`
* **Propósito de Negocio:** Modificar los datos personales o el número telefónico de contacto en la configuración del perfil desde ajustes.
* **Payload Clave:** `fullName`, `country`, `newPhoneNumber` (E.164).
* **Invariantes Clave:** Validación E.164 del nuevo teléfono; no permitir campos requeridos en blanco.
* **Evento(s) Resultante(s):**
  * `EV09` (`ContactProfileUpdated`).

---

### Contexto 3: Subscription & Cooperative Membership

#### **CMD09: ProcessPaymentConfirmation**
* **Iniciador / Actor:** `External Gateway` (Webhook Pasarela de Pagos Mercado Pago Checkout Pro)
* **Agregado Destino:** `Subscription`
* **US / BDD:** `US06`
* **Propósito de Negocio:** Procesar la respuesta asíncrona de cobro de la membresía anual del Plan Productor.
* **Payload Clave:** `transactionId`, `amount`, `gatewayStatus`, `producerId`, `hectaresQuota`.
* **Invariantes Clave:** Firma de webhook criptográficamente válida (anti-tampering); idempotencia por `transactionId`.
* **Evento(s) Resultante(s):**
  * `EV10` (`SubscriptionPaymentApproved`) y en cascada `EV11` (`SubscriptionActivated`) en caso de cobro exitoso.
  * `EV12` (`SubscriptionPaymentFailed`) si la tarjeta fue rechazada o carecía de fondos.

#### **CMD10: RedeemCooperativeCode**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `Subscription`
* **US / BDD:** `US07`
* **Propósito de Negocio:** Canjear un código de patrocinio entregado por la cooperativa para activar la suscripción sin pago individual y vincularse a la organización.
* **Payload Clave:** `producerId`, `invitationCode`.
* **Invariantes Clave:** Código existente, en estado `AVAILABLE` y dentro de su fecha de vigencia. El cupo de plazas y superficie ya fue comprometido al emitirse el código, de modo que el canje no vuelve a descontarlo.
* **Evento(s) Resultante(s):**
  * `EV13` (`CooperativeCodeRedeemed`) y activación de membresía.

> **Destino único.** Un comando se dirige siempre a **un solo** agregado, porque su procesamiento ocurre
> dentro de un único límite transaccional. `CMD10` se dirige exclusivamente a `Subscription`: el canje
> activa la suscripción del productor. La afiliación al padrón de la cooperativa **no** forma parte de
> esta transacción, sino que ocurre por reacción al evento `EV13` a través de `POL02`, que es
> precisamente lo que ese contrato de política ya declara.

#### **CMD11: GenerateInvitationCodesBatch**
* **Iniciador / Actor:** `TechnicalManager`
* **Agregado Destino:** `InvitationCodeBatch`
* **US / BDD:** `US08`
* **Propósito de Negocio:** Generar un lote de códigos alfanuméricos únicos para distribuir entre los socios adscritos al convenio.
* **Payload Clave:** `licenseId`, `cooperativeId`, `batchSize`, `hectaresQuotaPerCode`, `expirationDate`.
* **Invariantes Clave:** La emisión se valida contra los acumuladores de la licencia corporativa (`AGG11`): la cantidad solicitada no puede exceder las plazas disponibles (`issuedSeats + N <= seatLimit`) ni la superficie disponible (`issuedArea + suma(cuotas) <= contractedArea`), y ninguna cuota individual puede superar `maxQuotaPerCode`. Ambos acumuladores se incrementan **al emitir**.
* **Evento(s) Resultante(s):**
  * `EV14` (`InvitationCodesBatchGenerated`).

#### **CMD33: ShortenInvitationCodeExpiry**
* **Iniciador / Actor:** `TechnicalManager`
* **Agregado Destino:** `InvitationCodeBatch`
* **US / BDD:** `US08`
* **Propósito de Negocio:** Cancelar anticipadamente un código de invitación aún no canjeado, acortando su fecha de vigencia para que caduque y devuelva la plaza y la superficie comprometidas al cupo de la licencia corporativa.
* **Payload Clave:** `batchId`, `codeId`, `newExpiresAt`.
* **Invariantes Clave:** La nueva fecha solo puede **adelantar** la vigencia, nunca extenderla; el código debe encontrarse en estado `AVAILABLE`; la operación es idempotente frente a reintentos.
* **Evento(s) Resultante(s):**
  * `EV52` (`InvitationCodeExpired`), emitido de forma inmediata al alcanzarse la nueva fecha de caducidad, con la consiguiente liberación de cupo y superficie.

> **Incorporación posterior.** `CMD33` no proviene de la asignación original del taller: se incorpora con
> numeración al final, pero pertenece a este Bounded Context y al **Timeline 2 (Suscripción)**. Reemplaza
> a la revocación explícita de códigos: en lugar de introducir un estado y un camino de liberación
> propios, reutiliza el estado `EXPIRED` y el evento `EV52` que el modelo ya necesita para la caducidad
> ordinaria. La liberación resultante es inmediata y no queda diferida a un barrido programado.

---

### Contexto 4: Olive Orchard & Plot Management

#### **CMD12: DelimitPlot**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `Plot`
* **US / BDD:** `US09`
* **Propósito de Negocio:** Registrar una nueva unidad predial delimitando su polígono cerrado en el mapa satelital e ingresando variedad y densidad arbórea.
* **Payload Clave:** `producerId`, `plotName`, `geojsonCoordinates`, `variety` (Criolla/Sevillana), `plantingDensity`, `netHectares`.
* **Invariantes Clave:** Polígono cerrado geométricamente válido (sin auto-intersecciones); área neta calculada estrictamente positiva (>0.1 ha); densidad coherente.
* **Evento(s) Resultante(s):**
  * `EV15` (`PlotDelimited`).

#### **CMD13: UpdatePlotBoundaries**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `Plot`
* **US / BDD:** `US10`
* **Propósito de Negocio:** Ajustar los vértices cartográficos del polígono predial tras mediciones GPS más exactas o replanteo de linderos.
* **Payload Clave:** `plotId`, `newGeojsonCoordinates`, `updatedTreeCount`.
* **Invariantes Clave:** Conservación del estado activo; recálculo dinámico de área y densidad poblacional arbórea.
* **Evento(s) Resultante(s):**
  * `EV16` (`PlotBoundariesUpdated`).

#### **CMD14: RemovePlot**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `Plot`
* **US / BDD:** `US11`
* **Propósito de Negocio:** Dar de baja una parcela (eliminación lógica o soft-delete) manteniendo el resguardo de las series históricas de cosecha y telemetría.
* **Payload Clave:** `plotId`, `deletionReason`.
* **Invariantes Clave:** *(reclasificada)* La condición de no poseer prescripciones de aclareo activas en ventana pendiente de ejecución abarca dos agregados alojados en bounded contexts distintos, por lo que no puede sostenerse como invariante de agregado: las invariantes se verifican dentro de un único límite transaccional. Se formaliza como `POL16` en `Paso6_policies.md`, con compensación en `Crop Load Regulation & Thinning Advisory`. La baja procede sin consultar a ese contexto.
* **Evento(s) Resultante(s):**
  * `EV17` (`PlotRemoved`).

---

### Contexto 5: Agroclimatic Telemetry & Sensor Monitoring

#### **CMD15: LinkVirtualSensorNode**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `VirtualSensorNode`
* **US / BDD:** `US13`
* **Propósito de Negocio:** Asociar un dispositivo sensor virtual a una parcela específica para comenzar la ingesta de telemetría agroclimática.
* **Payload Clave:** `plotId`, `sensorMacOrDeviceId`, `latitude`, `longitude`.
* **Invariantes Clave:** Las coordenadas del sensor deben ubicarse dentro de los límites del polígono de la parcela.
* **Evento(s) Resultante(s):**
  * `EV18` (`VirtualSensorNodeLinked`).

#### **CMD16: CalibrateVirtualSensorNode**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `VirtualSensorNode`
* **US / BDD:** `US15`
* **Propósito de Negocio:** Ajustar los coeficientes de lectura según la profundidad de la sonda edáfica (30 cm / 60 cm) y el tipo de suelo (arenoso / franco).
* **Payload Clave:** `sensorNodeId`, `depthCm`, `soilTextureType`, `calibrationMultiplier`.
* **Invariantes Clave:** Profundidad admitida (30 o 60 cm); multiplicador de calibración dentro de rangos agronómicamente aceptables.
* **Evento(s) Resultante(s):**
  * `EV19` (`VirtualSensorNodeCalibrated`).

#### **CMD17: UnlinkVirtualSensorNode**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `VirtualSensorNode`
* **US / BDD:** `US16`
* **Propósito de Negocio:** Desvincular un sensor virtual de la parcela por mantenimiento, reubicación o reemplazo.
* **Payload Clave:** `sensorNodeId`, `plotId`.
* **Invariantes Clave:** El nodo debe pertenecer a la parcela indicada; las series temporales de datos permanecen intactas en el sistema.
* **Evento(s) Resultante(s):**
  * `EV20` (`VirtualSensorNodeUnlinked`).

#### **CMD18: IngestHourlyTelemetry**
* **Iniciador / Actor:** `System Scheduler` / Gateway IoT
* **Agregado Destino:** `TelemetrySeries`
* **US / BDD:** `US17`, `US18`
* **Propósito de Negocio:** Ingestar periódicamente las lecturas horarias de temperatura ambiente, humedad relativa y contenido volumétrico de agua en suelo ($\theta$).
* **Payload Clave:** `sensorNodeId`, `timestamp`, `soilMoisture30cm`, `soilMoisture60cm`, `airTemperature`, `relativeHumidity`.
* **Invariantes Clave:** Detección automática de estrés hídrico ($\theta < 18\%$) o estrés térmico (>32°C con RH <20% en floración); resolución automática de alerta si $\theta \ge 22\%$.
* **Evento(s) Resultante(s):**
  * `EV21` (`TelemetryDataIngested`).
  * `EV22` (`HydricStressAlertTriggered`) si la humedad cae bajo el punto de recarga.
  * `EV23` (`ThermalThresholdAlertTriggered`) si la temperatura supera el umbral crítico.
  * `EV24` (`AgroclimaticAlertResolved`) si los valores retornan a la zona de confort tras el riego.

#### **CMD19: IngestWeatherForecast**
* **Iniciador / Actor:** `System Scheduler` (Servicio de Clima SENAMHI / OpenWeather)
* **Agregado Destino:** `TelemetrySeries`
* **US / BDD:** `US19`
* **Propósito de Negocio:** Actualizar la proyección meteorológica a 7 días (temperaturas máximas, mínimas y probabilidad de lluvia) para prever heladas o golpes de calor.
* **Payload Clave:** `plotId`, `forecastTimestamp`, `dailyForecastSeries` (7 días).
* **Invariantes Clave:** Serie continua de 7 días; validación de coordenadas correspondientes al valle de Tacna.
* **Evento(s) Resultante(s):**
  * `EV25` (`WeatherForecastIngested`).

---

### Contexto 6: Phenology & Historical Bearing Analytics

#### **CMD20: LogHistoricalHarvests**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US20`
* **Propósito de Negocio:** Registrar el historial plurianual de cosechas (rendimiento en kg/ha y clasificación On/Off) de las campañas pasadas para calibrar el patrón de alternancia.
* **Payload Clave:** `plotId`, `harvestRecords` (año, rendimientoKgHa, calificaciónCampaña).
* **Invariantes Clave:** Mínimo de 3 campañas consecutivas para computar el Índice de Vecería de Hoblyn et al. ($BBI$); años no duplicados.
* **Evento(s) Resultante(s):**
  * `EV26` (`HistoricalHarvestsLogged`).
  * `EV27` (`BiennialBearingIndexAssessed`) si se ingresan $\ge 3$ campañas válidas.
  * `EV28` (`HistoricalDataInsufficiencyDetected`) si se registran $< 3$ campañas, impidiendo el cálculo formal de BBI.

#### **CMD21: RectifyHistoricalHarvest**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US21` (Escenario 1)
* **Propósito de Negocio:** Corregir el tonelaje registrado de una campaña histórica tras detectar un error en las actas de pesaje del molino o canchón.
* **Payload Clave:** `plotId`, `campaignYear`, `rectifiedYieldKgHa`.
* **Invariantes Clave:** El año debe existir en la serie histórica; recálculo automático inmediato de la serie BBI.
* **Evento(s) Resultante(s):**
  * `EV29` (`HistoricalHarvestRectified`).

#### **CMD22: DeleteHistoricalHarvest**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US21` (Escenario 2)
* **Propósito de Negocio:** Eliminar un registro de cosecha erróneo o duplicado del historial de la parcela.
* **Payload Clave:** `plotId`, `campaignYear`.
* **Invariantes Clave:** Eliminación segura; aviso de insuficiencia si los registros remanentes caen por debajo de 3 campañas.
* **Evento(s) Resultante(s):**
  * `EV30` (`HistoricalHarvestDeleted`).

#### **CMD23: ComputeDailyChillAccumulation**
* **Iniciador / Actor:** `System Scheduler` (Proceso nocturno diario)
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US22`, `US23`
* **Propósito de Negocio:** Ejecutar el algoritmo de Porciones de Frío (Dynamic Model de Erez et al.) procesando las curvas horarias de temperatura invernal (Mayo-Agosto en Tacna).
* **Payload Clave:** `plotId`, `date`, `hourlyTemperatureArray` (24 horas).
* **Invariantes Clave:** Acumulación de porciones cuando la temperatura fluctúa entre 2°C y 12°C; detección de destrucción de intermediarios si la temperatura diurna supera los 24°C; cumplimiento de requerimiento varietal (25-30 porciones).
* **Evento(s) Resultante(s):**
  * `EV31` (`WinterChillPortionsAccumulated`).
  * `EV32` (`ColdRequirementFulfilled`) al alcanzar el umbral varietal.
  * `EV33` (`WinterThermalAnomalyDetected`) si se detecta calor anómalo invernal (>24°C por >3 días).
  * `EV34` (`PotentialFloralYieldReadjusted`) reajustando la proyección de cuajado ante el déficit de frío.

#### **CMD34: AccumulatePostAnthesisThermalTime**
* **Iniciador / Actor:** `System Scheduler` (tarea programada de acumulación térmica post-antesis)
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US26`
* **Propósito de Negocio:** Acumular diariamente la integral térmica post-antesis (grados-día base $10^\circ\text{C}$) hasta alcanzar el umbral varietal de $680.0^\circ\text{C}\cdot\text{día}$ que confirma el endurecimiento del endocarpio y sella la fecha fisiológica límite de aclareo.
* **Payload Clave:** `plotId`, `date`, `dailyMeanTemperature`.
* **Invariantes Clave:** Umbral de $680.0^\circ\text{C}\cdot\text{día}$ con $T_{base}=10^\circ\text{C}$; transición irrevocable una vez alcanzado el estadio BBCH 75.
* **Evento(s) Resultante(s):**
  * `EV53` (`PitHardeningStageReached`) al alcanzar el umbral térmico.

#### **CMD35: RecordPhenologicalObservation**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `ChillAccumulationTracker`
* **US / BDD:** `US26`
* **Propósito de Negocio:** Registrar en campo la observación fenológica directa del estadio BBCH que confirma el endurecimiento del endocarpio, como vía complementaria al cómputo automático de la integral térmica post-antesis.
* **Payload Clave:** `plotId`, `observationDate`, `bbchStage`, `observerId`.
* **Invariantes Clave:** Estadio BBCH válido y coherente con la ventana fenológica vigente de la parcela.
* **Evento(s) Resultante(s):**
  * `EV53` (`PitHardeningStageReached`) al confirmarse el estadio BBCH 75.

> **Incorporación posterior.** `CMD34` y `CMD35` no provienen de la asignación original del taller: se
> incorporan con numeración al final, pero pertenecen a este Bounded Context y al **Timeline 6 (cuajado y
> aclareo, cierre biológico por lignificación)**. Ambos convergen en el mismo evento `EV53`: `CMD34`
> mediante el cómputo automatizado de la integral térmica, y `CMD35` mediante la constatación manual en
> campo del estadio fenológico.

---

### Contexto 7: Crop Load Regulation & Thinning Advisory (Core Domain)

#### **CMD24: RecordInFieldTreeSampling**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `FruitThinningPrescription`
* **US / BDD:** `US24` (Escenario 1)
* **Propósito de Negocio:** Registrar el conteo de inflorescencias, brotes mixtos y frutos cuajados en un árbol individual directamente en el campo.
* **Payload Clave:** `plotId`, `treeTagNumber`, `shootCount`, `fruitCount`, `diameterMm`, `samplingDate`.
* **Invariantes Clave:** Conteo positivo; relación fruto/brote agronómicamente admisible; asociación al lote muestral activo.
* **Evento(s) Resultante(s):**
  * `EV35` (`TreeFruitSetSampledInField`).

#### **CMD25: IngestFieldSamplingsBatch**
* **Iniciador / Actor:** `Producer` (Cliente Móvil al sincronizar lote de campo)
* **Agregado Destino:** `FruitThinningPrescription`
* **US / BDD:** `US24` (Escenario 2), `US25`
* **Propósito de Negocio:** Integrar formalmente el lote de árboles muestreados en la parcela y verificar si se cumple la representatividad estadística mínima.
* **Payload Clave:** `plotId`, `samplingBatchArray`.
* **Invariantes Clave:** Mínimo de 5 árboles evaluados por sector homogéneo para otorgar validez estadística a la recomendación de aclareo.
* **Evento(s) Resultante(s):**
  * `EV36` (`FieldSamplingsIngested`).
  * `EV37` (`SamplingRoundCompleted`) si se cumple la cuota $\ge 5$ árboles.
  * `EV38` (`SamplingRepresentativenessDeficientDetected`) si se presentan $< 5$ árboles evaluados.

#### **CMD26: DetermineSustainableCropLoad**
* **Iniciador / Actor:** `System Scheduler` / `Producer`
* **Agregado Destino:** `FruitThinningPrescription`
* **US / BDD:** `US26`, `US27`
* **Propósito de Negocio:** Ejecutar el motor agronómico de cálculo de carga admisible (combinando frío acumulado, densidad muestreada y BBI histórico) y emitir la prescripción formal de aclareo.
* **Payload Clave:** `plotId`, `samplingRoundId`, `pitHardeningStatus`.
* **Invariantes Clave:** Determinar porcentaje exacto de fruta a remover ($0\%$ a $40\%$); definir ventana biológica de ejecución (antes de lignificación del endocarpio).
* **Evento(s) Resultante(s):**
  * `EV39` (`SustainableCropLoadDetermined`).
  * `EV40` (`OverloadRiskDetected`) si la densidad frutal supera la capacidad de sustento del árbol.
  * `EV41` (`ThinningPrescribed`) si se prescribe aclareo $>0\%$.
  * `EV42` (`ThinningDeclaredUnnecessary`) si la carga se encuentra en balance natural ($0\%$).

#### **CMD27: CloseThinningWindowByPhenology**
* **Iniciador / Actor:** `System Scheduler` / Sensor de Grados-Día Fenológicos
* **Agregado Destino:** `FruitThinningPrescription`
* **US / BDD:** `US27` (Escenario 3)
* **Propósito de Negocio:** Cerrar automáticamente la ventana biológica de aclareo al detectarse el endurecimiento definitivo del carozo (lignificación del endocarpio), momento en el cual el aclareo ya no induce retorno floral.
* **Payload Clave:** `plotId`, `pitHardeningDate`.
* **Invariantes Clave:** Transición irrevocable del estado de la prescripción a *Cerrada por Fenología*.
* **Evento(s) Resultante(s):**
  * `EV43` (`ThinningWindowClosedByPitHardening`).

#### **CMD28: ConfirmThinningExecution**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `FruitThinningPrescription`
* **US / BDD:** `US28`
* **Propósito de Negocio:** Declarar la finalización de la labor de aclareo en campo indicando fecha real, cuadrilla empleada y porcentaje de frutos removidos.
* **Payload Clave:** `prescriptionId`, `executionDate`, `actualThinningPercentage`, `laborersCount`.
* **Invariantes Clave:** Verificación contra la fecha de cierre por carozo; recálculo de carga frutal remanente.
* **Evento(s) Resultante(s):**
  * `EV44` (`ThinningExecutionConfirmed`) si se ejecutó dentro de la ventana óptima.
  * `EV45` (`LateThinningExecutionRecorded`) si se efectuó tardíamente, advirtiendo menor efectividad para inducir floración en el siguiente año.

---

### Contexto 8: Harvest Settlement & Performance Reporting

#### **CMD29: SettleCampaignHarvest**
* **Iniciador / Actor:** `Producer`
* **Agregado Destino:** `AgronomicReport`
* **US / BDD:** `US29`
* **Propósito de Negocio:** Asentar los resultados definitivos de cosecha recolectada (kilos de aceituna verde y negra) al finalizar la campaña agrícola, recalculando el balance interanual.
* **Payload Clave:** `plotId`, `campaignYear`, `totalGreenKg`, `totalBlackKg`, `settlementDate`.
* **Invariantes Clave:** Cierre de campaña productiva; actualización de la curva de estabilización interanual frente al BBI base.
* **Evento(s) Resultante(s):**
  * `EV46` (`CampaignHarvestSettled`).
  * `EV47` (`YieldStabilizationCurveEvaluated`).

#### **CMD30: GenerateAgronomicDossier**
* **Iniciador / Actor:** `Producer` / `TechnicalManager`
* **Agregado Destino:** `AgronomicReport`
* **US / BDD:** `US30`
* **Propósito de Negocio:** Compilar y certificar el expediente agronómico digital completo de la parcela (linderos, frío invernal, muestreos, cumplimiento de aclareo y rendimientos) para trámites de crédito o certificación de cooperativa.
* **Payload Clave:** `plotId`, `campaignYear`, `requestingUserId`.
* **Invariantes Clave:** Consolidar exclusivamente datos firmados y validados del historial predial.
* **Evento(s) Resultante(s):**
  * `EV48` (`AgronomicDossierGenerated`).

---

### Contexto 9: Cooperative Operations & Territorial Intelligence

#### **CMD31: EvaluateCooperativeRiskMatrix**
* **Iniciador / Actor:** `System Scheduler` / `TechnicalManager`
* **Agregado Destino:** `Cooperative`
* **US / BDD:** `US31`
* **Propósito de Negocio:** Evaluar y consolidar la matriz sectorial de riesgo fenológico (verde, amarillo, rojo) agregando la situación de frío, estrés hídrico y sobrecarga de todas las parcelas asociadas.
* **Payload Clave:** `cooperativeId`, `evaluationDate`.
* **Invariantes Clave:** Agregación estadística anónima por sector del valle de Tacna; ponderación por hectáreas declaradas.
* **Evento(s) Resultante(s):**
  * `EV49` (`CooperativeRiskMatrixEvaluated`).

#### **CMD32: ProjectCooperativeIntakeVolume**
* **Iniciador / Actor:** `TechnicalManager` / `System Scheduler`
* **Agregado Destino:** `Cooperative`
* **US / BDD:** `US32`
* **Propósito de Negocio:** Calcular la estimación temprana del volumen consolidado de acopio (toneladas de aceituna de mesa y para aceite) para planificar la logística de procesamiento de la cooperativa.
* **Payload Clave:** `cooperativeId`, `forecastHarvestYear`.
* **Invariantes Clave:** Si menos del 50% de los socios ha completado muestreos representativos, emitir una advertencia explícita de cobertura insuficiente de datos.
* **Evento(s) Resultante(s):**
  * `EV50` (`CooperativeIntakeVolumeProjected`).
  * `EV51` (`LowSamplingCoverageWarnedForIntake`) si la representatividad muestral del padrón es inferior a la cuota crítica.

---

## 4. Matriz de Trazabilidad Comandos $\rightarrow$ Domain Events (EV01 - EV54)

| ID Comando | Comando Imperativo (PascalCase) | Actor / Iniciador | Agregado Destino | Domain Event(s) Resultante(s) |
| :---: | :--- | :--- | :--- | :--- |
| **CMD01** | `RegisterUserAccount` | `Producer` / `TechnicalManager` | `UserAccount` | `EV01` |
| **CMD02** | `AuthenticateUser` | `Producer` / `TechnicalManager` | `UserAccount` | `EV02`, `EV03` |
| **CMD03** | `RefreshUserSession` | `Producer` / `TechnicalManager` | `UserAccount` | `EV04` |
| **CMD04** | `ChangeUserPassword` | `Producer` / `TechnicalManager` | `UserAccount` | `EV05` |
| **CMD05** | `RequestPasswordReset` | `Producer` / `TechnicalManager` | `UserAccount` | `EV06` |
| **CMD06** | `ResetUserPassword` | `Producer` / `TechnicalManager` | `UserAccount` | `EV07` |
| **CMD07** | `CreateProfile` | `Producer` / `TechnicalManager` | `Profile` | `EV08` |
| **CMD08** | `UpdateContactProfile` | `Producer` / `TechnicalManager` | `Profile` | `EV09` |
| **CMD09** | `ProcessPaymentConfirmation` | `External Gateway` | `Subscription` | `EV10`, `EV11`, `EV12` |
| **CMD10** | `RedeemCooperativeCode` | `Producer` | `Subscription` | `EV13` |
| **CMD11** | `GenerateInvitationCodesBatch` | `TechnicalManager` | `InvitationCodeBatch` | `EV14` |
| **CMD12** | `DelimitPlot` | `Producer` | `Plot` | `EV15` |
| **CMD13** | `UpdatePlotBoundaries` | `Producer` | `Plot` | `EV16` |
| **CMD14** | `RemovePlot` | `Producer` | `Plot` | `EV17` |
| **CMD15** | `LinkVirtualSensorNode` | `Producer` | `VirtualSensorNode` | `EV18` |
| **CMD16** | `CalibrateVirtualSensorNode` | `Producer` | `VirtualSensorNode` | `EV19` |
| **CMD17** | `UnlinkVirtualSensorNode` | `Producer` | `VirtualSensorNode` | `EV20` |
| **CMD18** | `IngestHourlyTelemetry` | `System Scheduler` | `TelemetrySeries` | `EV21`, `EV22`, `EV23`, `EV24` |
| **CMD19** | `IngestWeatherForecast` | `System Scheduler` | `TelemetrySeries` | `EV25` |
| **CMD20** | `LogHistoricalHarvests` | `Producer` | `ChillAccumulationTracker` | `EV26`, `EV27`, `EV28` |
| **CMD21** | `RectifyHistoricalHarvest` | `Producer` | `ChillAccumulationTracker` | `EV29` |
| **CMD22** | `DeleteHistoricalHarvest` | `Producer` | `ChillAccumulationTracker` | `EV30` |
| **CMD23** | `ComputeDailyChillAccumulation` | `System Scheduler` | `ChillAccumulationTracker` | `EV31`, `EV32`, `EV33`, `EV34` |
| **CMD24** | `RecordInFieldTreeSampling` | `Producer` | `FruitThinningPrescription` | `EV35` |
| **CMD25** | `IngestFieldSamplingsBatch` | `Producer` | `FruitThinningPrescription` | `EV36`, `EV37`, `EV38` |
| **CMD26** | `DetermineSustainableCropLoad` | `System Scheduler` / `Producer` | `FruitThinningPrescription` | `EV39`, `EV40`, `EV41`, `EV42` |
| **CMD27** | `CloseThinningWindowByPhenology` | `System Scheduler` | `FruitThinningPrescription` | `EV43` |
| **CMD28** | `ConfirmThinningExecution` | `Producer` | `FruitThinningPrescription` | `EV44`, `EV45` |
| **CMD29** | `SettleCampaignHarvest` | `Producer` | `AgronomicReport` | `EV46`, `EV47` |
| **CMD30** | `GenerateAgronomicDossier` | `Producer` / `TechnicalManager` | `AgronomicReport` | `EV48` |
| **CMD31** | `EvaluateCooperativeRiskMatrix` | `System Scheduler` / `TechnicalManager` | `Cooperative` | `EV49` |
| **CMD32** | `ProjectCooperativeIntakeVolume` | `TechnicalManager` / `System Scheduler` | `Cooperative` | `EV50`, `EV51` |
| **CMD33** | `ShortenInvitationCodeExpiry` | `TechnicalManager` | `InvitationCodeBatch` | `EV52` |
| **CMD34** | `AccumulatePostAnthesisThermalTime` | `System Scheduler` | `ChillAccumulationTracker` | `EV53` |
| **CMD35** | `RecordPhenologicalObservation` | `Producer` | `ChillAccumulationTracker` | `EV53` |

---

## 5. Consideraciones de Cierre

La especificación formal de los 35 comandos y sus actores respectivos completa el modelo transaccional de entrada para Viora. Estos comandos actúan como canalizadores de interacción que, al ser recibidos por los agregados de dominio en sus respectivos 9 Bounded Contexts, disparan las invariantes del negocio y generan los eventos inmutables que dinamizan la arquitectura reactiva del sistema.
