# EventStorming — Paso 9: Definición y Delimitación de Aggregates

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Agregados de Dominio y Raíces de Agregado (*Aggregate Roots*, Post-its Amarillos Grandes, `#F1C40F`)  

---

## 1. Fundamentación Metodológica y Principios Tácticos DDD

### 1.1 Naturaleza del Agregado en Domain-Driven Design
En la metodología **EventStorming** (Alberto Brandolini) y el diseño táctico de **Domain-Driven Design** (Eric Evans, Vaughn Vernon), un **Agregado (Aggregate)** es un clúster coherente de Entidades y Value Objects tratado como una **unidad atómica de consistencia transaccional y cambio de estado**:

1. **Raíz de Agregado (Aggregate Root - AR):** Es la entidad principal a través de la cual el mundo exterior interactúa con el clúster. Ningún objeto externo puede mantener referencias directas a entidades internas del agregado; toda mutación se canaliza a través de métodos de negocio en la Raíz.
2. **Custodia de Invariantes:** El Agregado es el garante de las reglas de consistencia lógica que **siempre deben cumplirse** antes y después de cualquier operación. Si un comando viola una invariante, la transacción se aborta arrojando una excepción de dominio (`DomainException`), impidiendo estados corruptos en la base de datos.
3. **Referencias entre Agregados Exclusivamente por Identidad (ID):** Un agregado nunca contiene una instancia directa de otro agregado; se vinculan de manera débil guardando únicamente sus identificadores (`UserId`, `ProfileId`, `PlotId`, `CooperativeId`). Esto garantiza bajo acoplamiento y transacciones independientes.

```
+-----------------------------------------------------------------------------------------------+
|                             LÍMITE DEL AGREGADO (AGGREGATE BOUNDARY)                          |
|                                                                                               |
|  [Comando Azul] ---> +---------------------------------------+                                |
|                      |         AGGREGATE ROOT (AR)           | ---> Emite [Evento Naranja]    |
|                      |        (Entidad Raíz con ID)          |                                |
|                      +---------------------------------------+                                |
|                                          |                                                    |
|                   +----------------------+----------------------+                             |
|                   |                                             |                             |
|                   v                                             v                             |
|      +-------------------------+                   +-------------------------+                |
|      |    ENTIDADES HIJAS      |                   |      VALUE OBJECTS      |                |
|      |  (Identidad interna)    |                   | (Inmutables sin ID)     |                |
|      +-------------------------+                   +-------------------------+                |
|                   |                                             |                             |
|                   +---------------------> <---------------------+                             |
|                                            |                                                  |
|                                            v                                                  |
|                               +-------------------------+                                     |
|                               | INVARIANTES DEL DOMINIO |                                     |
|                               |  (Reglas de consistencia|                                     |
|                               +-------------------------+                                     |
+-----------------------------------------------------------------------------------------------+
```

### 1.2 Segregación Contextual y Desacoplamiento de Modelos
Un error habitual en sistemas agrícolas tradicionales es crear una tabla gigante de "Usuarios". En Viora, una misma persona física adopta roles y representaciones ontológicamente distintas según el Bounded Context:
* **En `IAM`:** Es un **`UserAccount`** (cuenta con credenciales, hash Argon2id, rol y tokens de seguridad).
* **En `User Profiles`:** Es un **`Profile`** (identidad humana, nombres y canal de contacto telefónico E.164).
* **En `Suscripciones`:** Es un **`Subscription`** (titular con contrato anual y cupo de hectáreas).
* **En `Catastro`:** Es el **`Plot.ownerId`** (propietario catastral del fundo georreferenciado).
* **En `Cooperativa`:** Es un **`CooperativeMember`** (socio agremiado dentro del padrón colectivo).

---

## 2. Resumen Consolidado de Agregados Raíz

