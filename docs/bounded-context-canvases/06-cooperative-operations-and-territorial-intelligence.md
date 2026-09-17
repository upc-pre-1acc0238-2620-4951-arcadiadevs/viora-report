# **Name:** Cooperative Operations and Territorial Intelligence

---

### **Purpose**

Gestiona la administración gremial, supervisión territorial e inteligencia sectorial para cooperativas olivícolas. Administra el padrón de socios, autoriza qué gestores técnicos pueden solicitar la emisión de lotes de códigos corporativos a Subscription y centraliza un semáforo territorial de riesgos fisiológicos y climáticos por valles a partir de eventos de Telemetry y Thinning. Su propósito es dotar de inteligencia operativa a los directivos técnicos para coordinar la logística asociativa y mitigar riesgos.

### **Strategic Classification**

* **Domain:** Supporting Subdomain (administración gremial, inteligencia sectorial y agregación territorial)
* **Business Model:** Territorial Intelligence & Collective Risk Governance (gobernanza de riesgos por valles y proyecciones de acopio)
* **Evolution:** Custom-Built (semáforo de alerta sectorial y proyecciones asociativas de aceituna)

### **Domain Roles**

* **Cooperative Member Registrar:** Administra el padrón unificado de socios productores olivareros.
* **Territorial Risk Matrix Controller:** Consolida el semáforo de riesgo fenológico y climático por sector.
* **Intake Volume Forecaster:** Proyecta y reajusta el volumen agregado de acopio de la organización.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Gestor / System** ➔ `EvaluateCooperativeRiskMatrix`
* **Aplicación Móvil** ➔ `ProjectCooperativeIntakeVolume`
* **Subscription & Cooperative Membership** ➔ `AffiliateCooperativeProducer`
* **User Profiles** ➔ `UpdateCooperativeMemberContact`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* Cooperative
* CooperativeName
* CooperativeMember
* AuthorizedManager
* TerritorialRiskMatrix
* EarlyIntakeProjection
* SamplingCoverageRate

### **Business Decisions**

*(Key business rules, policies and decisions)*
La decisión: la cooperativa proyecta de forma agregada cuánto volumen de aceituna va a recibir para planificar logística (transporte, tanques, contratos). La proyección solo es confiable con al menos un 50% de cobertura muestral del padrón; de lo contrario, se advierte. Cada vez que un socio completa un muestreo representativo, la proyección se recalcula automáticamente.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `CooperativeRiskMatrixEvaluated`, `CooperativeIntakeVolumeProjected`, `LowSamplingCoverageWarnedForIntake` ➔ **Gestor / Aplicación Móvil**
* `MemberAffiliated` ➔ **Gestor / Aplicación Móvil**

---

### **Assumptions**

1. La cooperativa cuenta con convenio institucional con sus socios para acceder a datos agregados y anonimizados de productividad predial.
2. Los gestores técnicos disponen de perfiles autorizados para la emisión de lotes y visualización sectorial.
3. Las demarcaciones de valles y subcuencas siguen la zonificación agroecológica oficial.

### **Verification Metrics**

1. La desviación de la proyección de acopio frente al volumen efectivamente asentado por los socios al cierre de campaña es menor al 10 %.
2. 80 % de socios alcanzan muestreo representativo.
3. 100 % de alertas sectoriales derivan en una acción de extensión agronómica del gestor sobre el sector afectado.
4. 100 % de socios con datos de contacto vigentes están sincronizados.

### **Open Questions**

1. ¿Se integrará un módulo de despacho de notificaciones masivas por mensajería instantánea para alertas urgentes?
2. ¿Se permitirá a federaciones de cooperativas comparar curvas de acopio entre diferentes valles olivícolas?