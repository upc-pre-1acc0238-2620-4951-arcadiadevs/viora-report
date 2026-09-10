# EventStorming — Paso 8: Identificación de Sistemas Externos

**Proyecto:** Viora — Ecosistema Digital para la Mitigación de la Vecería en la Olivicultura  
**Fase Metodológica:** Strategic Domain-Driven Design (Strategic DDD)  
**Elemento del Modelo:** Sistemas Externos de Terceros (*External Systems*, Post-its Rosa, `#FF69B4`)  

---

## 1. Fundamentación Metodológica y Patrones Estratégicos de Integración DDD

### 1.1 El Rol de los Sistemas Externos en EventStorming
En la metodología **EventStorming** (Alberto Brandolini), un **Sistema Externo (Post-it Rosa)** representa cualquier servicio, plataforma o proveedor de infraestructura fuera de los límites de control directo del dominio de Viora. Las interacciones se clasifican según la dirección del flujo de datos:

1. **Flujo de Entrada (Inbound / Ingress):** El sistema externo origina o envía información hacia Viora (e.g., confirmación asíncrona de pago vía webhook por parte de la pasarela de pagos, o series meteorológicas entregadas por APIs climáticas).
2. **Flujo de Salida (Outbound / Egress):** Viora despacha peticiones hacia el servicio externo (e.g., solicitud de envío de correos transaccionales para restablecimiento de contraseña o petición de teselas cartográficas satelitales).

```
  +--------------------------+                                 +--------------------------+
  |    SISTEMA EXTERNO       |   Webhook Asíncrono (Inbound)   |      DOMINIO VIORA       |
  |  (Pasarela de Pagos)     | ------------------------------> | [EXT01 Adapter / ACL]    |
  |      [Post-it Rosa]      |                                 | [CMD09: ProcessPayment]  |
  +--------------------------+                                 +--------------------------+
                                                                            |
                                                                            v
  +--------------------------+                                 +--------------------------+
  |    SISTEMA EXTERNO       |    Envío Transaccional (Outbound)|     AGREGADO VIORA       |
  |   (Servicio de Correo)   | <------------------------------ | [EV06: PasswordResetReq] |
  |      [Post-it Rosa]      |                                 | [POL / Mail Dispatcher]  |
  +--------------------------+                                 +--------------------------+
```

### 1.2 Patrones Tácticos DDD para el Aislamiento de Dominio
Para proteger la integridad del modelo del dominio olivarero de Viora frente a dependencias externas, se aplican dos patrones canónicos de Eric Evans:

* **Capa Anti-Corrupción (Anti-Corruption Layer - ACL):** Se implementa como un adaptador intermedio que traduce las estructuras de datos propietarias de los proveedores externos (payloads JSON de APIs comerciales) en Entidades, Value Objects y Comandos propios del lenguaje ubicuo de Viora.
* **Open Host Service (OHS) / Published Language (PL):** Se utiliza para la recepción de Webhooks firmados y el intercambio de linderos geográficos mediante estándares abiertos y ampliamente documentados (e.g., estándar GeoJSON bajo RFC 7946).

### 1.3 Delimitación de Alcance de Dependencias Externas
De acuerdo con las especificaciones funcionales y el modelo de requerimientos del sistema:
* **Autonomía de User Profiles (Validación Telefónica Local):** Conforme a las especificaciones de `US01` y `TS04`, la validación del formato telefónico internacional bajo el estándar E.164 se realiza en el backend mediante la biblioteca local `libphonenumber`, sin dependencia de servicios de mensajería SMS externos ni APIs de telecomunicaciones de terceros, manteniendo a `User Profiles` como un contexto de soporte autónomo sin sistemas externos asociados.
* **Canal Transaccional de Correo:** El despacho de correos se restringe a eventos de seguridad críticos, específicamente la recuperación de credenciales mediante token criptográfico de vigencia acotada (`US05`).
* **Soberanía y Acoplamiento Controlado:** Se priorizan interfaces bien definidas mediante adaptadores ACL para aislar el núcleo agronómico frente a cambios de proveedor tecnológico.

---

## 2. Resumen Consolidado de Sistemas Externos

```
+-----------------------------------------------------------------------------------------------+
|                       INVENTARIO DE SISTEMAS EXTERNOS DE VIORA (POST-ITS ROSA)                |
+-----------------------------------------------------------------------------------------------+
| EXT01: Payment Gateway Service        (Pasarela de Pagos Digital: Mercado Pago Checkout Pro)  |
| EXT02: Satellite Basemap & GIS Provider (Cartografía Satelital: Mapbox / OpenStreetMap)       |
| EXT03: Agroclimatic Weather API       (Servicio Meteorológico: SENAMHI / OpenWeather Agro)    |
| EXT04: Transactional Mail Service     (Servicio Transaccional de Correo: SendGrid / AWS SES)  |
+-----------------------------------------------------------------------------------------------+
| TOTAL DE SISTEMAS EXTERNOS IDENTIFICADOS: 04 SERVICIOS DE TERCEROS                            |
+-----------------------------------------------------------------------------------------------+
```

