# **Name:** User Profiles

---

### **Purpose**

Gestiona la identidad civil, datos personales y canales de contacto directo de los usuarios. Expone operaciones para crear y actualizar perfiles, normaliza números telefónicos, y publica eventos para sincronizar los datos de contacto hacia Cooperative Operations y la Aplicación móvil, relacionándose con IAM como receptor de nuevos usuarios registrados. Su propósito es centralizar la representación de la persona física y habilitar canales de comunicación.

### **Strategic Classification**

* **Domain:** Supporting Subdomain (identidad civil y canales de contacto de los usuarios)
* **Business Model:** Experience Enabler (personalización y acreditación técnica de los productores)
* **Evolution:** Custom-Built (desacoplado de IAM y adaptado al ecosistema agrario)

### **Domain Roles**

* **Profile Manager:** Formaliza la identidad civil de productores y gestores técnicos.
* **Contact Information Custodian:** Administra nombres completos y canales de comunicación del productor.
* **International Phone Formatter:** Normaliza y valida números telefónicos móviles bajo el estándar E.164 mediante libphonenumber.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Gestor / Aplicación móvil** ➔ `CreateProfile`
* **Gestor / Aplicación móvil** ➔ `UpdateContactProfile`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* Profile
* FullName
* Country
* ContactInfo (E.164)
* UserId

### **Business Decisions**

*(Key business rules, policies and decisions)*
La decisión: formalizar la identidad humana del usuario con nombre, país y un teléfono confiable en formato internacional, porque sin eso no hay canal de contacto auditable ni posibilidad de afiliarse a una cooperativa. El perfil es el requisito previo para todo lo que viene después.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `ProfileCreated` ➔ **Aplicación Móvil / Subscription & Cooperative Membership**
* `ContactProfileUpdated` ➔ **Aplicación Móvil**, **Cooperative Operations & Territorial Intelligence**

---

### **Assumptions**

1. Cada llamada de creación de perfil cuenta con un identificador de usuario válido originado previamente tras en IAM.
2. El número de teléfono proporcionado es una línea móvil activa con capacidad de recepción de mensajes.
3. Las actualizaciones de perfil no alteran los derechos de acceso ni la suscripción comercial vigente.

### **Verification Metrics**

1. 100 % de los perfiles con dato de teléfono son válidos.
2. 90 % de cuentas registradas completan su perfil sin abandonar el flujo.
3. 100 % de actualizaciones de contacto se reflejan en el padrón cooperativo, sin intervención manual del gestor.

### **Open Questions**

1. ¿Se requerirá verificación de número telefónico mediante código OTP vía SMS en etapas futuras de despliegue?
2. ¿Se permitirá asociar un número telefónico secundario de emergencia para avisos de heladas o estrés hídrico?