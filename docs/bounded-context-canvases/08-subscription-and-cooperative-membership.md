# **Name:** Subscription and Cooperative Membership

---

### **Purpose**

Gestiona las suscripciones comerciales al Plan Productor y el canje de membresías patrocinadas. Procesa intenciones de cobro, emite y custodia los lotes de códigos corporativos contra el cupo de plazas y superficie contratado, valida y redime esos códigos, y publica eventos hacia Olive Orchard and Plot Management y la Aplicación móvil para fiscalizar el cupo de hectáreas catastrables. Su propósito es asegurar la monetización de la plataforma SaaS y regular el acceso operativo según el área predial contratada.

### **Strategic Classification**

* **Domain:** Generic / Supporting Subdomain (gestión de suscripciones comerciales y cupones corporativos)
* **Business Model:** Revenue Generator & Quota Gatekeeper (monetización SaaS y fiscalización de hectáreas catastrables)
* **Evolution:** Productized Building Block (integración estándar con pasarelas de pago y lógica de cuotas agrícolas)

### **Domain Roles**

* **Subscription Gatekeeper:** Regula el acceso operativo del productor según el estado de su plan.
* **Payment Transaction Handler:** Procesa confirmaciones de cobro de la pasarela externa.
* **Cooperative Voucher Validator:** Valida y consume códigos de invitación emitidos por cooperativas.
* **Hectare Quota Enforcer:** Fiscaliza que la superficie catastrada no sobrepase la cabida contratada.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Payment Gateway Service** ➔ `ProcessPaymentConfirmation`
* **Aplicación Móvil** ➔ `RedeemCooperativeCode`, `GenerateInvitationCodesBatch`, `ShortenInvitationCodeExpiry`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* Subscription
* SubscriptionPlan
* HectaresQuota
* SubscriptionPeriod
* SubscriptionStatus
* PaymentReceipt
* CooperativeLicense
* InvitationCodeBatch
* InvitationCode

### **Business Decisions**

*(Key business rules, policies and decisions)*
El productor paga su membresía anual y recién ahí se le habilita el acceso al servicio con el cupo de hectáreas que contrató. La decisión: no se puede usar el motor agronómico sin una membresía activa. El pago se confirma de forma automática y segura; si el pago es rechazado, la suscripción no se activa. Cada pago se procesa una sola vez.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `SubscriptionPaymentApproved`, `SubscriptionPaymentFailed` ➔ **Aplicación Móvil**
* `SubscriptionActivated` ➔ **Olive Orchard & Plot Management**
* `CooperativeCodeRedeemed` ➔ **Cooperative Operations & Territorial Intelligence**
* `InvitationCodesBatchGenerated`, `InvitationCodeExpired` ➔ **Técnico / Aplicación Móvil**

---

### **Assumptions**

1. La pasarela externa notifica los resultados de cobro mediante webhooks asíncronos seguros a través de una capa anticorrupción.
2. Cada código corporativo es de uso único y está respaldado financieramente por la cooperativa emisora.
3. El productor debe contar con una suscripción en estado activo con cuota disponible para poder delimitar cuarteles olivareros.

### **Verification Metrics**

1. El 80 % de perfiles creados alcanzan una suscripción activa por pago directo o canje.
2. 100 % cobros aprobados derivan en activación automática de suscripción sin intervención de soporte.
3. Cero hectáreas catastradas por encima de la cuota contratada; el productor no puede exceder lo que pagó.
4. El 85 % Proporción de códigos emitidos son canjeados por socios del padrón.

### **Open Questions**

1. ¿Se contemplará un periodo de gracia ante fallas en la renovación automática anual antes de suspender el acceso?
2. ¿Se requerirá permitir la compra de paquetes adicionales de hectáreas individuales sin cambiar de nivel de plan?