# Propuesta y Sugerencias de Technical Stories (TS) Faltantes en la Plataforma Viora

Este documento formaliza las sugerencias de nuevas **Technical Stories (TS)** para complementar la especificación técnica de la arquitectura de Viora. Su propósito es garantizar la cobertura y trazabilidad 1:1 con las **User Stories (US)** aprobadas en el informe de requerimientos (capítulo 2.4, épica `EP01`), así como respaldar los contratos de la capa de interfaz expuestos en el diseño **Tactical Domain-Driven Design (DDD)** del Bounded Context de **Identity and Access Management (IAM)**.

---

## 1. Justificación y Diagnóstico del Desfase

### 1.1. Diagnóstico Actual
En el capítulo 2.4 del informe de solución de software, se definieron formalmente las siguientes historias de usuario funcionales:
* **`US04`**: *Cambio seguro de contraseña de acceso* (usuario autenticado).
* **`US05`**: *Recuperación de contraseña olvidada mediante enlace por correo* (usuario no autenticado).

Sin embargo, al redactar la sección de Technical Stories bajo la épica técnica `EP10` (*Implementación Técnica de Infraestructura, Seguridad y DevOps*), solo se elaboraron fichas para:
* `TS01`: `POST /api/v1/auth/sign-up` (Registro)
* `TS02`: `POST /api/v1/auth/sign-in` (Autenticación JWT)
* `TS03`: `POST /api/v1/auth/refresh-token` (Renovación de tokens)

Las historias `US04` y `US05` quedaron programadas en el Product Backlog para el Sprint 3, pero **no disponen de una especificación técnica formal de contrato de API (TS)** en el reporte actual.

### 1.2. Justificación Técnica y de Dominio (Por qué son necesarias)
1. **Consistencia de Arquitectura DDD:** El modelo de dominio en IAM ya cuenta con el Value Object `PasswordResetToken`, el servicio de dominio `PasswordPolicyService`, los métodos del Agregado `UserAccount` (`changePassword`, `requestPasswordReset`, `resetPassword`) y los eventos de dominio (`PasswordResetRequestedEvent`, `PasswordResetCompletedEvent`). Dejar fuera las TS correspondientes rompe la trazabilidad entre los casos de uso de la capa de aplicación y la capa de interfaz REST.
2. **Cumplimiento de Estándares de Seguridad (OWASP ASVS):**
   * El cambio de contraseña en caliente requiere verificar la credencial previa para evitar secuestro de sesiones (*session hijacking*).
   * La recuperación de contraseña requiere un flujo asíncrono con tokens criptográficos efímeros (máximo 15 minutos de vigencia) e invalidación de un solo uso (*single-use token*), despachados por un adaptador transaccional (Brevo).
   * Las solicitudes de recuperación deben responder con un código genérico `200 OK` o `202 Accepted` independientemente de si el correo existe o no en la base de datos, evitando ataques de enumeración de usuarios.

---

## 2. Matriz de Trazabilidad Propuesta

| Story ID Sugerida | Épica Técnica | User Story de Origen | Recurso RESTful | Método HTTP | Caso de Uso / Comando DDD |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TS36** | EP10 | **US04** | `/api/v1/auth/passwords` | `PATCH` | `ChangePasswordCommand` |
| **TS37** | EP10 | **US05** | `/api/v1/auth/password-reset-tokens` | `POST` | `RequestPasswordResetCommand` |
| **TS38** | EP10 | **US05** | `/api/v1/auth/password-reset-tokens/{token}` | `PUT` | `ResetPasswordCommand` |

---

## 3. Especificación Formal de Technical Stories Sugeridas

A continuación, se presentan las especificaciones en el formato canónico utilizado en la documentación del proyecto.

