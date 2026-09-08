# **Name:** Identity and Access Management - IAM

---

### **Purpose**

Gestiona la autenticación, autorización y administración del ciclo de vida de credenciales. Emite tokens de acceso y refresco, salvaguarda contraseñas bajo hash criptográfico seguro, y publica eventos de seguridad hacia User Profiles y la Aplicación móvil, y permite la recuperación de cuentas. Su propósito es garantizar acceso controlado, trazabilidad y seguridad perimetral a nivel de toda la plataforma.

### **Strategic Classification**

* **Domain:** Generic Subdomain (módulo de seguridad estándar reutilizable)
* **Business Model:** Compliance & Security Enforcer (garantía de autenticidad, control de acceso y trazabilidad)
* **Evolution:** Productized Building Block (componente estabilizado, desacoplado de la lógica agrícola)

### **Domain Roles**

* **Security Gatekeeper:** Valida credenciales de acceso y autenticidad del usuario.
* **Role Assigner:** Asigna y preserva el rol de plataforma (ROLE_PRODUCTOR o ROLE_GESTOR).
* **Session Manager:** Emite y administra la vigencia de tokens JWT de acceso y actualización.
* **Credential Recovery Handler:** Gestiona el ciclo de vida de tokens efímeros para la recuperación de contraseñas.

---

### **Inbound Communication**

*(Collaborators ➔ Messages)*

* **Aplicación Móvil** ➔ `RegisterUserAccount`, `AuthenticateUser`
* **Aplicación Móvil** ➔ `RefreshUserSession`, `ResetUserPassword`, `RequestPasswordReset`

### **Ubiquitous Language**

*(Context-specific domain terminology)*

* UserAccount
* EmailAddress
* HashedPassword
* Role
* AccountStatus
* PasswordResetToken

### **Business Decisions**

*(Key business rules, policies and decisions)*
La decisión: la identidad de acceso al sistema es única e intransferible por usuario. Todo se apoya en cuatro reglas fuertes: el correo no se puede repetir entre cuentas, las contraseñas nunca se guardan en texto plano (solo su hash cifrado), la contraseña tiene un mínimo de complejidad (8 caracteres, alfanumérica), y el restablecimiento de contraseña solo es válido con un token de un solo uso que expira a los 15 minutos.

### **Outbound Communication**

*(Messages ➔ Collaborators)*

* `UserAccountRegistered` ➔ **User Profiles**
* `UserAuthenticated`, `UserAuthenticationFailed` ➔ **Aplicación Móvil**
* `UserSessionRefreshed`, `PasswordResetRequested`, `PasswordResetCompleted` ➔ **Aplicación Móvil**, **Transactional Mail Service**

---

### **Assumptions**

1. El correo electrónico proporcionado durante el registro es válido, propiedad verificable del usuario y estrictamente único.
2. IAM actúa como la autoridad central de emisión de credenciales; los demás bounded contexts confían en la firma criptográfica de los tokens sin requerir consultas síncronas a la base de datos de IAM.
3. La Aplicación móvil almacena de forma segura los tokens de sesión en el almacenamiento seguro y protegido del dispositivo.
4. El servicio transaccional de correo garantiza la entrega oportuna del enlace de recuperación dentro del periodo de vigencia del token.

### **Verification Metrics**

1. 100 % de usuarios recuperan el acceso por autoservicio sin escalar a soporte.
2. 100 % de registros llegan a una primera autenticación exitosa en la misma sesión.
3. Cero cuentas activas sin un rol válido asignado; toda cuenta creada queda habilitada para el circuito agronómico que le corresponde.
4. 100 % de sesiones prolongadas no obligan al productor a reautenticarse durante la jornada.

### **Open Questions**

1. ¿Se implementará un bloqueo temporal defensivo de la cuenta tras múltiples eventos consecutivos de `UserAuthenticationFailed`?
2. ¿Se requerirá verificación obligatoria de correo electrónico mediante código o enlace previo a la activación plena de la cuenta?