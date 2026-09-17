# EventStorming — Paso 1: Exploración y Descubrimiento de Domain Events

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Domain Events (Post-its Naranjas, `#FF9F40`) — Hechos consumados e inmutables del dominio expresados en tiempo pasado (*PascalCase*).  

---

## 1. Introducción y Criterios de Diseño Semántico

En el diseño estratégico mediante Domain-Driven Design (DDD), el primer paso del taller de EventStorming consiste en la exploración abierta de todos los eventos de dominio significativos ocurridos en el ciclo productivo y operativo de la solución. Un evento de dominio representa un hecho inmutable y de alto valor para los expertos agronómicos y técnicos, redactado formalmente en tiempo pasado.

Para estructurar el inventario de eventos del ecosistema Viora, se establecieron criterios semánticos rigurosos alineados a DDD y al patrón CQRS (*Command Query Responsibility Segregation*):

1. **Segregación Estricta CQRS:** Las necesidades de consulta, visualización y filtrado de datos no alteran el estado del dominio. Por lo tanto, se modelan de manera diferenciada en etapas posteriores como *Read Models*, restringiendo los eventos de dominio exclusivamente a mutaciones efectivas de estado.
2. **Gestión de Errores y Validaciones Sincrónicas:** Aquellas validaciones de formato, atributos requeridos o reglas de formulario que se rechazan sincrónicamente en la capa de interfaz o API se gestionan mediante excepciones de dominio (`DomainException`), reservando los eventos de dominio para hechos relevantes del ciclo de negocio.
3. **Independencia Tecnológica:** La nomenclatura empleada refleja el lenguaje ubicuo agronómico y operativo del cultivo del olivo (e.g., `FieldSamplingsIngested`, `SustainableCropLoadDetermined`), evitando términos acoplados a detalles de red, almacenamiento o sincronización de bajo nivel.
4. **Semántica de Negocio:** Se priorizan términos que representan hitos alcanzados y evaluaciones completadas frente a cálculos computacionales aislados.
5. **Alineación con la Especificación de Requisitos:** Cada evento se vincula directamente con los criterios de aceptación y escenarios formales de las historias de usuario de la plataforma.

---

## 2. Resumen Consolidado por Bounded Context

```
+------------------------------------------------------------------------------------+
|                    RESUMEN GENERAL POR BOUNDED CONTEXT                             |
+------------------------------------------------------------------------------------+
| 1. Identity & Access Management (IAM):                07 eventos (EV01 - EV07)     |
| 2. User Profiles:                                     02 eventos (EV08 - EV09)     |
| 3. Subscription & Cooperative Membership:             06 eventos (EV10-EV14, EV52) |
| 4. Olive Orchard & Plot Management:                   03 eventos (EV15 - EV17)     |
| 5. Agroclimatic Telemetry & Sensor Monitoring:        08 eventos (EV18 - EV25)     |
| 6. Phenology & Historical Bearing Analytics:          10 eventos (EV26-EV34, EV53) |
| 7. Crop Load Regulation & Thinning Advisory (Core):   11 eventos (EV35 - EV45)     |
| 8. Harvest Settlement & Performance Reporting:        03 eventos (EV46 - EV48)     |
| 9. Cooperative Operations & Territorial Intelligence: 04 eventos (EV49-EV51, EV54) |
+------------------------------------------------------------------------------------+
| TOTAL DE DOMAIN EVENTS (POST-ITS NARANJAS):          54 EVENTOS                    |
+------------------------------------------------------------------------------------+
```

> **Nota sobre los rangos de identificadores.** Los rangos correlativos del cuadro corresponden a la
> **asignación original del taller de EventStorming**, donde cada bloque se dimensionó exacto a su
> contenido y no dejó holgura. Las **incorporaciones posteriores** derivadas de decisiones de diseño se
> anexan al final del catálogo conservando su pertenencia real al Bounded Context y al Timeline que les
> corresponde, sin renumerar los identificadores ya emitidos. Por eso el Contexto 3 figura como
> `EV10-EV14, EV52`: `EV52` es una incorporación posterior de ese mismo contexto, ubicada en el
> Timeline 2 (Suscripción).

