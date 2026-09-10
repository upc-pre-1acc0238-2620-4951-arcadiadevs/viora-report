# Domain Message Flows

---

# 1. Domain Message Flow: Confirmación de pago y activación de la suscripción

## Contexto
- **Bounded Context(s) involucrados:** Subscription & Cooperative Membership
- **Actor(s):** Payment Gateway Service, App móvil Viora (subscription status)
- **Trigger:** Confirmación externa de un pago procesado y aprobado desde la pasarela de pagos.
- **Resumen:** El servicio externo de pagos notifica la aprobación de la transacción, lo que desencadena la activación formal de la suscripción del productor en el sistema y la actualización del estado en la aplicación móvil.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Command | `ProcessPaymentConfirmation` | Payment Gateway Service -> Subscription & Cooperative Membership | `paymentId`, `subscriptionId`, `status`, `amount`, `currency`, `paidAt` |
| 2 | Event | `SubscriptionPaymentApproved` | Subscription & Cooperative Membership | `paymentId`, `subscriptionId`, `amount`, `currency`, `approvedAt` |
| 3 | Event | `SubscriptionActivated` | Subscription & Cooperative Membership | `subscriptionId`, `producerId`, `activatedAt`, `validUntil` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    participant Gateway as Payment Gateway Service
    participant Sub as Subscription & Cooperative Membership
    participant App as App móvil Viora (subscription status)

    Gateway->>Sub: 1. ProcessPaymentConfirmation
    Note over Sub: paymentId, subscriptionId, status, amount, currency, paidAt

    rect rgb(240, 248, 255)
        Sub-->>App: 2. SubscriptionPaymentApproved
        Note over App: paymentId, subscriptionId, amount, currency, approvedAt

        Sub-->>App: 3. SubscriptionActivated
        Note over App: subscriptionId, producerId, activatedAt, validUntil
    end
```

---

# 2. Domain Message Flow: Solicitud y generación del dosier agronómico

## Contexto
- **Bounded Context(s) involucrados:** Harvest Settlement & Performance Reporting
- **Actor(s):** Producer / TechnicalManager (Productor / Gestor técnico)
- **Trigger:** Solicitud explícita de un dossier agronómico consolidado para una parcela y campañas específicas.
- **Resumen:** El usuario requiere un documento oficial que resuma el rendimiento y comportamiento agronómico de sus parcelas. El sistema genera el dossier y retorna la referencia de descarga/consulta a la aplicación móvil.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `GenerateAgronomicDossier` | Productor / Gestor técnico -> App móvil Viora | `plotId`, `campaignIds[]` |
| 2 | Command | `GenerateAgronomicDossier` | App móvil Viora -> Harvest Settlement & Performance Reporting | `plotId`, `campaignIds[]` |
| 3 | Event | `AgronomicDossierGenerated` | Harvest Settlement & Performance Reporting | `dossierId`, `plotId`, `campaignIds[]`, `generatedAt`, `documentReference` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Usuario as Productor / Gestor técnico
    participant App as App móvil Viora
    participant Harvest as Harvest Settlement & Performance Reporting

    Usuario->>App: 1. GenerateAgronomicDossier
    Note over App: plotId, campaignIds[]

    App->>Harvest: 2. GenerateAgronomicDossier
    Note over Harvest: plotId, campaignIds[]

    Harvest-->>App: 3. AgronomicDossierGenerated
    Note over App: dossierId, plotId, campaignIds[], generatedAt, documentReference
```

---

# 3. Domain Message Flow: Cierre de cosecha, evaluación de estabilización y actualización del acopio

