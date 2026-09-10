# EventStorming — Paso 3: Identificación y Análisis de Pain Points

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Puntos de Dolor, Fricciones Operativas y Riesgos Agronómicos (*Pain Points*, Post-its Rojos, `#FF4D4D`)  

---

## 1. Marco Metodológico y Definición de Fricciones del Dominio

En el Paso 3 del taller de EventStorming, se procede a la identificación sistemática de los puntos de fricción, cuellos de botella operativos, riesgos fisiológicos e incertidumbres críticas que enfrentan los actores clave (productores olivareros y gestores técnicos de cooperativas) a lo largo del proceso productivo.

Para modelar adecuadamente el espacio del problema (*Problem Space*) bajo principios de Domain-Driven Design:

1. **Enfoque Centrado en el Dominio Real:** Los puntos de dolor representan dificultades concretas del manejo agronómico, biológico y logístico en los valles de Tacna, evitando el registro de fallas técnicas transitorias o de conectividad superficial.
2. **Formulación como Preguntas de Oportunidad (*Opportunity Questions*):** Cada punto crítico se formula en inglés bajo la estructura estratégica:  
   `How to [acción deseada] when/despite [fricción o condición adversa]?`  
   Esta convención permite orientar el diseño posterior de comandos, políticas reactivas y modelos de decisión hacia la resolución directa del problema.
3. **Asociación Causal con Eventos de Dominio:** Cada punto de dolor se vincula directamente con el evento de dominio donde se manifiesta la fricción o donde se requiere una decisión técnica informada.

---

## 2. Resumen Cuantitativo por Timeline

```
+---------------------------------------------------------------------------------------+
|                       DISTRIBUCIÓN DE PAIN POINTS POR TIMELINE                        |
+---------------------------------------------------------------------------------------+
| Timeline 1A: IAM (Seguridad y Acceso):                          01 Pain Point  (PP02)  |
| Timeline 1B: User Profiles (Identidad y Contacto):              01 Pain Point  (PP01)  |
| Timeline 2: Adquisición SaaS y Membresía Cooperativa:           02 Pain Points (PP03-PP04) |
| Timeline 3: Delimitación Territorial y Catastro Predial:        02 Pain Points (PP05-PP06) |
| Timeline 4: Sensorización Virtual y Monitoreo Agroclimático:    04 Pain Points (PP07-PP10) |
| Timeline 5: Diagnóstico Histórico y Reposo Invernal (Erez):     04 Pain Points (PP11-PP14) |
| Timeline 6: Muestreo de Cuajado y Aclareo Frutal (Core):        06 Pain Points (PP15-PP20) |
| Timeline 7: Cierre de Cosecha y Certificación Agronómica:       02 Pain Points (PP21-PP22) |
| Timeline 8: Supervisión Territorial e Inteligencia Cooperativa: 02 Pain Points (PP23-PP24) |
+---------------------------------------------------------------------------------------+
| TOTAL DE PAIN POINTS (POST-ITS ROJOS):                         24 PAIN POINTS         |
+---------------------------------------------------------------------------------------+
```

---

## 3. Matriz Maestra de Pain Points (PP01 a PP24)

### Timelines 1 a 4: Plataforma, Perfiles, Catastro y Sensorización