---

### Contexto 1: Identity & Access Management (IAM)
Gestiona la seguridad y autenticación de los usuarios (productores independientes y gestores técnicos), autenticación persistente mediante tokens criptográficos JWT, sesiones y credenciales seguras.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV01** | `UserAccountRegistered` | UserAccount | US01 (Escenario 1) | Cuenta de acceso creada en estado activo con credenciales de seguridad (email, hash Argon2id) y rol asignado. |
| **EV02** | `UserAuthenticated` | UserAccount | US02 (Escenario 1) | Identidad validada exitosamente, emitiendo tokens JWT de acceso y actualización. |
| **EV03** | `UserAuthenticationFailed` | UserAccount | US02 (Escenario 2) | Inicio de sesión denegado; evento de seguridad relevante para auditoría y monitoreo. |
| **EV04** | `UserSessionRefreshed` | UserAccount | US02 (Escenario 3) | Sesión extendida transparentemente mediante refresh token sin interrumpir al usuario. |
| **EV05** | `PasswordChanged` | UserAccount | US04 (Escenario 1) | Credenciales de acceso renovadas exitosamente tras validar la clave previa. |
| **EV06** | `PasswordResetRequested` | UserAccount | US05 (Escenario 1) | Token temporal de recuperación generado y enlace de un solo uso despachado por correo. |
| **EV07** | `PasswordResetCompleted` | UserAccount | US05 (Escenario 2) | Contraseña restablecida con éxito mediante token válido, consumiendo e invalidando dicho token. |

---

### Contexto 2: User Profiles
Gestiona la identidad humana, datos personales y canales de contacto de los productores y gestores técnicos, garantizando la validación internacional de números telefónicos bajo la norma E.164.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV08** | `ProfileCreated` | Profile | US01 (Onboarding) | Perfil inicial formalizado con nombre completo, país de residencia y teléfono normalizado E.164 mediante `libphonenumber`. |
| **EV09** | `ContactProfileUpdated` | Profile | US03 (Escenario 1) | Datos de contacto o nombre de usuario actualizados y persistidos en el sistema desde ajustes. |

---

### Contexto 3: Subscription & Cooperative Membership
Modela el esquema comercial SaaS de Viora (pago digital del Plan Productor), los lotes de códigos corporativos y la vinculación de membresías.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV10** | `SubscriptionPaymentApproved` | Subscription | US06 (Escenario 1) | Pasarela de pagos digital aprueba la transacción financiera para la membresía del Plan Productor. |
| **EV11** | `SubscriptionActivated` | Subscription | US06 (Escenario 1) | Membresía anual del Plan Productor habilitada en estado activo para las hectáreas declaradas. |
| **EV12** | `SubscriptionPaymentFailed` | Subscription | US06 (Escenario 2) | Cobro denegado por la pasarela de pagos externa debido a fondos insuficientes o medio rechazado. |
| **EV13** | `CooperativeCodeRedeemed` | Subscription | US07 (Escenario 1) | Código corporativo canjeado exitosamente, vinculando formalmente al productor a la cooperativa. |
| **EV14** | `InvitationCodesBatchGenerated` | InvitationCodeBatch | US08 (Escenario 1) | Lote de códigos de invitación corporativos generado para la cooperativa según el cupo de plazas y superficie contratado. |
| **EV52** | `InvitationCodeExpired` | InvitationCodeBatch | US08 (Escenario 2) | Código de invitación vencido sin haber sido canjeado; la plaza y la superficie que tenía comprometidas se liberan en la licencia corporativa. |

> **Incorporación posterior.** `EV52` no proviene de la asignación original del taller: se incorpora al
> catálogo con numeración al final, pero pertenece a este Bounded Context y se ubica en el **Timeline 2
> (Suscripción)**. Es el **único** camino de liberación de cupo y superficie del modelo: sustituye a la
> revocación explícita de códigos, que se retira por quedar sin comando, sin evento y sin requisito que
> la respalde. La cancelación anticipada se resuelve acortando la vigencia (`CMD33`), lo que deriva en
> este mismo evento.