## Contexto
- **Bounded Context(s) involucrados:** Harvest Settlement & Performance Reporting, Cooperative Operations & Territorial Intelligence
- **Actor(s):** Producer (Productor)
- **Trigger:** Cierre formal de la cosecha de una campaña por parte del productor.
- **Resumen:** Al liquidar la cosecha de una campaña, se evalúa la curva de estabilización de rendimiento histórica y simultáneamente se recalcula el volumen de acopio proyectado a nivel territorial/cooperativo.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `SettleCampaignHarvest` | Productor -> App móvil Viora | `plotId`, `campaignId`, `harvestedAt`, `totalYieldKg` |
| 2 | Command | `SettleCampaignHarvest` | App móvil Viora -> Harvest Settlement & Performance Reporting | `plotId`, `campaignId`, `harvestedAt`, `totalYieldKg` |
| 3 | Event | `CampaignHarvestSettled` | Harvest Settlement & Performance Reporting | `plotId`, `campaignId`, `settlementId`, `harvestedAt`, `totalYieldKg`, `settledAt` |
| 4 | Policy / Command | `ProjectCooperativeIntakeVolume` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `plotId`, `settlementId`, `totalYieldKg` |
| 5 | Event | `CooperativeIntakeVolumeProjected` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `projectedVolume`, `unit`, `samplingCoverage`, `projectedAt` |
| 6 | Event | `YieldStabilizationCurveEvaluated` | Harvest Settlement & Performance Reporting | `plotId`, `baselineCampaignId`, `campaignsUsed[]`, `curvePoints[] { campaignId, totalYieldKg }`, `evaluatedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Productor
    participant App as App móvil Viora
    participant Harvest as Harvest Settlement & Performance Reporting
    participant CoopOps as Cooperative Operations & Territorial Intelligence

    Productor->>App: 1. SettleCampaignHarvest
    Note over App: plotId, campaignId, harvestedAt, totalYieldKg

    App->>Harvest: 2. SettleCampaignHarvest
    Note over Harvest: plotId, campaignId, harvestedAt, totalYieldKg

    Harvest-->>App: 3. CampaignHarvestSettled
    Note over App: plotId, campaignId, settlementId, harvestedAt, totalYieldKg, settledAt

    Harvest-->>App: 6. YieldStabilizationCurveEvaluated
    Note over App: plotId, baselineCampaignId, campaignsUsed[], curvePoints[] { campaignId, totalYieldKg }, evaluatedAt

    Harvest->>CoopOps: Trigger / Sincronización

    rect rgb(240, 248, 255)
        Note over CoopOps: 4. ProjectCooperativeIntakeVolume<br/>(cooperativeId, campaignId, plotId, settlementId, totalYieldKg)
        CoopOps-->>App: 5. CooperativeIntakeVolumeProjected
        Note over App: cooperativeId, campaignId, projectedVolume, unit, samplingCoverage, projectedAt
    end
```

---

# 4. Domain Message Flow: Confirmación del raleo y reajuste del acopio cooperativo

## Contexto
- **Bounded Context(s) involucrados:** Crop Load Regulation & Thinning Advisory, Cooperative Operations & Territorial Intelligence
- **Actor(s):** Producer (Productor)
- **Trigger:** Confirmación de la ejecución efectiva del raleo prescrito en la parcela.
- **Resumen:** El productor registra el porcentaje real de raleo ejecutado en campo, lo que confirma la ejecución y reajusta la proyección global de volumen de acopio para la cooperativa.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `ConfirmThinningExecution` | Productor -> App móvil Viora | `plotId`, `campaignId`, `prescriptionId`, `executedAt`, `actualRemovalPercentage` |
| 2 | Command | `ConfirmThinningExecution` | App móvil Viora -> Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `prescriptionId`, `executedAt`, `actualRemovalPercentage` |
| 3 | Event | `ThinningExecutionConfirmed` | Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `prescriptionId`, `executionId`, `executedAt`, `actualRemovalPercentage`, `confirmedAt` |
| 4 | Policy / Command | `ProjectCooperativeIntakeVolume` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `executionId`, `executedAt`, `plotId`, `executionId` |
| 5 | Event | `CooperativeIntakeVolumeProjected` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `projectedVolume`, `unit`, `samplingCoverage`, `projectedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Productor
    participant App as App móvil Viora
    participant CropLoad as Crop Load Regulation & Thinning Advisory
    participant CoopOps as Cooperative Operations & Territorial Intelligence

    Productor->>App: 1. ConfirmThinningExecution
    Note over App: plotId, campaignId, prescriptionId, executedAt, actualRemovalPercentage

    App->>CropLoad: 2. ConfirmThinningExecution
    Note over CropLoad: plotId, campaignId, prescriptionId, executedAt, actualRemovalPercentage

    CropLoad-->>App: 3. ThinningExecutionConfirmed
    Note over App: plotId, campaignId, prescriptionId, executionId, executedAt, actualRemovalPercentage, confirmedAt

    CropLoad->>CoopOps: Trigger / Sincronización

    rect rgb(240, 248, 255)
        Note over CoopOps: 4. ProjectCooperativeIntakeVolume<br/>(cooperativeId, campaignId, executionId, executedAt, plotId, executionId)
        CoopOps-->>App: 5. CooperativeIntakeVolumeProjected
        Note over App: cooperativeId, campaignId, projectedVolume, unit, samplingCoverage, projectedAt
    end
```