---

## 3. Catálogo Detallado de Sistemas Externos (EXT01 a EXT04)

---

### **EXT01: Payment Gateway Service**
* **Identificador:** `EXT01`
* **Nombre del Sistema:** `PaymentGatewayService`
* **Proveedores de Referencia:** Mercado Pago Sandbox (Checkout Pro) para suscripciones en Soles (PEN), sin sobrecosto de multimoneda.
* **Dirección del Flujo:** Bidireccional (Checkout interactivo Outbound $\rightarrow$ Notificación asíncrona Inbound vía Webhook).
* **Protocolo y Mecanismo Técnico:** HTTPS REST / Webhook firmado criptográficamente (cabecera `x-signature` con HMAC-SHA256 para verificación anti-manipulación e idempotencia por `transaction_id`).
* **Patrón Táctico DDD:** **Anti-Corruption Layer (ACL)** + **Open Host Service (OHS)**. El adaptador `PaymentGatewayAdapter` transforma el payload de cobro exitoso o declinado en el comando interno de Viora `CMD09: ProcessPaymentConfirmation`.
* **Bounded Context Relacionado:** `Subscription & Cooperative Membership`
* **Agregado Asociado:** `Subscription`
* **Eventos y Comandos Vinculados:**
  * Desencadena el comando: `CMD09: ProcessPaymentConfirmation`
  * Provoca la emisión de: `EV10` (`SubscriptionPaymentApproved`), `EV11` (`SubscriptionActivated`) o `EV12` (`SubscriptionPaymentFailed`).
* **Historias de Usuario:** `US06` (Escenarios 1, 2 y 3).
* **Descripción Funcional y Operación en Tacna:** Procesa el cobro digital anual de la tarifa plana de la licencia del Plan Productor según la extensión de hectáreas catastradas del olivar. Notifica al backend de Viora para habilitar inmediatamente el acceso a los algoritmos de vecería sin requerir validación humana manual.

---

### **EXT02: Satellite Basemap & GIS Provider**
* **Identificador:** `EXT02`
* **Nombre del Sistema:** `SatelliteBasemapAndGisProvider`
* **Proveedores de Referencia:** Mapbox Vector Tiles / OpenStreetMap / Google Maps Satellite API.
* **Dirección del Flujo:** Inbound (Consumo de teselas satelitales ortorrectificadas y renderizado cartográfico en el cliente web/móvil).
* **Protocolo y Mecanismo Técnico:** HTTPS Web Map Tile Service (WMTS) / REST API de teselas ráster de alta resolución espacial.
* **Patrón Táctico DDD:** **Published Language (PL)**. Viora intercambia la geometría de los fundos mediante el estándar abierto **GeoJSON** (RFC 7946, sistema geodésico WGS84 / EPSG:4326), asegurando interoperabilidad sin acoplar el modelo territorial a un proveedor cartográfico específico.
* **Bounded Context Relacionado:** `Olive Orchard & Plot Management`
* **Agregado Asociado:** `Plot`
* **Eventos y Comandos Vinculados:**
  * Alimenta las vistas: `RM02` (`PlotCadastralMapView`) y `RM13` (`CooperativeTerritorialRiskMatrixView`).
  * Habilita los comandos: `CMD12: DelimitPlot` y `CMD13: UpdatePlotBoundaries`.
  * Genera el evento: `EV15` (`PlotDelimited`).
* **Historias de Usuario:** `US09`, `US10`, `US12`.
* **Descripción Funcional y Operación en Tacna:** Provee el fondo cartográfico satelital ortorrectificado de los valles olivareros de Tacna (La Yarada, Magollo, Los Palos) con resolución suficiente para que el productor dibuje y ajuste los linderos perimétricos exactos de sus cuarteles y calcule su cabida neta en hectáreas.

---

### **EXT03: Agroclimatic Weather API**
* **Identificador:** `EXT03`
* **Nombre del Sistema:** `AgroclimaticWeatherApi`
* **Proveedores de Referencia:** SENAMHI (Servicio Nacional de Meteorología e Hidrología del Perú) / OpenWeather Agro API.
* **Dirección del Flujo:** Inbound (Ingesta periódica programada por Scheduler y consultas bajo demanda).
* **Protocolo y Mecanismo Técnico:** HTTPS REST API (JSON estructurado con series temporales horarias y proyecciones diarias a 7 días).
* **Patrón Táctico DDD:** **Anti-Corruption Layer (ACL)**. La capa `WeatherServiceAdapter` consume el JSON meteorológico externo, extrae temperaturas horarias, máximas, mínimas y humedades relativas, normaliza las unidades al Sistema Internacional (°C, %) y genera los Value Objects del dominio `WeatherRecord` y `ForecastDay`.
* **Bounded Context Relacionado:** `Agroclimatic Telemetry & Sensor Monitoring`
* **Agregado Asociado:** `TelemetrySeries`
* **Eventos y Comandos Vinculados:**
  * Ejecutado por el comando: `CMD19: IngestWeatherForecast` y `CMD23: ComputeDailyChillAccumulation`.
  * Provoca la emisión de: `EV25` (`WeatherForecastIngested`), `EV31` (`WinterChillPortionsAccumulated`) y eventualmente `EV33` (`WinterThermalAnomalyDetected`).