| ID | Opportunity Question (*In English*) | Timeline | Domain Event Asociado | Actor Afectado | Riesgo / Fricción de Negocio (Español) | US / BDD Origen |
| :---: | :--- | :---: | :---: | :---: | :--- | :---: |
| **PP01** | *How to validate international phone format (E.164) and ensure reliable contact channels across border agricultural zones?* | Timeline 1B: User Profiles | `EV08`<br>ProfileCreated | Productor Olivarero | Discrepancias de longitud y formato telefónico en zonas de frontera (Tacna/Arica) que aíslan al productor de la asistencia técnica. | US01 (Onboarding) |
| **PP02** | *How to prevent account takeover and unauthorized access while maintaining frictionless authentication for rural producers?* | Timeline 1A: IAM | `EV02 / EV03`<br>UserAuthenticated / Failed | Productor Olivarero | Fricción de acceso en campo con credenciales olvidadas o riesgo de vulneración de datos productivos y comerciales. | US02 (Escenario 2) |
| **PP03** | *How to prevent service interruption and guide farmers when rural credit or debit card transactions are declined?* | Timeline 2: Suscripción | `EV12`<br>SubscriptionPaymentFailed | Productor Independiente | Rechazo de pagos en línea por tarjetas no habilitadas para compras web o conectividad bancaria intermitente en valles agrícolas. | US06 (Escenario 2) |
| **PP04** | *How to prevent quota exhaustion and avoid fraudulent redemption of cooperative membership invitation codes?* | Timeline 2: Suscripción | `EV13 / EV14`<br>CooperativeCodeRedeemed | Gestor Técnico | Descontrol en el cupo corporativo contratado si los códigos de invitación se filtran o son consumidos indebidamente. | US07 (Escenario 2) / US08 |
| **PP05** | *How to ensure accurate cadastral polygon capture under fluctuating mobile GPS accuracy in remote olive groves?* | Timeline 3: Parcelas | `EV15 / EV16`<br>PlotDelimited | Productor Olivarero | Deriva de señal GPS por nubosidad costera o lejanía a antenas celulares, provocando distorsión en el cálculo de hectáreas. | US09 (Escenario 2) / US10 |
| **PP06** | *How to prevent accidental grove deactivation while preserving years of agronomic history and audit records?* | Timeline 3: Parcelas | `EV17`<br>PlotRemoved | Productor Olivarero | Pérdida irreparable de la trazabilidad histórica de cosechas y frío acumulado por eliminación accidental del predio. | US11 (Escenario 2) |
| **PP07** | *How to ensure reliable probe calibration across heterogeneous olive soil horizons (30 cm vs. 60 cm)?* | Timeline 4: Sensores IoT | `EV19`<br>VirtualSensorNodeCalibrated | Productor Olivarero | Error en la calibración de sondas de humedad según el tipo de suelo (franco-arenoso vs arcilloso) alterando lecturas radiculares. | US15 (Escenario 2) |
| **PP08** | *How to detect rapid soil moisture drops below the refill point (< 18%) early enough to prevent tree dehydration?* | Timeline 4: Sensores IoT | `EV22`<br>HydricStressAlertTriggered | Productor Olivarero | Daño fisiológico irreversible en el olivar si el productor no detecta a tiempo que el agua útil del suelo se agotó. | US18 (Escenario 1) |
| **PP09** | *How to protect delicate olive flowers from stigmatic drying during extreme heatwaves (> 32°C) in bloom?* | Timeline 4: Sensores IoT | `EV23`<br>ThermalThresholdAlertTriggered | Productor Olivarero | Aborto floral masivo y desecación del estigma por olas de calor con baja humedad relativa durante los días críticos de antesis. | US18 (Escenario 2) |
| **PP10** | *How to ensure microclimate forecast reliability when national weather stations are distant from rural groves?* | Timeline 4: Sensores IoT | `EV25`<br>WeatherForecastIngested | Productor Olivarero | Pronósticos meteorológicos generalistas que no reflejan el microclima real de los valles olivareros de Tacna (La Yarada, Sama, Ite). | US19 (Escenario 2) |

---

### Timelines 5 a 8: Reposo Invernal, Regulación de Carga, Cosecha y Cooperativa