---

# 5. Domain Message Flow: Ingesta de telemetría y reajuste del potencial floral

## Contexto
- **Bounded Context(s) involucrados:** Agroclimatic Telemetry & Sensor Monitoring, Phenology & Historical Bearing Analytics
- **Actor(s):** Fuente de telemetría (Estación meteorológica / Sensores IoT)
- **Trigger:** Ingesta por horas de lecturas de temperatura del aire desde estaciones/sensores de campo.
- **Resumen:** La recepción de datos telemétricos calcula la acumulación diaria de porciones de frío invernal. Si se detecta una anomalía térmica, el sistema recalcula y reajusta automáticamente el potencial de rendimiento floral proyectado.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Command | `IngestHourlyTelemetry` | Fuente de telemetría -> Agroclimatic Telemetry & Sensor Monitoring | `plotId`, `sensorNodeId`, `readings[] { observedAt, airTemperatureC }` |
| 2 | Event | `TelemetryDataIngested` | Agroclimatic Telemetry & Sensor Monitoring | `plotId`, `sensorNodeId`, `telemetryBatchId`, `periodStart`, `periodEnd`, `ingestedAt` |
| 3 | Policy / Command | `ComputeDailyChillAccumulation` | Phenology & Historical Bearing Analytics | `plotId`, `date`, `timeZone`, `telemetryBatchId` |
| 4 | Event | `WinterChillPortionsAccumulated` | Phenology & Historical Bearing Analytics | `plotId`, `campaignId`, `date`, `dailyChillPortions`, `accumulatedChillPortions` |
| 5 | Event | `WinterThermalAnomalyDetected` | Phenology & Historical Bearing Analytics | `plotId`, `campaignId`, `anomalyId`, `periodStart`, `periodEnd`, `detectedAt` |
| 6 | Event | `PotentialFloralYieldReadjusted` | Phenology & Historical Bearing Analytics | `plotId`, `campaignId`, `anomalyId`, `previousPotential`, `revisedPotential`, `unit`, `adjustedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Telemetria as Fuente de telemetría
    participant Agro as Agroclimatic Telemetry & Sensor Monitoring
    participant Analytics as Phenology & Historical Bearing Analytics
    participant App as App móvil Viora

    Telemetria->>Agro: 1. IngestHourlyTelemetry
    Note over Agro: plotId, sensorNodeId, readings[] { observedAt, airTemperatureC }

    Agro-->>App: 2. TelemetryDataIngested
    Note over App: plotId, sensorNodeId, telemetryBatchId, periodStart, periodEnd, ingestedAt

    Agro->>Analytics: Trigger / Sincronización

    rect rgb(240, 248, 255)
        Note over Analytics: 3. ComputeDailyChillAccumulation<br/>(plotId, date, timeZone, telemetryBatchId)
        Analytics-->>App: 4. WinterChillPortionsAccumulated
        Note over App: plotId, campaignId, date, dailyChillPortions, accumulatedChillPortions
    end

    rect rgb(255, 245, 238)
        Analytics-->>App: 5. WinterThermalAnomalyDetected
        Note over App: plotId, campaignId, anomalyId, periodStart, periodEnd, detectedAt

        Analytics-->>App: 6. PotentialFloralYieldReadjusted
        Note over App: plotId, campaignId, anomalyId, previousPotential, revisedPotential, unit, adjustedAt
    end
```

---

# 6. Domain Message Flow: Registro histórico, evaluación de alternancia y ajuste del raleo