---

### Contexto 4: Olive Orchard & Plot Management
Gestiona la base geoespacial y agronómica de los olivares: delimitación GPS de polígonos cerrados, variedad de olivo, marco de plantación y densidad de árboles.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV15** | `PlotDelimited` | Plot | US09 (Escenario 1) | Base territorial georreferenciada del predio registrada con polígono cerrado, área y variedad de olivo. |
| **EV16** | `PlotBoundariesUpdated` | Plot | US10 (Escenario 1) | Linderos perimétricos y densidad poblacional arbórea recalculados tras edición cartográfica. |
| **EV17** | `PlotRemoved` | Plot | US11 (Escenario 1) | Baja lógica (soft-delete) de parcela ejecutada en el sistema, preservando el histórico agronómico. |

---

### Contexto 5: Agroclimatic Telemetry & Sensor Monitoring
Controla el ciclo de vida de los dispositivos sensores virtuales, la ingesta de telemetría de suelo/microclima, pronósticos del tiempo y alertas agroclimáticas críticas.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV18** | `VirtualSensorNodeLinked` | VirtualSensorNode | US13 (Escenario 1) | Dispositivo sensor virtual asociado a la parcela en estado activo, habilitando la ingesta de mediciones. |
| **EV19** | `VirtualSensorNodeCalibrated` | VirtualSensorNode | US15 (Escenario 1) | Profundidad de sonda (30 cm o 60 cm) y factor de calibración configurados con éxito. |
| **EV20** | `VirtualSensorNodeUnlinked` | VirtualSensorNode | US16 (Escenario 1) | Nodo sensor desvinculado del predio, preservando intactas las series temporales históricas. |
| **EV21** | `TelemetryDataIngested` | TelemetrySeries | US17 (Escenario 1/TS19) | Lecturas horarias de humedad volumétrica de suelo radicular y microclima registradas en el sistema. |
| **EV22** | `HydricStressAlertTriggered` | TelemetrySeries | US18 (Escenario 1) | Alerta crítica activada al descender la humedad del suelo por debajo del punto de recarga (<18%). |
| **EV23** | `ThermalThresholdAlertTriggered` | TelemetrySeries | US18 (Escenario 2) | Advertencia activada por choque térmico (>32°C con humedad <20%) durante la fase de floración. |
| **EV24** | `AgroclimaticAlertResolved` | TelemetrySeries | US18 (Escenario 3) | Alerta de estrés cerrada y normalizada tras restablecerse la humedad de suelo por encima del umbral tras el riego. |
| **EV25** | `WeatherForecastIngested` | TelemetrySeries | US19 (Escenario 1) | Pronóstico meteorológico a 7 días recibido e incorporado para las coordenadas geográficas de la parcela. |

---