```
+-----------------------------------------------------------------------------------------------+
|                           INVENTARIO DE AGREGADOS RAÍZ DE VIORA                               |
+-----------------------------------------------------------------------------------------------+
| AGG01: UserAccount                 (Contexto 1: Identity & Access Management)                 |
| AGG02: Profile                     (Contexto 2: User Profiles)                                |
| AGG03: Subscription                (Contexto 3: Subscription & Cooperative Membership)        |
| AGG04: Plot                        (Contexto 4: Olive Orchard & Plot Management)              |
| AGG05: VirtualSensorNode           (Contexto 5: Agroclimatic Telemetry & Sensor Monitoring)   |
| AGG06: TelemetrySeries             (Contexto 5: Agroclimatic Telemetry & Sensor Monitoring)   |
| AGG07: ChillAccumulationTracker    (Contexto 6: Phenology & Historical Bearing Analytics)     |
| AGG08: FruitThinningPrescription   (Contexto 7: Crop Load Regulation & Thinning Advisory)     |
| AGG09: AgronomicReport            (Contexto 8: Harvest Settlement & Performance Reporting)   |
| AGG10: Cooperative                 (Contexto 9: Cooperative Operations & Intelligence)       |
+-----------------------------------------------------------------------------------------------+
| TOTAL DE AGREGADOS RAÍZ: 10 AGREGADOS QUE ESTRUCTURAN LA ARQUITECTURA DEL DOMINIO            |
+-----------------------------------------------------------------------------------------------+
```

---

## 3. Catálogo Detallado de Agregados Raíz (AGG01 a AGG10)

---

### **AGG01: UserAccount**
* **Bounded Context:** `Identity & Access Management (IAM)`
* **Aggregate Root:** `UserAccount`
* **Entidades Internas y Value Objects:**
  * `UserId` *(VO)*: Identificador único universal (UUID v4).
  * `EmailAddress` *(VO)*: Formato de correo normalizado en minúsculas y validado bajo RFC 5322.
  * `HashedPassword` *(VO)*: Hash criptográfico generado con Argon2id con salt aleatorio.
  * `Role` *(VO)*: Enum inmutable (`ROLE_PRODUCTOR`, `ROLE_GESTOR`).
  * `AccountStatus` *(VO)*: `ACTIVE`, `SUSPENDED`.
  * `PasswordResetToken` *(VO)*: Token efímero criptoseguro con `expiresAt` (15 minutos) y estado de un solo uso.
* **Invariantes Clave del Agregado:**
  1. No puede existir duplicidad de `EmailAddress` en el sistema.
  2. La contraseña debe tener al menos 8 caracteres y satisfacer combinación alfanumérica.
  3. Un `PasswordResetToken` solo puede consumirse una única vez y antes de su expiración estricta de 15 minutos.
* **Comandos Aceptados:** `CMD01` (*RegisterUserAccount*), `CMD02` (*AuthenticateUser*), `CMD03` (*RefreshUserSession*), `CMD04` (*ChangeUserPassword*), `CMD05` (*RequestPasswordReset*), `CMD06` (*ResetUserPassword*).
* **Eventos de Dominio Emitidos:** `EV01`, `EV02`, `EV03`, `EV04`, `EV05`, `EV06`, `EV07`.
* **US / BDD:** `US01`, `US02`, `US04`, `US05`.

---

### **AGG02: Profile**
* **Bounded Context:** `User Profiles`
* **Aggregate Root:** `Profile`
* **Entidades Internas y Value Objects:**
  * `ProfileId` *(VO)*: Identificador único universal (UUID v4).
  * `UserId` *(VO)*: Referencia débil por ID al titular de la cuenta en IAM (`UserId`).
  * `FullName` *(VO)*: Nombre y apellidos del usuario (no vacío).
  * `Country` *(VO)*: Código de país ISO 3166-1.
  * `ContactInfo` *(VO)*: Número telefónico celular normalizado bajo el estándar internacional **E.164** mediante `libphonenumber`.
* **Invariantes Clave del Agregado:**
  1. El nombre completo no puede estar en blanco ni contener caracteres no alfabéticos inválidos.
  2. El número telefónico es obligatorio y debe cumplir estrictamente con la estructura y longitud de la norma internacional E.164 según el país seleccionado.
  3. Cada perfil pertenece unívocamente a un `UserId` de IAM.
* **Comandos Aceptados:** `CMD07` (*CreateProfile*), `CMD08` (*UpdateContactProfile*).
* **Eventos de Dominio Emitidos:** `EV08` (`ProfileCreated`), `EV09` (`ContactProfileUpdated`).
* **US / BDD:** `US01` (Onboarding de Identidad), `US03` (Ajustes de Perfil).

---