## Contexto
- **Bounded Context(s) involucrados:** Phenology & Historical Bearing Analytics, Crop Load Regulation & Thinning Advisory, Cooperative Operations & Territorial Intelligence
- **Actor(s):** Producer (Productor)
- **Trigger:** Registro manual del historial de cosechas de campañas previas por parte del productor.
- **Resumen:** Al ingresar rendimientos históricos, el sistema calcula el Índice de Alternancia Floral (BBI), determina la carga frutal sostenible, emite la prescripción de raleo y actualiza la matriz de riesgo cooperativa.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `LogHistoricalHarvests` | Productor -> App móvil Viora | `plotId`, `harvests[]: campaign`, `totalYieldKg` |
| 2 | Command | `LogHistoricalHarvests` | App móvil Viora -> Phenology & Historical Bearing Analytics | `plotId`, `harvests[]: campaign`, `totalYieldKg` |
| 3 | Policy / Command | `DetermineSustainableCropLoad` | Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `assessmentId`, `bbiValue` |
| 4 | Event | `ThinningPrescribed` | Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `prescriptionId`, `targetCropLoad`, `recommendedRemoval` |
| 5 | Policy / Command | `EvaluateCooperativeRiskMatrix` | Cooperative Operations & Territorial Intelligence | `plotId`, `campaignId`, `riskAssessment` |
| 6 | Event | `CooperativeRiskMatrixEvaluated` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `riskMatrix`, `evaluatedAt` |
| 7 | Event | `BiennialBearingIndexAssessed` | Phenology & Historical Bearing Analytics | `plotId`, `assessmentId`, `bbiValue`, `campaignsUsed`, `assessedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Productor
    participant App as App móvil Viora
    participant Analytics as Phenology & Historical Bearing Analytics
    participant CropLoad as Crop Load Regulation & Thinning Advisory
    participant CoopOps as Cooperative Operations & Territorial Intelligence

    Productor->>App: 1. LogHistoricalHarvests
    Note over App: plotId, harvests[]: campaign, totalYieldKg

    App->>Analytics: 2. LogHistoricalHarvests
    Note over Analytics: plotId, harvests[]: campaign, totalYieldKg

    Analytics-->>App: 7. BiennialBearingIndexAssessed
    Note over App: plotId, assessmentId, bbiValue, campaignsUsed, assessedAt

    Analytics->>CropLoad: Trigger / Sincronización

    rect rgb(240, 248, 255)
        Note over CropLoad: 3. DetermineSustainableCropLoad<br/>(plotId, campaignId, assessmentId, bbiValue)
        CropLoad-->>App: 4. ThinningPrescribed
        Note over App: plotId, campaignId, prescriptionId, targetCropLoad, recommendedRemoval
    end

    CropLoad->>CoopOps: Trigger / Sincronización

    rect rgb(255, 245, 238)
        Note over CoopOps: 5. EvaluateCooperativeRiskMatrix<br/>(plotId, campaignId, riskAssessment)
        CoopOps-->>App: 6. CooperativeRiskMatrixEvaluated
        Note over App: cooperativeId, campaignId, riskMatrix, evaluatedAt
    end
```

---

# 7. Domain Message Flow: Sincronización de muestreo, prescripción de raleo y actualización cooperativa