### Contexto 6: Phenology & Historical Bearing Analytics
Modela la memoria histórica de cosechas, la evaluación del Índice de Vecería (BBI de Hoblyn et al.), la acumulación de frío invernal de Erez y las anomalías térmicas por ENOS.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV26** | `HistoricalHarvestsLogged` | ChillAccumulationTracker | US20 (Escenario 1) | Serie plurianual de cosechas (3 a 5 años) registrada en el predio discriminando campañas ON y OFF. |
| **EV27** | `BiennialBearingIndexAssessed` | ChillAccumulationTracker | US20 (Escenario 1) | Índice de vecería BBI evaluado y determinado oficialmente mediante la fórmula de Hoblyn et al. |
| **EV28** | `HistoricalDataInsufficiencyDetected` | ChillAccumulationTracker | US20 (Escenario 2) | Aviso de datos insuficientes emitido al registrar menos de 3 campañas, impidiendo el cálculo formal de alternancia. |
| **EV29** | `HistoricalHarvestRectified` | ChillAccumulationTracker | US21 (Escenario 1) | Pesaje de una cosecha pasada corregido por error humano y serie BBI plurianual recalculada automáticamente. |
| **EV30** | `HistoricalHarvestDeleted` | ChillAccumulationTracker | US21 (Escenario 2) | Registro erróneo o duplicado de cosecha suprimido del predio, depurando la serie base de alternancia. |
| **EV31** | `WinterChillPortionsAccumulated` | ChillAccumulationTracker | US22 (Escenario 1) | Avance dinámico de porciones de frío computado y acumulado periódicamente aplicando el modelo de Erez. |
| **EV32** | `ColdRequirementFulfilled` | ChillAccumulationTracker | US22 (Escenario 2) | Umbral varietal de frío completado (25-30 porciones), asegurando la salida fisiológica del reposo invernal. |
| **EV33** | `WinterThermalAnomalyDetected` | ChillAccumulationTracker | US23 (Escenario 1) | Ola de calor diurna invernal (>24°C por >3 días) detectada, destruyendo intermediarios del frío de Erez. |
| **EV34** | `PotentialFloralYieldReadjusted` | ChillAccumulationTracker | US23 (Escenario 2) | Proyección de diferenciación floral y carga potencial reajustada ante estrés térmico por efecto ENOS. |
| **EV53** | `PitHardeningStageReached` | ChillAccumulationTracker | US26 | La integral térmica post-antesis alcanza los $680.0^\circ\text{C}\cdot\text{día}$ ($T_{base}=10^\circ\text{C}$), confirmando el endurecimiento del endocarpio (estadio BBCH 75) y sellando la fecha fisiológica límite de aclareo. Dispara `CMD27` (`CloseThinningWindowByPhenology`) en *Crop Load Regulation*, cuyo `EV43` activa a su vez `POL10`. |

> **Incorporación posterior.** `EV53` no proviene de la asignación original del taller: se incorpora al
> catálogo con numeración al final, pero pertenece a este Bounded Context y se ubica en el **Timeline 6
> (cuajado y aclareo, cierre biológico por lignificación)**. Formaliza como hecho de dominio propio del
> agregado `ChillAccumulationTracker` el sellado de la fecha fisiológica límite de aclareo por
> endurecimiento del endocarpio, derivado de decisiones de diseño táctico.

---

### Contexto 7: Crop Load Regulation & Thinning Advisory (Core Domain)
El corazón de la propuesta de valor de Viora: muestreos de cuajado en campo, representatividad estadística, determinación de carga admisible, prescripción agronómica y ejecución de aclareo.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV35** | `TreeFruitSetSampledInField` | FruitThinningPrescription | US24 (Escenario 1) | Conteo de inflorescencias y frutos cuajados registrado a pie de árbol durante el muestreo en campo. |
| **EV36** | `FieldSamplingsIngested` | FruitThinningPrescription | US24 (Escenario 2) | Lote de muestreos capturado en campo integrado e incorporado formalmente en el servidor central. |
| **EV37** | `SamplingRoundCompleted` | FruitThinningPrescription | US25 (Escenario 1) | Ronda de muestreo consolidada alcanzando la representatividad estadística mínima (>= 5 árboles evaluados). |
| **EV38** | `SamplingRepresentativenessDeficientDetected` | FruitThinningPrescription | US25 (Escenario 2) | Advertencia emitida al constatar menos de 5 árboles evaluados en el lote, requiriendo mayor cobertura muestral. |
| **EV39** | `SustainableCropLoadDetermined` | FruitThinningPrescription | US26 (Escenario 1) | Carga frutal admisible determinada oficialmente para sostener el equilibrio productivo y retorno floral. |
| **EV40** | `OverloadRiskDetected` | FruitThinningPrescription | US26 (Escenario 2) | Alerta crítica de sobrecarga frutal emitida al superar la densidad de frutos la capacidad del árbol. |
| **EV41** | `ThinningPrescribed` | FruitThinningPrescription | US27 (Escenario 1) | Porcentaje recomendado de aclareo (remoción de fruta) y ventana fenológica de intervención prescritos. |
| **EV42** | `ThinningDeclaredUnnecessary` | FruitThinningPrescription | US27 (Escenario 2) | Prescripción de 0% de aclareo emitida al constatar que la carga frutal se encuentra en equilibrio biológico. |
| **EV43** | `ThinningWindowClosedByPitHardening` | FruitThinningPrescription | US27 (Escenario 3) | Ventana biológica de aclareo cerrada definitivamente por endurecimiento del carozo (lignificación del endocarpio). |
| **EV44** | `ThinningExecutionConfirmed` | FruitThinningPrescription | US28 (Escenario 1) | Labor de aclareo registrada en campo (fecha, cuadrilla y % removido), recalculando la carga remanente. |
| **EV45** | `LateThinningExecutionRecorded` | FruitThinningPrescription | US28 (Escenario 2) | Intervención de aclareo registrada fuera de ventana fenológica, advirtiendo pérdida de eficacia mitigadora. |