| ID | Opportunity Question (*In English*) | Timeline | Domain Event Asociado | Actor Afectado | Riesgo / Fricción de Negocio (Español) | US / BDD Origen |
| :---: | :--- | :---: | :---: | :---: | :--- | :---: |
| **PP11** | *How to assess biennial bearing severity when farmers lack 3+ consecutive years of historical harvest records?* | Timeline 5: Vecería & Erez | `EV27 / EV28`<br>BiennialBearingIndexAssessed | Productor Olivarero | Imposibilidad de clasificar formalmente la severidad de la alternancia en fundos nuevos o con contabilidad informal de cosechas. | US20 (Escenario 2) |
| **PP12** | *How to reliably track winter chill portions under the Erez model when temperature series contain gaps?* | Timeline 5: Vecería & Erez | `EV31`<br>WinterChillPortionsAccumulated | Productor Olivarero | Cálculo distorsionado de frío fisiológico si hay interrupción en la telemetría térmica durante los meses de invierno (mayo a agosto). | US22 (Escenario 1) |
| **PP13** | *How to detect unseasonal winter heatwaves (> 24°C) that destroy accumulated chill portions under ENSO events?* | Timeline 5: Vecería & Erez | `EV33`<br>WinterThermalAnomalyDetected | Productor Olivarero | Inviernos cálidos anómalos causados por El Niño que destruyen los intermediarios térmicos del modelo Erez, impidiendo la inducción floral. | US23 (Escenario 1) |
| **PP14** | *How to dynamically readjust floral potential forecasts to prevent irreversible OFF-year yield collapse?* | Timeline 5: Vecería & Erez | `EV34`<br>PotentialFloralYieldReadjusted | Productor Olivarero | Desconcierto del agricultor sobre cuánta floración esperar tras un invierno cálido, afectando el presupuesto de la campaña. | US23 (Escenario 2) |
| **PP15** | *How to conduct fast and accurate fruit set samplings in remote olive groves lacking cellular connectivity?* | Timeline 6: Cuajado & Aclareo | `EV35 / EV36`<br>TreeFruitSetSampledInField | Evaluador de Campo | Dificultad para registrar conteos de flores y frutos a pie de árbol en zonas rurales aisladas sin conexión a internet. | US24 (Escenario 1) |
| **PP16** | *How to ensure sampling statistical representativeness across large orchards without overburdening field workers?* | Timeline 6: Cuajado & Aclareo | `EV37 / EV38`<br>SamplingRoundCompleted | Productor Olivarero | Prescripciones agronómicas sesgadas e imprecisas si el productor evalúa menos de 5 árboles por unidad de manejo. | US25 (Escenario 2) |
| **PP17** | *How to calculate sustainable fruit load per branch meter before excessive fruit mass exhausts tree carbohydrates?* | Timeline 6: Cuajado & Aclareo | `EV39 / EV40`<br>OverloadRiskDetected | Productor Olivarero | Sobrecarga de frutos no percibida visualmente que agota las reservas de carbohidratos en madera y raíces, condenando el año siguiente. | US26 (Escenario 2) |
| **PP18** | *How to prescribe precise fruit removal percentages tailored to specific olive varieties (Criolla vs. Sevillana)?* | Timeline 6: Cuajado & Aclareo | `EV41 / EV42`<br>ThinningPrescribed | Productor Olivarero | Falta de criterio técnico en el productor para saber exactamente qué porcentaje de fruta retirar y en qué brotes intervenir. | US27 (Escenario 1) |
| **PP19** | *How to alert farmers before endocarp lignification permanently closes the biological fruit thinning window?* | Timeline 6: Cuajado & Aclareo | `EV43`<br>ThinningWindowClosedByPitHardening | Productor Olivarero | Pérdida de la ventana fenológica de aclareo: una vez endurecido el carozo (diciembre), la fruta remanente ya inhibió la inducción floral del próximo año. | US27 (Escenario 3) |
| **PP20** | *How to mitigate yield collapse when manual labor shortages delay thinning execution beyond the optimal window?* | Timeline 6: Cuajado & Aclareo | `EV45`<br>LateThinningExecutionRecorded | Productor Olivarero | Escasez estacional de jornaleros agrícolas en Tacna que obliga a aclarear tardíamente, perdiendo eficacia de mitigación. | US28 (Escenario 2) |
| **PP21** | *How to verify interannual yield stabilization curve recovery against the baseline campaign after severe bearing?* | Timeline 7: Cierre Cosecha | `EV46 / EV47`<br>YieldStabilizationCurveEvaluated | Productor Olivarero | Dificultad para demostrar empíricamente si la vecería se ha atenuado y si el olivar ha entrado en un régimen de producción estable. | US29 (Escenario 2) |
| **PP22** | *How to compile multi-source agronomic traceability (plots, chilling, thinning, yields) into an auditable dossier?* | Timeline 7: Cierre Cosecha | `EV48`<br>AgronomicDossierGenerated | Productor Olivarero | Complejidad para consolidar bitácoras dispersas para sustentar créditos agrícolas ante entidades financieras o certificar calidad. | US30 (Escenario 1) |
| **PP23** | *How to prioritize technical assistance visits across hundreds of dispersed partner plots based on real-time overload risk?* | Timeline 8: Cooperativa | `EV49`<br>CooperativeRiskMatrixEvaluated | Gestor Técnico | Imposibilidad física del equipo técnico de la cooperativa de visitar todas las parcelas a tiempo durante la corta ventana de aclareo. | US31 (Escenario 1) |
| **PP24** | *How to project early collective intake volumes of green and black olives when many partner groves lack field samplings?* | Timeline 8: Cooperativa | `EV50 / EV51`<br>CooperativeIntakeVolumeProjected | Gestor Técnico | Desviaciones financieras e incertidumbre logística en la planta de procesamiento por baja cobertura de muestreos en los socios. | US32 (Escenario 2) |

---

## 4. Guía de Ubicación Visual en el Tablero de EventStorming

1. **Ubicación junto al Evento:** Cada uno de los **24 post-its rojos** se fija en el carril correspondiente, posicionado en la parte superior o contiguo al Domain Event naranja listado en la columna *Domain Event Asociado*.
2. **Rotación:** Inclinados a 45° respecto a los rectángulos naranjas para enfatizar su naturaleza de riesgo o alerta.
3. **Conexión con Políticas y Comandos:** Varios de estos Pain Points (ej. `PP01`, `PP08`, `PP13`, `PP17`, `PP19`) son los detonantes directos de las **Políticas Reactivas (Post-its Lila / Paso 6)** y la normalización de entidades en el sistema.