## Contexto
- **Bounded Context(s) involucrados:** Crop Load Regulation & Thinning Advisory, Cooperative Operations & Territorial Intelligence
- **Actor(s):** Producer (Productor)
- **Trigger:** Sincronización de un lote de muestreos de campo suficientes desde la aplicación móvil.
- **Resumen:** Con la ingesta del lote de muestreos, el sistema emite automáticamente una prescripción de raleo adaptada y desencadena la actualización de proyecciones de acopio y matriz de riesgo territorial.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `IngestFieldSamplingsBatch` | Productor -> App móvil Viora | `plotId`, `campaignId`, `samplingRoundId`, `batchId`, `samples[]` |
| 2 | Command | `IngestFieldSamplingsBatch` | App móvil Viora -> Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `samplingRoundId`, `batchId`, `samples[]` |
| 3 | Policy / Command | `ProjectCooperativeIntakeVolume` | Cooperative Operations & Territorial Intelligence | `plotId`, `campaignId`, `samplingRoundId`, `samplingSummary` |
| 4 | Event | `CooperativeIntakeVolumeProjected` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `projectedVolume`, `unit`, `samplingCoverage` |
| 5 | Policy / Command | `EvaluateCooperativeRiskMatrix` | Cooperative Operations & Territorial Intelligence | `plotId`, `campaignId`, `riskAssessment` |
| 6 | Event | `ThinningPrescribed` | Crop Load Regulation & Thinning Advisory | `plotId`, `campaignId`, `prescriptionId`, `targetCropLoad`, `recommendedRemoval` |
| 7 | Event | `CooperativeRiskMatrixEvaluated` | Cooperative Operations & Territorial Intelligence | `cooperativeId`, `campaignId`, `riskMatrix`, `evaluatedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Productor
    participant App as App móvil Viora
    participant CropLoad as Crop Load Regulation & Thinning Advisory
    participant CoopOps as Cooperative Operations & Territorial Intelligence

    Productor->>App: 1. IngestFieldSamplingsBatch
    Note over App: plotId, campaignId, samplingRoundId, batchId, samples[]

    App->>CropLoad: 2. IngestFieldSamplingsBatch
    Note over CropLoad: plotId, campaignId, samplingRoundId, batchId, samples[]

    CropLoad->>App: 6. ThinningPrescribed
    Note over App: plotId, campaignId, prescriptionId, targetCropLoad, recommendedRemoval

    CropLoad->>CoopOps: Trigger / Sincronización

    rect rgb(240, 248, 255)
        Note over CoopOps: 3. ProjectCooperativeIntakeVolume<br/>(plotId, campaignId, samplingRoundId, samplingSummary)
        CoopOps-->>App: 4. CooperativeIntakeVolumeProjected
        Note over App: cooperativeId, campaignId, projectedVolume, unit, samplingCoverage
    end

    rect rgb(255, 245, 238)
        Note over CoopOps: 5. EvaluateCooperativeRiskMatrix<br/>(plotId, campaignId, riskAssessment)
        CoopOps-->>App: 7. CooperativeRiskMatrixEvaluated
        Note over App: cooperativeId, campaignId, riskMatrix, evaluatedAt
    end
```

---

# 8. Domain Message Flow: Solicitud de recuperación de contraseña y comunicación al servicio de correo

## Contexto
- **Bounded Context(s) involucrados:** Identity & Access Management
- **Actor(s):** Producer / TechnicalManager (Productor / Gestor técnico)
- **Trigger:** Solicitud de restablecimiento de contraseña olvidada por parte del usuario.
- **Resumen:** El usuario solicita la recuperación de su cuenta indicando su correo electrónico. El contexto de IAM procesa la solicitud, emite el evento correspondiente para enviar el correo transaccional con las instrucciones/enlace de recuperación y confirma la recepción a la app móvil.

## Secuencia de mensajes

| # | Tipo | ID / Nombre | Bounded Context / Elemento | Detalle / Payload |
|---|------|-------------|----------------------------|-------------------|
| 1 | Actor Command | `RequestPasswordReset` | Productor / Gestor técnico -> App móvil Viora | `email` |
| 2 | Command | `RequestPasswordReset` | App móvil Viora -> Identity & Access Management | `email` |
| 3 | Event | `PasswordResetRequested` | Identity & Access Management -> Transactional Mail Service | `requestId`, `recipientEmail`, `recoveryUrl`, `expiresAt`, `requestedAt` |
| 4 | Event | `PasswordResetRequested` | Identity & Access Management -> App móvil Viora | `requestId`, `requestedAt` |

## Diagrama

```mermaid
sequenceDiagram
    autonumber
    actor Usuario as Productor / Gestor técnico
    participant App as App móvil Viora
    participant IAM as Identity & Access Management
    participant Mail as Transactional Mail Service

    Usuario->>App: 1. RequestPasswordReset
    Note over App: email

    App->>IAM: 2. RequestPasswordReset
    Note over IAM: email

    IAM-->>Mail: 3. PasswordResetRequested
    Note over Mail: requestId, recipientEmail, recoveryUrl, expiresAt, requestedAt

    IAM-->>App: 4. PasswordResetRequested
    Note over App: requestId, requestedAt
```