### **AGG03: Subscription**
* **Bounded Context:** `Subscription & Cooperative Membership`
* **Aggregate Root:** `Subscription`
* **Entidades Internas y Value Objects:**
  * `SubscriptionId` *(VO)*: UUID.
  * `ProducerId` *(VO)*: Referencia débil por ID al titular de la cuenta (`UserId`).
  * `SubscriptionPlan` *(VO)*: `PLAN_PRODUCTOR_INDIVIDUAL` o `PLAN_COOPERATIVO_PATROCINADO`.
  * `HectaresQuota` *(VO)*: Capacidad máxima contratada de superficie catastral (número positivo $\ge 0.1$ ha).
  * `SubscriptionPeriod` *(VO)*: Rango temporal `[startDate, validUntil]`.
  * `SubscriptionStatus` *(VO)*: `PENDING_PAYMENT`, `ACTIVE`, `EXPIRED`, `CANCELLED`.
  * `PaymentReceipt` *(Entidad Interna)*: Datos de la pasarela de cobro (`transactionId`, `amount`, `currency`, `timestamp`).
* **Invariantes Clave del Agregado:**
  1. La suscripción solo puede pasar a estado `ACTIVE` si el cobro fue aprobado por la pasarela de pagos o si se consumió un cupón corporativo válido.
  2. La suma de hectáreas de las parcelas activas del productor no puede exceder el `HectaresQuota` contratado.
  3. Una suscripción expirada no permite el acceso a los algoritmos de vecería y prescripción.
* **Comandos Aceptados:** `CMD09` (*ProcessPaymentConfirmation*), `CMD10` (*RedeemCooperativeCode*).
* **Eventos de Dominio Emitidos:** `EV10`, `EV11`, `EV12`, `EV13`.
* **US / BDD:** `US06`, `US07`.

---

### **AGG04: Plot**
* **Bounded Context:** `Olive Orchard & Plot Management`
* **Aggregate Root:** `Plot`
* **Entidades Internas y Value Objects:**
  * `PlotId` *(VO)*: UUID.
  * `OwnerId` *(VO)*: Referencia débil al productor (`UserId`).
  * `PlotName` *(VO)*: Nombre identitario del predio o cuartel olivarero.
  * `CadastralPolygon` *(VO)*: Polígono cerrado GeoJSON (RFC 7946 en coordenadas WGS84) con validación de no auto-intersección.
  * `OliveVariety` *(VO)*: Variedad agronómica (`CRIOLLA_DE_TACNA`, `SEVILLANA`).
  * `PlantingGrid` *(VO)*: Marco de plantación (e.g. $8\times 8$ m, $10\times 10$ m).
  * `DendrometricAttributes` *(VO)*: Superficie neta calculada (`netHectares`), conteo total de árboles y densidad poblacional calculada (`treesPerHectare`).
  * `PlotStatus` *(VO)*: `ACTIVE`, `REMOVED_SOFT_DELETE`.
* **Invariantes Clave del Agregado:**
  1. El polígono debe ser una geometría cerrada de al menos 3 vértices sin cruces entre sus aristas.
  2. El área superficial neta calculada debe ser estrictamente mayor a 0.10 hectáreas.
  3. La densidad arbórea debe ser biológicamente coherente con el marco de plantación.
  4. Una parcela con prescripciones de aclareo activas en ventana fenológica pendiente no puede ser eliminada.
* **Comandos Aceptados:** `CMD12` (*DelimitPlot*), `CMD13` (*UpdatePlotBoundaries*), `CMD14` (*RemovePlot*).
* **Eventos de Dominio Emitidos:** `EV15`, `EV16`, `EV17`.
* **US / BDD:** `US09`, `US10`, `US11`, `US12`.

---

### **AGG05: VirtualSensorNode**
* **Bounded Context:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Aggregate Root:** `VirtualSensorNode`
* **Entidades Internas y Value Objects:**
  * `SensorNodeId` *(VO)*: UUID.
  * `PlotId` *(VO)*: Referencia a la parcela donde se encuentra emplazado el nodo.
  * `HardwareAddress` *(VO)*: Identificador MAC o ID del dispositivo virtual emisor.
  * `GeoLocation` *(VO)*: Coordenadas precisas de instalación (`latitude`, `longitude`).
  * `CalibrationParameters` *(VO)*: Profundidad radicular configurada (`DEPTH_30CM`, `DEPTH_60CM`), textura del suelo (`SANDY_LOAM`) y multiplicador de calibración volumétrica.
  * `SensorNodeStatus` *(VO)*: `LINKED`, `CALIBRATED`, `UNLINKED`.
* **Invariantes Clave del Agregado:**
  1. Las coordenadas del nodo sensor deben situarse estrictamente dentro del polígono perimétrico de la parcela asociada.
  2. La profundidad admitida de la sonda edáfica solo puede ser de 30 cm o 60 cm (horizontes activos del bulbo radicular del olivo).
  3. No se puede desvincular un sensor que mantenga transacciones de calibración incompletas.