---

### Contexto 8: Harvest Settlement & Performance Reporting
Registra la cosecha definitiva al terminar la recolección, el balance de estabilización interanual frente al año base y la emisión del expediente técnico oficial.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV46** | `CampaignHarvestSettled` | AgronomicReport | US29 (Escenario 1) | Kilogramos y toneladas finales recolectadas (aceituna verde y negra) asentadas como cierre real de cosecha. |
| **EV47** | `YieldStabilizationCurveEvaluated` | AgronomicReport | US29 (Escenario 2) | Curva de estabilización interanual actualizada, comparando la reducción del BBI frente a la campaña base. |
| **EV48** | `AgronomicDossierGenerated` | AgronomicReport | US30 (Escenario 1) | Ficha técnica y expediente agronómico oficial del predio compilado con linderos, historial, frío y BBI. |

---

### Contexto 9: Cooperative Operations & Territorial Intelligence
Proporciona visión agregada a los gestores técnicos de organizaciones olivareras: cálculo de la matriz de riesgo del padrón y proyección temprana de acopio.

| N° | Domain Event (PascalCase) | Agregado Emisor | US / BDD | Descripción del Hecho de Negocio (Español) |
| :---: | :--- | :--- | :--- | :--- |
| **EV49** | `CooperativeRiskMatrixEvaluated` | Cooperative | US31 (Escenario 1) | Matriz y semáforo colectivo de riesgo fenológico evaluados y consolidados para la cartera de socios. |
| **EV50** | `CooperativeIntakeVolumeProjected` | Cooperative | US32 (Escenario 1) | Volumen agregado temprano de acopio de aceituna verde y negra proyectado a nivel de toda la organización. |
| **EV51** | `LowSamplingCoverageWarnedForIntake` | Cooperative | US32 (Escenario 2) | Advertencia emitida al gestor técnico por baja cobertura de muestreos en los predios socios. |
| **EV54** | `MemberAffiliated` | Cooperative | US07 | Productor dado de alta en el padrón gremial con la superficie concedida por el código de activación canjeado. Materializa `POL02` tras `CooperativeCodeRedeemed`. |

> **Incorporación posterior.** `EV54` no proviene de la asignación original del taller: se incorpora al
> catálogo con numeración al final, pero pertenece a este Bounded Context por su agregado emisor
> (`Cooperative`) y se ubica en el **Timeline 2 (Suscripción)**, ya que su hecho de negocio se dispara por
> reacción a `EV13` (`CooperativeCodeRedeemed`) a través de `POL02`, tal como aclara la nota de `CMD10`
> en `Paso5_commands.md`.

---

## 3. Consideraciones de Cierre

El catálogo consolidado de 54 eventos de dominio proporciona la base conceptual sobre la cual se articulan las líneas de tiempo cronológicas del sistema. Cada evento actúa como punto de enlace entre las intenciones de acción de los usuarios, las políticas de automatización agronómica y la consistencia transaccional de los agregados del dominio.
