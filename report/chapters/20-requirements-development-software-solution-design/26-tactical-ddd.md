## Tactical-Level Domain-Driven Design

El diseño táctico de *Domain-Driven Design* (DDD Táctico), fundamentado en los patrones canónicos establecidos por Evans (2004) y profundizados por Vernon (2013), transforma las fronteras y capacidades estratégicas definidas previamente en modelos de software estructurados y listos para su implementación. Esta etapa permite modelar con precisión los conceptos, comportamientos y reglas de negocio de la plataforma Viora mediante agregados, entidades, objetos de valor (*Value Objects*), servicios de dominio, repositorios y eventos, asegurando que cada módulo mantenga responsabilidades delimitadas y una alta cohesión interna.

Para garantizar la mantenibilidad, escalabilidad y separación de responsabilidades, cada contexto delimitado (*Bounded Context*) se estructura bajo una arquitectura en capas que organiza el sistema en cuatro niveles conceptuales:

1. **Capa de Dominio (*Domain Layer*):** Constituye el núcleo de cada contexto y concentra los modelos fundamentales del negocio, sus reglas operativas y las invariantes que deben cumplirse en todo momento, garantizando que la lógica esencial del sistema permanezca independiente de detalles técnicos o herramientas externas.
2. **Capa de Aplicación (*Application Layer*):** Coordina los casos de uso y flujos de trabajo de la solución, orquestando la interacción entre los requerimientos solicitados por los usuarios y las operaciones internas del dominio. En lugar de emplear un servicio de aplicación genérico o monolítico, la arquitectura adopta una separación explícita de responsabilidades mediante servicios especializados de comando (*CommandService*) y servicios de consulta (*QueryService*). Los controladores de la capa de interfaz delegan las operaciones de mutación a sus respectivos servicios de comando y las operaciones de lectura a los servicios de consulta, los cuales se conectan directamente con los puertos de persistencia (*Repository Interfaces*) y los servicios de dominio pertinentes según los requerimientos de cada contexto delimitado.
3. **Capa de Interfaces (*Interface Layer*):** Establece los canales de comunicación y puntos de contacto a través de los cuales las aplicaciones cliente y los usuarios interactúan con el sistema, gestionando el intercambio ordenado de información y la validación de los datos de entrada y salida.
4. **Capa de Infraestructura (*Infrastructure Layer*):** Brinda el soporte operativo necesario para la persistencia de la información, la integración con servicios auxiliares y la ejecución técnica de las operaciones definidas en los niveles superiores.

En las siguientes secciones se detalla el diseño táctico de los nueve contextos delimitados que conforman Viora, presentando de forma estructurada sus modelos conceptuales, reglas de negocio, interfaces de servicio, orquestación de casos de uso, esquemas de datos y diagramas de arquitectura de software a nivel de componentes y código.

### Bounded Context: Identity and Access Management (IAM)

Propósito: Administra el ciclo de vida de las credenciales de acceso, la autenticación y la autorización en la plataforma Viora. Es responsable de salvaguardar las contraseñas bajo funciones criptográficas de derivación con sal (BCrypt), emitir y validar tokens de sesión JWT con claims de rol (`ROLE_PRODUCER`, `ROLE_TECHNICAL_MANAGER`), gestionar tokens efímeros para la recuperación de cuentas y publicar eventos de seguridad hacia el contexto downstream de perfiles y las aplicaciones clientes. Establece el perímetro de seguridad del sistema sin acoplarse a la lógica agronómica.

#### Domain Layer