### TS36: Actualización Segura de Contraseña para Usuario Autenticado

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS36** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Actualización segura de contraseña para usuario autenticado en IAM |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la contraseña actual y la nueva contraseña autenticado mediante Bearer JWT, **para** actualizar la credencial de acceso del usuario salvaguardando la integridad de sus registros agrícolas. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa de contraseña**<br>**Given** una solicitud `PATCH` a `/api/v1/auth/passwords` recibida con cabecera `Authorization: Bearer <JWT>` y un cuerpo JSON que contiene: `currentPassword` y `newPassword`.<br>**When** la API valida la identidad del usuario desde el token, comprueba la contraseña actual mediante BCrypt y valida que la nueva contraseña satisfaga las políticas de complejidad y difiera de la anterior.<br>**Then** la API responde `200 OK` con mensaje de confirmación.<br>**And** persiste el nuevo hash de contraseña en la base de datos de identidades. |
| **Escenario 2: Contraseña actual incorrecta**<br>**Given** una solicitud `PATCH` a `/api/v1/auth/passwords` con una contraseña actual que no coincide con la registrada.<br>**When** el servicio de verificación criptográfica evalúa la clave.<br>**Then** la API responde `400 Bad Request` indicando que la contraseña actual es errónea. |
| **Escenario 3: Nueva contraseña incumple políticas de complejidad o es idéntica**<br>**Given** una solicitud `PATCH` a `/api/v1/auth/passwords` donde `newPassword` posee menos de 8 caracteres, carece de combinación alfanumérica o es idéntica a `currentPassword`.<br>**When** el validador de políticas de contraseña (`PasswordPolicyService`) evalúa el payload.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807 detallando la infracción. |

---

### TS37: Solicitud de Recuperación de Contraseña Olvidada y Emisión de Token

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS37** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Creación de token efímero de recuperación de contraseña y despacho por correo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar el correo electrónico de una cuenta al recurso de tokens de restablecimiento, **para** que el sistema genere un recurso efímero criptoseguro y remita el enlace al buzón del usuario. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Solicitud exitosa para correo registrado**<br>**Given** una solicitud `POST` a `/api/v1/auth/password-reset-tokens` recibida con un cuerpo JSON que contiene: `email`.<br>**When** la API localiza la cuenta en el repositorio de identidades, genera un token criptoseguro con caducidad de 15 minutos y dispara el evento de dominio `PasswordResetRequestedEvent`.<br>**Then** el manejador de eventos invoca al adaptador de correo transaccional (Brevo) remitiendo el enlace seguro.<br>**And** la API responde `200 OK` con un mensaje genérico de confirmación de envío. |
| **Escenario 2: Prevención de enumeración de usuarios ante correo no registrado**<br>**Given** una solicitud `POST` a `/api/v1/auth/password-reset-tokens` con un correo que no existe en el sistema.<br>**When** la API consulta el repositorio de cuentas y no encuentra coincidencia.<br>**Then** la API responde `200 OK` con exactamente el mismo mensaje neutro de confirmación sin disparar el despacho de correo, impidiendo que terceros descubran correos registrados. |
| **Escenario 3: Formato de correo electrónico inválido**<br>**Given** una solicitud `POST` a `/api/v1/auth/password-reset-tokens` con una dirección de correo con sintaxis no válida.<br>**When** el validador de payload procesa la solicitud.<br>**Then** la API responde `400 Bad Request` bajo la norma RFC 7807. |

---

### TS38: Consumo de Token Efímero y Actualización de Contraseña

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS38** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Consumo de token efímero y actualización de credencial en IAM |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la nueva contraseña mediante el método PUT al recurso del token efímero recibido por correo, **para** actualizar la credencial de la cuenta e invalidar el token de un solo uso. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Restablecimiento exitoso de credencial**<br>**Given** una solicitud `PUT` a `/api/v1/auth/password-reset-tokens/{token}` recibida con un cuerpo JSON conteniendo: `newPassword`.<br>**When** la API verifica que el token identificado en la ruta existe, no ha expirado (<15 min) y no ha sido utilizado, valida que la nueva clave cumpla con las políticas y genera el hash BCrypt.<br>**Then** la API actualiza la credencial del usuario en la base de datos, invalida el token consumido y responde `200 OK`.<br>**And** publica el evento de dominio `PasswordResetCompletedEvent`. |
| **Escenario 2: Token de recuperación expirado o inválido**<br>**Given** una solicitud `PUT` a `/api/v1/auth/password-reset-tokens/{token}` con un valor de ruta que superó su ventana de vigencia de 15 minutos o que ya fue utilizado con anterioridad.<br>**When** la API evalúa la validez temporal y el estado del token.<br>**Then** la API responde `400 Bad Request` indicando que el token ha expirado o no es válido, requiriendo solicitar un nuevo enlace. |
| **Escenario 3: Nueva contraseña no cumple estándares de seguridad**<br>**Given** una solicitud `PUT` a `/api/v1/auth/password-reset-tokens/{token}` con un token válido pero una contraseña de menos de 8 caracteres o sin combinación alfanumérica.<br>**When** se somete la credencial al servicio de dominio `PasswordPolicyService`.<br>**Then** la API responde `400 Bad Request` detallando las reglas incumplidas sin consumir el token. |