* **Comandos Aceptados:** `CMD15` (*LinkVirtualSensorNode*), `CMD16` (*CalibrateVirtualSensorNode*), `CMD17` (*UnlinkVirtualSensorNode*).
* **Eventos de Dominio Emitidos:** `EV18`, `EV19`, `EV20`.
* **US / BDD:** `US13`, `US15`, `US16`.

---

### **AGG06: TelemetrySeries**
* **Bounded Context:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Aggregate Root:** `TelemetrySeries`
* **Entidades Internas y Value Objects:**
  * `SeriesId` *(VO)*: UUID.
  * `SensorNodeId` *(VO)*: Identificador del sensor emisor.
  * `PlotId` *(VO)*: Parcela supervisada.
  * `HourlyTelemetryReading` *(Entidad Interna)*: Lectura con marca temporal UTC, humedad volumétrica radicular $\theta$ (a 30 y 60 cm), temperatura ambiente y humedad relativa del aire.
  * `WeatherForecastDay` *(Entidad Interna)*: Pronóstico diario a 7 días (temperaturas máxima, mínima y probabilidad de lluvia).
  * `AgroclimaticIncident` *(Entidad Interna)*: Registro del estado de alerta activa (`IncidentType`: `HYDRIC_STRESS`, `THERMAL_SHOCK`, `FROST_WARNING`) y su resolución.
* **Invariantes Clave del Agregado:**
  1. Si la humedad volumétrica a 30 cm cae por debajo de $\theta < 18\%$, el agregado activa y transiciona obligatoriamente al estado de estrés hídrico.
  2. Si la humedad volumétrica retorna a $\theta \ge 22\%$ (capacidad de campo), el incidente de estrés se resuelve y normaliza automáticamente.
  3. Si la temperatura supera los $32^\circ\text{C}$ con humedad relativa $<20\%$ durante floración, se emite alarma por riesgo de choque térmico y desecación del estigma.
* **Comandos Aceptados:** `CMD18` (*IngestHourlyTelemetry*), `CMD19` (*IngestWeatherForecast*).
* **Eventos de Dominio Emitidos:** `EV21`, `EV22`, `EV23`, `EV24`, `EV25`.
* **US / BDD:** `US17`, `US18`, `US19`.

---

### **AGG07: ChillAccumulationTracker**
* **Bounded Context:** `Phenology & Historical Bearing Analytics`
* **Aggregate Root:** `ChillAccumulationTracker`
* **Entidades Internas y Value Objects:**
  * `TrackerId` *(VO)*: UUID.
  * `PlotId` *(VO)*: Parcela olivarera evaluada.
  * `CampaignYear` *(VO)*: Año agronómico del ciclo de cultivo.
  * `DynamicModelErezState` *(VO)*: Acumulador matemático de Porciones de Frío (Chill Portions), que modela la formación de intermediarios térmicos inestables (rango de 2°C a 12°C).
  * `ThermalHeatwaveCounter` *(VO)*: Contador de días consecutivos con temperaturas invernales diurnas $>24^\circ\text{C}$.
  * `ChillFulfillmentStatus` *(VO)*: `ACCUMULATING`, `REQUIREMENT_FULFILLED` ($\ge 25-30$ UF), `THERMAL_ANOMALY_DEFICIT`.
* **Invariantes Clave del Agregado:**
  1. La acumulación de frío se calcula exclusivamente durante la ventana de reposo invernal en Tacna (1 de Mayo al 31 de Agosto).
  2. Temperaturas invernales $>24^\circ\text{C}$ por más de 3 días consecutivos destruyen intermediarios térmicos, forzando la deducción en las porciones netas acumuladas.
  3. Al cumplirse el umbral varietal (25-30 porciones para Criolla de Tacna), se certifica la aptitud de la yema para la salida fisiológica del reposo.
* **Comandos Aceptados:** `CMD23` (*ComputeDailyChillAccumulation*).
* **Eventos de Dominio Emitidos:** `EV31`, `EV32`, `EV33`, `EV34`.
* **US / BDD:** `US22`, `US23`.

---