##### Modelo de dominio: `UserAccount` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `UserAccount` (Aggregate Root) en Identity and Access Management (IAM). {#tbliam-useraccount-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Delimita la consistencia transaccional para credenciales, autenticación y recuperación de cuenta. |
| Relaciones de dominio | Raíz autónoma. Referenciada lógicamente por ID desde `UserProfile` y `Subscription`. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `UserAccount` en Identity and Access Management (IAM). {#tbliam-useraccount-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `UserAccountId` | Identificador único universal inmutable (`UUID v4`). |
| `email` | `EmailAddress` | Correo electrónico normalizado en minúsculas y validado bajo RFC 5322. |
| `password` | `HashedPassword` | Hash criptográfico seguro con sal aleatoria derivado mediante BCrypt. |
| `role` | `Role` | Rol canónico asignado: `ROLE_PRODUCER` o `ROLE_TECHNICAL_MANAGER`. |
| `passwordResetToken` | `Optional<Password` `ResetToken>` | Token efímero de un solo uso con marca temporal de expiración a 15 minutos. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `UserAccount` en Identity and Access Management (IAM). {#tbliam-useraccount-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `changePassword` | `newHash: HashedPassword` | `void` | Actualiza la credencial de forma atómica y emite evento de cambio de contraseña. La nueva clave debe diferir de la actual. |
| `request` `PasswordReset` | `generator: TokenGenerator`, `expiryMinutes: int` | `Password` `ResetToken` | Genera un token efímero de 64 caracteres criptográficos y emite evento de solicitud de restablecimiento. |
| `resetPassword` | `tokenVal: String`, `newHash: HashedPassword` | `void` | Valida vigencia del token, aplica el nuevo hash, invalida el token y emite evento de confirmación de restablecimiento. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Identity and Access Management (IAM). {#tbliam-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `UserAccountId` | `UUID v4` | Identificador único universal inmutable de la cuenta de acceso. |
| `EmailAddress` | `String` | Correo electrónico normalizado en minúsculas y validado bajo regex RFC 5322. |
| `Password` | `String` | Contraseña en texto plano temporal que verifica reglas de complejidad en su creación. |
| `HashedPassword` | `String` | Hash criptográfico seguro e inmutable devuelto por el servicio BCrypt. |
| `Role` | `Enum (String)` | Roles canónicos del sistema: `ROLE_PRODUCER`, `ROLE_TECHNICAL_MANAGER`. |
| `PasswordResetToken` | `tokenValue: String`, `expiresAt: Instant` | Token pseudoaleatorio de 64 caracteres criptográficos con marca temporal de expiración. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Identity and Access Management (IAM). {#tbliam-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `HashingService` | Domain Service | `hash(raw: Password):` `HashedPassword` | Abstracción para el hashing criptográfico de contraseñas. |
| `HashingService` | Domain Service | `matches(raw: Password,` `hashed: HashedPassword):` `boolean` | Verificación de coincidencia entre texto plano y hash criptográfico. |
| `UserAccount` `Repository` | Repository | `findById(id: UserAccountId):` `Optional<UserAccount>` | Recupera la cuenta de usuario por su identificador único. |
| `UserAccount` `Repository` | Repository | `findByEmail(email:` `EmailAddress):` `Optional<UserAccount>` | Recupera la cuenta por su dirección de correo normalizada. |
| `UserAccount` `Repository` | Repository | `existsBy` `Email(email:` `EmailAddress):` `boolean` | Verifica la no duplicidad de correo para salvaguardar la unicidad. |
| `UserAccount` `Repository` | Repository | `save(account: UserAccount):` `UserAccount` | Persiste atómicamente el estado del agregado de cuenta. |
| `UserAccount` `Registered` `Event` | Domain Event | `userId: UUID, email: String,` `role: String, occurredOn: Instant` | Notifica el alta de credenciales para inicializar el onboarding civil. |
| `User` `Authenticated` `Event` | Domain Event | `userId: UUID, email: String,` `occurredOn: Instant` | Notifica el inicio de sesión exitoso para auditoría de accesos. |
| `PasswordChanged` `Event` | Domain Event | `userId: UUID,` `occurredOn: Instant` | Señala la actualización voluntaria de contraseña. |
| `PasswordReset` `RequestedEvent` | Domain Event | `userId: UUID, email: String,` `tokenValue: String, expiresAt: Instant` | Dispara la entrega del correo con el enlace de recuperación vía Brevo. |
| `PasswordReset` `CompletedEvent` | Domain Event | `userId: UUID, email: String,` `occurredOn: Instant` | Confirma el restablecimiento exitoso de la credencial. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Identity and Access Management (IAM). {#tbliam-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/auth/sign-up} | `SignUpRequest` | `UserAccount` `Resource` (201 Created) | Registro inicial de credenciales de usuario. |
| `POST` | \nolinkurl{/api/v1/auth/sign-in} | `SignInRequest` | `Authenticated` `UserResource` (200 OK) | Autenticación y expedición de tokens JWT. |
| `POST` | \nolinkurl{/api/v1/auth/refresh-tokens} | `RefreshToken` `Request` | `TokenRefresh` `Resource` (200 OK) | Renovación de sesión mediante token de refresco. |
| `PATCH` | \nolinkurl{/api/v1/auth/passwords} | `ChangePassword` `Request` | `204 No Content` | Actualización de contraseña para sesión autenticada. |
| `POST` | \nolinkurl{/api/v1/auth/password-reset-tokens} | `RequestPassword` `ResetRequest` | `202 Accepted` | Solicitud de código de recuperación por correo. |
| `PUT` | \nolinkurl{/api/v1/auth/password-reset-tokens/{token}} | `ResetPassword` `Request` | `204 No Content` | Restablecimiento de contraseña con token efímero. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Identity and Access Management (IAM). {#tbliam-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `SignUpRequest` | Request DTO | `{ email: String, password: String, role: String }` | Payload para registro con validaciones Bean Validation (`@Email`, `@NotBlank`). |
| `SignInRequest` | Request DTO | `{ email: String, password: String }` | Credenciales para inicio de sesión seguro. |
| `UserAccount` `Resource` | Response DTO | `{ id: UUID, email: String, role: String, createdAt: Instant }` | Datos públicos de la cuenta registrada. |
| `Authenticated` `UserResource` | Response DTO | `{ accessToken: String, refreshToken: String, tokenType: String, expiresIn: Long }` | Paquete de autenticación con Bearer token JWT. |
| `UserAccount` `ResourceAssembler` | Assembler | `toResource(` `UserAccount):` `UserAccountResource` | Convierte la entidad de dominio a su representación de salida. |

*Nota.* Elaboración propia.

#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Identity and Access Management (IAM). {#tbliam-use-case-handlers}

| Handler | Type | Input Message | Orchestration Flow & Transactionality |
|:---|:---|:---|:---|
| `Register` `User` `Account` `Command` `Handler` | Command Handler | `Register` `User` `Account` `Command` | Inicia transacción (`@Transactional`), verifica no duplicidad del correo, delega hashing, guarda cuenta y publica evento de registro. |
| `Authenticate` `User` `Command` `Handler` | Command Handler | `Authenticate` `User` `Command` | Consulta repositorio, valida coincidencia de hash (`BCrypt`), genera par de tokens JWT y despacha evento de autenticación. |
| `Refresh` `User` `Session` `Command` `Handler` | Command Handler | `Refresh` `User` `Session` `Command` | Valida vigencia y firma del refresh token en base de datos, rota el token y emite un nuevo JWT. |
| `Change` `User` `Password` `Command` `Handler` | Command Handler | `Change` `User` `Password` `Command` | Carga cuenta por ID, valida clave anterior, verifica que la nueva clave difiera, persiste hash y emite evento de cambio. |
| `Request` `Password` `Reset` `Command` `Handler` | Command Handler | `Request` `Password` `Reset` `Command` | Genera token de 15 min, lo vincula a la cuenta y dispara evento para envío de correo vía Brevo. |
| `Reset` `User` `Password` `Command` `Handler` | Command Handler | `Reset` `User` `Password` `Command` | Busca cuenta por token, verifica no expiración, aplica nuevo hash, consume el token y emite evento de confirmación. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Identity and Access Management (IAM). {#tbliam-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:---|:---|:---|:---|
| `UserAccount` `JpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `user_accounts` sobre PostgreSQL. |
| `JpaUserAccount` `RepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `UserAccountRepository`. |
| `JwtTokenProvider` | Security | JJWT / Nimbus | Emisión, firma criptográfica HMAC-SHA256 y parseo de tokens JWT. |
| `BCryptPassword` `Service` | Security Adapter | Spring Security Crypto | Implementa `HashingService` con costo de cómputo configurable. |
| `BrevoEmail` `DeliveryAdapter` | External Adapter | Brevo REST API | Despacho de plantillas transaccionales para recuperación de contraseña. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Gestión segura de sesión y almacenamiento de tokens:**
  * *Android Nativo (Kotlin):* Componente `SessionManager` que utiliza `EncryptedSharedPreferences` respaldado por Android KeyStore (cifrado AES-256-GCM) para la persistencia del par de tokens (access token y refresh token de 30 días) y claims de rol.
  * *Cross-Platform (Flutter/Dart):* Componente `SecureStorageSessionManager` apoyado en `flutter_secure_storage` (KeyStore en Android y Keychain en iOS).
* **Intercepción y renovación transparente de tokens:**
  * *Interceptor HTTP (OkHttp / Dio):* `AuthInterceptor` intercepta peticiones HTTP salientes inyectando la cabecera `Authorization: Bearer <access_token>`.
  * *Manejador de Renovación (Authenticator):* Ante respuestas `401 Unauthorized`, `TokenRefreshAuthenticator` bloquea momentáneamente la cola de peticiones, despacha de forma atómica la invocación a renovación de tokens, actualiza los tokens en el almacenamiento seguro y reintenta la solicitud original sin degradar la experiencia en campo.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Identity and Access Management (IAM). {#tbliam-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `user_accounts` | `id` | `UUID` | `PRIMARY KEY` | Identificador único inmutable de la cuenta. |
| `user_accounts` | `email` | `VARCHAR(255)` | `NOT NULL, UNIQUE` | Correo electrónico normalizado para inicio de sesión. |
| `user_accounts` | `password_hash` | `VARCHAR(255)` | `NOT NULL` | Hash seguro derivado con sal (BCrypt). |
| `user_accounts` | `role` | `VARCHAR(50)` | `NOT NULL, CHECK` | Rol del usuario (`ROLE_PRODUCER`, `ROLE_TECHNICAL_MANAGER`). |
| `user_accounts` | `reset_token` | `VARCHAR(100)` | `NULL` | Token criptográfico temporal de restablecimiento. |
| `user_accounts` | `reset_token_` `expires_at` | `TIMESTAMPTZ` | `NULL` | Fecha y hora límite para uso del token de recuperación. |
| `user_accounts` | `created_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de auditoría de creación. |
| `user_accounts` | `updated_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de última modificación. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS iam;

CREATE TABLE iam.user_accounts (
    id                     UUID PRIMARY KEY,
    email                  VARCHAR(255) NOT NULL,
    password_hash          VARCHAR(255) NOT NULL,
    role                   VARCHAR(50) NOT NULL,
    reset_token            VARCHAR(100),
    reset_token_expires_at TIMESTAMPTZ,
    created_at             TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at             TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_user_accounts_email UNIQUE (email),
    CONSTRAINT chk_user_accounts_role
        CHECK (role IN ('ROLE_PRODUCER', 'ROLE_TECHNICAL_MANAGER'))
);

CREATE INDEX idx_user_accounts_reset_token
    ON iam.user_accounts(reset_token)
    WHERE reset_token IS NOT NULL;
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Identity and Access Management (IAM). {#tbliam-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `AuthController` | Exposición de endpoints REST para registro, login, refresh y reseteo. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `UserAccount` `CommandService`; `UserAccount` `QueryService` | Orquestación de comandos de registro/autenticación/reseteo y consultas de sesión/credenciales. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `UserAccountRepository`; `BCryptPasswordHasher` | Contrato de persistencia de cuentas (puerto de dominio) y servicio de derivación de claves con sal. | Java / Spring Security Crypto |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaUserAccount` `RepositoryAdapter`; `JwtTokenProvider`; `BrevoEmailDeliveryAdapter` | Implementación JPA sobre PostgreSQL, emisión de JWT y entrega de correos vía Brevo. | Spring Data JPA, Nimbus, Brevo API |

*Nota.* Elaboración propia.
##### Flujo de comunicación y conectividad
1. El contenedor cliente (`Android Application` o `Cross-Platform Application`) envía `POST` \nolinkurl{/api/v1/auth/sign-in} con credenciales hacia `AuthController`.
2. `AuthController` valida el cuerpo de la petición y despacha el comando a `UserAccountCommandService` (mientras que las consultas de sesión o verificación de credenciales son atendidas por `UserAccountQueryService`).
3. `UserAccountCommandService` recupera la cuenta mediante el puerto `UserAccountRepository`.
4. Se valida la contraseña delegando en el servicio de dominio `BCryptPasswordHasher`.
5. Se invoca a `JwtTokenProvider` para generar los tokens JWT con claims de rol y `userId`.
6. Se dispara el evento de autenticación a través del publicador de eventos para auditoría.
7. Se retorna `AuthenticatedUserResource` (`200 OK`) a la aplicación cliente.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Identity and Access Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-iam.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Identity and Access Management. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Identity and Access Management.

##### Bounded Context Domain Layer Class Diagrams
&nbsp;

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Identity and Access Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-iam.png}
\caption*{\textit{Nota.} Estructura estática de clases, tipos y métodos del modelo de dominio de IAM. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 
&nbsp;

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Identity and Access Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-iam.png}
\caption*{\textit{Nota.} Estructura de tabla, índices y restricciones en PostgreSQL para IAM. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: User Profiles

Propósito: Gestiona la información civil, personal y de contacto de los usuarios de la plataforma Viora. Se activa tras la creación de credenciales en IAM y vincula a cada actor con su rol agronómico específico (Productor Olivarero o Gestor Técnico Cooperativo). Es responsable de normalizar los números telefónicos bajo el estándar E.164, custodiar los nombres completos para la emisión de certificaciones oficiales y sincronizar las actualizaciones de datos de contacto hacia el padrón técnico de la cooperativa, estableciendo una base civil verificada para las operaciones agronómicas.

#### Domain Layer

##### Modelo de dominio: `UserProfile` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `UserProfile` (Aggregate Root) en User Profiles. {#tblprofiles-userprofile-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Custodia la identidad civil, datos personales y de contacto verificados de los actores del sistema. |
| Relaciones de dominio | Vinculado 1:1 mediante referencia lógica externa (`userId`) con `UserAccount`. Referenciado por ID en predios y contratos. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `UserProfile` en User Profiles. {#tblprofiles-userprofile-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ProfileId` | Identificador único universal inmutable (`UUID v4`). |
| `userId` | `UserId` | Referencia lógica externa hacia `UserAccount` en el Bounded Context de IAM. |
| `fullName` | `FullName` | Nombres y apellidos completos normalizados para expedientes oficiales. |
| `country` | `Country` | Código de país ISO 3166-1 alpha-2 para localización. |
| `phoneNumber` | `PhoneNumber` | Número telefónico normalizado bajo estándar internacional E.164. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `UserProfile` en User Profiles. {#tblprofiles-userprofile-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `create` | `userId: UserId`, `name: FullName`, `country: Country`, `phone: PhoneNumber` | `UserProfile` | Método fábrica que valida integridad de datos civiles y emite evento de creación de perfil. |
| `updateContact` `Info` | `name: FullName`, `country: Country`, `phone: PhoneNumber` | `void` | Actualiza datos de contacto y emite evento de actualización de contacto hacia la cooperativa. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en User Profiles. {#tblprofiles-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `ProfileId` | `UUID v4` | Identificador único universal del perfil. |
| `UserId` | `UUID v4` | Identificador del usuario en IAM (referencia lógica sin FK física). |
| `FullName` | `firstName: String`, `lastName: String` | Nombre y apellidos normalizados, sin espacios redundantes. |
| `Country` | `String (ISO 3166-1 alpha-2)` | Código de país estándar de residencia (ej. `PE`, `CL`). |
| `PhoneNumber` | `String (E.164)` | Teléfono normalizado con signo `+` y prefijo internacional. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en User Profiles. {#tblprofiles-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `PhoneNumber` `Validator` | Domain Service | `validate(phone:` `PhoneNumber): boolean` | Validación estricta de estructura y longitud telefónica E.164. |
| `Profile` `Repository` | Repository | `findById(id: ProfileId):` `Optional<UserProfile>` | Búsqueda de perfil por su identificador único universal. |
| `Profile` `Repository` | Repository | `findByUserId(` `userId: UserId):` `Optional<` `UserProfile>` | Recupera el perfil civil asociado a una cuenta de IAM. |
| `Profile` `Repository` | Repository | `existsByUserId(` `userId:` `UserId): boolean` | Verifica si una cuenta ya posee un perfil inicializado. |
| `Profile` `Repository` | Repository | `save(profile: UserProfile):` `UserProfile` | Persiste atómicamente el perfil y sus datos de contacto. |
| `ProfileCreated` `Event` | Domain Event | `profileId: UUID, userId: UUID,` `fullName: String, occurredOn: Instant` | Notifica la creación del perfil civil para habilitar contratación. |
| `ContactProfile` `UpdatedEvent` | Domain Event | `profileId: UUID, userId: UUID,` `phone: String, email: String,` `occurredOn: Instant` | Propaga actualización de datos de contacto hacia la cooperativa. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en User Profiles. {#tblprofiles-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/profiles} | `CreateProfile` `Request` | `UserProfile` `Resource` (201 Created) | Alta inicial de perfil civil para el usuario autenticado. |
| `GET` | \nolinkurl{/api/v1/profiles/{userId}} | N/A | `UserProfile` `Resource` (200 OK) | Consulta de perfil por identificador de usuario con control de titularidad (*Owner Check*). |
| `PUT` | \nolinkurl{/api/v1/profiles/{userId}} | `UpdateProfile` `Request` | `UserProfile` `Resource` (200 OK) | Actualización completa de datos personales y teléfono con validación E.164. |
| `PATCH` | \nolinkurl{/api/v1/profiles/{userId}} | `UpdateContact` `ProfileRequest` | `UserProfile` `Resource` (200 OK) | Actualización parcial de datos de contacto y teléfono con validación E.164. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en User Profiles. {#tblprofiles-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreateProfile` `Request` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Datos de entrada para formalización del perfil. |
| `UpdateProfile` `Request` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Modificación completa de datos personales y contacto. |
| `UpdateContact` `ProfileRequest` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Modificación parcial de datos de contacto. |
| `UserProfile` `Resource` | Response DTO | `{ id: UUID, userId: UUID, fullName: String, country: String, phoneNumber: String }` | Perfil de usuario consolidado. |
| `UserProfile` `ResourceAssembler` | Assembler | `toResource(` `UserProfile):` `UserProfileResource` | Transforma el agregado en el DTO de presentación. |

*Nota.* Elaboración propia.

#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en User Profiles. {#tblprofiles-use-case-handlers}

| Handler | Type | Input Message | Orchestration Flow & Transactionality |
|:---|:---|:---|:---|
| `Create` `User` `Profile` `Command` `Handler` | Command Handler | `Create` `User` `Profile` `Command` | Valida que el `userId` no posea perfil, formatea teléfono, persiste y despacha evento de creación. |
| `Update` `Contact` `Profile` `Command` `Handler` | Command Handler | `Update` `Contact` `Profile` `Command` | Carga perfil por `userId`, aplica validaciones de contacto, persiste cambios y publica evento de contacto. |
| `Get` `UserProfile` `ByUserId` `Query` `Handler` | Query Handler | `Get` `UserProfile` `ByUserId` `Query` | Recupera el perfil optimizado en solo lectura y mapea a `UserProfileResource`. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en User Profiles. {#tblprofiles-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:---|:---|:---|:---|
| `UserProfile` `JpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `profiles` sobre PostgreSQL. |
| `JpaUserProfile` `RepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `UserProfileRepository`. |
| `Libphonenumber` `Adapter` | Service Adapter | Google libphonenumber | Parsing, validación y normalización a estándar E.164. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Caché local de perfil y acceso a datos:**
  * *Android Nativo (Room / SQLite):* `ProfileDao` y entidad local `LocalProfileEntity` que almacenan en caché el nombre, país y teléfono del usuario autenticado para visualización instantánea en drawer y cabeceras de navegación sin requerir conexión continua.
  * *Cross-Platform (sqflite / SQLite):* Tabla local `local_profiles` administrada por `LocalDataAccess` con invalidación explícita ante mutaciones.
* **Validación de formatos en cliente:**
  * Componentes de interfaz móvil (`Account and Profile UI`) que incorporan validación reactiva de formato E.164 previa al envío de formularios de onboarding y edición de contacto, sincronizando el feedback de error en tiempo real.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en User Profiles. {#tblprofiles-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `profiles` | `id` | `UUID` | `PRIMARY KEY` | Identificador único del perfil. |
| `profiles` | `user_id` | `UUID` | `NOT NULL, UNIQUE` | Referencia externa a la cuenta en `iam.user_accounts`. |
| `profiles` | `full_name` | `VARCHAR(150)` | `NOT NULL, CHECK` | Nombre y apellidos completos del usuario. |
| `profiles` | `country` | `VARCHAR(2)` | `NOT NULL` | Código de país ISO 3166-1 alpha-2. |
| `profiles` | `phone_number` | `VARCHAR(25)` | `NOT NULL` | Teléfono normalizado bajo formato E.164. |
| `profiles` | `created_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de registro civil. |
| `profiles` | `updated_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de última modificación. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS profiles;

CREATE TABLE profiles.profiles (
    id           UUID PRIMARY KEY,
    user_id      UUID NOT NULL,
    full_name    VARCHAR(150) NOT NULL,
    country      VARCHAR(2) NOT NULL,
    phone_number VARCHAR(25) NOT NULL,
    created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_profiles_user_id UNIQUE (user_id),
    CONSTRAINT chk_profiles_full_name
        CHECK (length(trim(full_name)) >= 2)
);

CREATE INDEX idx_profiles_phone
    ON profiles.profiles(phone_number);
```

#### Bounded Context Software Architecture Component Level Diagrams 
&nbsp;

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en User Profiles. {#tblprofiles-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `ProfileController` | Endpoints REST para alta, consulta y actualización de perfiles de usuario. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `Profile` `CommandService`; `Profile` `QueryService` | Orquestación de comandos de alta y actualización de contacto y consultas de perfil civil. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `ProfileRepository`; `PhoneNumberValidator` | Contrato de persistencia de perfil (puerto de dominio) y servicio de validación de formato internacional E.164. | Java puro / libphonenumber |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaProfile` `RepositoryAdapter`; `DomainEventPublisher` | Persistencia JPA sobre PostgreSQL (`profiles.profiles`) y despacho de eventos de dominio. | Spring Data JPA, Spring Events |

*Nota.* Elaboración propia.
##### Flujo de comunicación y conectividad
1. El contenedor cliente móvil (`Android Application` o `Cross-Platform Application`) despacha `PUT` \nolinkurl{/api/v1/profiles/{userId}} con datos de contacto hacia `ProfileController`.
2. `ProfileController` extrae el `userId` del claim JWT, valida la correspondencia de titularidad (*Owner Check*) con el recurso de la ruta y delega el comando en `ProfileCommandService` (mientras que las consultas de perfil civil son atendidas por `ProfileQueryService`).
3. `ProfileCommandService` carga el registro mediante el puerto de dominio `ProfileRepository`.
4. Invoca el servicio de dominio `PhoneNumberValidator` para normalizar el número telefónico al estándar E.164.
5. Se persisten las modificaciones atómicamente en PostgreSQL a través de `ProfileRepository` (implementado por `JpaProfileRepositoryAdapter`).
6. Se despacha el evento de actualización de contacto vía `DomainEventPublisher`, el cual es consumido asíncronamente por *Cooperative Operations* para actualizar el padrón de socios.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de User Profiles.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-profiles.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context User Profiles. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context User Profiles.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de User Profiles.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-profiles.png}
\caption*{\textit{Nota.} Estructura estática de clases y objetos de valor del modelo de dominio de User Profiles. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de User Profiles.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-profiles.png}
\caption*{\textit{Nota.} Estructura de la tabla profiles, índices y restricciones en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Subscription and Cooperative Membership

Propósito: Gobierna los contratos comerciales, planes SaaS y cupos institucionales del ecosistema Viora. Administra dos modalidades de activación: suscripciones individuales de productores mediante pasarela de pago digital (Mercado Pago con webhooks seguros) y suscripciones patrocinadas por organizaciones agrarias mediante canje de códigos de activación corporativos. Controla los agregados `Subscription` (contrato individual y transiciones de pago), `Cooperative` `License` (acuerdo corporativo que custodia los acumuladores de plazas y superficie autorizada) y `InvitationCode` `Batch` (emisión, expiración y ajuste de vigencia de códigos).

#### Domain Layer

##### Modelo de dominio: `Subscription` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `Subscription` (Aggregate Root) en Subscription and Cooperative Membership. {#tblsubscription-subscription-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Delimita la consistencia de los derechos comerciales contratados, cálculo de vigencias y balance de superficie. |
| Relaciones de dominio | Referencia por ID a `ProducerId`,`CooperativeId `y opcionalmente a `InvitationCodeId`. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `Subscription` en Subscription and Cooperative Membership. {#tblsubscription-subscription-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SubscriptionId` | Identificador único universal inmutable (`UUID v4`). |
| `producerId` | `UserId` | Identificador del productor olivarero titular. |
| `plan` | `SubscriptionPlan` | Modalidad comercial: individual o patrocinada cooperativa. |
| `quota` | `HectaresQuota` | Límite máximo contratado de superficie predial en hectáreas. |
| `status` | `SubscriptionStatus` | Estado del contrato:`PENDING_` `PAYMENT`, `ACTIVE`, `EXPIRED`, `CANCELLED`. |
| `period` | `Optional<` `SubscriptionPeriod>` | Período de vigencia con marcas temporales de inicio y fin. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `Subscription` en Subscription and Cooperative Membership. {#tblsubscription-subscription-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `requestPayment` | `terms: PaymentTerms` | `PaymentIntent` | Inicia intento de pago congelando cotización y cuota de hectáreas. |
| `activateFrom` `Payment` | `receipt: PaymentReceipt`, `period: SubscriptionPeriod` | `void` | Transiciona a activo tras verificación y emite evento de activación. |
| `activateFromCode` | `code: RedeemedCode`, `period: SubscriptionPeriod` | `void` | Activa contrato patrocinado por cooperativa y emite evento de canje. |
| `expire` | `currentTime: Instant` | `void` | Invalida derechos de uso al vencer el plazo del ciclo contratado. |
| `hasActive` `Entitlement` | `currentTime: Instant` | `boolean` | Verifica si el productor dispone de cobertura vigente para sus parcelas. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `CooperativeLicense` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `CooperativeLicense` (Aggregate Root) en Subscription and Cooperative Membership. {#tblsubscription-cooperativelicense-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Administra el saldo corporativo global de plazas de agricultores y superficie de hectáreas para una cooperativa. |
| Relaciones de dominio | Referencia externa a `CooperativeId`. Gobierna lotes de códigos vinculados por `licenseId`. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `CooperativeLicense` en Subscription and Cooperative Membership. {#tblsubscription-cooperativelicense-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `LicenseId` | Identificador único universal de la licencia corporativa. |
| `cooperativeId` | `CooperativeId` | Identificador de la cooperativa patrocinadora. |
| `tier` | `LicenseTier` | Nivel institucional contratado con sus límites asignados. |
| `totalSeats` | `Int` | Cantidad total de plazas de socios contratadas. |
| `issuedSeats` | `Int` | Plazas actualmente comprometidas en lotes emitidos. |
| `totalAreaHa` | `Double` | Superficie máxima consolidada autorizada en hectáreas. |
| `issuedAreaHa` | `Double` | Hectáreas actualmente comprometidas en lotes emitidos. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `CooperativeLicense` en Subscription and Cooperative Membership. {#tblsubscription-cooperativelicense-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `reserveQuota` | `seats: Int`, `area: Double` | `void` | Compromete plazas y superficie verificando disponibilidad; rechaza sobreemisión. |
| `releaseQuota` | `seats: Int`, `area: Double` | `void` | Restaura plazas y hectáreas liberadas por caducidad de códigos. |
| `hasAvailable` `Capacity` | `seats: Int`, `area: Double` | `boolean` | Consulta si la cooperativa cuenta con cupo libre para un nuevo lote. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `InvitationCodeBatch` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `InvitationCodeBatch` (Aggregate Root) en Subscription and Cooperative Membership. {#tblsubscription-invitationcodebatch-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Gestiona la generación criptográfica, vigencia y canje de un lote de códigos de invitación. |
| Relaciones de dominio | Referencia a `LicenseId` y contiene una colección de entidades subordinadas `InvitationCode`. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `InvitationCodeBatch` en Subscription and Cooperative Membership. {#tblsubscription-invitationcodebatch-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `BatchId` | Identificador único universal del lote de códigos. |
| `licenseId` | `LicenseId` | Identificador de la licencia corporativa de origen. |
| `codes` | `List<InvitationCode>` | Colección de códigos individuales de invitación emitidos. |
| `status` | `BatchStatus` | Estado operativo del lote: `ACTIVE`, `EXHAUSTED`, `EXPIRED`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `InvitationCodeBatch` en Subscription and Cooperative Membership. {#tblsubscription-invitationcodebatch-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `generateCodes` | `count: Int`, `quotaHa: Double`, `days: Int` | `void` | Genera códigos criptográficos no secuenciales y emite evento de lote generado. |
| `redeemCode` | `codeId: CodeId`, `producerId: UserId` | `InvitationCode` | Consume atómicamente un código disponible y retorna evidencia de canje. |
| `shorten` `CodeExpiry` | `codeId: CodeId`, `newExpiry: Instant` | `void` | Anticipa la fecha límite de canje para un código no consumido. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `InvitationCode` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `InvitationCode` (Internal Entity) en Subscription and Cooperative Membership. {#tblsubscription-invitationcode-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Representa un vale digital unívoco e intransferible que otorga derecho de suscripción a un socio. |
| Relaciones de dominio | Subordinado estrictamente a `InvitationCode` `Batch` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `InvitationCode` en Subscription and Cooperative Membership. {#tblsubscription-invitationcode-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `CodeId` | Identificador único del código de invitación. |
| `codeHash` | `String` | Huella criptográfica segura del código para validación. |
| `quotaHa` | `Double` | Hectáreas autorizadas para el socio que lo canjee. |
| `status` | `CodeStatus` | Estado: `AVAILABLE`, `REDEEMED`, `EXPIRED`. |
| `expiresAt` | `Instant` | Fecha y hora límite improrrogable para su consumo. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `InvitationCode` en Subscription and Cooperative Membership. {#tblsubscription-invitationcode-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `redeem` | `producerId: UserId` | `void` | Asocia el código al productor beneficiario y transiciona a estado redimido. |
| `adjustExpiry` | `newExpiry: Instant` | `void` | Actualiza la marca temporal de caducidad si el código permanece disponible. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Subscription and Cooperative Membership. {#tblsubscription-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `SubscriptionId`, `LicenseId`, `BatchId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `HectaresQuota` | `Double` | Superficie máxima permitida bajo suscripción ($\ge 0.5\text{ ha}$). |
| `SubscriptionPeriod` | `startsAt: Instant`, `endsAt: Instant` | Ventana temporal de vigencia activa del servicio. |
| `SubscriptionStatus` | `Enum` | Estados del contrato: `PENDING_` `PAYMENT`, `ACTIVE`, `EXPIRED`, `CANCELLED`. |
| `CodeStatus` | `Enum` | Estados de la invitación: `AVAILABLE`, `REDEEMED`, `EXPIRED`, `REVOKED`. |
| `Money` | `amount: BigDecimal`, `currency: String` | Monto dinerario exacto con divisa ISO 4217 (`PEN`). |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Subscription and Cooperative Membership. {#tblsubscription-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `HectareQuota` `Policy` | Domain Service | `requireWithin` `Quota(quota:` `HectaresQuota,` `...): void` | Valida que la superficie predial no exceda el límite contratado. |
| `Subscription` `ActivationPolicy` | Domain Service | `annualPeriod(` `approvedAt:` `Instant):` `SubscriptionPeriod` | Computa período anual estándar de 365 días desde aprobación. |
| `Subscription` `ActivationPolicy` | Domain Service | `sponsoredPeriod(` `at: Instant,` `lic:` `SubscriptionPeriod)` | Alinea la vigencia del socio con la ventana temporal de la licencia. |
| `Subscription` `Repository` | Repository | `findById(id: SubscriptionId):` `Optional<Subscription>` | Recupera suscripción por identificador unívoco. |
| `Subscription` `Repository` | Repository | `findCurrentBy` `Producer(id:` `ProducerId):` `Optional<` `Subscription>` | Obtiene la suscripción vigente del productor olivarero. |
| `Subscription` `Repository` | Repository | `save(sub: Subscription):` `Subscription` | Persiste atómicamente el estado del contrato. |
| `Cooperative` `License` `Repository` | Repository | `findById(` `id: LicenseId):` `Optional<` `CooperativeLicense>` | Carga la licencia institucional de la cooperativa. |
| `Cooperative` `License` `Repository` | Repository | `findCurrentBy` `Cooperative(id):` `Optional<` `CooperativeLicense>` | Obtiene la licencia corporativa activa de la cooperativa. |
| `Cooperative` `License` `Repository` | Repository | `save(lic: CooperativeLicense):` `Cooperative` `License` | Actualiza plazas y superficie disponible de la licencia. |
| `InvitationCode` `Batch` `Repository` | Repository | `findById(id: BatchId):` `Optional<` `InvitationCodeBatch>` | Carga el lote de códigos para emisión o auditoría. |
| `InvitationCode` `Batch` `Repository` | Repository | `findByFingerprint(fp):` `Optional<` `InvitationCodeBatch>` | Localiza el lote contenedor de un código específico presentado. |
| `InvitationCode` `Batch` `Repository` | Repository | `save(batch: InvitationCodeBatch):` `InvitationCode` `Batch` | Persiste lote y estado de códigos individuales. |
| `Subscription` `Payment` `ApprovedEvent` | Domain Event | `subscriptionId: UUID,` `producerId: UUID, receiptId: UUID` | Confirma cobro exitoso por pasarela de pagos. |
| `Subscription` `ActivatedEvent` | Domain Event | `subscriptionId: UUID,` `producerId: UUID, quotaHa: Decimal` | Notifica vigencia activa para habilitar registro predial. |
| `Subscription` `Payment` `FailedEvent` | Domain Event | `subscriptionId: UUID,` `intentId: UUID, reasonCode: String` | Informa rechazo de transacción comercial. |
| `CooperativeCode` `RedeemedEvent` | Domain Event | `subscriptionId: UUID,` `producerId: UUID, cooperativeId: UUID` | Notifica canje de código patrocinado para afiliación. |
| `Invitation` `CodesBatch` `GeneratedEvent` | Domain Event | `batchId: UUID, licenseId: UUID,` `quantity: int, reservedArea: Decimal` | Registra reserva de cupos corporativos. |
| `InvitationCode` `ExpiredEvent` | Domain Event | `batchId: UUID, licenseId: UUID,` `codeId: UUID, releasedQuota: Decimal` | Notifica liberación de cupo por código vencido. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Subscription and Cooperative Membership. {#tblsubscription-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/subscriptions} | `Create` `Subscription` `Request` | `Subscription` `Resource` (201 Created) | Creación de intención contractual de suscripción individual. |
| `POST` | \nolinkurl{/api/v1/subscriptions/{id}/checkouts} | `CreateCheckout` `Request` | `Checkout` `Resource` (201 Created) | Generación de preferencia de pago y URL de checkout en pasarela. |
| `GET` | \nolinkurl{/api/v1/subscriptions} | N/A | `Subscription` `Resource` (200 OK) | Consulta de suscripción activa del titular autenticado. |
| `GET` | \nolinkurl{/api/v1/subscriptions/{id}} | N/A | `Subscription` `Resource` (200 OK) | Consulta detallada del contrato de suscripción. |
| `GET` | \nolinkurl{/api/v1/subscription-plans} | N/A | `List<PlanOffer>` (200 OK) | Catálogo comercial de planes y tarifas vigentes. |
| `POST` | \nolinkurl{/api/v1/payment-notifications/mercado-pago} | `Payment` `Notification` `Request` | `200 OK` | Recepción asíncrona y reconciliación de pago externo. |
| `POST` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-code-batches} | `Generate` `Invitation` `CodesBatchRequest` | `InvitationBatch` `Resource` (201 Created) | Emisión de lote de códigos por gestor contra cupo institucional. |
| `GET` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-code-batches} | N/A (`?page=0` `&size=20`) | `Page<Invitation` `BatchSummary>` (200 OK) | Consulta paginada y auditoría de códigos generados. |
| `POST` | \nolinkurl{/api/v1/cooperative-code-redemptions} | `Redeem` `Cooperative` `CodeRequest` | `Subscription` `Resource` (201 Created) | Canje de código corporativo por productor autenticado. |
| `POST` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-codes/{codeId}/expiry-adjustments} | `Shorten` `Invitation` `CodeExpiryRequest` | `200 OK` | Adelanto de vigencia para expiración anticipada. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Subscription and Cooperative Membership. {#tblsubscription-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:---|:---|:---|:---|
| `Create` `Subscription` `Request` | Request DTO | `{ planCode: String, requestedQuotaHa: Double }` | Selección comercial contrastada con el catálogo del servidor. |
| `CreateCheckout` `Request` | Request DTO | `{ returnUrl?: String }` | Solicitud de preferencia de cobro en pasarela externa. |
| `Generate` `Invitation` `CodesBatchRequest` | Request DTO | `{ quantity: Int, hectaresCapPerCode: Double, expiresAt: Instant }` | Parámetros para emisión de lote de códigos. |
| `Shorten` `Invitation` `CodeExpiryRequest` | Request DTO | `{ newExpiresAt: Instant }` | Acortamiento de vigencia de código disponible. |
| `Redeem` `Cooperative` `CodeRequest` | Request DTO | `{ code: String }` | Código de activación ingresado por el productor. |
| `Payment` `Notification` `Request` | Request DTO | `{ externalNotificationId: String, externalPaymentId: String }` | Payload webhook de notificación de pasarela. |
| `Subscription` `Resource` | Response DTO | `{ id: UUID, mode: String, status: String, quotaHa: Double, startsAt, endsAt, entitlementActive }` | Representación pública de suscripción vigente. |
| `Checkout` `Resource` | Response DTO | `{ intentId: UUID, checkoutUrl: String, expiresAt: Instant }` | URL segura de checkout emitida por la pasarela. |
| `InvitationBatch` `Resource` | Response DTO | `{ id: UUID, quantity: Int, availableSeats: Int, availableAreaHa: Double, codes: List<String> }` | Lote de códigos entregado al gestor cooperativo. |
| `Subscription` `ResourceAssembler` | Assembler | `toResource(` `Subscription):` `SubscriptionResource` | Mapeador del agregado a DTO público de presentación. |

*Nota.* Elaboración propia.

#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Subscription and Cooperative Membership. {#tblsubscription-use-case-handlers}

| Handler | Type | Input Message | Orchestration Flow & Transactionality |
|:---|:---|:---|:---|
| `Create` `Subscription` `Command` `Handler` | Command Handler | `Create` `Subscription` `Command` | Comprueba perfil, serializa productor, verifica contrato vigente, crea suscripción pendiente. |
| `Create` `Checkout` `Command` `Handler` | Command Handler | `Create` `Checkout` `Command` | Persiste PaymentIntent, invoca pasarela y retorna CheckoutResource con URL segura. |
| `Process` `Payment` `Confirmation` `Command` `Handler` | Command Handler | `Process` `Payment` `Confirmation` `Command` | Valida firma webhook, reconcilia pago, activa suscripción y emite evento de activación. |
| `Generate` `Invitation` `CodesBatch` `Command` `Handler` | Command Handler | `Generate` `Invitation` `CodesBatch` `Command` | Valida gestor y cupo en licencia, descuenta plazas/área, genera lote y emite evento. |
| `Redeem` `Cooperative` `Code` `Command` `Handler` | Command Handler | `Redeem` `Cooperative` `Code` `Command` | Localiza código, valida vigencia, marca como redimido, activa patrocinio y emite evento. |
| `Shorten` `Invitation` `CodeExpiry` `Command` `Handler` | Command Handler | `Shorten` `Invitation` `CodeExpiry` `Command` | Adelanta expiración de código disponible, transiciona a expirado y emite evento. |
| `OnInvitation` `CodeExpired` `Event` `Handler` | Event Handler | `InvitationCode` `ExpiredEvent` | Escucha expiración y restituye plazas y hectáreas a la licencia cooperativa. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Subscription and Cooperative Membership. {#tblsubscription-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:---|:---|:---|:---|
| `Subscription` `JpaRepository` | Persistence | Spring Data JPA | Operaciones sobre esquemas `subscription` en PostgreSQL. |
| `MercadoPago` `Gateway` `Adapter` | External Adapter | Mercado Pago SDK | Creación de preferencias de pago y consulta de órdenes de cobro. |
| `SpringEventBus` `Adapter` | Integration | Spring ApplicationEvent | Publicación y enrutamiento interno de eventos transaccionales. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Coordinación de pago seguro (Hosted Checkout):**
  * *Android Nativo (Kotlin):* Componente `AndroidHostedCheckoutCoordinator` que lanza Chrome Custom Tabs hacia la pasarela de Mercado Pago tras obtener `checkoutUrl` (`Checkout` `Resource`), reconsultando el estado autoritativo al regresar a la aplicación sin confiar en callbacks locales.
  * *Cross-Platform (Flutter/Dart):* Componente `FlutterHostedCheckoutCoordinator` implementado con `url_launcher` para apertura controlada de checkout y refresco asíncrono del contrato.
* **Caché local de derechos y cupos (`entitlement_cache`):**
  * *Android Nativo (Room / SQLite):* `EntitlementCacheDao` y entidad `LocalEntitlementEntity` que custodian el estado del contrato (`status`), vigencia (`starts_at`, `ends_at`) y hectáreas autorizadas (`quota_ha`) asociadas al `account_id` para validación inmediata previa a la edición de polígonos.
  * *Cross-Platform (sqflite / SQLite):* Tabla local `entitlement_cache` gestionada por `LocalDataAccess`. No autoriza operaciones de alta comercial offline, operando como proyección de solo lectura.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Subscription and Cooperative Membership. {#tblsubscription-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `subscriptions` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la suscripción. |
| `subscriptions` | `producer_id` | `UUID` | `NOT NULL, UNIQUE` | Productor titular de los derechos. |
| `subscriptions` | `plan_type` | `VARCHAR(50)` | `NOT NULL` | Modalidad (`INDIVIDUAL_PAID`, `COOPERATIVE_SPONSORED`). |
| `subscriptions` | `quota_ha` | `NUMERIC(8,2)` | `NOT NULL, CHECK` | Hectáreas autorizadas para parcelas. |
| `subscriptions` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`ACTIVE`, `PENDING_PAYMENT`, `EXPIRED`). |
| `subscriptions` | `starts_at` | `TIMESTAMPTZ` | `NULL` | Inicio de vigencia activa. |
| `subscriptions` | `ends_at` | `TIMESTAMPTZ` | `NULL` | Término de vigencia activa. |
| `cooperative_` `licenses` | `id` | `UUID` | `PRIMARY KEY` | Licencia corporativa institucional. |
| `cooperative_` `licenses` | `cooperative_` `id` | `UUID` | `NOT NULL, UNIQUE` | Cooperativa propietaria del convenio. |
| `cooperative_` `licenses` | `total_seats` | `INT` | `NOT NULL, CHECK` | Plazas máximas autorizadas. |
| `cooperative_` `licenses` | `issued_seats` | `INT` | `NOT NULL, CHECK` | Plazas comprometidas en códigos vigentes. |
| `cooperative_` `licenses` | `total_area_ha` | `NUMERIC(10,2)` | `NOT NULL` | Superficie máxima del convenio. |
| `cooperative_` `licenses` | `issued_area_ha` | `NUMERIC(10,2)` | `NOT NULL` | Superficie comprometida en códigos vigentes. |
| `invitation_` `codes` | `id` | `UUID` | `PRIMARY KEY` | Identificador único del código. |
| `invitation_` `codes` | `batch_id` | `UUID` | `NOT NULL, FK` | Lote de procedencia. |
| `invitation_` `codes` | `code_hash` | `VARCHAR(64)` | `NOT NULL, UNIQUE` | Hash SHA-256 del código alfanumérico. |
| `invitation_` `codes` | `quota_ha` | `NUMERIC(8,2)` | `NOT NULL` | Cobertura en hectáreas que confiere el código. |
| `invitation_` `codes` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`AVAILABLE`, `REDEEMED`, `EXPIRED`). |
| `invitation_` `codes` | `expires_at` | `TIMESTAMPTZ` | `NOT NULL` | Marca temporal límite para canje. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS subscription;

CREATE TABLE subscription.subscriptions (
    id          UUID PRIMARY KEY,
    producer_id UUID NOT NULL,
    plan_type   VARCHAR(50) NOT NULL,
    quota_ha    NUMERIC(8,2) NOT NULL CHECK (quota_ha > 0),
    status      VARCHAR(30) NOT NULL,
    starts_at   TIMESTAMPTZ,
    ends_at     TIMESTAMPTZ,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_subscriptions_producer
        UNIQUE (producer_id)
);

CREATE TABLE subscription.cooperative_licenses (
    id             UUID PRIMARY KEY,
    cooperative_id UUID NOT NULL,
    total_seats    INT NOT NULL CHECK (total_seats > 0),
    issued_seats   INT NOT NULL DEFAULT 0
        CHECK (issued_seats <= total_seats),
    total_area_ha  NUMERIC(10,2) NOT NULL
        CHECK (total_area_ha > 0),
    issued_area_ha NUMERIC(10,2) NOT NULL DEFAULT 0
        CHECK (issued_area_ha <= total_area_ha),
    created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_licenses_cooperative
        UNIQUE (cooperative_id)
);

CREATE TABLE subscription.invitation_codes (
    id         UUID PRIMARY KEY,
    batch_id   UUID NOT NULL,
    code_hash  VARCHAR(64) NOT NULL UNIQUE,
    quota_ha   NUMERIC(8,2) NOT NULL CHECK (quota_ha > 0),
    status     VARCHAR(30) NOT NULL,
    expires_at TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Subscription and Cooperative Membership. {#tblsubscription-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `SubscriptionController`; `PaymentWebhookController`; `CooperativeInvitationController`; `CodeRedemptionController` | Endpoints REST para suscripciones, checkout, webhooks IPN, canje y lotes de códigos. | Spring MVC, Webhook Filter |
| Capa de aplicación (*Application Layer*) | `Subscription` `CommandService`; `Subscription` `QueryService`; `PaymentReconciliation` `CommandService`; `CooperativeInvitation` `CommandService`; `CooperativeInvitation` `QueryService` | Orquestacinnn de comandos comerciales/pagos, consultas de planes/cuotas, conciliación IPN y canjes. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `SubscriptionRepository`; `CooperativeInvitationBatchRepository`; `CooperativeLicenseRepository`; `InvitationCodeGenerator`; `HectareQuotaPolicy`; `SubscriptionActivationPolicy` | Puertos de repositorio y servicios de dominio para cuotas de hectáreas, códigos y períodos de vigencia. | Java Security / SecureRandom |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaSubscription` `RepositoryAdapter`; `JpaInvitationBatch` `RepositoryAdapter`; `JpaCooperativeLicense` `RepositoryAdapter`; `MercadoPagoPayment` `Adapter`; `DomainEventPublisher` | Adaptadores de persistencia JPA sobre PostgreSQL, cliente HTTP de Mercado Pago y publicador de eventos. | Spring Data JPA, HTTP Client |

*Nota.* Elaboración propia.
##### Flujo de comunicación y conectividad
1. El productor formaliza la intención de alta enviando `POST` \nolinkurl{/api/v1/subscriptions} hacia `SubscriptionController`, el cual delega en `SubscriptionCommandService`; este valida el cupo mediante `HectareQuotaPolicy` y persiste la suscripción en estado pendiente vía `SubscriptionRepository`.
2. Seguidamente, despacha `POST` \nolinkurl{/api/v1/subscriptions/{id}/checkouts}; `SubscriptionCommandService` registra el `PaymentIntent`, se comunica con `MercadoPagoPaymentAdapter` y retorna el `checkoutUrl` seguro de Mercado Pago (`Checkout` `Resource`). Las consultas de suscripción y cuotas activas se resuelven a través de `SubscriptionQueryService`.
3. El usuario completa la transacción en el gateway; Mercado Pago notifica asíncronamente a `POST` \nolinkurl{/api/v1/payment-notifications/mercado-pago}.
4. `PaymentWebhookController` autentica la firma criptográfica HMAC y delega el procesamiento en `PaymentReconciliationCommandService`.
5. `PaymentReconciliationCommandService` actualiza el estado a activo mediante `SubscriptionRepository` y publica el evento de activación de suscripción vía `DomainEventPublisher`.
6. En el modelo corporativo, el socio canjea su cupo con `POST` \nolinkurl{/api/v1/cooperative-code-redemptions}; `CodeRedemptionController` delega en `CooperativeInvitationCommandService`, el cual valida el código contra `CooperativeInvitationBatchRepository`, marca el código como redimido y emite evento de canje hacia *Cooperative Operations*.
7. El gestor cooperativo puede consultar el estado de lotes y cupos mediante `CooperativeInvitationQueryService`, o bien acortar la vigencia de un código disponible despachando `POST` \nolinkurl{/api/v1/cooperatives/{id}/invitation-codes/{codeId}/expiry-adjustments} hacia `CooperativeInvitationCommandService`, lo cual dispara evento de expiración y restituye cupos a la licencia en `CooperativeLicenseRepository`.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Subscription and Cooperative Membership.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-subscription.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Subscription and Cooperative Membership. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Subscription and Cooperative Membership.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Subscription and Cooperative Membership.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-subscription.png}
\caption*{\textit{Nota.} Clases, entidades internas, acumuladores de cupo y objetos de valor de Subscription. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Subscription and Cooperative Membership (Parte 1).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/tactical-diagrams/database-diagram-subscription-part1.png}
\caption*{\textit{Nota.} Tablas relacionales principales y acumuladores de cuotas (Parte 1). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Subscription and Cooperative Membership (Parte 2).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/tactical-diagrams/database-diagram-subscription-part2.png}
\caption*{\textit{Nota.} Tablas relacionales de lotes y códigos de canje (Parte 2). Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Olive Orchard and Plot Management

Propósito: Administra el catastro territorial y la caracterización dendrométrica del olivar. Constituye la base física sobre la cual operan los demás módulos de Viora. Es responsable del Aggregate Root `Plot`, custodiando la delimitación geográfica poligonal (GeoJSON), el marco de plantación, la densidad de árboles por hectárea, la variedad cultivada (*Criolla*, *Sevillana*, *Manzanilla*, *Arbequina*) y la fecha de última poda. Valida que el área predial no exceda la cuota suscrita y publica eventos soberanos del ciclo de vida predial (`PlotRegisteredEvent`, `PlotRemovedEvent`), habilitando la compensación asíncrona de prescripciones activas en contextos downstream.

#### Domain Layer

##### Modelo de dominio: `Plot` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `Plot` (Aggregate Root) en Olive Orchard and Plot Management. {#tblorchard-plot-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Delimita la identidad geográfica, catastral y dendrométrica del cuartel olivarero y salvaguarda el historial de linderos. |
| Relaciones de dominio | Referencia externa por ID a `OwnerId`. Raíz espacial referenciada por telemetría, fenología y muestreos. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `Plot` en Olive Orchard and Plot Management. {#tblorchard-plot-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `PlotId` | Identificador único universal inmutable del predio. |
| `producerId` | `UserId` | Identificador del agricultor propietario o arrendatario. |
| `name` | `PlotName` | Denominación agronómica descriptiva del cuartel. |
| `variety` | `OliveVariety` | Variedad botánica: `CRIOLLA`, `SEVILLANA`, `MANZANILLA`, `ARBEQUINA`. |
| `geometry` | `PlotGeometry` | Polígono catastral cerrado en formato WGS84 / GeoJSON. |
| `plantationFrame` | `PlantationFrame` | Marco de plantación (distancia entre hileras y entre árboles). |
| `treeDensity` | `TreeDensity` | Densidad efectiva calculada (árboles por hectárea teóricos u observados). |
| `lastPruningDate` | `Optional<LocalDate>` | Fecha de última labor de poda registrada. |
| `status` | `PlotStatus` | Estado del predio: `ACTIVE`, `REMOVED_SOFT_DELETE`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `Plot` en Olive Orchard and Plot Management. {#tblorchard-plot-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `create` | `producerId: UserId`, `name: PlotName`, `variety: OliveVariety`, `geom: PlotGeometry`, `frame: PlantationFrame` | `Plot` | Fábrica que valida topología poligonal, calcula área neta y emite `PlotDelimited` `Event`. |
| `update` `DendrometricData` | `frame: PlantationFrame`, `pruningDate: LocalDate` | `void` | Recalibra densidad arbórea efectiva y registra intervenciones silvícolas. |
| `updateBoundaries` | `newGeometry: PlotGeometry`, `quotaChecker: HectareQuotaPolicy` | `void` | Valida nueva geometría contra cupo de suscripción y emite `PlotBoundariesUpdatedEvent`. |
| `remove` | `reason: String` | `void` | Ejecuta baja lógica preservando trazabilidad histórica y emite `PlotRemovedEvent`. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Olive Orchard and Plot Management. {#tblorchard-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `PlotId` | `UUID v4` | Identificador único universal inmutable de la parcela. |
| `PlotName` | `String` | Nombre identificador del cuartel o predio (longitud 3 a 100 caracteres). |
| `OliveVariety` | `Enum` | Variedad botánica: `CRIOLLA`, `SEVILLANA`, `MANZANILLA`, `ARBEQUINA`. |
| `PlotGeometry` | `GeoJSON (Polygon)` | Polígono geográfico que computa internamente el área en hectáreas. |
| `PlantationFrame` | `rowSpacingM: Double`, `treeSpacingM: Double` | Distancias de siembra en metros ($m \times m$). |
| `TreeDensity` | `treesPerHectare: Int` | Densidad calculada ($D = 10000 / (row \times tree)$). |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Olive Orchard and Plot Management. {#tblorchard-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `Cadastral` `Geometry` `Service` | Domain Service | `validate(polygon: CadastralPolygon): void` | Verifica topología cerrada sin autointersecciones ni traslapes. |
| `Cadastral` `Geometry` `Service` | Domain Service | `netAreaHa(polygon: CadastralPolygon): Decimal` | Calcula superficie neta en hectáreas geodésicas. |
| `Dendrometry` `Service` | Domain Service | `calculate(areaHa: Decimal, grid: PlantingGrid, treeCount: int):` `DendrometricAttributes` | Deriva densidades teóricas y observadas por hectárea. |
| `PlotRepository` | Repository | `findById(id: PlotId): Optional<Plot>` | Carga la parcela por su identificador primario. |
| `PlotRepository` | Repository | `findActiveByOwner(` `ownerId: OwnerId):` `List<Plot>` | Lista parcelas activas del productor para gestión predial. |
| `PlotRepository` | Repository | `sumActiveAreaBy` `Owner(ownerId:` `OwnerId): Decimal` | Consolida superficie activa para auditoría de cuotas. |
| `PlotRepository` | Repository | `save(plot: Plot): Plot` | Persiste atómicamente la entidad y linderos espaciales. |
| `PlotDelimited` `Event` | Domain Event | `plotId: UUID, ownerId: UUID, polygon: String, variety: String, occurredOn: Instant` | Notifica alta de cuartel para inicializar telemetría. |
| `PlotBoundaries` `UpdatedEvent` | Domain Event | `plotId: UUID, ownerId: UUID, polygon: String, areaHa: Decimal, occurredOn: Instant` | Notifica alteración de linderos para recalibrar modelos. |
| `PlotRemovedEvent` | Domain Event | `plotId: UUID, ownerId: UUID, reason: String, occurredOn: Instant` | Notifica baja lógica de parcela para desvincular sensores. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Olive Orchard and Plot Management. {#tblorchard-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots} | `CreatePlot` `Request` | `PlotResource` (201 Created) | Delimitación y registro georreferenciado de parcela con validación de cuota. |
| `GET` | \nolinkurl{/api/v1/plots} | N/A (`?updatedSince=`) | `List<` `PlotResource>` (200 OK) | Listado y sincronización incremental delta de parcelas activas. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}} | N/A | `PlotResource` (200 OK) | Consulta de detalle agronómico, geometría y densidad arbórea. |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}} | `UpdatePlot` `Request` (Req:`If-Match`) | `PlotResource` (200 OK) | Actualización de linderos y marco dendrométrico con control de concurrencia. |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}} | N/A | `204 No Content` | Baja lógica soberana de la parcela predial. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Olive Orchard and Plot Management. {#tblorchard-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreatePlotRequest` | Request DTO | `{ name: String, variety: String, geoJson: String, rowSpacingM: Double, treeSpacingM: Double }` | Entrada para registro predial. |
| `UpdatePlotRequest` | Request DTO | `{ name: String, rowSpacingM: Double, treeSpacingM: Double, lastPruningDate: LocalDate }` | Modificación agronómica del lote (controlado con `If-Match`). |
| `PlotResource` | Response DTO | `{ id: UUID, name: String, variety: String, areaHa: Double, treeDensity: Int, geoJson: String }` | Representación pública del predio. |
| `PlotResource` `Assembler` | Assembler | `toResource(` `Plot):` `PlotResource` | Mapeador a DTO con cálculo de métricas. |

*Nota.* Elaboración propia.
#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Olive Orchard and Plot Management. {#tblorchard-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Delimit` `Plot` `Command` `Handler` | Command Handler | `Delimit` `Plot` `Command` | Valida cuota de hectáreas, instancia `Plot`, calcula densidad, persiste y emite `PlotRegisteredEvent`. |
| `Update` `Plot` `Boundaries` `Command` `Handler` | Command Handler | `Update` `Plot` `Boundaries` `Command` | Carga predio, valida `If-Match`, actualiza linderos y marco, persiste y emite `PlotDendrometricDataUpdatedEvent`. |
| `Remove` `Plot` `Command` `Handler` | Command Handler | `Remove` `Plot` `Command` | Marca predio inactivo, persiste la baja y emite `PlotRemovedEvent`. |
| `Get` `Plot` `ById` `Query` `Handler` | Query Handler | `Get` `Plot` `ById` `Query` | Consulta predio por ID con optimización de lectura y retorno en DTO. |
| `List` `Plots` `Query` `Handler` | Query Handler | `List` `Plots` `Query` | Sincronización incremental y listado filtrado por titular y timestamp delta. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Olive Orchard and Plot Management. {#tblorchard-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `PlotJpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `plots` en PostgreSQL con soporte PostGIS/GeoJSON. |
| `JpaPlotRepository` `Adapter` | Adapter | Spring Component | Implementa el puerto de dominio `PlotRepository`. |
| `MapboxSpatial` `ValidationAdapter` | Adapter | GeoTools / JTS | Validación topológica de polígonos y cálculo esferoidal de área. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Adaptador de mapas y edición poligonal (Mapbox):**
  * *Android Nativo (Kotlin):* Componente `AndroidPlotMapAdapter` integrado con Mapbox Maps SDK para Android, permitiendo digitalizar vértices georreferenciados en pantalla, calcular visualmente la geometría y convertirla a GeoJSON RFC 7946 sin persistir desplazamientos del usuario como entidades de dominio.
  * *Cross-Platform (Flutter/Dart):* Componente `FlutterPlotMapAdapter` apoyado en `mapbox_maps_flutter` con idéntico contrato de renderizado y captura vectorial.
* **Caché local de parcelas (`plot_cache`):**
  * *Android Nativo (Room / SQLite):* `PlotCacheDao` y entidad `LocalPlotCacheEntity` con clave primaria compuesta `(account_id, plot_id)`, almacenando el polígono GeoJSON como `TEXT`, caracterización varietal, densidades y marca `fetched_at` para consulta cartográfica offline en predios remotos.
  * *Cross-Platform (sqflite / SQLite):* Tabla local `plot_cache` gestionada por `LocalDataAccess` con invalidación selectiva ante modificaciones remotas (`PlotUpdatedEvent`).

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Olive Orchard and Plot Management. {#tblorchard-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `plots` | `id` | `UUID` | `PRIMARY KEY` | Identificador único de la parcela. |
| `plots` | `producer_id` | `UUID` | `NOT NULL, INDEX` | Productor propietario de la parcela. |
| `plots` | `name` | `VARCHAR(100)` | `NOT NULL` | Denominación del cuartel o predio. |
| `plots` | `variety` | `VARCHAR(50)` | `NOT NULL` | Variedad botánica de olivo cultivada. |
| `plots` | `area_ha` | `NUMERIC(8,2)` | `NOT NULL, CHECK` | Superficie física calculada en hectáreas. |
| `plots` | `row_spacing_m` | `NUMERIC(4,2)` | `NOT NULL` | Distancia entre hileras en metros. |
| `plots` | `tree_spacing_` `m` | `NUMERIC(4,2)` | `NOT NULL` | Distancia entre plantas en metros. |
| `plots` | `tree_density` | `INT` | `NOT NULL` | Densidad calculada de árboles/ha. |
| `plots` | `polygon_` `geojson` | `TEXT` | `NOT NULL` | Polígono espacial en formato GeoJSON. |
| `plots` | `last_pruning_` `date` | `DATE` | `NULL` | Fecha registrada de la última poda. |
| `plots` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado del predio (`ACTIVE`, `REMOVED`). |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS orchard;

CREATE TABLE orchard.plots (
    id                UUID PRIMARY KEY,
    producer_id       UUID NOT NULL,
    name              VARCHAR(100) NOT NULL,
    variety           VARCHAR(50) NOT NULL,
    area_ha           NUMERIC(8,2) NOT NULL
        CHECK (area_ha > 0),
    row_spacing_m     NUMERIC(4,2) NOT NULL
        CHECK (row_spacing_m > 0),
    tree_spacing_m    NUMERIC(4,2) NOT NULL
        CHECK (tree_spacing_m > 0),
    tree_density      INT NOT NULL
        CHECK (tree_density >= 50),
    polygon_geojson   TEXT NOT NULL,
    last_pruning_date DATE,
    status            VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_plots_producer
    ON orchard.plots(producer_id);
CREATE INDEX idx_plots_status ON orchard.plots(status);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Olive Orchard and Plot Management. {#tblorchard-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `PlotController` | Controladores REST con parámetro canónico `{plotId}` para registro, actualización, baja y sincronización delta. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `PlotCommandService`; `PlotQueryService` | Orquestación de comandos de predio, control de concurrencia optimista (`If-Match`) y consultas de parcelas. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `PlotRepository`; `GeospatialPolygonValidator`; `SubscriptionQuotaPort` | Contrato de persistencia (puerto de dominio), validación topológica JTS y verificación de cupo de ha. | Java puro / JTS Topology Suite |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaPlotRepositoryAdapter`; `DomainEventPublisher` | Persistencia JPA en PostgreSQL con soporte geoespacial PostGIS y despacho de eventos de dominio. | Spring Data JPA, PostGIS, Hibernate Spatial |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El contenedor cliente móvil (`Android Application` o `Cross-Platform Application`) captura vértices GPS y envía `POST` \nolinkurl{/api/v1/plots} hacia `PlotController`.
2. El controlador valida el cuerpo sintácticamente y delega las operaciones de escritura en `PlotCommandService` (mientras que las lecturas de predios y sincronización delta son resueltas por `PlotQueryService`).
3. `PlotCommandService` invoca `SubscriptionQuotaPort` para verificar el cupo activo disponible en la suscripción del productor.
4. Si hay cupo suficiente, delega en `GeospatialPolygonValidator` la validación de no auto-intersección del polígono GeoJSON y computa área y densidad arbórea.
5. Se persiste el predio y su registro de revisión histórica en PostgreSQL a través del puerto `PlotRepository` (implementado por `JpaPlotRepositoryAdapter`).
6. Se dispara `PlotRegisteredEvent` vía `DomainEventPublisher`, permitiendo que *Telemetry* y *Phenology* sincronicen el seguimiento agronómico.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Olive Orchard and Plot Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-orchard.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Olive Orchard and Plot Management. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Olive Orchard.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Olive Orchard and Plot Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-orchard.png}
\caption*{\textit{Nota.} Estructura estática de clases, atributos dendrométricos y métodos de Plot. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Olive Orchard and Plot Management.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-orchard.png}
\caption*{\textit{Nota.} Estructura de la tabla plots, columnas espaciales e índices en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Agroclimatic Telemetry and Sensor Monitoring

Propósito: Custodia la memoria agroclimática y el monitoreo de microclima del olivar. Captura series temporales horarias de temperatura ambiente, humedad relativa, radiación solar y humedad edáfica mediante dos fuentes: sondas virtuales calibradas (`IoTDevice`) y pronósticos meteorológicos a 7 días obtenidos de Open-Meteo vía un programador interno (`WeatherSyncScheduler` `@Scheduled`). Evalúa en tiempo real riesgos fisiológicos de estrés hídrico y choque térmico en floración, despachando alertas in-app y proveyendo datos climáticos para la acumulación de frío en Fenología.

#### Domain Layer

##### Modelo de dominio: `VirtualSensorNode` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `VirtualSensorNode` (Aggregate Root) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-virtualsensornode-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Gestiona el inventario, profundidad y factor de calibración de los dispositivos sensores de suelo y microclima. |
| Relaciones de dominio | Referencia lógica a `PlotId`. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `VirtualSensorNode` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-virtualsensornode-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SensorNodeId` | Identificador único del nodo sensor virtual. |
| `plotId` | `PlotId` | Referencia lógica a la parcela monitoreada. |
| `name` | `SensorNodeName` | Denominación descriptiva del punto de monitoreo. |
| `type` | `SensorNodeType` | Tipo: `MICROCLIMATE` o `SOIL_PROBE`. |
| `depthCm` | `SensorDepth` | Profundidad de instalación de sondas (30 cm o 60 cm). |
| `soilTextureType` | `SoilTextureType` | Textura edáfica: franca, franco-arenosa, arcillosa. |
| `calibrationMultiplier` | `CalibrationMultiplier` | Factor de ajuste empírico en rango [0.50, 2.00]. |
| `status` | `SensorNodeStatus` | Estado: `ACTIVE`, `PAUSED`, `UNLINKED`. |
| `lastReadingTimestamp` | `Instant` | Marca temporal de la última telemetría procesada. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `VirtualSensorNode` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-virtualsensornode-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `register` | `id: SensorNodeId`, `plotId: PlotId`, `name: SensorNodeName`, `type: SensorNodeType`, `depth: SensorDepth`, `texture: SoilTextureType`, `mult: CalibrationMultiplier` | `VirtualSensorNode` | Registra el nodo en el inventario predial y emite `VirtualSensorNodeLinkedEvent`. |
| `calibrate` | `depth: SensorDepth`, `texture: SoilTextureType`, `mult: CalibrationMultiplier` | `void` | Actualiza coeficientes de cálculo de humedad volumétrica. |
| `rename` | `newName: SensorNodeName` | `void` | Actualiza la denominación del nodo garantizando unicidad en el predio. |
| `unlink` | `void` | `void` | Desvincula lógicamente el sensor de la parcela activa. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `TelemetrySeries` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `TelemetrySeries` (Aggregate Root) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-telemetryseries-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Agrupa las lecturas temporales horarias, pronósticos y eventos de estrés agroclimático para un sensor predial. |
| Relaciones de dominio | Referencia a `SensorNodeId` y `PlotId`. Compone lecturas horarias, pronósticos e incidentes. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `TelemetrySeries` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-telemetryseries-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `TelemetrySeriesId` | Identificador único de la serie temporal. |
| `sensorNodeId` | `SensorNodeId` | Nodo sensor emisor de los datos. |
| `plotId` | `PlotId` | Parcela a la que pertenece la serie. |
| `readings` | `List<` `HourlyTelemetry` `Reading>` | Historial cronológico de mediciones horarias. |
| `forecastDays` | `List<` `WeatherForecastDay>` | Pronóstico meteorológico a 7 días vigente. |
| `incidents` | `List<` `Agroclimatic` `Incident>` | Registro de alertas activas e históricas de estrés. |
| `currentStatus` | `TelemetrySeriesStatus` | Estado operativo: `NORMAL`, `HYDRIC_STRESS_ACTIVE`, `FROST_ALERT`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `TelemetrySeries` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-telemetryseries-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `ingestHourly` `Reading` | `reading: HourlyTelemetryReading`, `evaluator: AgroclimaticThresholdEvaluator` | `void` | Incorpora lectura horaria, evalúa umbrales y emite `TelemetryDataIngestedEvent`. |
| `updateWeather` `Forecast` | `forecasts: List<WeatherForecastDay>` | `void` | Actualiza pronóstico semanal georreferenciado y emite `WeatherForecastIngestedEvent`. |
| `getActive` `Incidents` | `void` | `List<` `Agroclimatic` `Incident>` | Retorna incidentes abiertos de estrés hídrico o choque térmico. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `HourlyTelemetryReading` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `HourlyTelemetryReading` (Internal Entity) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-hourlytelemetryreading-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Captura los parámetros físicos y edafoclimáticos registrados en una hora determinada. |
| Relaciones de dominio | Subordinada a `TelemetrySeries` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `HourlyTelemetryReading` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-hourlytelemetryreading-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ReadingId` | Identificador único de la lectura horaria. |
| `observedAt` | `Instant` | Marca temporal UTC de la observación. |
| `soilMoisture30cm` | `VolumetricWaterContent` | Humedad volumétrica de suelo a 30 cm de profundidad (%). |
| `soilMoisture60cm` | `VolumetricWaterContent` | Humedad volumétrica de suelo a 60 cm de profundidad (%). |
| `airTemperature` | `Temperature` | Temperatura ambiente registrada (°C). |
| `relativeHumidity` | `RelativeHumidity` | Humedad relativa del aire (%). |
| `isSynthetic` | `boolean` | Indicador si la lectura proviene del simulador de contingencia. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `HourlyTelemetryReading` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-hourlytelemetryreading-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isStressInducing` | `void` | `boolean` | Determina si los niveles hídricos caen por debajo del punto de marchitez temporal. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `WeatherForecastDay` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `WeatherForecastDay` (Internal Entity) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-weatherforecastday-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Almacena la predicción meteorológica para una jornada específica en el predio. |
| Relaciones de dominio | Subordinada a `TelemetrySeries` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `WeatherForecastDay` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-weatherforecastday-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ForecastDayId` | Identificador del registro diario de pronóstico. |
| `forecastDate` | `LocalDate` | Fecha calendario pronosticada. |
| `maxTemperature` | `Temperature` | Temperatura máxima prevista (°C). |
| `minTemperature` | `Temperature` | Temperatura mínima prevista (°C). |
| `precipitation` `Probability` | `Percentage` | Probabilidad de precipitación pluvial (0-100%). |
| `windSpeedKmh` | `WindSpeed` | Velocidad estimada del viento en km/h. |
| `syncedAt` | `Instant` | Marca temporal de sincronización con Open-Meteo. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `WeatherForecastDay` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-weatherforecastday-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isFrostRisk` | `void` | `boolean` | Detecta si la temperatura mínima proyectada desciende de 2.0 °C. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `AgroclimaticIncident` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `AgroclimaticIncident` (Internal Entity) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-agroclimaticincident-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Modela el ciclo de vida de una anomalía agroclimática que amenaza la fisiología del olivar. |
| Relaciones de dominio | Subordinada a `TelemetrySeries` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `AgroclimaticIncident` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-agroclimaticincident-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `IncidentId` | Identificador único del incidente. |
| `type` | `IncidentType` | Tipo: `HYDRIC_STRESS`, `THERMAL_SHOCK`, `FROST_WARNING`. |
| `severity` | `IncidentSeverity` | Severidad: `WARNING`, `CRITICAL`. |
| `status` | `IncidentStatus` | Estado: `OPEN`, `RESOLVED`. |
| `triggeredAt` | `Instant` | Marca de tiempo de activación de la alerta. |
| `resolvedAt` | `Instant` | Marca de tiempo de normalización del parámetro. |
| `triggerValue` | `Double` | Valor registrado que causó el disparo. |
| `thresholdValue` | `Double` | Umbral agronómico de referencia. |
| `stressDurationMinutes` | `Long` | Minutos acumulados bajo condición de estrés. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `AgroclimaticIncident` en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-agroclimaticincident-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `resolve` | `resolutionTime: Instant` | `void` | Cierra formalmente la alerta y computa la duración del estrés fisiológico. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `SensorNodeId`, `TelemetrySeriesId` | `UUID v4` | Identificadores únicos inmutables de los agregados raíz del contexto. |
| `ReadingId`, `ForecastDayId`, `IncidentId` | `UUID v4` | Identificadores únicos de las entidades internas subordinadas a `TelemetrySeries`. |
| `SensorNodeName` | `String` | Denominación descriptiva única en el predio (longitud 3 a 100 caracteres). |
| `SensorDepth` | `Int (30 o 60 cm)` | Estrato radicular objetivo de absorción de agua del olivo. |
| `SoilTextureType` | `Enum` | `SANDY_LOAM`, `SANDY`, `LOAM`, `CLAY_LOAM`. |
| `CalibrationMultiplier` | `Double` | Factor volumétrico de calibración edáfica en rango agronómico $[0.50, 2.00]$. |
| `VolumetricWaterContent` | Double (Porcentaje VWC / θ) | Humedad volumétrica de suelo entre $0.0\%$ y $100.0\%$. |
| `Temperature` | `Double (Celsius)` | Métrica de temperatura ambiental con precisión de décimas. |
| `RelativeHumidity` | `Double (Porcentaje)` | Humedad ambiental entre $0.0\%$ y $100.0\%$. |
| `IncidentSeverity` | `Enum` | Severidad del riesgo: `WARNING`, `CRITICAL`. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateHydricRisk(` `moisture30cm: Double,` `texture:` `SoilTextureType):` `HydricRiskResult` | Determina severidad de estrés hídrico según umbrales de textura. |
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateThermalRisk(` `temp: Double,` `rh: Double,` `stage:` `PhenologicalStage):` `ThermalRiskResult` | Evalúa golpe de calor o choque térmico según fenología. |
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateFrostRisk(` `minTemp: Double):` `FrostRiskResult` | Detecta alerta temprana de heladas radiativas o advectivas. |
| `VirtualSensor` `NodeRepository` | Repository | `findById(id: SensorNodeId): Optional<VirtualSensorNode>` | Carga nodo sensor por identificador primario. |
| `VirtualSensor` `NodeRepository` | Repository | `findByPlotId(plotId: PlotId): List<VirtualSensorNode>` | Lista dispositivos vinculados a un predio. |
| `VirtualSensor` `NodeRepository` | Repository | `existsByPlotId` `AndName(` `plotId: PlotId,` `name:` `SensorNodeName):` `boolean` | Verifica unicidad de nombre de sensor en el predio. |
| `VirtualSensor` `NodeRepository` | Repository | `save(sensorNode: VirtualSensorNode): VirtualSensorNode` | Persiste configuración y calibración del nodo. |
| `TelemetrySeries` `Repository` | Repository | `findById(id: TelemetrySeriesId): Optional<TelemetrySeries>` | Recupera serie temporal de telemetría. |
| `TelemetrySeries` `Repository` | Repository | `findByPlotId(plotId: PlotId): Optional<TelemetrySeries>` | Localiza la serie asociada a una parcela. |
| `TelemetrySeries` `Repository` | Repository | `findBySensorNodeId(` `nodeId:` `SensorNodeId):` `Optional<` `TelemetrySeries>` | Recupera serie emitida por un sensor específico. |
| `TelemetrySeries` `Repository` | Repository | `save(series: TelemetrySeries): TelemetrySeries` | Guarda lecturas, pronósticos e incidentes del agregado. |
| `VirtualSensor` `NodeLinkedEvent` | Domain Event | `nodeId: UUID, plotId: UUID, name: String, type: String, occurredOn: Instant` | Notifica registro de sensor para inicializar ingesta. |
| `TelemetryData` `IngestedEvent` | Domain Event | `seriesId: UUID, nodeId: UUID, observedAt: Instant, occurredOn: Instant` | Notifica ingesta de medición horaria para modelos fenológicos. |
| `HydricStress` `AlertTriggeredEvent` | Domain Event | `plotId: UUID, severity: String, moisture: Double, occurredOn: Instant` | Alerta estrés hídrico para activar recomendaciones de riego. |
| `WeatherForecast` `IngestedEvent` | Domain Event | `plotId: UUID, forecastDate: LocalDate, minTemp: Double, occurredOn: Instant` | Notifica pronóstico sincronizado con Open-Meteo. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices} | `CreateIoT` `DeviceRequest` | `DeviceResource` (201 Created) | Alta y vinculación de nodo sensor o sonda edáfica virtual. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices} | N/A | `List<` `DeviceResource>` (200 OK) | Consulta de inventario de dispositivos y estado de calibración. |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices/{deviceId}} | `CalibrateDevice` `Request` | `DeviceResource` (200 OK) | Renombrado del nodo y calibración de offset en sonda edáfica y factor edafológico. |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices/{deviceId}} | N/A | `204 No Content` | Desvinculación lógica de la sonda preservando histórico. |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/telemetries} | `IngestTelemetry` `Request` | `Telemetry` `Resource` (201 Created) | Ingesta individual o en lote de lecturas de sensores. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/telemetries} | N/A (`?startDate=` `&endDate=`) | `List<` `TelemetryResource>` (200 OK) | Consulta de series climáticas para gráficas y monitoreo. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/forecasts} | N/A | `WeatherForecast` `Resource` (200 OK) | Consulta de pronóstico meteorológico a 7 días vía Open-Meteo. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/incidents} | N/A (`?status=ACTIVE`) | `List<` `IncidentResource>` (200 OK) | Consulta de alertas e incidentes de estrés hídrico o térmico. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreateIoT` `DeviceRequest` | Request DTO | `{ name: String, deviceType: String, depthCm: Int, soilTextureType: String }` | Registro y alta de sonda edáfica virtual. |
| `CalibrateDevice` `Request` | Request DTO | `{ name: String, depthCm: Int, calibrationMultiplier: Double, calibrationNotes: String }` | Ajuste físico y calibración edafológica de sonda. |
| `IngestTelemetry` `Request` | Request DTO | `{ sensorNodeId: UUID, readings: List<HourlyTelemetryReadingDto> }` | Lectura horaria o lote enviado por simulador o sensor. |
| `DeviceResource` | Response DTO | `{ id: UUID, plotId: UUID, name: String, deviceType: String, status: String }` | Representación de nodo sensor vinculado. |
| `Telemetry` `Resource` | Response DTO | `{ id: UUID, plotId: UUID, temperature: Double, humidity: Double, soilMoisture: Double, recordedAt: Instant }` | Representación pública de lectura agroclimática. |
| `WeatherForecast` `Resource` | Response DTO | `{ plotId: UUID, dailyForecasts: List<DailyForecastDto> generatedAt: Instant }` | Proyección meteorológica a 7 días. |
| `IncidentResource` | Response DTO | `{ id: UUID, plotId: UUID, incidentType: String, severity: String, triggeredAt: Instant }` | Alerta de estrés hídrico o térmico. |
| `Telemetry` `Resource` `Assembler` | Assembler | `toResource(` `TelemetryReading):` `Telemetry` `Resource` | Convierte lectura interna a DTO de visualización. |

*Nota.* Elaboración propia.

#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Register` `IoTDevice` `Command` `Handler` | Command Handler | `Register` `IoTDevice` `Command` | Valida titularidad, persiste sonda y emite `VirtualSensorNodeLinkedEvent`. |
| `Calibrate` `IoTDevice` `Command` `Handler` | Command Handler | `Calibrate` `IoTDevice` `Command` | Carga dispositivo, ajusta offset/factor edáfico, persiste y emite `VirtualSensorNodeCalibratedEvent`. |
| `Remove` `IoTDevice` `Command` `Handler` | Command Handler | `Remove` `IoTDevice` `Command` | Desvincula lógicamente la sonda del predio y emite `VirtualSensorNodeUnlinkedEvent`. |
| `Ingest` `PlotTelemetry` `Command` `Handler` | Command Handler | `Ingest` `PlotTelemetry` `Command` | Persiste lecturas horarias en PostgreSQL, evalúa umbrales de estrés y despacha alertas. |
| `Get` `Telemetry` `Series` `Query` `Handler` | Query Handler | `Get` `Telemetry` `Series` `Query` | Recupera serie temporal acotada por rango de fechas para graficado móvil. |
| `Get` `Weather` `Forecast` `Query` `Handler` | Query Handler | `Get` `Weather` `Forecast` `Query` | Consulta caché local de pronóstico meteorológico a 7 días para la parcela. |
| `Weather` `SyncScheduler` | Scheduled Task | `ScheduledCron` | Orquesta la sincronización automática periódica con Open-Meteo emitiendo `WeatherForecastIngestedEvent`. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `VirtualSensorNode` `JpaRepository` | Persistence | Spring Data JPA | Almacenamiento y calibración de nodos sensores virtuales. |
| `TelemetrySeries` `JpaRepository` | Persistence | Spring Data JPA | Almacenamiento optimizado de series temporales horarias e incidentes. |
| `OpenMeteoWeather` `ClientAdapter` | External Adapter | Spring RestClient | Consumo de pronósticos horarios y datos meteorológicos de Open-Meteo con caché. |
| `InAppNotification` `Adapter` | Notification | WebSocket / FCM | Difusión push e in-app de alertas de estrés hídrico y choque térmico. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Caché local de telemetría y pronóstico offline:**
  * *Android Nativo (Room / SQLite):* `TelemetryCacheDao` y entidades `LocalTelemetrySeriesEntity`, `LocalWeatherForecastEntity` que cachean las últimas 24 lecturas horarias y el pronóstico a 7 días de la parcela activa para consulta en campo sin red.
  * *Cross-Platform (sqflite / SQLite):* Tablas `telemetry_cache` y `forecast_cache` con clave compuesta `(plot_id, fetched_at)` gestionadas por `LocalDataAccess`.
* **Visualización y alertas en dispositivo:**
  * Componentes de interfaz móvil (`Agronomy and Harvest UI`) que renderizan curvas de humedad de suelo a 30/60 cm y activan banners de alerta local inmediata ante incidentes críticos de estrés hídrico (`HydricStressAlertTriggeredEvent`).

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `telemetry_` `readings` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la lectura. |
| `telemetry_` `readings` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela monitoreada. |
| `telemetry_` `readings` | `temperature` | `NUMERIC(4,2)` | `NOT NULL` | Temperatura ambiente en grados Celsius. |
| `telemetry_` `readings` | `humidity` | `NUMERIC(5,2)` | `NOT NULL` | Humedad relativa porcentual. |
| `telemetry_` `readings` | `soil_moisture` | `NUMERIC(5,2)` | `NULL` | Humedad de suelo o potencial mátrico. |
| `telemetry_` `readings` | `recorded_at` | `TIMESTAMPTZ` | `NOT NULL, INDEX` | Marca temporal exacta de la medición. |
| `iot_devices` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la sonda o sensor. |
| `iot_devices` | `plot_id` | `UUID` | `NOT NULL` | Parcela asociada. |
| `iot_devices` | `calibration_` `offset` | `NUMERIC(5,2)` | `NOT NULL DEFAULT 0` | Desviación calibrada de la sonda. |
| `iot_devices` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado del dispositivo (`ACTIVE`, `CALIBRATING`). |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS telemetry;

CREATE TABLE telemetry.telemetry_readings (
    id            UUID PRIMARY KEY,
    plot_id       UUID NOT NULL,
    temperature   NUMERIC(4,2) NOT NULL,
    humidity      NUMERIC(5,2) NOT NULL
        CHECK (humidity BETWEEN 0 AND 100),
    soil_moisture NUMERIC(5,2),
    recorded_at   TIMESTAMPTZ NOT NULL,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE telemetry.iot_devices (
    id                 UUID PRIMARY KEY,
    plot_id            UUID NOT NULL,
    calibration_offset NUMERIC(5,2) NOT NULL DEFAULT 0.0,
    status             VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_telemetry_plot_time
    ON telemetry.telemetry_readings(plot_id, recorded_at DESC);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Agroclimatic Telemetry and Sensor Monitoring. {#tbltelemetry-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `PlotIotDeviceController`; `PlotTelemetryController`; `PlotForecastController` | Ingesta horaria, configuración de nodos sensores y consulta REST de series agroclimáticas y pronóstico. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `TelemetryCommandService`; `TelemetryQueryService`; `ForecastSyncScheduler` | Orquestación de comandos de sensores/lecturas, consultas de series/alertas y tarea programada de clima. | Spring `@Transactional`, `@Scheduled`, `@Service` |
| Capa de dominio (*Domain Layer*) | `VirtualSensorNode` `Repository`; `TelemetrySeriesRepository`; `AgroclimaticThresholdEvaluator` | Contratos de persistencia (puertos de dominio) y servicio de evaluación de estrés hídrico (SWP) y heladas. | Java puro / DDD |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaVirtualSensorNode` `RepositoryAdapter`; `JpaTelemetrySeriesRepositoryAdapter`; `OpenMeteoWeatherAdapter`; `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL, consumo API Open-Meteo y publicación de eventos. | Spring Data JPA, HTTP Client, Caffeine |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El nodo sensor o simulador despacha `POST` \nolinkurl{/api/v1/plots/{plotId}/telemetries} hacia `PlotTelemetryController`.
2. `PlotTelemetryController` valida el payload y delega la ingesta en `TelemetryCommandService`. Las consultas de series temporales y pronóstico a 7 días son atendidas por `TelemetryQueryService`.
3. `TelemetryCommandService` persiste la medición en `TelemetrySeriesRepository` (implementado por `JpaTelemetrySeriesRepositoryAdapter`).
4. Se invoca el servicio de dominio `AgroclimaticThresholdEvaluator` verificando los límites de potencial hídrico en tallo (SWP), golpe de calor y heladas.
5. Si se excede el umbral crítico, `TelemetryCommandService` dispara `HydricStressAlertTriggeredEvent` vía `SpringDomainEventPublisher`, notificando in-app a la aplicación cliente.
6. En paralelo, `ForecastSyncScheduler` sincroniza periódicamente la predicción meteorológica consumiendo la API de Open-Meteo vía `OpenMeteoWeatherAdapter`.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Agroclimatic Telemetry.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-telemetry.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Agroclimatic Telemetry. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Agroclimatic Telemetry.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Agroclimatic Telemetry.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-telemetry.png}
\caption*{\textit{Nota.} Estructura estática de clases, tipos y métodos del modelo de dominio de Telemetría. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Agroclimatic Telemetry.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-telemetry.png}
\caption*{\textit{Nota.} Estructura de tablas de telemetría y dispositivos IoT en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Phenology and Historical Bearing Analytics

Propósito: Gobierna la memoria biológica y el análisis plurianual de vecería del olivar. Modela el seguimiento de las fases fenológicas en escala BBCH (brotación, floración, cuajado, endurecimiento del carozo y maduración), calcula la acumulación de frío invernal mediante el modelo dinámico de Erez (unidades de frío / porciones de frío acumuladas), proyecta la fecha crítica de lignificación de carozo mediante grados-día de desarrollo acumulados ($680.0^\circ\text{C}\cdot\text{día}$ post-antesis), y evalúa el Índice de Vecería Bienal de Hoblyn ($BBI$) a partir de las series plurianuales de cosecha.

#### Domain Layer

##### Modelo de dominio: `ChillAccumulationTracker` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `ChillAccumulationTracker` (Aggregate Root) en Phenology and Historical Bearing Analytics. {#tblphenology-chillaccumulationtracker-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Monitorea la acumulación invernal de frío (Modelo Dinámico de Erez), el tiempo térmico post-antesis y el índice de vecería de Hoblyn. |
| Relaciones de dominio | Referencia a `PlotId`. Compone bitácoras diarias de frío y registros históricos plurianuales de cosecha. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `ChillAccumulationTracker` en Phenology and Historical Bearing Analytics. {#tblphenology-chillaccumulationtracker-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `TrackerId` | Identificador único del seguidor de frío y fenología. |
| `plotId` | `PlotId` | Parcela olivarera analizada. |
| `currentCampaignYear` | `CampaignYear` | Año agrícola en curso de monitoreo. |
| `harvestHistory` | `List<` `HistoricalHarvest` `Entry>` | Serie histórica plurianual de cosechas (mínimo 2 años). |
| `calculatedBbi` | `BiennialBearingIndex` | Índice de vecería calculado según fórmula de Hoblyn [0.00, 1.00]. |
| `dailyChillLogs` | `List<DailyChillLog>` | Bitácora diaria de avance de frío acumulado en mayo-agosto. |
| `accumulatedGdd` `PostAnthesis` | `Double` | Grados día de desarrollo acumulados tras plena floración. |
| `pitHardeningReached` | `Boolean` | Indicador si se alcanzó el endurecimiento de carozo (~680 GDD). |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `ChillAccumulationTracker` en Phenology and Historical Bearing Analytics. {#tblphenology-chillaccumulationtracker-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `registerHarvest` | `entry: HistoricalHarvestEntry` | `void` | Añade cosecha histórica, recalcula el BBI de Hoblyn y emite `BiennialBearingIndexAssessedEvent`. |
| `rectifyHarvest` | `year: CampaignYear`, `yield: Double` | `void` | Corrige pesajes de cosechas previas actualizando el índice de alternancia. |
| `deleteHarvest` | `year: CampaignYear` | `void` | Elimina registro histórico manteniendo la coherencia de la serie. |
| `processDaily` `Temperatures` | `date: LocalDate`, `temps: List<Double>` | `void` | Computa porciones de frío de Erez considerando termodestrucción. |
| `processPost` `Anthesis` `ThermalTime` | `date: LocalDate`, `max: Double`, `min: Double` | `void` | Acumula GDD y detecta endurecimiento de carozo emitiendo `PitHardeningStageReachedEvent`. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `HistoricalHarvestEntry` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `HistoricalHarvestEntry` (Internal Entity) en Phenology and Historical Bearing Analytics. {#tblphenology-historicalharvestentry-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Registra el rendimiento cuantitativo anual obtenido en una campaña previa para cálculo de alternancia. |
| Relaciones de dominio | Subordinada a `ChillAccumulationTracker` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `HistoricalHarvestEntry` en Phenology and Historical Bearing Analytics. {#tblphenology-historicalharvestentry-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `HarvestEntryId` | Identificador único del registro de cosecha. |
| `campaignYear` | `CampaignYear` | Año de la campaña agrícola. |
| `totalYieldKg` | `Double` | Masa total de fruto cosechado en kilogramos. |
| `greenKg` | `Double` | Kilogramos de aceituna verde para conserva. |
| `blackKg` | `Double` | Kilogramos de aceituna negra natural. |
| `bearingClassification` | `BearingClassification` | Clasificación: `ON_YEAR`, `OFF_YEAR`, `BALANCED`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `HistoricalHarvestEntry` en Phenology and Historical Bearing Analytics. {#tblphenology-historicalharvestentry-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `updateYield` | `total: Double`, `green: Double`, `black: Double` | `void` | Actualiza rendimientos verificando consistencia de pesajes. |
| `classify` | `averageYield: Double` | `void` | Asigna categoría productiva comparando contra el promedio móvil predial. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `DailyChillLog` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `DailyChillLog` (Internal Entity) en Phenology and Historical Bearing Analytics. {#tblphenology-dailychilllog-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Almacena el cálculo matemático de porciones de frío acumuladas en una jornada invernal. |
| Relaciones de dominio | Subordinada a `ChillAccumulationTracker` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `DailyChillLog` en Phenology and Historical Bearing Analytics. {#tblphenology-dailychilllog-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `DailyChillLogId` | Identificador del registro diario de frío. |
| `logDate` | `LocalDate` | Fecha invernal evaluada. |
| `portions` `AccumulatedToday` | `Double` | Porciones de frío aportadas por el ciclo térmico diario. |
| `totalAccumulatedToDate` | `Double` | Acumulado progresivo de porciones al cierre del día. |
| `maxDayTemperature` | `Double` | Temperatura máxima diurna (°C). |
| `minNightTemperature` | `Double` | Temperatura mínima nocturna (°C). |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `DailyChillLog` en Phenology and Historical Bearing Analytics. {#tblphenology-dailychilllog-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isDestructive` `HeatOccurred` | `void` | `boolean` | Indica si temperaturas > 24 °C destruyeron el intermediario térmico inestable. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Phenology and Historical Bearing Analytics. {#tblphenology-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `TrackerId`, `HarvestEntryId`, `DailyChillLogId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CampaignYear` | `Int` | Año de la campaña agrícola evaluada ($1980 \le year \le 2100$). |
| `BiennialBearingIndex` | `Double [0.00, 1.00]` | Índice de vecería de Hoblyn: $0$ (regularidad) a $1$ (alternancia extrema). |
| `BBCHStage` | `stageCode: Int, description: String` | Código estandarizado BBCH (ej. 65: Plena Floración, 75: Endurecimiento de Carozo). |
| `GrowingDegreeDays` | `Double (Grados-Día)` | Acumulación térmica sobre umbral base ($T_{base} = 10^\circ\text{C}$). |
| `DynamicErezPortion` | `Double` | Porciones de frío dinámico acumuladas según cinética Erez-Fishman. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Phenology and Historical Bearing Analytics. {#tblphenology-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `ErezDynamic` `ModelCalculator` | Domain Service | `computePortions(temps: List<Double>): Double` | Implementa las ecuaciones diferenciales del Modelo Dinámico de Erez. |
| `GrowingDegree` `DaysCalculator` | Domain Service | `calculateGdd(max: Double, min: Double, baseTemp: Double): Double` | Computa acumulación térmica post-antesis (base 10 °C). |
| `HoblynBbi` `CalculatorService` | Domain Service | `calculateBbi(` `harvests:` `List<` `HistoricalHarvestEntry>):` `BiennialBearingIndex` | Evalúa la alternancia productiva interanual según Hoblyn. |
| `Chill` `Accumulation` `TrackerRepository` | Repository | `findById(` `id: TrackerId):` `Optional<` `ChillAccumulation` `Tracker>` | Carga el seguidor de frío y fenología por ID. |
| `Chill` `Accumulation` `TrackerRepository` | Repository | `findByPlotId` `AndCampaign(` `plotId: PlotId,` `year:` `CampaignYear):` `Optional<` `Chill` `Accumulation` `Tracker>` | Recupera el tracker de una campaña agrícola en el predio. |
| `Chill` `Accumulation` `TrackerRepository` | Repository | `save(tracker: ChillAccumulationTracker): ChillAccumulationTracker` | Persiste atómicamente el estado y bitácoras de frío. |
| `PitHardening` `StageReachedEvent` | Domain Event | `plotId: UUID, previousStage: String, newStage: String, gdd: Double, occurredOn: Instant` | Notifica cambio de fase fenológica (ej. carozo a 680 GDD). |
| `BiennialBearing` `IndexAssessedEvent` | Domain Event | `plotId: UUID, bbiValue: Double, classification: String, occurredOn: Instant` | Informa severidad de vecería hacia Crop Load Regulation. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Phenology and Historical Bearing Analytics. {#tblphenology-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records} | `RecordHarvest` `YieldRequest` | `HarvestRecord` `Resource` (201 Created) | Asienta el volumen cosechado de una campaña anual. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records} | N/A (`?campaignYear=`) | `List<` `HarvestRecord` `Resource>` (200 OK) | Historial plurianual de cosechas con filtro opcional. |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records/{recordId}} | `UpdateHarvest` `YieldRequest` | `HarvestRecord` `Resource` (200 OK) | Rectificación de pesaje histórico de una campaña. |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records/{recordId}} | N/A | `204 No Content` | Eliminación de registro de cosecha erróneo. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/metrics} | N/A (`?name=BBI` / `?name=CHILLING`) | `MetricResource` (200 OK) | Consulta de $BBI$ de Hoblyn y porciones de frío de Erez. |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/phenology-observations} | `RecordPhenology` `ObservationRequest` | `Phenology` `ObservationResource` (201 Created) | Registro visual de estadio fenológico en escala BBCH. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Phenology and Historical Bearing Analytics. {#tblphenology-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `RecordHarvest` `YieldRequest` | Request DTO | `{ campaignYear: Int, totalTons: Double, oliveUseType: String, notes: String }` | Asiento de pesaje anual cosechado. |
| `UpdateHarvest` `YieldRequest` | Request DTO | `{ totalTons: Double, notes: String }` | Corrección auditada de volumen de cosecha. |
| `HarvestRecord` `Resource` | Response DTO | `{ id: UUID, plotId: UUID, campaignYear: Int, totalTons: Double, recordedAt: Instant }` | Representación de cosecha histórica. |
| `MetricResource` | Response DTO | `{ metricName: String, value: Double, qualitativeCategory: String, details: Map<String, Object>, evaluatedAt: Instant }` | Métrica de vecería ($BBI$) o frío dinámico (Erez). |
| `RecordPhenology` `ObservationRequest` | Request DTO | `{ stageCode: Int, observationDate: LocalDate, notes: String }` | Inspección de estadio BBCH en campo. |
| `Phenology` `ObservationResource` | Response DTO | `{ id: UUID, plotId: UUID, currentStage: Int, accumulatedGdd: Double, isWindowClosed: Boolean }` | Estado biológico y ventana de aclareo. |
| `HarvestRecord` `ResourceAssembler` | Assembler | `toResource(` `HistoricalHarvestEntry):` `HarvestRecordResource` | Transformador a DTO desacoplado. |

*Nota.* Elaboración propia.
#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Phenology and Historical Bearing Analytics. {#tblphenology-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Record` `Harvest` `Yield` `Command` `Handler` | Command Handler | `Record` `Harvest` `Yield` `Command` | Asienta pesaje de campaña, actualiza agregado y recalcula $BBI$ si $N \ge 3$. |
| `Update` `Harvest` `Yield` `Command` `Handler` | Command Handler | `Update` `Harvest` `Yield` `Command` | Rectifica pesaje de campaña, actualiza serie histórica y recalcula $BBI$. |
| `Delete` `Harvest` `Yield` `Command` `Handler` | Command Handler | `Delete` `Harvest` `Yield` `Command` | Da de baja registro de cosecha erróneo y revalúa suficiencia muestral del $BBI$. |
| `List` `Harvest` `Records` `Query` `Handler` | Query Handler | `List` `Harvest` `Records` `Query` | Consulta cronológica de cosechas con filtro por campaña agrícola. |
| `Get` `Plot` `Metrics` `Query` `Handler` | Query Handler | `Get` `Plot` `Metrics` `Query` | Consulta índices biológicos paramétricos ($BBI$ o Porciones de Frío de Erez). |
| `Record` `Phenological` `Observation` `Command` `Handler` | Command Handler | `Record` `Phenological` `Observation` `Command` | Actualiza estadio BBCH, recalcula sumas térmicas y emite evento fenológico. |
| `Accumulate` `PostAnthesis` `ThermalTime` `Command` `Handler` | Command Handler | `Accumulate` `PostAnthesis` `ThermalTime` `Command` | Suma GDD diarios post-antesis; si supera $680^\circ\text{C}\cdot\text{día}$, emite cierre de ventana. |
| `Chill` `Computation` `Scheduler` | Scheduled Task | `ScheduledCron` | Procesa lecturas telemétricas nocturnas acumulando porciones de frío bajo modelo dinámico de Erez. |
| `OnCampaign` `Harvest` `Settled` `Event` `Handler` | Event Handler | `Campaign` `Harvest` `Settled` `Event` | Escucha cierre de cosecha en Liquidación y actualiza bitácora plurianual recalculando $BBI$. |
| `OnLate` `Thinning` `Execution` `Recorded` `Event` `Handler` | Event Handler | `Late` `Thinning` `Execution` `Recorded` `Event` | Penaliza el factor de mitigación en un $70\%$ ante aclareo extemporáneo. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Phenology and Historical Bearing Analytics. {#tblphenology-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `Phenology` `JpaRepository` | Persistence | Spring Data JPA | Acceso a tablas de fenología y frío en PostgreSQL. |
| `JpaPhenology` `Repository` `Adapter` | Adapter | Spring Component | Implementa contratos de persistencia de fenología. |
| `ErezAlgorithmNative` `Adapter` | Domain Service Impl | Java Puro | Motor matemático optimizado para porciones de frío. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Caché local de historial de cosechas y métricas fenológicas:**
  * *Android Nativo (Room / SQLite):* Entidades `LocalHarvestRecordEntity` y `LocalPhenologyMetricEntity` gestionadas por `PhenologyCacheDao` para consultar memoria de vecería e índice $BBI$ sin conexión.
  * *Cross-Platform (sqflite / SQLite):* Tabla local `phenology_cache` con par `(plot_id, campaign_year)`.
* **Visualización de semáforo de vecería:**
  * Interfaz de usuario (`Agronomy and Harvest UI`) que traduce el valor decimal del $BBI$ en rangos visuales accesibles en campo (Leve, Moderado, Severo) y renderiza el avance de porciones de frío acumuladas contra la meta varietal de 25-30 UF.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Phenology and Historical Bearing Analytics. {#tblphenology-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `phenological_` `records` | `id` | `UUID` | `PRIMARY KEY` | Identificador del registro. |
| `phenological_` `records` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela monitoreada. |
| `phenological_` `records` | `current_stage` | `INT` | `NOT NULL` | Código numérico BBCH actual. |
| `phenological_` `records` | `accumulated_` `gdd` | `NUMERIC(6,2)` | `NOT NULL DEFAULT 0` | Grados-día de desarrollo post-antesis. |
| `phenological_` `records` | `is_window_` `closed` | `BOOLEAN` | `NOT NULL DEFAULT FALSE` | Indicador de carozo endurecido. |
| `chill_` `trackers` | `id` | `UUID` | `PRIMARY KEY` | Identificador del seguimiento de frío. |
| `chill_` `trackers` | `plot_id` | `UUID` | `NOT NULL` | Parcela asociada. |
| `chill_` `trackers` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola evaluado. |
| `chill_` `trackers` | `erez_portions` | `NUMERIC(6,2)` | `NOT NULL` | Porciones de frío dinámico acumuladas. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS phenology;

CREATE TABLE phenology.phenological_records (
    id               UUID PRIMARY KEY,
    plot_id          UUID NOT NULL,
    current_stage    INT NOT NULL,
    accumulated_gdd  NUMERIC(6,2) NOT NULL DEFAULT 0.0,
    is_window_closed BOOLEAN NOT NULL DEFAULT FALSE,
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE phenology.chill_trackers (
    id            UUID PRIMARY KEY,
    plot_id       UUID NOT NULL,
    campaign_year INT NOT NULL,
    erez_portions NUMERIC(6,2) NOT NULL DEFAULT 0.0,
    CONSTRAINT uq_chill_plot_year
        UNIQUE (plot_id, campaign_year)
);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Phenology and Historical Bearing Analytics. {#tblphenology-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `PlotChillController`; `PlotPhenologyController`; `PlotHarvestRecordController`; `PlotBearingController` | API REST para seguimiento fenológico, acumulación de frío, cosechas históricas y vecería. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `PhenologyCommandService`; `PhenologyQueryService`; `DailyChillComputationJob` | Orquestación de comandos de estadios y cosechas, consultas de frío/vecería y tarea programada de frío Erez. | Spring `@Transactional`, `@Scheduled`, `@Service` |
| Capa de dominio (*Domain Layer*) | `ChillAccumulation` `TrackerRepository`; `ErezDynamicModelCalculator`; `GrowingDegreeDaysCalculator`; `HoblynBbiCalculatorService` | Contrato de persistencia (puerto de dominio), algoritmos biológicos Erez, GDD post-antesis e índice $BBI$ de Hoblyn. | Java puro / DDD |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaChillAccumulation` `TrackerRepositoryAdapter`; `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL (`phenology`) y despacho de eventos de dominio. | Spring Data JPA, Spring Events |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El contenedor cliente móvil (`Android Application` o `Cross-Platform Application`) registra un estadio visual de floración con `POST` \nolinkurl{/api/v1/plots/{plotId}/phenology-observations} (o rectifica cosechas históricas vía `PlotHarvestRecordController`).
2. `PlotPhenologyController` delega la mutación en `PhenologyCommandService`, actualizando el estadio a BBCH 65 en `ChillAccumulation` `TrackerRepository`. Las consultas de frío, GDD y vecería son atendidas por `PhenologyQueryService`.
3. Diariamente, `DailyChillComputationJob` activa `PhenologyCommandService` para ejecutar el cálculo dinámico de porciones de frío (`ErezDynamicModelCalculator`) y acumular grados-día (`GrowingDegreeDaysCalculator`).
4. Al alcanzar $680^\circ\text{C}\cdot\text{día}$ acumulados, se transiciona `isWindowClosed = true` y `PhenologyCommandService` despacha `PitHardeningStageReachedEvent` vía `SpringDomainEventPublisher`.
5. El evento es recibido reactivamente por *Crop Load Regulation*, invalidando prescripciones de aclareo pendientes.
6. Ante la incorporación de cosechas históricas, `PhenologyCommandService` persiste los rendimientos en `ChillAccumulation` `TrackerRepository`, y `PhenologyQueryService` computa el índice $BBI$ de Hoblyn mediante `HoblynBbiCalculatorService`.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Phenology and Historical Bearing Analytics.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-phenology.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Phenology. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Phenology and Historical Bearing Analytics.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Phenology and Historical Bearing Analytics.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-phenology.png}
\caption*{\textit{Nota.} Clases biológicas, algoritmos de frío y analítica de vecería en Phenology. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Phenology.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-phenology.png}
\caption*{\textit{Nota.} Estructura de tablas de fenología y acumulación térmica en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Crop Load Regulation and Thinning Advisory

Propósito: Núcleo agronómico prescriptivo de Viora. Regula la carga frutal del olivar para mitigar la alternancia productiva entre campañas consecutivas. Gestiona el registro de muestreos de campo con soporte *offline-first* en dispositivos móviles (SQLite Room y sqflite con sincronización `WorkManager` y claves compuestas de idempotencia), calcula la tasa sostenible de frutos por metro lineal de copa, emite prescripciones automáticas de aclareo frutal en verde cuando se alcanza la representatividad muestral, alerta sobrecarga productiva sectorial hacia la cooperativa, y valida la ejecución oportuna de la labor frente al endurecimiento de carozo.

#### Domain Layer

##### Modelo de dominio: `FruitThinningPrescription` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `FruitThinningPrescription` (Aggregate Root) en Crop Load Regulation and Thinning Advisory. {#tblthinning-fruitthinningprescription-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Consolida los muestreos de brotes en campo, determina la carga frutal sostenible y emite la prescripción de raleo manual. |
| Relaciones de dominio | Referencia a `PlotId`. Compone rondas de muestreo y la confirmación de ejecución de raleo. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `FruitThinningPrescription` en Crop Load Regulation and Thinning Advisory. {#tblthinning-fruitthinningprescription-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `PrescriptionId` | Identificador único de la prescripción. |
| `plotId` | `PlotId` | Parcela olivarera evaluada. |
| `campaignYear` | `CampaignYear` | Año de la campaña de regulación. |
| `observedPlotRevision` | `Long` | Versión catastral observada durante la prescripción. |
| `samplingRounds` | `List<SamplingRound>` | Rondas de muestreo de frutos por entrenudo registradas. |
| `sustainableLoad` | `Sustainable` `CropLoad` | Carga frutal agronómicamente sostenible recomendada. |
| `status` | `PrescriptionStatus` | Estado: `SAMPLING_IN_PROGRESS`, `PRESCRIBED`, `EXECUTED_OPTIMAL`, `CLOSED_BY_PIT_HARDENING`. |
| `execution` | `Execution` `Confirmation` | Datos de auditoría de la labor de raleo en campo. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `FruitThinningPrescription` en Crop Load Regulation and Thinning Advisory. {#tblthinning-fruitthinningprescription-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `recordTree` `Sampling` | `record:` `TreeSampling` `Record` | `void` | Incorpora conteo de brote garantizando no duplicidad de árbol. |
| `ingestSamplings` `Batch` | `records:` `List<` `TreeSampling` `Record>`, `evaluator:` `SamplingCoverageEvaluator` | `void` | Procesa lote móvil offline y emite `SamplingRoundCompletedEvent` al alcanzar representatividad ($N \ge 5$). |
| `determine` `Sustainable` `CropLoad` | `inputs: AgronomicInputs`, `calc: CropLoadBalancingCalculatorService` | `void` | Calcula porcentaje óptimo de remoción y emite `SustainableCropLoadDeterminedEvent`. |
| `confirmExecution` | `confirm:` `Execution` `Confirmation` | `void` | Registra ejecución de raleo emitiendo `ThinningExecutionConfirmedEvent`. |
| `closeWindowBy` `PitHardening` | `date: LocalDate` | `void` | Cierra la ventana de intervención oportuna por endurecimiento de carozo. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `SamplingRound` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `SamplingRound` (Internal Entity) en Crop Load Regulation and Thinning Advisory. {#tblthinning-samplinground-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Agrupa un conjunto de árboles muestreados en un cuartel olivarero durante una jornada de evaluación. |
| Relaciones de dominio | Subordinada a `FruitThinning` `Prescription` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `SamplingRound` en Crop Load Regulation and Thinning Advisory. {#tblthinning-samplinground-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `RoundId` | Identificador de la ronda de muestreo. |
| `actorId` | `UserId` | Técnico o productor que recolectó las muestras. |
| `clientBatchId` | `String` | Identificador de idempotencia del cliente móvil offline. |
| `samplingRecords` | `List<` `TreeSampling` `Record>` | Muestras individuales de árboles recolectadas. |
| `isRepresentative` | `Boolean` | Indicador si cumple el tamaño muestral mínimo representativo. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `SamplingRound` en Crop Load Regulation and Thinning Advisory. {#tblthinning-samplinground-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `addRecord` | `record:` `TreeSampling` `Record` | `void` | Añade una muestra individual al lote de la ronda. |
| `evaluate` `Representativeness` | `evaluator: SamplingCoverageEvaluator` | `void` | Valida que la cobertura de muestreo sea estadísticamente sólida. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `TreeSamplingRecord` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `TreeSamplingRecord` (Internal Entity) en Crop Load Regulation and Thinning Advisory. {#tblthinning-treesamplingrecord-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Captura los conteos de brotes, cuajado y vigor en un olivo individualizado. |
| Relaciones de dominio | Subordinada a `SamplingRound` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `TreeSamplingRecord` en Crop Load Regulation and Thinning Advisory. {#tblthinning-treesamplingrecord-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SamplingRecordId` | Identificador del registro de árbol. |
| `treeTag` | `String` | Identificador físico o código de placa del árbol evaluado. |
| `shootCount` | `Int` | Número de brotes representativos contabilizados. |
| `fruitSetCount` | `Int` | Cantidad de frutos cuajados observados. |
| `trunkDiameterMm` | `Double` | Diámetro de tronco a 30 cm de altura para estimar área de sección transversal (TCSA). |
| `samplingDate` | `LocalDate` | Fecha de recolección de la muestra. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `TreeSamplingRecord` en Crop Load Regulation and Thinning Advisory. {#tblthinning-treesamplingrecord-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `getFruitsPerMeter` | `void` | `Double` | Calcula la densidad lineal de carga en frutos por metro de brote. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `ExecutionConfirmation` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `ExecutionConfirmation` (Internal Entity) en Crop Load Regulation and Thinning Advisory. {#tblthinning-executionconfirmation-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Acredita la ejecución material de la labor de raleo manual en el cuartel. |
| Relaciones de dominio | Subordinada a `FruitThinning` `Prescription` (1 a 1). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `ExecutionConfirmation` en Crop Load Regulation and Thinning Advisory. {#tblthinning-executionconfirmation-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ConfirmationId` | Identificador de la confirmación de raleo. |
| `executionDate` | `LocalDate` | Fecha en la que la cuadrilla completó la labor. |
| `actualRemovalPercentage` | `Double` | Porcentaje real de frutos retirados del árbol. |
| `laborCrewSize` | `Int` | Número de operarios de campo participantes. |
| `timeliness` | `ExecutionTimeliness` | Calificación: `OPTIMAL` (previo a carozo) o `LATE`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `ExecutionConfirmation` en Crop Load Regulation and Thinning Advisory. {#tblthinning-executionconfirmation-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isOpportune` | `void` | `Boolean` | Verifica si la intervención ocurrió antes del endurecimiento de carozo. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Crop Load Regulation and Thinning Advisory. {#tblthinning-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `PrescriptionId`, `RoundId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CropLoadDensity` | `fruitsPerMeter: Double, fruitsPerTree: Int` | Densidad óptima de carga frutal balanceada. |
| `ThinningIntensity` | `percentageToRemove: Double, kgToRemovePerTree: Double` | Porcentaje y masa recomendada a defructificar en verde. |
| `PrescriptionStatus` | `Enum (7 estados)` | `SAMPLING_IN_PROGRESS`, `PRESCRIBED`, `CONFIRMED`, `EXECUTED`, `EXPIRED`, `VOIDED_BY_PLOT_REMOVAL`, `REJECTED`. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Crop Load Regulation and Thinning Advisory. {#tblthinning-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `CropLoad` `Balancing` `CalculatorService` | Domain Service | `calculateTarget` `Removal(` `currentLoad: Double,` `bbi: Double,` `waterStatus: Double):` `Double` | Computa la tasa agronómica de remoción recomendada. |
| `FieldSampling` `Deduplicator` | Domain Service | `deduplicate(samples: List<TreeSamplingRecord>): List<TreeSamplingRecord>` | Garantiza que no existan registros superpuestos del mismo árbol. |
| `FruitThinning` `PrescriptionRepository` | Repository | `findById(id: PrescriptionId): Optional<FruitThinningPrescription>` | Carga la prescripción por su identificador primario. |
| `FruitThinning` `PrescriptionRepository` | Repository | `findByPlotId` `AndCampaign(` `plotId: PlotId,` `year:` `CampaignYear):` `Optional<` `FruitThinning` `Prescription>` | Carga la prescripción vigente para la campaña en el predio. |
| `FruitThinning` `PrescriptionRepository` | Repository | `save(prescription: FruitThinningPrescription): FruitThinningPrescription` | Guarda estado de muestreos y prescripción. |
| `SamplingRound` `CompletedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, evaluatedTrees: int, occurredOn: Instant` | Notifica representatividad muestral suficiente para prescribir. |
| `Sustainable` `CropLoad` `DeterminedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, removalPercentage: Double, occurredOn: Instant` | Emite prescripción formal de raleo frutal. |
| `OverloadRisk` `DetectedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, overloadFactor: Double, occurredOn: Instant` | Alerta riesgo de sobrecarga crítica hacia la cooperativa. |
| `Thinning` `Execution` `ConfirmedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, removalPct: Double, timeliness: String, occurredOn: Instant` | Confirma ejecución de la labor para liquidación de cosecha. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Crop Load Regulation and Thinning Advisory. {#tblthinning-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/samplings} | `SubmitSampling` `Request` | `SamplingSummary` `Resource` (201 Created) | Ingesta de muestreos individuales o por lote con cabecera `Idempotency-Key`. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/samplings} | N/A (`?campaignYear=` `&view=summary`) | `SamplingSummary` `Resource` (200 OK) | Consulta del avance y representatividad muestral de la campaña. |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/thinning-prescriptions} | N/A | `Prescription` `Resource` (201 Created) | Determinación de carga frutal sostenible y emisión de prescripción bajo demanda. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/thinning-prescriptions} | N/A (`?status=ACTIVE`) | `Prescription` `Resource` (200 OK) | Consulta de prescripción vigente o por campaña. |
| `GET` | \nolinkurl{/api/v1/thinning-prescriptions/{id}} | N/A | `Prescription` `Resource` (200 OK) | Consulta de prescripción por identificador unívoco directo. |
| `POST` | \nolinkurl{/api/v1/thinning-prescriptions/{id}/execution-confirmations} | `Confirm` `Execution` `Request` | `Execution` `Confirmation` `Resource` (201 Created) | Declaración y confirmación de labor de aclareo oportuna o tardía. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Crop Load Regulation and Thinning Advisory. {#tblthinning-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `SubmitSampling` `Request` | Request DTO | `{ clientBatchId: String, samples: List<ShootSampleDto> }` | Lote de conteo capturado en campo offline. |
| `SamplingSummary` `Resource` | Response DTO | `{ plotId: UUID, sampledTreesCount: Int, sampledShootsCount: Int, meanFruitsPerMeter: Double, isRepresentative: Boolean, treesNeeded: Int }` | Resumen de representatividad muestral. |
| `Prescription` `Resource` | Response DTO | `{ id: UUID, plotId: UUID, targetLoad: Double, percentageToRemove: Double, status: String, windowClosesOn: LocalDate }` | Asesoramiento oficial de aclareo. |
| `ConfirmExecution` `Request` | Request DTO | `{ executedDate: LocalDate, removedKg: Double, notes: String }` | Declaración de ejecución de la labor. |
| `Execution` `Confirmation` `Resource` | Response DTO | `{ prescriptionId: UUID, confirmationStatus: String, executedDate: LocalDate, isOpportune: Boolean, recordedAt: Instant }` | Constancia de ejecución y sellado biológico. |
| `Prescription` `ResourceAssembler` | Assembler | `toResource(` `FruitThinningPrescription):` `Prescription` `Resource` | Mapeo a DTO con formateo agronómico. |

*Nota.* Elaboración propia.
#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Crop Load Regulation and Thinning Advisory. {#tblthinning-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Ingest` `Field` `Samplings` `Batch` `Command` `Handler` | Command Handler | `Ingest` `Field` `Samplings` `Batch` `Command` | Verifica idempotencia `(actorId, plotId, clientBatchId)`, persiste muestras; si cumple representatividad, emite evento. |
| `Get` `Sampling` `Round` `Status` `Query` `Handler` | Query Handler | `Get` `Sampling` `Round` `Status` `Query` | Informa el avance muestral y suficiencia sin descargar el historial completo. |
| `Determine` `Sustainable` `CropLoad` `Command` `Handler` | Command Handler | `Determine` `Sustainable` `CropLoad` `Command` | Invoca `CropLoadBalancingCalculatorService`, fija carga admisible y alerta si hay sobrecarga. |
| `Get` `Thinning` `Prescription` `Query` `Handler` | Query Handler | `Get` `Thinning` `Prescription` `Query` | Retorna snapshot autorizado de la prescripción activa o histórica. |
| `Confirm` `Thinning` `Execution` `Command` `Handler` | Command Handler | `Confirm` `Thinning` `Execution` `Command` | Compara fecha con `windowClosesOn`; si es oportuna emite confirmación óptima, si es tardía emite extemporánea. |
| `OnThinning` `WindowClosed` `Event` `Handler` | Event Handler | `Thinning` `WindowClosed` `ByPitHardening` `Event` | Transiciona prescripciones pendientes a `EXPIRED`. |
| `OnPlot` `Removed` `Event` `Handler` | Event Handler | `Plot` `Removed` `Event` | Anula reactivamente prescripciones abiertas al darse de baja el predio. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Crop Load Regulation and Thinning Advisory. {#tblthinning-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `ThinningPrescription` `JpaRepository` | Persistence | Spring Data JPA | Almacenamiento relacional de prescripciones en PostgreSQL. |
| `FieldSamplingRound` `JpaRepository` | Persistence | Spring Data JPA | Ingesta transaccional con índice único de lote. |
| `MobileOffline` `StorageStrategy` | Client Persistence | Room (Android) / sqflite (Flutter) | Almacenamiento local SQLite y cola durable `WorkManager`. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Almacenamiento local offline-first (Room / sqflite):**
  * *Android Nativo (Room / SQLite):* `SamplingDao` gestiona `LocalSamplingRoundEntity` y `LocalTreeSamplingEntity`, permitiendo registrar árboles evaluados en campo sin cobertura de red. La tabla `sync_queue` retiene los lotes pendientes con clave de idempotencia `(actor_id, plot_id, client_batch_id)`.
  * *Cross-Platform (sqflite / SQLite):* Tabla `offline_samplings` administrada por `LocalDataAccess` con respaldo durable para mitigar cierres forzados de la aplicación.
* **Sincronización resiliente en segundo plano (WorkManager):**
  * `SamplingSyncWorkManager` programa tareas en background con restricciones de conectividad (`NetworkType.CONNECTED`). Al recuperar señal celular, drena la cola de sincronización hacia `POST /api/v1/plots/{plotId}/samplings` aplicando reintentos exponenciales automáticos ante fallas transitorias.
* **Integración con hardware del dispositivo:**
  * *Geolocalización (FusedLocationProviderClient):* Captura las coordenadas de georreferenciación del árbol testigo al momento de registrar el muestreo en campo.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Crop Load Regulation and Thinning Advisory. {#tblthinning-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `thinning_` `prescriptions` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la prescripción. |
| `thinning_` `prescriptions` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela asociada. |
| `thinning_` `prescriptions` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola de la labor. |
| `thinning_` `prescriptions` | `target_` `fruits_m` | `NUMERIC(5,2)` | `NOT NULL` | Carga objetivo de frutos/m lineal. |
| `thinning_` `prescriptions` | `percentage_` `remove` | `NUMERIC(4,2)` | `NOT NULL` | Porcentaje de remoción recomendado. |
| `thinning_` `prescriptions` | `status` | `VARCHAR(30)` | `NOT NULL, INDEX` | Estado del ciclo de vida (7 estados). |
| `thinning_` `prescriptions` | `window_` `closes_on` | `DATE` | `NOT NULL` | Fecha límite biológica de aclareo. |
| `field_` `sampling_` `rounds` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la ronda de muestreo. |
| `field_` `sampling_` `rounds` | `plot_id` | `UUID` | `NOT NULL` | Parcela muestreada. |
| `field_` `sampling_` `rounds` | `actor_id` | `UUID` | `NOT NULL` | Usuario que ejecutó el muestreo. |
| `field_` `sampling_` `rounds` | `client_batch_` `id` | `VARCHAR(64)` | `NOT NULL` | Identificador UUID local para idempotencia. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS crop_load;

CREATE TABLE crop_load.thinning_prescriptions (
    id                UUID PRIMARY KEY,
    plot_id           UUID NOT NULL,
    campaign_year     INT NOT NULL,
    target_fruits_m   NUMERIC(5,2) NOT NULL
        CHECK (target_fruits_m > 0),
    percentage_remove NUMERIC(4,2) NOT NULL
        CHECK (percentage_remove BETWEEN 0 AND 100),
    status            VARCHAR(30) NOT NULL,
    window_closes_on  DATE NOT NULL,
    created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE crop_load.field_sampling_rounds (
    id              UUID PRIMARY KEY,
    plot_id         UUID NOT NULL,
    actor_id        UUID NOT NULL,
    client_batch_id VARCHAR(64) NOT NULL,
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_sampling_idempotency
        UNIQUE (actor_id, plot_id, client_batch_id)
);

CREATE UNIQUE INDEX uq_active_prescription_per_plot_campaign 
ON crop_load.thinning_prescriptions(plot_id, campaign_year) 
WHERE status IN ('SAMPLING_IN_PROGRESS', 'PRESCRIBED');
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Crop Load Regulation and Thinning Advisory. {#tblthinning-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `PlotSamplingController`; `PlotThinningPrescriptionController`; `ThinningExecutionController` | Endpoints REST para ingesta de muestreo de campo, consulta de prescripciones y confirmación de aclareo. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `CropLoadCommandService`; `CropLoadQueryService` | Orquestación de comandos de muestreo y aclareo, consultas de prescripciones y resúmenes muestrales. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `FruitThinning` `PrescriptionRepository`; `CropLoadBalancingCalculatorService`; `FieldSamplingDeduplicator` | Contrato de persistencia (puerto de dominio), cálculo de carga admisible y deduplicación de lotes offline. | Java puro / DDD |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaFruitThinning` `PrescriptionRepositoryAdapter`; `SamplingSyncWorkManager`; `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL, sincronización en background en clientes móviles y publicación de eventos. | Spring Data JPA, WorkManager, SQLite |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El agricultor registra muestras de brotes sin conexión en el contenedor de la aplicación cliente móvil (persistidas en Room/sqflite).
2. Al recuperar conectividad, `SamplingSyncWorkManager` despacha `POST` \nolinkurl{/api/v1/plots/{plotId}/samplings} con cabecera `Idempotency-Key` hacia `PlotSamplingController`.
3. `PlotSamplingController` delega el procesamiento en `CropLoadCommandService`, mientras que las consultas de prescripciones y resúmenes muestrales son atendidas por `CropLoadQueryService`.
4. `CropLoadCommandService` invoca `FieldSamplingDeduplicator` para filtrar duplicados y persiste los registros en `FruitThinning` `PrescriptionRepository`.
5. Si el muestreo alcanza suficiencia estadística ($N \ge 5$), `CropLoadCommandService` invoca `CropLoadBalancingCalculatorService` y publica `ThinningPrescribedEvent` vía `SpringDomainEventPublisher`. Si detecta riesgo de sobrecarga, emite alerta hacia *Cooperative Operations*.
6. El productor confirma el aclareo mediante `POST` \nolinkurl{/api/v1/thinning-prescriptions/{id}/execution-confirmations}; `ThinningExecutionController` delega en `CropLoadCommandService`, el cual actualiza la prescripción a `EXECUTED` en el repositorio y emite `ThinningExecutedEvent`.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Crop Load Regulation.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-crop-load.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Crop Load Regulation. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Crop Load Regulation.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Crop Load Regulation and Thinning Advisory.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-crop-load.png}
\caption*{\textit{Nota.} Estructura estática de clases, entidades de muestreo y prescripción en Crop Load Regulation. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Crop Load Regulation.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-crop-load.png}
\caption*{\textit{Nota.} Estructura de tablas, índices de idempotencia y restricciones en PostgreSQL para Crop Load Regulation. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Cooperative Operations and Territorial Intelligence

Propósito: Agrupa la inteligencia territorial, la administración gremial y las proyecciones logísticas de acopio para organizaciones agrarias y cooperativas olivareras. Gobierna el Aggregate Root `Cooperative`, delimitado bajo la autoridad de un gestor técnico institucional único (`technicalManagerUserId: UserId`, validado mediante claims de token JWT con rol `ROLE_GESTOR_COOPERATIVA`). Administra el padrón unificado de socios (`cooperative_` `members`), evalúa el semáforo territorial de riesgos fenológicos, climáticos y de sobrecarga sectorial (`GET .../territorial-risk` con parámetros GPS `?latitude=` `&longitude=`), y proyecta tempranamente el volumen agregado de cosecha en toneladas verdes y negras (`EarlyIntakeProjection`), advirtiendo penalizaciones de confianza si la representatividad muestral del padrón es inferior al $50\%$.

#### Domain Layer

##### Modelo de dominio: `Cooperative` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `Cooperative` (Aggregate Root) en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperative-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Administra el padrón de socios olivareros, proyecta el volumen de cosecha temprana y evalúa la matriz territorial de riesgos. |
| Relaciones de dominio | Gobierna miembros (`Cooperative` `Member`), proyecciones de acopio y evaluaciones de riesgo territorial. |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `Cooperative` en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperative-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `CooperativeId` | Identificador único de la cooperativa. |
| `name` | `CooperativeName` | Razón social formal de la asociación cooperativa. |
| `taxId` | `TaxIdentificationNumber` | Registro fiscal unívoco (RUC). |
| `licenseId` | `LicenseId` | Referencia lógica a la licencia institucional de suscripción. |
| `technicalManagerUserId` | `UserId` | Identificador del gestor técnico autorizado. |
| `members` | `List<CooperativeMember>` | Padrón de productores socios adscritos. |
| `riskMatrix` | `TerritorialRiskMatrix` | Semáforo de riesgo geográfico por sector. |
| `intakeProjection` | `EarlyIntakeProjection` | Estimación agregada de volumen de cosecha para almazara. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `Cooperative` en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperative-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `authorizeCode` `Issuance` | `managerId: UserId` | `void` | Autoriza generación de lotes de códigos de patrocinio institucional. |
| `affiliate` `Producer` | `userId: UserId`, `ha: Double`, `plots: List<PlotId>` | `Cooperative` `Member` | Incorpora productor al padrón y emite `MemberAffiliated` `Event`. |
| `updateMember` `Contact` | `userId: UserId`, `name: String`, `phone: String`, `email: String` | `void` | Sincroniza datos de contacto del socio en el padrón. |
| `evaluate` `Territorial` `RiskMatrix` | `incidents: List<AgroclimaticIncident>` | `void` | Consolida alertas activas y emite `CooperativeRiskMatrixEvaluatedEvent`. |
| `projectIntake` `Volume` | `service: YieldAggregationDomainService` | `void` | Agrega proyecciones de cosecha a partir de muestras y floración. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `CooperativeMember` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `CooperativeMember` (Internal Entity) en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperativemember-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Representa la membresía y situación gremial de un productor olivarero en la cooperativa. |
| Relaciones de dominio | Subordinada a `Cooperative` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `CooperativeMember` en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperativemember-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `MemberId` | Identificador de membresía gremial. |
| `producerUserId` | `UserId` | Identificador de cuenta del socio productor. |
| `fullName` | `String` | Nombre completo oficial del socio. |
| `contactPhone` | `String` | Teléfono de contacto registrado. |
| `totalDeclaredHa` | `Double` | Hectáreas olivareras declaradas ante la cooperativa. |
| `status` | `MemberStatus` | Estado de membresía: `ACTIVE`, `SUSPENDED`, `RESIGNED`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `CooperativeMember` en Cooperative Operations and Territorial Intelligence. {#tblcooperative-cooperativemember-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `updateContact` | `name: String`, `phone: String`, `email: String` | `void` | Actualiza datos civiles de comunicación del socio. |
| `linkPlot` | `plotId: PlotId`, `ha: Double` | `void` | Registra parcela asociada a la cuota de entrega de aceituna. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Cooperative Operations and Territorial Intelligence. {#tblcooperative-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `CooperativeId` | `UUID v4` | Identificador único universal de la cooperativa. |
| `CooperativeName` | `String` | Razón social de la organización agraria (longitud 3 a 150 caracteres). |
| `TaxIdentificationNumber` | `String` | Registro tributario institucional oficial. |
| `MemberId` | `UUID v4` | Identificador único de la membresía gremial. |
| `TerritorialRiskMatrix` | `Map<String, RiskLevel>` | Evaluación cualitativa de riesgos sectoriales (`LOW`, `MEDIUM`, `HIGH`, `CRITICAL`). |
| `EarlyIntakeProjection` | `greenTons: Double, blackTons: Double` | Estimación temprana de acopio en toneladas métricas por variedad y uso industrial. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Cooperative Operations and Territorial Intelligence. {#tblcooperative-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `TerritorialRisk` `AggregationService` | Domain Service | `evaluateSectorRisk(` `alerts:` `List<` `Agroclimatic` `Incident>):` `TerritorialRisk` `Matrix` | Consolida semáforo territorial de heladas y estrés hídrico. |
| `YieldAggregation` `DomainService` | Domain Service | `projectHarvestYield(` `samples:` `List<` `CropLoad` `Sampling>,` `factor: Double):` `IntakeProjection` `Result` | Agrega proyecciones tempranas de volumen de aceituna. |
| `Cooperative` `Repository` | Repository | `findById(id: CooperativeId): Optional<Cooperative>` | Carga la cooperativa por su identificador primario. |
| `Cooperative` `Repository` | Repository | `findByTaxId(taxId: TaxIdentificationNumber): Optional<Cooperative>` | Localiza la cooperativa por su registro fiscal único. |
| `Cooperative` `Repository` | Repository | `findByTechnical` `ManagerUserId(` `userId: UserId):` `List<` `Cooperative>` | Lista cooperativas gestionadas por un responsable técnico. |
| `Cooperative` `Repository` | Repository | `save(cooperative: Cooperative): Cooperative` | Persiste cooperativa, padrón de socios y proyecciones. |
| `CooperativeRisk` `MatrixEvaluatedEvent` | Domain Event | `cooperativeId: UUID, severity: String, frostAlertsCount: int, occurredOn: Instant` | Notifica mapa de calor territorial a gestores cooperativos. |
| `MemberAffiliated` `Event` | Domain Event | `cooperativeId: UUID, memberId: UUID, producerUserId: UUID, occurredOn: Instant` | Confirma afiliación de productor al padrón cooperativo. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Cooperative Operations and Territorial Intelligence. {#tblcooperative-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/members} | N/A (`?status=ACTIVE`) | `List<` `Cooperative` `Member` `Resource>` (200 OK) | Padrón de socios agremiados. |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/members/{memberId}} | N/A | `Cooperative` `Member` `Resource` (200 OK) | Ficha gremial individual de socio. |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/territorial-risk} | N/A (`?latitude=` `&longitude=`) | `TerritorialRisk` `MatrixResource` (200 OK) | Semáforo territorial de riesgo fenológico y sobrecarga con geolocalización GPS. |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/intake-forecasts} | N/A (`?campaignYear=`) | `IntakeForecast` `Resource` (200 OK) | Proyección temprana agregada de acopio en toneladas. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Cooperative Operations and Territorial Intelligence. {#tblcooperative-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Cooperative` `Member` `Resource` | Response DTO | `{ id: UUID, producerUserId: UUID, fullName: String, contactPhone: String, totalDeclaredHa: Double, status: String }` | Datos de socio agremiado. |
| `TerritorialRisk` `MatrixResource` | Response DTO | `{ cooperativeId: UUID, highRiskSectors: List<String>, generalStatus: String, evaluatedAt: Instant }` | Semáforo de riesgo territorial. |
| `IntakeForecast` `Resource` | Response DTO | `{ cooperativeId: UUID, greenOlivesTons: Double, blackOlivesTons: Double, confidenceDegraded: Boolean }` | Proyección de acopio para salmuera y aceite. |
| `Cooperative` `Resource` `Assembler` | Assembler | `toResource(` `Cooperative):` `Cooperative` `Resource` | Transformador a DTO público de presentación. |

*Nota.* Elaboración propia.
#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Cooperative Operations and Territorial Intelligence. {#tblcooperative-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Evaluate` `Cooperative` `RiskMatrix` `Command` `Handler` | Command Handler | `Evaluate` `Cooperative` `RiskMatrix` `Command` | Carga el agregado `Cooperative`, recopila alertas activas de telemetría y sobrecarga, evalúa semáforo y emite evento. |
| `Project` `Cooperative` `IntakeVolume` `Command` `Handler` | Command Handler | `Project` `Cooperative` `IntakeVolume` `Command` | Consulta resúmenes biométricos, computa proyección de cosecha en toneladas y advierte si la representatividad es baja. |
| `Get` `Cooperative` `Directory` `Query` `Handler` | Query Handler | `Get` `Cooperative` `Directory` `Query` | Recupera el padrón de socios ordenado por apellido y estado de afiliación. |
| `Get` `Territorial` `RiskMatrix` `Query` `Handler` | Query Handler | `Get` `Territorial` `RiskMatrix` `Query` | Entrega el semáforo sectorial consolidado, resolviendo el sector por coordenadas GPS. |
| `Get` `EarlyIntake` `Projection` `Query` `Handler` | Query Handler | `Get` `EarlyIntake` `Projection` `Query` | Entrega las toneladas proyectadas de aceituna verde y negra filtradas por campaña agrícola. |
| `OnCooperative` `CodeRedeemed` `Event` `Handler` | Event Handler | `Cooperative` `CodeRedeemed` `Event` | Escucha canje de código institucional y da de alta al socio con la superficie concedida. |
| `OnContact` `ProfileUpdated` `Event` `Handler` | Event Handler | `Contact` `ProfileUpdated` `Event` | Sincroniza datos de contacto del socio en el padrón cooperativo. |
| `OnOverload` `RiskDetected` `Event` `Handler` | Event Handler | `Overload` `RiskDetected` `Event` | Si la parcela pertenece a un socio, actualiza la matriz de riesgo marcando alerta de sobrecarga. |
| `OnWeather` `ForecastIngested` `Event` `Handler` | Event Handler | `Weather` `ForecastIngested` `Event` | Si se proyecta helada próxima en un sector, actualiza el semáforo territorial a nivel crítico. |
| `OnSampling` `RoundCompleted` `Event` `Handler` | Event Handler | `Sampling` `RoundCompleted` `Event` | Despacha comando para recalcular y actualizar la proyección de acopio gremial. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Cooperative Operations and Territorial Intelligence. {#tblcooperative-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `Cooperative` `JpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `cooperatives` y padrón de socios en PostgreSQL. |
| `JpaCooperative` `Repository` `Adapter` | Adapter | Spring Component | Implementa el puerto de dominio `Cooperative` `Repository`. |
| `GpsSpatial` `SectoringAdapter` | GIS Adapter | GeoTools / JTS | Asocia coordenadas GPS (`lat, lon`) a sectores territoriales del valle olivarero. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Caché local de padrón y semáforo territorial:**
  * *Android Nativo (Room / SQLite):* `CooperativeCacheDao` y entidades `LocalMemberEntity`, `LocalRiskMatrixEntity` para consulta inmediata del padrón de socios y matriz de riesgo sectorial sin dependencia de conectividad permanente.
  * *Cross-Platform (sqflite / SQLite):* Tablas `cooperative_members_cache` y `territorial_risk_cache` administradas por `LocalDataAccess`.
* **Sectorización espacial GPS en dispositivo:**
  * Integración con FusedLocationProviderClient en la aplicación del Gestor Técnico Cooperativo (`Cooperative Operations UI`) para resolver automáticamente la subcuenca o sector agroecológico al recorrer predios agremiados en campo, visualizando el cuadrante de riesgo correspondiente.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Cooperative Operations and Territorial Intelligence. {#tblcooperative-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `cooperatives` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la cooperativa. |
| `cooperatives` | `name` | `VARCHAR(150)` | `NOT NULL` | Razón social de la organización agraria. |
| `cooperatives` | `tax_id` | `VARCHAR(11)` | `NOT NULL, UNIQUE` | RUC institucional de 11 dígitos. |
| `cooperatives` | `license_id` | `UUID` | `NOT NULL` | Referencia al contrato corporativo en Subscription. |
| `cooperatives` | `technical_` `manager_` `user_id` | `UUID` | `NOT NULL` | Gestor técnico único autorizado de la cooperativa. |
| `cooperative_` `members` | `id` | `UUID` | `PRIMARY KEY` | Identificador del socio en padrón. |
| `cooperative_` `members` | `cooperative_` `id` | `UUID` | `NOT NULL, FK` | Cooperativa a la que pertenece. |
| `cooperative_` `members` | `producer_` `user_id` | `UUID` | `NOT NULL` | Usuario productor socio. |
| `cooperative_` `members` | `full_name` | `VARCHAR(150)` | `NOT NULL` | Nombre civil del socio. |
| `cooperative_` `members` | `declared_ha` | `NUMERIC(8,2)` | `NOT NULL` | Hectáreas aportadas al padrón. |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS cooperative;

CREATE TABLE cooperative.cooperatives (
    id                         UUID PRIMARY KEY,
    name                       VARCHAR(150) NOT NULL,
    tax_id                     VARCHAR(11) NOT NULL UNIQUE,
    license_id                 UUID NOT NULL,
    technical_` `manager_` `user_id  UUID NOT NULL,
    created_at                 TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at                 TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE cooperative.cooperative_members (
    id                UUID PRIMARY KEY,
    cooperative_id    UUID NOT NULL
        REFERENCES cooperative.cooperatives(id) ON DELETE CASCADE,
    producer_user_id  UUID NOT NULL,
    full_name         VARCHAR(150) NOT NULL,
    contact_phone     VARCHAR(25),
    declared_ha       NUMERIC(8,2) NOT NULL
        CHECK (declared_ha > 0),
    status            VARCHAR(30) NOT NULL DEFAULT 'ACTIVE',
    created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_coop_member
        UNIQUE (cooperative_id, producer_user_id)
);

CREATE INDEX idx_coop_manager
    ON cooperative.cooperatives(technical_` `manager_` `user_id);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Cooperative Operations and Territorial Intelligence. {#tblcooperative-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `CooperativeMember` `Controller`; `CooperativeIntakeController`; `CooperativeRiskController` | API REST para padrón de socios, proyección de acopio y semáforo de riesgo territorial. | Spring MVC, Jakarta Validation |
| Capa de aplicación (*Application Layer*) | `CooperativeCommandService`; `CooperativeQueryService` | Orquestación de comandos de afiliación y evaluación de riesgos, y consultas de padrón, acopio y semáforo. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `Cooperative` `Repository`; `TerritorialRiskAggregationService`; `YieldAggregationDomainService` | Contrato de persistencia (puerto de dominio), agregación de riesgo bioclimático y proyección de rendimiento. | Java puro / DDD |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaCooperative` `RepositoryAdapter`; `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL y despacho de eventos de dominio de riesgo territorial. | Spring Data JPA, Spring Events |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El gestor técnico consulta el semáforo territorial desde la aplicación móvil o portal enviando `GET .../territorial-risk?latitude=-18.05&longitude=-70.25` hacia `CooperativeRiskController`.
2. `CooperativeRiskController` delega la consulta en `CooperativeQueryService` (mientras que los comandos de afiliación, suspensión y evaluación formal de riesgo son atendidos por `CooperativeCommandService`).
3. `CooperativeQueryService` consulta `Cooperative` `Repository` e interactúa con el servicio de dominio `TerritorialRiskAggregationService` para consolidar alertas de heladas y sobrecarga por sector agroclimático (*Sector Valle Bajo*, *Sector Costa*, *Sector Litoral*).
4. Se retorna `TerritorialRiskMatrixResource` resaltando el nivel de riesgo por cuadrante operativo.
5. Para proyecciones de cosecha temprana, `CooperativeQueryService` invoca `YieldAggregationDomainService` exponiendo las toneladas estimadas a través de `CooperativeIntakeController`.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Cooperative Operations.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-cooperative.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Cooperative Operations. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Cooperative Operations.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Cooperative Operations and Territorial Intelligence.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-cooperative.png}
\caption*{\textit{Nota.} Estructura estática de clases, padrón de socios y modelos de acopio en Cooperative Operations. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Cooperative Operations.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-cooperative.png}
\caption*{\textit{Nota.} Tablas de cooperativas, padrón de socios y claves foráneas en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage

### Bounded Context: Harvest Settlement and Performance Reporting

Propósito: Custodia la memoria productiva consolidada y la emisión de certificaciones oficiales de cosecha de Viora. Es responsable del Aggregate Root `AgronomicReport`, administrando las liquidaciones cuantitativas de pesajes comerciales al cierre de campaña (`Harvest` `Settlement`), calculando la curva de atenuación interanual de vecería ($ARR$) y la varianza productiva mediante el servicio puro `StabilizationCurveCalculatorService`, vinculando la confirmación de aclareos en verde con el balance final, y emitiendo expedientes agronómicos certificados con firma criptográfica y hash SHA-256 inmutable, los cuales pueden ser consultados en JSON o descargados en PDF inmutable mediante negociación de contenidos HTTP (`Accept: application/pdf`).

#### Domain Layer

##### Modelo de dominio: `AgronomicReport` (Aggregate Root)

: Definición táctica y relaciones del modelo de dominio `AgronomicReport` (Aggregate Root) en Harvest Settlement and Performance Reporting. {#tblsettlement-agronomicreport-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Aggregate Root |
| Propósito | Consolida la memoria productiva auditada de una parcela, evalúa la curva de atenuación de vecería y emite expedientes oficiales certificados. |
| Relaciones de dominio | Referencia a `PlotId` y `UserId`. Compone las liquidaciones anuales de cosecha (`Harvest` `Settlement`). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `AgronomicReport` en Harvest Settlement and Performance Reporting. {#tblsettlement-agronomicreport-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ReportId` | Identificador único del expediente agronómico predial. |
| `plotId` | `PlotId` | Parcela olivarera evaluada. |
| `producerId` | `UserId` | Productor titular de la parcela. |
| `settlements` | `List<` `Harvest` `Settlement>` | Liquidaciones históricas de cosecha registradas. |
| `trendCurve` | `StabilizationTrendCurve` | Curva y tasa de atenuación de vecería interanual (ARR). |
| `dossierMetadata` | `DossierMetadata` | Sello criptográfico SHA-256 y firma del auditor colegiado. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `AgronomicReport` en Harvest Settlement and Performance Reporting. {#tblsettlement-agronomicreport-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `settleCampaign` | `year: CampaignYear`, `greenKg: Double`, `blackKg: Double`, `notes: String` | `Harvest` `Settlement` | Asienta balance de cosecha y emite `CampaignHarvestSettledEvent`. |
| `evaluate` `Stabilization` `Trend` | `calculator: StabilizationCurveCalculatorService` | `void` | Computa varianza interanual y tasa de estabilización de vecería. |
| `compileDossier` | `signature: AuditorSignature`, `pdfGen: AgronomicDossierPdfGenerator` | `byte[]` | Compila expediente binario PDF, estampa SHA-256 y emite `AgronomicDossierGeneratedEvent`. |
| `isStabilization` `TargetAchieved` | `void` | `boolean` | Determina si la reducción de fluctuación interanual supera el 30% esperado. |

*Nota.* Elaboración propia.

##### Modelo de dominio: `HarvestSettlement` (Internal Entity)

: Definición táctica y relaciones del modelo de dominio `HarvestSettlement` (Internal Entity) en Harvest Settlement and Performance Reporting. {#tblsettlement-harvestsettlement-spec}

| Propiedad | Definición en el Dominio |
|:---|:---|
| Estereotipo DDD | Internal Entity |
| Propósito | Modela la liquidación formal de pesaje y destino comercial de aceituna para una campaña anual concreta. |
| Relaciones de dominio | Subordinada a `AgronomicReport` (1 a N). |

*Nota.* Elaboración propia.

: Atributos y definición de tipos del modelo `HarvestSettlement` en Harvest Settlement and Performance Reporting. {#tblsettlement-harvestsettlement-attributes}

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SettlementId` | Identificador de la liquidación anual. |
| `campaignYear` | `CampaignYear` | Año agrícola liquidado. |
| `greenOlivesWeight` | `OliveWeight` | Kilogramos de aceituna verde entregada (conserva). |
| `blackOlivesWeight` | `OliveWeight` | Kilogramos de aceituna negra entregada (mesa/aceite). |
| `totalHarvestWeight` | `OliveWeight` | Suma consolidada de cosecha en kilogramos. |
| `status` | `SettlementStatus` | Estado: `DRAFT`, `SETTLED`, `AUDITED`. |

*Nota.* Elaboración propia.

: Comportamientos, métodos e invariantes de `HarvestSettlement` en Harvest Settlement and Performance Reporting. {#tblsettlement-harvestsettlement-methods}

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `calculateTotal` `Weight` | `void` | `OliveWeight` | Suma pesajes de verde y negra garantizando consistencia contable. |
| `markAsAudited` | `auditor: AuditorSignature` | `void` | Congela la liquidación bajo sello de auditoría técnica. |

*Nota.* Elaboración propia.

##### Objetos de valor (Value Objects)

: Objetos de valor (Value Objects) e invariantes en Harvest Settlement and Performance Reporting. {#tblsettlement-value-objects}

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `ReportId`, `SettlementId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CampaignYear` | `Int` | Año de la campaña agrícola (rango $2000 \le year \le 2100$). |
| `OliveWeight` | `Double (Kilogramos)` | Peso exacto en kilos con validación de no negatividad. |
| `StabilizationTrendCurve` | `baselineYield: Double, variance: Double, arr: Double` | Curva de estabilización interanual de vecería. |
| `DossierMetadata` | `verificationHash: String (SHA-256), certifiedAt: Instant` | Metadatos inmutables de sellado criptográfico del expediente. |

*Nota.* Elaboración propia.

##### Servicios de dominio, repositorios y eventos

: Servicios de dominio, contratos de repositorio y eventos en Harvest Settlement and Performance Reporting. {#tblsettlement-domain-services-events}

| Componente | Patrón | Firma / Contrato / Payload | Propósito en el Dominio |
|:------------------------|:----------------|:------------------------------------|:------------------------|
| `Stabilization` `Curve` `CalculatorService` | Domain Service | `computeCurve(` `settlements:` `List<` `Harvest` `Settlement>):` `StabilizationTrend` `Curve` | Computa varianza interanual y tasa de atenuación de vecería ($ARR$). |
| `AgronomicDossier` `Pdf` `Generator` | Output Port | `renderPdf(report: AgronomicReport): byte[]` | Contrato agnóstico para compilar binario PDF con sello criptográfico. |
| `AgronomicReport` `Repository` | Repository | `findById(id: ReportId): Optional<AgronomicReport>` | Carga el reporte agronómico por identificador primario. |
| `AgronomicReport` `Repository` | Repository | `findByPlotId(plotId: PlotId): Optional<AgronomicReport>` | Recupera el reporte agronómico consolidado de una parcela. |
| `AgronomicReport` `Repository` | Repository | `save(report: AgronomicReport): AgronomicReport` | Persiste atómicamente el reporte y sus liquidaciones. |
| `CampaignHarvest` `SettledEvent` | Domain Event | `reportId: UUID, plotId: UUID, campaignYear: int, totalKg: Double, occurredOn: Instant` | Notifica liquidación anual de cosecha hacia Fenología. |
| `AgronomicDossier` `GeneratedEvent` | Domain Event | `reportId: UUID, plotId: UUID, verificationHash: String, certifiedAt: Instant` | Certifica emisión oficial de expediente con hash SHA-256. |

*Nota.* Elaboración propia.

#### Interface Layer

##### Controladores y endpoints REST

: Controladores y especificación de endpoints REST en Harvest Settlement and Performance Reporting. {#tblsettlement-rest-endpoints}

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Propósito |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} | `SettleHarvest` `Request` | `Harvest` `Settlement` `Resource` (201 Created) | Asienta liquidación anual de cosecha. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} | N/A (`?campaignYear=`) | `List<` `Harvest` `Settlement` `Resource>` (200 OK) | Lista histórica de liquidaciones prediales. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements/{settlementId}} | N/A | `Harvest` `Settlement` `Resource` (200 OK) | Consulta liquidación puntual por su UUID. |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports} | N/A (`Accept: application/json` o `application/pdf`) | `AgronomicReport` `Resource` / `byte[]` (200 OK) | Consulta métricas (JSON) o descarga expediente oficial en PDF mediante Content Negotiation. |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports/certifications} | `CertifyDossier` `Request` | `Dossier` `Certification` `Resource` (201 Created) | Emite certificación colegiada oficial y estampa hash SHA-256. |

*Nota.* Elaboración propia.

##### DTOs (Resources) y mappers (Assemblers)

: Estructura de DTOs y ensambladores de recursos en Harvest Settlement and Performance Reporting. {#tblsettlement-dtos-assemblers}

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `SettleHarvest` `Request` | Request DTO | `{ campaignYear: Int, greenOlivesKg: Double, blackOlivesKg: Double, notes: String }` | Datos del pesaje comercial asentado. |
| `CertifyDossier` `Request` | Request DTO | `{ auditorSignature: String, notes: String }` | Solicitud de certificación formal colegiada. |
| `Harvest` `Settlement` `Resource` | Response DTO | `{ id: UUID, campaignYear: Int, totalYieldKg: Double, status: String, settledAt: Instant }` | Representación de liquidación anual. |
| `AgronomicReport` `Resource` | Response DTO | `{ reportId: UUID, interannualVariance: Double, amplitudeReductionRate: Double, isEffective: Boolean }` | Resumen de estabilización interanual. |
| `GenerateAgronomic` `DossierCommandAssembler` | Assembler | `toCommand(` `CertifyDossierRequest,` `plotId):` `Generate` `Agronomic` `DossierCommand` | Ensamblador alineado al comando canónico. |

*Nota.* Elaboración propia.
#### Application Layer

##### Orquestación de casos de uso (Handlers)

: Manejadores de comandos y consultas (Handlers) en Harvest Settlement and Performance Reporting. {#tblsettlement-use-case-handlers}

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Settle` `Campaign` `Harvest` `Command` `Handler` | Command Handler | `Settle` `Campaign` `Harvest` `Command` | Inicia `@Transactional`, valida año único, calcula totales, recalcula curva y emite eventos. |
| `Generate` `Agronomic` `Dossier` `Command` `Handler` | Command Handler | `Generate` `Agronomic` `Dossier` `Command` | Carga reporte, compila PDF con `AgronomicDossierPdfGenerator`, estampa hash SHA-256 y emite evento. |
| `Get` `Agronomic` `Dossier` `Query` `Handler` | Query Handler | `Get` `Agronomic` `Dossier` `Query` | Retorna flujo binario inmutable del PDF o metadatos JSON según encabezado `Accept` negociado. |
| `OnThinning` `Execution` `Confirmed` `Event` `Handler` | Event Handler | `Thinning` `Execution` `Confirmed` `Event` | Vincula remoción en verde con el balance final cosechado en fin de campaña. |
| `OnHistorical` `Bearing` `IndexAssessed` `Event` `Handler` | Event Handler | `Biennial` `Bearing` `IndexAssessed` `Event` | Recibe $BBI$ de Fenología y actualiza índices de contraste para la curva de atenuación. |

*Nota.* Elaboración propia.

#### Infrastructure Layer

##### Componentes y adaptadores técnicos

: Componentes técnicos y adaptadores de infraestructura en Harvest Settlement and Performance Reporting. {#tblsettlement-infrastructure-adapters}

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `AgronomicReport` `JpaRepository` | Persistence | Spring Data JPA | Acceso a tablas de reporte y liquidaciones en PostgreSQL. |
| `JpaAgronomicReport` `RepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `AgronomicReportRepository`. |
| `OpenPdfAgronomic` `DossierAdapter` | PDF Adapter | OpenPDF / iText | Renderizado en memoria del expediente técnico inmutable en PDF. |

*Nota.* Elaboración propia.

##### Perspectiva táctica de la aplicación móvil (Android / Flutter)

* **Caché local y consultas offline (`HarvestSettlementCacheDao` / `LocalDataAccess`):**
  * *Android Nativo (Room / SQLite):* `HarvestSettlementCacheDao` y entidades `CachedHarvestSettlementEntity`, `CachedAgronomicReportEntity` para consultar balances de campañas anteriores y métricas de mitigación de vecería ($ARR$) en campo sin conexión.
  * *Cross-Platform (sqflite / SQLite):* Tablas `cached_harvest_settlements` y `cached_agronomic_reports` administradas por `LocalDataAccess`.
* **Sincronización resiliente de liquidaciones (`SettlementSyncWorker` / WorkManager):**
  * Ante la formalización del pesaje en zonas desconectadas, el comando se encola en una tabla local `pending_settlements` gestionada por Android Jetpack WorkManager (`CoroutineWorker`) o un servicio en segundo plano en Flutter. Al restablecerse la conectividad HTTPS, el worker despacha la solicitud `POST /api/v1/plots/{plotId}/harvest-settlements` con cabecera de idempotencia para evitar duplicación.
* **Descarga segura y verificación criptográfica de expedientes PDF:**
  * Descarga en streaming mediante `DownloadManager` de Android o `dio` en Flutter al almacenamiento privado del dispositivo, contrastando el hash SHA-256 computado localmente contra el campo `verification_` `hash` para certificar la autenticidad e inmutabilidad del expediente oficial.

##### Diccionario de datos relacional (PostgreSQL)

: Diccionario de datos relacional (PostgreSQL) en Harvest Settlement and Performance Reporting. {#tblsettlement-data-dictionary}

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `agronomic_` `reports` | `id` | `UUID` | `PRIMARY KEY` | Identificador del expediente agronómico. |
| `agronomic_` `reports` | `plot_id` | `UUID` | `NOT NULL, UNIQUE` | Parcela asociada. |
| `agronomic_` `reports` | `producer_id` | `UUID` | `NOT NULL` | Productor titular. |
| `agronomic_` `reports` | `interannual_` `variance` | `NUMERIC(8,2)` | `NOT NULL DEFAULT 0` | Varianza de rendimiento entre campañas. |
| `agronomic_` `reports` | `amplitude_` `reduction_rate` | `NUMERIC(5,2)` | `NOT NULL DEFAULT 0` | Tasa de reducción de alternancia ($ARR$). |
| `agronomic_` `reports` | `verification_` `hash` | `VARCHAR(64)` | `NULL` | Hash SHA-256 del expediente certificado. |
| `harvest_` `settlements` | `id` | `UUID` | `PRIMARY KEY` | Identificador único de la liquidación anual. |
| `harvest_` `settlements` | `report_id` | `UUID` | `NOT NULL, FK` | Reporte agronómico al que pertenece. |
| `harvest_` `settlements` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola liquidado. |
| `harvest_` `settlements` | `green_olives_` `kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (green_olives_kg >= 0)` | Kilos cosechados de aceituna verde. |
| `harvest_` `settlements` | `black_olives_` `kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (black_olives_kg >= 0)` | Kilos cosechados de aceituna negra. |
| `harvest_` `settlements` | `total_yield_` `kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (total_yield_kg > 0)` | Kilos totales consolidados de la campaña. |
| `harvest_` `settlements` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`AUDITED`, `SETTLED`). |

*Nota.* Elaboración propia.

##### Script DDL de base de datos

```sql
CREATE SCHEMA IF NOT EXISTS settlement;

CREATE TABLE settlement.agronomic_reports (
    id                       UUID PRIMARY KEY,
    plot_id                  UUID NOT NULL UNIQUE,
    producer_id              UUID NOT NULL,
    interannual_variance     NUMERIC(8,2) NOT NULL DEFAULT 0.0,
    amplitude_reduction_rate NUMERIC(5,2) NOT NULL DEFAULT 0.0,
    verification_hash        VARCHAR(64),
    certified_at             TIMESTAMPTZ,
    created_at               TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at               TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE settlement.harvest_settlements (
    id              UUID PRIMARY KEY,
    report_id       UUID NOT NULL
        REFERENCES settlement.agronomic_reports(id) ON DELETE CASCADE,
    campaign_year   INT NOT NULL,
    green_olives_kg NUMERIC(10,2) NOT NULL
        CHECK (green_olives_kg >= 0),
    black_olives_kg NUMERIC(10,2) NOT NULL
        CHECK (black_olives_kg >= 0),
    total_yield_kg  NUMERIC(10,2) NOT NULL
        CHECK (total_yield_kg > 0),
    status          VARCHAR(30) NOT NULL DEFAULT 'SETTLED',
    settled_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_report_campaign
        UNIQUE (report_id, campaign_year)
);
```

#### Bounded Context Software Architecture Component Level Diagrams 

##### Descomposición de componentes por capa

: Descomposición de componentes arquitectónicos por capa en Harvest Settlement and Performance Reporting. {#tblsettlement-layer-components}

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| Capa de interfaz (*Interface Layer*) | `PlotHarvestSettlement` `Controller`; `PlotAgronomicReportController` | API REST para liquidación anual, métricas y descarga oficial de informe colegiado vía Content Negotiation. | Spring MVC, Content Negotiation |
| Capa de aplicación (*Application Layer*) | `HarvestSettlement` `CommandService`; `AgronomicReportQueryService` | Orquestación de comandos de liquidación, certificación colegiada y consultas con streaming de PDF. | Spring `@Transactional`, `@Service` |
| Capa de dominio (*Domain Layer*) | `AgronomicReportRepository`; `StabilizationCurveCalculatorService` | Contrato de persistencia (puerto de dominio) y servicio de cálculo de curva de atenuación de vecería ($ARR$). | Java puro / DDD |
| Capa de infraestructura (*Infrastructure Layer*) | `JpaAgronomicReport` `RepositoryAdapter`; `OpenPdfAgronomicDossierAdapter`; `SpringDomainEventPublisher` | Persistencia en PostgreSQL, compilación binaria OpenPDF con hash SHA-256 y publicación de eventos. | Spring Data JPA, OpenPDF |

*Nota.* Elaboración propia.

##### Flujo de comunicación y conectividad
1. El productor asienta la cosecha anual enviando `POST` \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} desde la aplicación cliente móvil hacia `PlotHarvestSettlementController`.
2. `PlotHarvestSettlementController` delega el comando `SettleCampaignHarvestCommand` en `HarvestSettlement` `CommandService`.
3. `HarvestSettlement` `CommandService` carga el reporte desde `AgronomicReportRepository`, valida las reglas y delega en `StabilizationCurveCalculatorService` la actualización de la varianza interanual y la tasa de atenuación de vecería ($ARR$).
4. Se persiste el cierre mediante `AgronomicReportRepository` y se despacha `CampaignHarvestSettledEvent` vía `SpringDomainEventPublisher` hacia *Phenology*.
5. Ante la solicitud `POST` \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports/certification}, `HarvestSettlement` `CommandService` compila el expediente colegiado, estampa la firma con `OpenPdfAgronomicDossierAdapter`, genera el hash SHA-256 inmutable y emite `AgronomicDossierGeneratedEvent`.
6. Ante `GET` \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports} con cabecera `Accept: application/pdf`, `AgronomicReportQueryService` consulta `AgronomicReportRepository` y delega en `OpenPdfAgronomicDossierAdapter` transmitiendo el binario inmutable del informe oficial en streaming directo con hash SHA-256.

\begin{figure}[H]
\caption{C4 Model - Component Level: Diagrama de Componentes de Harvest Settlement and Performance Reporting.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/tactical-diagrams/component-diagram-settlement.png}
\caption*{\textit{Nota.} Descomposición de componentes de la arquitectura del Bounded Context Harvest Settlement. Elaboración propia.}
\end{figure}

#### Bounded Context Software Architecture Code Level Diagrams 
&nbsp;

A continuación se presentan los diagramas de clases UML y de diseño de base de datos para el Bounded Context Harvest Settlement and Performance Reporting.

##### Bounded Context Domain Layer Class Diagrams

\begin{figure}[H]
\caption{Diagrama de Clases UML: Domain Layer de Harvest Settlement and Performance Reporting.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/tactical-diagrams/class-diagram-settlement.png}
\caption*{\textit{Nota.} Estructura estática de clases, liquidaciones y servicio de estabilización en Harvest Settlement. Elaboración propia.}
\end{figure}

##### Bounded Context Database Design Diagram 

\begin{figure}[H]
\caption{Modelo Relacional Físico: Esquema de Base de Datos de Harvest Settlement.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/tactical-diagrams/database-diagram-settlement.png}
\caption*{\textit{Nota.} Tablas de reporte agronómico y liquidaciones anuales en PostgreSQL. Elaboración propia.}
\end{figure}

\clearpage