* **Historias de Usuario:** `US19`, `US22`, `US23`.
* **Descripción Funcional y Operación en Tacna:** Suministra las series históricas y el pronóstico de 7 días para las coordenadas georreferenciadas de las parcelas. Alimenta el modelo Dinámico de Erez para computar las Porciones de Frío invernales (Mayo a Agosto) y alerta preventivamente ante heladas radiativas o vientos secos en floración.

---

### **EXT04: Transactional Mail Service**
* **Identificador:** `EXT04`
* **Nombre del Sistema:** `TransactionalMailService`
* **Proveedores de Referencia:** SendGrid / Amazon SES / Mailgun / Servidor SMTP seguro con TLS 1.3.
* **Dirección del Flujo:** Outbound (Despacho de correos transaccionales desde el servidor Viora hacia la casilla del usuario).
* **Protocolo y Mecanismo Técnico:** HTTPS REST API / SMTP sobre TLS (autenticación mediante API Key rotativa y firma DKIM/SPF para prevenir clasificación como spam).
* **Patrón Táctico DDD:** **Anti-Corruption Layer (ACL)** + **Notification Gateway**. La interfaz de dominio `MailNotificationService` encapsula el despacho de plantillas HTML responsivas, aislando al agregado `UserAccount` de la biblioteca cliente del proveedor de correo.
* **Bounded Context Relacionado:** `Identity & Access Management (IAM)`
* **Agregado Asociado:** `UserAccount`
* **Eventos y Comandos Vinculados:**
  * Desencadenado por el comando: `CMD05: RequestPasswordReset`.
  * Provoca la emisión de: `EV06` (`PasswordResetRequested`).
* **Historias de Usuario:** `US05` (Escenarios 1 y 4).
* **Descripción Funcional y Operación en Tacna:** Despacha un correo electrónico seguro con un enlace de un solo uso que incorpora un token criptográfico efímero con vigencia estricta de 15 minutos. Permite al productor olivarero o gestor técnico restablecer el acceso a su cuenta sin intervención manual de soporte técnico.

---

## 4. Matriz de Trazabilidad: Sistema Externo $\rightarrow$ Contexto $\rightarrow$ Eventos y Comandos

| ID Sistema | Nombre del Sistema Externo | Tipo / Dirección | Protocolo / Patrón DDD | Contexto Vinculado | Comandos / Eventos Clave | US / BDD |
| :---: | :--- | :---: | :---: | :--- | :--- | :---: |
| **EXT01** | **Payment Gateway Service** | Inbound / Bidireccional | HTTPS Webhook / ACL | `Subscription & Cooperative Membership` | `CMD09: ProcessPaymentConfirmation`<br>$\rightarrow$ `EV10`, `EV11`, `EV12` | `US06` |
| **EXT02** | **Satellite Basemap & GIS Provider** | Inbound (Visualización) | WMTS Tiles / GeoJSON (PL) | `Olive Orchard & Plot Management` | `CMD12: DelimitPlot`<br>$\rightarrow$ `EV15` | `US09`, `US10`, `US12` |
| **EXT03** | **Agroclimatic Weather API** | Inbound (Ingesta) | REST API JSON / ACL | `Agroclimatic Telemetry & Sensor Monitoring` | `CMD19: IngestWeatherForecast`<br>$\rightarrow$ `EV25`, `EV31`, `EV33` | `US19`, `US22`, `US23` |
| **EXT04** | **Transactional Mail Service** | Outbound (Despacho) | HTTPS REST / SMTP (ACL) | `Identity & Access Management` | `CMD05: RequestPasswordReset`<br>$\rightarrow$ `EV06` | `US05` |

---

## 5. Consideraciones de Cierre

La integración controlada de estos cuatro sistemas externos proporciona a Viora capacidades de cobro digital (Mercado Pago Checkout Pro), cartografía satelital (Mapbox GIS), telemetría climática (SENAMHI) y notificaciones de seguridad (SendGrid Mail). El aislamiento de estos servicios mediante capas anticorrupción (ACL) salvaguarda el modelo de dominio frente a dependencias externas, asegurando estabilidad y resiliencia en la operación de campo.