### **AGG08: FruitThinningPrescription** *(Core Domain)*
* **Bounded Context:** `Crop Load Regulation & Thinning Advisory`
* **Aggregate Root:** `FruitThinningPrescription`
* **Entidades Internas y Value Objects:**
  * `PrescriptionId` *(VO)*: UUID.
  * `PlotId` *(VO)*: Parcela olivarera prescrita.
  * `TreeSamplingRecord` *(Entidad Interna)*: Datos del muestreo a pie de árbol (etiqueta del árbol, conteo de brotes, frutos cuajados y diámetro de tronco).
  * `SamplingRound` *(Entidad Interna)*: Lote muestral que agrupa los árboles evaluados y certifica representatividad estadística ($\ge 5$ árboles).
  * `SustainableCropLoad` *(VO)*: Carga admisible recomendada (frutos/árbol o frutos/metro de copa).
  * `ThinningRecommendation` *(VO)*: Porcentaje prescrito de remoción frutal ($0\%$ a $40\%$).
  * `PhenologicalWindow` *(VO)*: Intervalo temporal de intervención con fecha límite biológica antes del endurecimiento del carozo.
  * `ExecutionConfirmation` *(Entidad Interna)*: Bitácora de aplicación en campo (fecha de labor, cuadrilla de jornales y porcentaje real aclareado).
  * `PrescriptionStatus` *(VO)*: `SAMPLING_IN_PROGRESS`, `PRESCRIBED`, `CLOSED_BY_PIT_HARDENING`, `EXECUTED_OPTIMAL`, `EXECUTED_LATE`.
* **Invariantes Clave del Agregado:**
  1. No se puede calcular carga sostenible ni emitir prescripción formal si la ronda de muestreo posee menos de 5 árboles evaluados en el sector homogéneo.
  2. El porcentaje prescrito de aclareo nunca puede superar el $40\%$ de la fruta cuajada (límite de seguridad agronómica).
  3. Al detectarse el endurecimiento definitivo del endocarpio (carozo), la prescripción transiciona irrevocablemente al estado `CLOSED_BY_PIT_HARDENING`, impidiendo aclareos inútiles.
  4. Si una labor se confirma después de la fecha de cierre fenológico, se marca como `EXECUTED_LATE` y se penaliza la eficiencia mitigadora.
* **Comandos Aceptados:** `CMD24` (*RecordInFieldTreeSampling*), `CMD25` (*IngestFieldSamplingsBatch*), `CMD26` (*DetermineSustainableCropLoad*), `CMD27` (*CloseThinningWindowByPhenology*), `CMD28` (*ConfirmThinningExecution*).
* **Eventos de Dominio Emitidos:** `EV35` a `EV45` *(11 eventos)*.
* **US / BDD:** `US24`, `US25`, `US26`, `US27`, `US28`.

---

### **AGG09: AgronomicReport**
* **Bounded Context:** `Harvest Settlement & Performance Reporting`
* **Aggregate Root:** `AgronomicReport`
* **Entidades Internas y Value Objects:**
  * `ReportId` *(VO)*: UUID.
  * `PlotId` *(VO)*: Parcela titular.
  * `HistoricalHarvestEntry` *(Entidad Interna)*: Registro plurianual de campaña pasada (año, kilos/ha, calificación On/Off).
  * `BiennialBearingIndex` *(VO)*: Valor numérico oficial de alternancia ($BBI$ de $0.00$ a $1.00$) calculado según la fórmula de Hoblyn et al.
  * `HarvestSettlement` *(Entidad Interna)*: Cierre de campaña en curso con pesajes definitivos de aceituna verde (mesa) y aceituna negra (mesa/aceite).
  * `StabilizationTrendCurve` *(VO)*: Serie histórica que compara la reducción de la amplitud de vecería respecto a la campaña base preprescriptiva.
* **Invariantes Clave del Agregado:**
  1. El cálculo formal del índice BBI exige un mínimo de 3 campañas consecutivas registradas.
  2. Los registros de pesaje no pueden duplicar el año de cosecha para una misma parcela.
  3. El cierre de campaña (`HarvestSettlement`) asienta de forma inmutable los kilogramos recolectados y dispara la actualización de la curva de estabilización interanual.
* **Comandos Aceptados:** `CMD20` (*LogHistoricalHarvests*), `CMD21` (*RectifyHistoricalHarvest*), `CMD22` (*DeleteHistoricalHarvest*), `CMD29` (*SettleCampaignHarvest*), `CMD30` (*GenerateAgronomicDossier*).
* **Eventos de Dominio Emitidos:** `EV26` a `EV30`, `EV46`, `EV47`, `EV48`.
* **US / BDD:** `US20`, `US21`, `US29`, `US30`.

---

### **AGG10: Cooperative**
* **Bounded Context:** `Cooperative Operations & Territorial Intelligence`
* **Aggregate Root:** `Cooperative`
* **Entidades Internas y Value Objects:**
  * `CooperativeId` *(VO)*: UUID.
  * `CooperativeName` *(VO)*: Razón social del gremio olivarero.
  * `CorporateLicensingPlan` *(VO)*: Contrato corporativo con cupo máximo de socios permitidos (e.g. 50 socios).
  * `CooperativeMember` *(Entidad Interna)*: Socio agremiado que guarda `MemberId`, `ProducerUserId` (referencia externa por ID a `UserAccount`), fecha de adhesión y parcelas aportadas.
  * `InvitationCode` *(Entidad Interna)*: Código alfanumérico único generado para canje, con fecha de caducidad y estado de consumo (`AVAILABLE`, `REDEEMED`).
  * `TerritorialRiskMatrix` *(VO)*: Semáforo agregado por sector geográfico (verde, amarillo, rojo) que consolida alertas de estrés, frío y sobrecarga.
  * `EarlyIntakeProjection` *(VO)*: Estimación de toneladas proyectadas de acopio (verde y negra) ponderada por el porcentaje de muestreos completados.
* **Invariantes Clave del Agregado:**
  1. No se pueden generar más códigos de invitación que los cupos disponibles en el plan corporativo contratado.
  2. Un `InvitationCode` solo puede ser canjeado por un único productor socio.
  3. La proyección de acopio territorial exige que al menos el $60\%$ del padrón de socios haya completado muestreos representativos; de lo contrario, se emite obligatoriamente una advertencia de cobertura insuficiente.
* **Comandos Aceptados:** `CMD11` (*GenerateInvitationCodesBatch*), `CMD31` (*EvaluateCooperativeRiskMatrix*), `CMD32` (*ProjectCooperativeIntakeVolume*).
* **Eventos de Dominio Emitidos:** `EV14`, `EV49`, `EV50`, `EV51`.
* **US / BDD:** `US08`, `US31`, `US32`.

---

## 4. Matriz de Trazabilidad: Agregados $\rightarrow$ Comandos $\rightarrow$ Eventos

| ID Agregado | Nombre del Agregado Raíz | Bounded Context | Comandos que Gestiona | Eventos de Dominio que Publica |
| :---: | :--- | :--- | :--- | :--- |
| **AGG01** | `UserAccount` | `Identity & Access Management` | `CMD01` a `CMD06` | `EV01`, `EV02`, `EV03`, `EV04`, `EV05`, `EV06`, `EV07` |
| **AGG02** | `Profile` | `User Profiles` | `CMD07`, `CMD08` | `EV08`, `EV09` |
| **AGG03** | `Subscription` | `Subscription & Cooperative` | `CMD09`, `CMD10` | `EV10`, `EV11`, `EV12`, `EV13` |
| **AGG04** | `Plot` | `Olive Orchard & Plot Management`| `CMD12`, `CMD13`, `CMD14` | `EV15`, `EV16`, `EV17` |
| **AGG05** | `VirtualSensorNode` | `Agroclimatic Telemetry` | `CMD15`, `CMD16`, `CMD17` | `EV18`, `EV19`, `EV20` |
| **AGG06** | `TelemetrySeries` | `Agroclimatic Telemetry` | `CMD18`, `CMD19` | `EV21`, `EV22`, `EV23`, `EV24`, `EV25` |
| **AGG07** | `ChillAccumulationTracker`| `Phenology & Bearing Analytics`| `CMD23` | `EV31`, `EV32`, `EV33`, `EV34` |
| **AGG08** | `FruitThinningPrescription`| `Crop Load Regulation` *(Core)* | `CMD24` a `CMD28` | `EV35` a `EV45` *(11 eventos)* |
| **AGG09** | `AgronomicReport` | `Harvest Settlement & Analytics` | `CMD20` a `CMD22`, `CMD29`, `CMD30` | `EV26` a `EV30`, `EV46`, `EV47`, `EV48` |
| **AGG10** | `Cooperative` | `Cooperative Operations` | `CMD11`, `CMD31`, `CMD32` | `EV14`, `EV49`, `EV50`, `EV51` |

---

## 5. Consideraciones de Cierre

La consolidación de los 10 agregados de dominio delimita con precisión las fronteras de consistencia transaccional del sistema Viora. Al encapsular las invariantes biológicas y de negocio dentro de cada raíz de agregado, y establecer relaciones exclusivas por identidad (IDs), se provee una base robusta para la transición hacia la arquitectura de contextos delimitados y el diseño táctico en capas.
