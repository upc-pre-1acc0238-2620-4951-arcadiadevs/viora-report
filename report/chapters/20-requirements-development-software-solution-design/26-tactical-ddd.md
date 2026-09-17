## Tactical-Level Domain-Driven Design

El diseño táctico de *Domain-Driven Design* (DDD Táctico) transforma las fronteras y capacidades estratégicas definidas previamente en modelos de software estructurados y listos para su implementación. Esta etapa permite modelar con precisión los conceptos, comportamientos y reglas de negocio de la plataforma Viora, asegurando que cada módulo mantenga responsabilidades delimitadas y una alta cohesión interna.

Para garantizar la mantenibilidad, escalabilidad y separación de responsabilidades, cada contexto delimitado (*Bounded Context*) se estructura bajo una arquitectura en capas que organiza el sistema en cuatro niveles conceptuales:

1. **Capa de Dominio (*Domain Layer*):** Constituye el núcleo de cada contexto y concentra los modelos fundamentales del negocio, sus reglas operativas y las invariantes que deben cumplirse en todo momento, garantizando que la lógica esencial del sistema permanezca independiente de detalles técnicos o herramientas externas.
2. **Capa de Aplicación (*Application Layer*):** Coordina los casos de uso y flujos de trabajo de la solución, orquestando la interacción entre los requerimientos solicitados por los usuarios y las operaciones internas del dominio. En lugar de emplear un servicio de aplicación genérico o monolítico, la arquitectura adopta una separación explícita de responsabilidades mediante servicios especializados de comando (*CommandService*) y servicios de consulta (*QueryService*). Los controladores de la capa de interfaz delegan las operaciones de mutación a sus respectivos servicios de comando y las operaciones de lectura a los servicios de consulta, los cuales se conectan directamente con los puertos de persistencia (*Repository Interfaces*) y los servicios de dominio pertinentes según los requerimientos de cada contexto delimitado.
3. **Capa de Interfaces (*Interface Layer*):** Establece los canales de comunicación y puntos de contacto a través de los cuales las aplicaciones cliente y los usuarios interactúan con el sistema, gestionando el intercambio ordenado de información y la validación de los datos de entrada y salida.
4. **Capa de Infraestructura (*Infrastructure Layer*):** Brinda el soporte operativo necesario para la persistencia de la información, la integración con servicios auxiliares y la ejecución técnica de las operaciones definidas en los niveles superiores.

En las siguientes secciones se detalla el diseño táctico de los nueve contextos delimitados que conforman Viora, presentando de forma estructurada sus modelos conceptuales, reglas de negocio, interfaces de servicio, orquestación de casos de uso, esquemas de datos y diagramas de arquitectura de software a nivel de componentes y código.

### Bounded Context: Identity and Access Management (IAM)

**Propósito:** Administra el ciclo de vida de las credenciales de acceso, la autenticación y la autorización en la plataforma Viora. Es responsable de salvaguardar las contraseñas bajo funciones criptográficas de derivación con sal (BCrypt), emitir y validar tokens de sesión JWT con claims de rol (`ROLE_PRODUCER`, `ROLE_TECHNICAL_MANAGER`), gestionar tokens efímeros para la recuperación de cuentas y publicar eventos de seguridad hacia el contexto downstream de perfiles y las aplicaciones clientes. Establece el perímetro de seguridad del sistema sin acoplarse a la lógica agronómica.

#### Domain Layer

##### Modelos del Dominio: `UserAccount` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Delimita la consistencia transaccional para credenciales, autenticación y recuperación de cuenta. |
| **Relaciones de Dominio** | Raíz autónoma. Referenciada lógicamente por ID desde `UserProfile `y` Subscription`. |

###### Atributos de `UserAccount`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `UserAccountId` | Identificador único universal inmutable (`UUID v4`). |
| `email` | `EmailAddress` | Correo electrónico normalizado en minúsculas y validado bajo RFC 5322. |
| `password` | `HashedPassword` | Hash criptográfico seguro con sal aleatoria derivado mediante BCrypt. |
| `role` | `Role` | Rol canónico asignado:`ROLE_PRODUCER `o` ROLE_TECHNICAL_MANAGER`. |
| `passwordResetToken` | `Optional<PasswordResetToken>` | Token efímero de un solo uso con marca temporal de expiración a 15 minutos. |

###### Métodos de `UserAccount`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `changePassword` | `newHash: HashedPassword` | `void` | Actualiza la credencial de forma atómica y emite `PasswordChangedEvent`. La nueva clave debe diferir de la actual. |
| `requestPasswordReset` | `generator: TokenGenerator`,`expiryMinutes: int` | `PasswordResetToken` | Genera un token efímero de 64 caracteres criptográficos y emite `PasswordResetRequestedEvent`. |
| `resetPassword` | `tokenVal: String`,`newHash: HashedPassword` | `void` | Valida vigencia del token, aplica el nuevo hash, invalida el token y emite `PasswordResetCompletedEvent`. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `UserAccountId` | `UUID v4` | Identificador único universal inmutable de la cuenta de acceso. |
| `EmailAddress` | `String` | Correo electrónico normalizado en minúsculas y validado bajo regex RFC 5322. |
| `Password` | `String` | Contraseña en texto plano temporal que verifica reglas de complejidad en su creación. |
| `HashedPassword` | `String` | Hash criptográfico seguro e inmutable devuelto por el servicio BCrypt. |
| `Role` | `Enum (String)` | Roles canónicos del sistema:`ROLE_PRODUCER`,`ROLETECHNICALMANAGER`. |
| `PasswordResetToken` | `tokenValue: String, expiresAt: Instant` | Token pseudoaleatorio de 64 caracteres criptográficos con marca temporal de expiración. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `HashingService` | Domain Service | `hash(raw: Password): HashedPassword` | Abstracción para el hashing criptográfico de contraseñas. |
| `HashingService` | Domain Service | `matches(raw: Password, hashed: HashedPassword): boolean` | Verificación de coincidencia entre texto plano y hash criptográfico. |
| `UserAccount` `Repository` | Repository | `findById(id: UserAccountId): Optional<UserAccount>` | Recupera la cuenta de usuario por su identificador único. |
| `UserAccount` `Repository` | Repository | `findByEmail(email: EmailAddress): Optional<UserAccount>` | Recupera la cuenta por su dirección de correo normalizada. |
| `UserAccount` `Repository` | Repository | `existsByEmail(email: EmailAddress): boolean` | Verifica la no duplicidad de correo para salvaguardar la unicidad. |
| `UserAccount` `Repository` | Repository | `save(account: UserAccount): UserAccount` | Persiste atómicamente el estado del agregado de cuenta. |
| `UserAccount` `Registered` `Event` | Domain Event | `userId: UUID, email: String, role: String, occurredOn: Instant` | Notifica el alta de credenciales para inicializar el onboarding civil (`EV01`). |
| `User` `Authenticated` `Event` | Domain Event | `userId: UUID, email: String, occurredOn: Instant` | Notifica el inicio de sesión exitoso para auditoría de accesos (`EV02`). |
| `Password` `ChangedEvent` | Domain Event | `userId: UUID, occurredOn: Instant` | Señala la actualización voluntaria de contraseña (`EV05`). |
| `PasswordReset` `RequestedEvent` | Domain Event | `userId: UUID, email: String, tokenValue: String, expiresAt: Instant` | Dispara la entrega del correo con el enlace de recuperación vía Brevo (`EV06`). |
| `PasswordReset` `CompletedEvent` | Domain Event | `userId: UUID, email: String, occurredOn: Instant` | Confirma el restablecimiento exitoso de la credencial (`EV07`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/auth/sign-up} | `SignUpRequest` | `User` `Account` `Resource` (201 Created) | Registro inicial de credenciales de usuario (`US01`/`TS01`). |
| `POST` | \nolinkurl{/api/v1/auth/sign-in} | `SignInRequest` | `Authenticated` `User` `Resource` (200 OK) | Autenticación y expedición de tokens JWT (`US01`/`TS02`). |
| `POST` | \nolinkurl{/api/v1/auth/refresh-tokens} | `Refresh` `Token` `Request` | `Token` `Refresh` `Resource` (200 OK) | Renovación de sesión mediante token de refresco (`US01`/`TS03`). |
| `PATCH` | \nolinkurl{/api/v1/auth/passwords} | `Change` `Password` `Request` | `204 No Content` | Actualización de contraseña para sesión autenticada (`US01`/`TS36`). |
| `POST` | \nolinkurl{/api/v1/auth/password-reset-tokens} | `Request` `Password` `Reset` `Request` | `202 Accepted` | Solicitud de código de recuperación por correo (`US01`/`TS37`). |
| `PUT` | \nolinkurl{/api/v1/auth/password-reset-tokens/{token}} | `Reset` `Password` `Request` | `204 No Content` | Restablecimiento de contraseña con token efímero (`US01`/`TS38`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `SignUpRequest` | Request DTO | `{ email: String, password: String, role: String }` | Payload para registro con validaciones Bean Validation (`@Email`, `@NotBlank`). |
| `SignInRequest` | Request DTO | `{ email: String, password: String }` | Credenciales para inicio de sesión seguro. |
| `User` `AccountResource` | Response DTO | `{ id: UUID, email: String, role: String, createdAt: Instant }` | Datos públicos de la cuenta registrada. |
| `Authenticated` `UserResource` | Response DTO | `{ accessToken: String, refreshToken: String, tokenType: String, expiresIn: Long }` | Paquete de autenticación con Bearer token JWT. |
| `UserAccount` `ResourceAssembler` | Assembler | `toResource(UserAccount): `UserAccountResource` | Convierte la entidad de dominio a su representación de salida. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `RegisterUserAccountCommandHandler` | Command Handler | `RegisterUserAccountCommand` | Inicia transacción (`@Transactional`), verifica no duplicidad del correo, delega hashing, guarda cuenta y publica `UserAccountRegisteredEvent`. |
| `AuthenticateUserCommandHandler` | Command Handler | `AuthenticateUserCommand` | Consulta repositorio, valida coincidencia de hash (`BCrypt`), genera par de tokens JWT y despacha `UserAuthenticatedEvent`. |
| `RefreshUserSessionCommandHandler` | Command Handler | `RefreshUserSessionCommand` | Valida vigencia y firma del refresh token en base de datos, rota el token y emite un nuevo JWT. |
| `ChangeUserPasswordCommandHandler` | Command Handler | `ChangeUserPasswordCommand` | Carga cuenta por ID, valida clave anterior, verifica que la nueva clave difiera, persiste hash y emite `PasswordChangedEvent`. |
| `RequestPasswordResetCommandHandler` | Command Handler | `RequestPasswordResetCommand` | Genera token de 15 min, lo vincula a la cuenta y dispara `PasswordResetRequestedEvent `para envío de correo vía Brevo. |
| `ResetUserPasswordCommandHandler` | Command Handler | `ResetUserPasswordCommand` | Busca cuenta por token, verifica no expiración, aplica nuevo hash, consume el token y emite `PasswordResetCompletedEvent`. |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `UserAccountJpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `user_accounts `sobre PostgreSQL. |
| `JpaUserAccountRepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `UserAccountRepository`. |
| `JwtTokenProvider` | Security | JJWT / Nimbus | Emisión, firma criptográfica HMAC-SHA256 y parseo de tokens JWT. |
| `BCryptPasswordService` | Security Adapter | Spring Security Crypto | Implementa `HashingService `con costo de cómputo configurable. |
| `BrevoEmailDeliveryAdapter` | External Adapter | Brevo REST API | Despacho de plantillas transaccionales para recuperación de contraseña. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `user_accounts` | `id` | `UUID` | `PRIMARY KEY` | Identificador único inmutable de la cuenta. |
| `user_accounts` | `email` | `VARCHAR(255)` | `NOT NULL, UNIQUE` | Correo electrónico normalizado para inicio de sesión. |
| `user_accounts` | `password_hash` | `VARCHAR(255)` | `NOT NULL` | Hash seguro derivado con sal (BCrypt). |
| `user_accounts` | `role` | `VARCHAR(50)` | `NOT NULL, CHECK` | Rol del usuario (`ROLE_PRODUCER`,`ROLETECHNICALMANAGER`). |
| `user_accounts` | `reset_token` | `VARCHAR(100)` | `NULL` | Token criptográfico temporal de restablecimiento. |
| `user_accounts` | `resettokenexpiresat` | `TIMESTAMPTZ` | `NULL` | Fecha y hora límite para uso del token de recuperación. |
| `user_accounts` | `created_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de auditoría de creación. |
| `user_accounts` | `updated_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de última modificación. |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `AuthController` | Exposición de endpoints REST para registro, login, refresh y reseteo. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `UserAccountCommandService` • `UserAccountQueryService` | Orquestación de comandos de registro/autenticación/reseteo y consultas de sesión/credenciales. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `UserAccountRepository` • `BCryptPasswordHasher` | Contrato de persistencia de cuentas (puerto de dominio) y servicio de derivación de claves con sal. | Java / Spring Security Crypto |
| **Infrastructure Layer** | • `JpaUserAccountRepositoryAdapter` • `JwtTokenProvider` • `BrevoEmailDeliveryAdapter` | Implementación JPA sobre PostgreSQL, emisión de JWT y entrega de correos vía Brevo. | Spring Data JPA, Nimbus, Brevo API |

##### Flujo de Comunicación y Conectividad
1. El cliente móvil envía `POST` \nolinkurl{/api/v1/auth/sign-in} con credenciales hacia `AuthController`.
2. `AuthController` valida el cuerpo de la petición y despacha el comando a `UserAccountCommandService` (mientras que las consultas de sesión o verificación de credenciales son atendidas por `UserAccountQueryService`).
3. `UserAccountCommandService` recupera la cuenta mediante el puerto `UserAccountRepository`.
4. Se valida la contraseña delegando en el servicio de dominio `BCryptPasswordHasher`.
5. Se invoca a `JwtTokenProvider` para generar los tokens JWT con claims de rol y `userId`.
6. Se dispara `UserAuthenticatedEvent` a través del publicador de eventos para auditoría.
7. Se retorna `AuthenticatedUserResource` (`200 OK`) al cliente.

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

\newpage

### Bounded Context: User Profiles

**Propósito:** Gestiona la información civil, personal y de contacto de los usuarios de la plataforma Viora. Se activa tras la creación de credenciales en IAM y vincula a cada actor con su rol agronómico específico (Productor Olivarero o Gestor Técnico Cooperativo). Es responsable de normalizar los números telefónicos bajo el estándar E.164, custodiar los nombres completos para la emisión de certificaciones oficiales, sincronizar las actualizaciones de datos de contacto hacia el padrón técnico de la cooperativa (`POL03`) estableciendo una base civil verificada para las operaciones agronómicas.

#### Domain Layer

##### Modelos del Dominio: `UserProfile` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Custodia la identidad civil, datos personales y de contacto verificados de los actores del sistema. |
| **Relaciones de Dominio** | Vinculado 1:1 mediante referencia lógica externa (`userId`) con `UserAccount`. Referenciado por ID en predios y contratos. |

###### Atributos de `UserProfile`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ProfileId` | Identificador único universal inmutable (`UUID v4`). |
| `userId` | `UserId` | Referencia lógica externa hacia `UserAccount `en el Bounded Context de IAM. |
| `fullName` | `FullName` | Nombres y apellidos completos normalizados para expedientes oficiales. |
| `country` | `Country` | Código de país ISO 3166-1 alpha-2 para localización. |
| `phoneNumber` | `PhoneNumber` | Número telefónico normalizado bajo estándar internacional E.164. |

###### Métodos de `UserProfile`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `create` | `userId: UserId`,`name: FullName`,`country: Country`,`phone: PhoneNumber` | `UserProfile` | Método fábrica que valida integridad de datos civiles y emite `ProfileCreatedEvent`. |
| `updateContactInfo` | `name: FullName`,`country: Country`,`phone: PhoneNumber` | `void` | Actualiza datos de contacto y emite `ContactProfileUpdatedEvent `hacia la cooperativa (`POL03`). |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `ProfileId` | `UUID v4` | Identificador único universal del perfil. |
| `UserId` | `UUID v4` | Identificador del usuario en IAM (referencia lógica sin FK física). |
| `FullName` | `firstName: String, lastName: String` | Nombre y apellidos normalizados, sin espacios redundantes. |
| `Country` | `String (ISO 3166-1 alpha-2)` | Código de país estándar de residencia (ej.`PE`,`CL`). |
| `PhoneNumber` | `String (E.164)` | Teléfono normalizado con signo`+`y prefijo internacional. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `PhoneNumber` `Validator` | Domain Service | `validate(phone: PhoneNumber): boolean` | Validación estricta de estructura y longitud telefónica E.164. |
| `Profile` `Repository` | Repository | `findById(id: ProfileId): Optional<UserProfile>` | Búsqueda de perfil por su identificador único universal. |
| `Profile` `Repository` | Repository | `findByUserId(userId: UserId): Optional<UserProfile>` | Recupera el perfil civil asociado a una cuenta de IAM. |
| `Profile` `Repository` | Repository | `existsByUserId(userId: UserId): boolean` | Verifica si una cuenta ya posee un perfil inicializado. |
| `Profile` `Repository` | Repository | `save(profile: UserProfile): UserProfile` | Persiste atómicamente el perfil y sus datos de contacto. |
| `Profile` `CreatedEvent` | Domain Event | `profileId: UUID, userId: UUID, fullName: String, occurredOn: Instant` | Notifica la creación del perfil civil para habilitar contratación (`EV08`). |
| `ContactProfile` `UpdatedEvent` | Domain Event | `profileId: UUID, userId: UUID, phone: String, email: String, occurredOn: Instant` | Propaga actualización de datos de contacto hacia la cooperativa (`EV09`/`POL03`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/profiles} | `Create` `Profile` `Request` | `User` `Profile` `Resource` (201 Created) | Alta inicial de perfil civil para el usuario autenticado (`US43`/`TS35`/`CMD07`). |
| `GET` | \nolinkurl{/api/v1/profiles/{userId}} | N/A | `User` `Profile` `Resource` (200 OK) | Consulta de perfil por identificador de usuario con control de titularidad (*Owner Check*) (`US03`/`TS04`). |
| `PUT` | \nolinkurl{/api/v1/profiles/{userId}} | `Update` `Profile` `Request` | `User` `Profile` `Resource` (200 OK) | Actualización completa de datos personales y teléfono con validación E.164 (`US03`/`TS05`/`CMD08`). |
| `PATCH` | \nolinkurl{/api/v1/profiles/{userId}} | `Update` `Contact` `Profile` `Request` | `User` `Profile` `Resource` (200 OK) | Actualización parcial de datos de contacto y teléfono con validación E.164 (`US03`/`TS05`/`CMD08`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Create` `ProfileRequest` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Datos de entrada para formalización del perfil. |
| `Update` `ProfileRequest` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Modificación completa de datos personales y contacto. |
| `UpdateContact` `ProfileRequest` | Request DTO | `{ fullName: String, country: String, phoneNumber: String }` | Modificación parcial de datos de contacto. |
| `User` `ProfileResource` | Response DTO | `{ id: UUID, userId: UUID, fullName: String, country: String, phoneNumber: String }` | Perfil de usuario consolidado. |
| `UserProfile` `ResourceAssembler` | Assembler | `toResource(UserProfile): `UserProfileResource` | Transforma el agregado en el DTO de presentación. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreateUserProfileCommandHandler` | Command Handler | `CreateUserProfileCommand` | Valida que el `userId `no posea perfil, formatea teléfono, persiste y despacha `ProfileCreatedEvent`. |
| `UpdateContactProfileCommandHandler` | Command Handler | `UpdateContactProfileCommand` | Carga perfil por `userId`, aplica validaciones de contacto, persiste cambios y publica `ContactProfileUpdatedEvent`. |
| `GetUserProfileByUserIdQueryHandler` | Query Handler | `GetUserProfileByUserIdQuery` | Recupera el perfil optimizado en solo lectura y mapea a `UserProfileResource`. |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `UserProfileJpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `profiles `sobre PostgreSQL. |
| `JpaUserProfileRepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `UserProfileRepository`. |
| `LibphonenumberAdapter` | Service Adapter | Google libphonenumber | Parsing, validación y normalización a estándar E.164. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `profiles` | `id` | `UUID` | `PRIMARY KEY` | Identificador único del perfil. |
| `profiles` | `user_id` | `UUID` | `NOT NULL, UNIQUE` | Referencia externa a la cuenta en `iam.user_accounts`. |
| `profiles` | `full_name` | `VARCHAR(150)` | `NOT NULL, CHECK` | Nombre y apellidos completos del usuario. |
| `profiles` | `country` | `VARCHAR(2)` | `NOT NULL` | Código de país ISO 3166-1 alpha-2. |
| `profiles` | `phone_number` | `VARCHAR(25)` | `NOT NULL` | Teléfono normalizado bajo formato E.164. |
| `profiles` | `created_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de registro civil. |
| `profiles` | `updated_at` | `TIMESTAMPTZ` | `NOT NULL DEFAULT NOW()` | Marca temporal de última modificación. |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `ProfileController` | Endpoints REST para registro, consulta y actualización de perfil civil y contacto. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `ProfileCommandService` • `ProfileQueryService` • `CMD07` • `CMD08` | Orquestación de comandos de alta y actualización de contacto (`CMD07`,`CMD08`) y consultas de perfil civil. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `ProfileRepository` • `PhoneNumberValidator` | Contrato de persistencia de perfil (puerto de dominio) y servicio de validación de formato internacional E.164. | Java puro / libphonenumber |
| **Infrastructure Layer** | • `JpaProfileRepositoryAdapter` • `DomainEventPublisher` | Persistencia JPA sobre PostgreSQL (`profiles.profiles`) y despacho de eventos de dominio. | Spring Data JPA, Spring Events |

##### Flujo de Comunicación y Conectividad
1. El usuario autenticado despacha `PUT` \nolinkurl{/api/v1/profiles/{userId}} con datos de contacto hacia `ProfileController`.
2. `ProfileController` extrae el `userId` del claim JWT, valida la correspondencia de titularidad (*Owner Check*) con el recurso de la ruta y delega el comando en `ProfileCommandService` (mientras que las consultas de perfil civil son atendidas por `ProfileQueryService`).
3. `ProfileCommandService` carga el registro mediante el puerto de dominio `ProfileRepository`.
4. Invoca el servicio de dominio `PhoneNumberValidator` para normalizar el número telefónico al estándar E.164.
5. Se persisten las modificaciones atómicamente en PostgreSQL a través de `ProfileRepository` (implementado por `JpaProfileRepositoryAdapter`).
6. Se despacha `ContactProfileUpdatedEvent` vía `DomainEventPublisher`, el cual es consumido asíncronamente por *Cooperative Operations* para actualizar el padrón de socios (`POL03`).

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

\newpage

### Bounded Context: Subscription and Cooperative Membership

**Propósito:** Gobierna los contratos comerciales, planes SaaS y cupos institucionales del ecosistema Viora. Administra dos modalidades de activación: suscripciones individuales de productores mediante pasarela de pago digital (Mercado Pago con webhooks seguros) y suscripciones patrocinadas por organizaciones agrarias mediante canje de códigos de activación corporativos. Controla los agregados `Subscription` (contrato individual y transiciones de pago), `CooperativeLicense` (acuerdo corporativo que custodia los acumuladores de plazas y superficie autorizada) y `InvitationCodeBatch` (emisión, expiración y ajuste de vigencia de códigos).

#### Domain Layer

##### Modelos del Dominio: `Subscription` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Delimita la consistencia de los derechos comerciales contratados, cálculo de vigencias y balance de superficie. |
| **Relaciones de Dominio** | Referencia por ID a `ProducerId`,`CooperativeId `y opcionalmente a `InvitationCodeId`. |

###### Atributos de `Subscription`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SubscriptionId` | Identificador único universal inmutable (`UUID v4`). |
| `producerId` | `UserId` | Identificador del productor olivarero titular. |
| `plan` | `SubscriptionPlan` | Modalidad comercial: individual o patrocinada cooperativa. |
| `quota` | `HectaresQuota` | Límite máximo contratado de superficie predial en hectáreas. |
| `status` | `SubscriptionStatus` | Estado del contrato:`PENDING_PAYMENT`,`ACTIVE`,`EXPIRED`,`CANCELLED`. |
| `period` | `Optional<SubscriptionPeriod>` | Período de vigencia con marcas temporales de inicio y fin. |

###### Métodos de `Subscription`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `requestPayment` | `terms: PaymentTerms` | `PaymentIntent` | Inicia intento de pago congelando cotización y cuota de hectáreas. |
| `activateFromPayment` | `receipt: PaymentReceipt`,`period: SubscriptionPeriod` | `void` | Transiciona a `ACTIVE `tras verificación IPN y emite `SubscriptionActivatedEvent`. |
| `activateFromCode` | `code: RedeemedCode`,`period: SubscriptionPeriod` | `void` | Activa contrato patrocinado por cooperativa y emite `CooperativeCodeRedeemedEvent`. |
| `expire` | `currentTime: Instant` | `void` | Invalida derechos de uso al vencer el plazo del ciclo contratado. |
| `hasActiveEntitlement` | `currentTime: Instant` | `boolean` | Verifica si el productor dispone de cobertura vigente para sus parcelas. |

##### Modelos del Dominio: `CooperativeLicense` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Administra el saldo corporativo global de plazas de agricultores y superficie de hectáreas para una cooperativa. |
| **Relaciones de Dominio** | Referencia externa a `CooperativeId`. Gobierna lotes de códigos vinculados por `licenseId`. |

###### Atributos de `CooperativeLicense`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `LicenseId` | Identificador único universal de la licencia corporativa. |
| `cooperativeId` | `CooperativeId` | Identificador de la cooperativa patrocinadora. |
| `tier` | `LicenseTier` | Nivel institucional contratado con sus límites asignados. |
| `totalSeats` | `Int` | Cantidad total de plazas de socios contratadas. |
| `issuedSeats` | `Int` | Plazas actualmente comprometidas en lotes emitidos. |
| `totalAreaHa` | `Double` | Superficie máxima consolidada autorizada en hectáreas. |
| `issuedAreaHa` | `Double` | Hectáreas actualmente comprometidas en lotes emitidos. |

###### Métodos de `CooperativeLicense`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `reserveQuota` | `seats: Int`,`area: Double` | `void` | Compromete plazas y superficie verificando disponibilidad; rechaza sobreemisión. |
| `releaseQuota` | `seats: Int`,`area: Double` | `void` | Restaura plazas y hectáreas liberadas por caducidad de códigos (`POL17`). |
| `hasAvailableCapacity` | `seats: Int`,`area: Double` | `boolean` | Consulta si la cooperativa cuenta con cupo libre para un nuevo lote. |

##### Modelos del Dominio: `InvitationCodeBatch` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Gestiona la generación criptográfica, vigencia y canje de un lote de códigos de invitación. |
| **Relaciones de Dominio** | Referencia a `LicenseId `y contiene una colección de entidades subordinadas `InvitationCode`. |

###### Atributos de `InvitationCodeBatch`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `BatchId` | Identificador único universal del lote de códigos. |
| `licenseId` | `LicenseId` | Identificador de la licencia corporativa de origen. |
| `codes` | `List<InvitationCode>` | Colección de códigos individuales de invitación emitidos. |
| `status` | `BatchStatus` | Estado operativo del lote:`ACTIVE`,`EXHAUSTED`,`EXPIRED`. |

###### Métodos de `InvitationCodeBatch`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `generateCodes` | `count: Int`,`quotaHa: Double`,`days: Int` | `void` | Genera códigos criptográficos no secuenciales y emite `InvitationCodesBatchGeneratedEvent`. |
| `redeemCode` | `codeId: CodeId`,`producerId: UserId` | `InvitationCode` | Consume atómicamente un código disponible y retorna evidencia de canje. |
| `shortenCodeExpiry` | `codeId: CodeId`,`newExpiry: Instant` | `void` | Anticipa la fecha límite de canje para un código no consumido (`CMD33`). |

##### Modelos del Dominio: `InvitationCode` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Representa un vale digital unívoco e intransferible que otorga derecho de suscripción a un socio. |
| **Relaciones de Dominio** | Subordinado estrictamente a `InvitationCodeBatch` (1 a N). |

###### Atributos de `InvitationCode`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `CodeId` | Identificador único del código de invitación. |
| `codeHash` | `String` | Huella criptográfica segura del código para validación. |
| `quotaHa` | `Double` | Hectáreas autorizadas para el socio que lo canjee. |
| `status` | `CodeStatus` | Estado:`AVAILABLE`,`REDEEMED`,`EXPIRED`. |
| `expiresAt` | `Instant` | Fecha y hora límite improrrogable para su consumo. |

###### Métodos de `InvitationCode`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `redeem` | `producerId: UserId` | `void` | Asocia el código al productor beneficiario y transiciona a estado `REDEEMED`. |
| `adjustExpiry` | `newExpiry: Instant` | `void` | Actualiza la marca temporal de caducidad si el código permanece `AVAILABLE`. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `SubscriptionId`,`LicenseId`,`BatchId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `HectaresQuota` | `Double` | Superficie máxima permitida bajo suscripción ($\ge 0.5\text{ ha}$). |
| `SubscriptionPeriod` | `startsAt: Instant, endsAt: Instant` | Ventana temporal de vigencia activa del servicio. |
| `SubscriptionStatus` | `Enum` | Estados del contrato:`PENDING_PAYMENT`,`ACTIVE`,`EXPIRED`,`CANCELLED`. |
| `CodeStatus` | `Enum` | Estados de la invitación:`AVAILABLE`,`REDEEMED`,`EXPIRED`,`REVOKED`. |
| `Money` | `amount: BigDecimal, currency: String` | Monto dinerario exacto con divisa ISO 4217 (`PEN`). |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `Hectare` `QuotaPolicy` | Domain Service | `requireWithinQuota(quota: HectaresQuota, currentHa: Decimal, replaceHa: Decimal, propHa: Decimal): void` | Valida que la superficie predial no exceda el límite contratado. |
| `Subscription` `Activation` `Policy` | Domain Service | `annualPeriod(approvedAt: Instant): SubscriptionPeriod` | Computa período anual estándar de 365 días desde aprobación. |
| `Subscription` `Activation` `Policy` | Domain Service | `sponsoredPeriod(at: Instant, licPeriod: SubscriptionPeriod): SubscriptionPeriod` | Alinea la vigencia del socio con la ventana temporal de la licencia. |
| `Subscription` `Repository` | Repository | `findById(id: SubscriptionId): Optional<Subscription>` | Recupera suscripción por identificador unívoco. |
| `Subscription` `Repository` | Repository | `findCurrentByProducer(producerId: ProducerId): Optional<Subscription>` | Obtiene la suscripción vigente del productor olivarero. |
| `Subscription` `Repository` | Repository | `save(subscription: Subscription): Subscription` | Persiste atómicamente el estado del contrato. |
| `Cooperative` `License` `Repository` | Repository | `findById(id: CooperativeLicenseId): Optional<CooperativeLicense>` | Carga la licencia institucional de la cooperativa. |
| `Cooperative` `License` `Repository` | Repository | `findCurrentByCooperative(coopId: CooperativeId): Optional<CooperativeLicense>` | Obtiene la licencia corporativa activa de la cooperativa. |
| `Cooperative` `License` `Repository` | Repository | `save(license: CooperativeLicense): CooperativeLicense` | Actualiza plazas y superficie disponible de la licencia. |
| `InvitationCode` `Batch` `Repository` | Repository | `findById(id: InvitationCodeBatchId): Optional<InvitationCodeBatch>` | Carga el lote de códigos para emisión o auditoría. |
| `InvitationCode` `Batch` `Repository` | Repository | `findByFingerprint(fingerprint: CodeFingerprint): Optional<InvitationCodeBatch>` | Localiza el lote contenedor de un código específico presentado. |
| `InvitationCode` `Batch` `Repository` | Repository | `save(batch: InvitationCodeBatch): InvitationCodeBatch` | Persiste lote y estado de códigos individuales. |
| `Subscription` `Payment` `ApprovedEvent` | Domain Event | `subscriptionId: UUID, producerId: UUID, receiptId: UUID, occurredOn: Instant` | Confirma cobro exitoso por pasarela de pagos (`EV10`). |
| `Subscription` `ActivatedEvent` | Domain Event | `subscriptionId: UUID, producerId: UUID, quotaHa: Decimal, occurredOn: Instant` | Notifica vigencia activa para habilitar registro predial (`EV11`). |
| `Subscription` `PaymentFailed` `Event` | Domain Event | `subscriptionId: UUID, intentId: UUID, reasonCode: String, occurredOn: Instant` | Informa rechazo de transacción comercial (`EV12`). |
| `Cooperative` `CodeRedeemed` `Event` | Domain Event | `subscriptionId: UUID, producerId: UUID, cooperativeId: UUID, codeId: UUID` | Notifica canje de código patrocinado para afiliación (`EV13`). |
| `Invitation` `CodesBatch` `GeneratedEvent` | Domain Event | `batchId: UUID, licenseId: UUID, quantity: int, reservedArea: Decimal` | Registra reserva de cupos corporativos (`EV14`). |
| `InvitationCode` `ExpiredEvent` | Domain Event | `batchId: UUID, licenseId: UUID, codeId: UUID, releasedQuota: Decimal` | Notifica liberación de cupo por código vencido (`EV52`/`POL17`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/subscriptions} | `Create` `Subscription` `Request` | `Subscription` `Resource` (201 Created) | Creación de intención contractual de suscripción individual (`US06`/`TS06`). |
| `POST` | \nolinkurl{/api/v1/subscriptions/{id}/checkouts} | `Create` `Checkout` `Request` | `Checkout` `Resource` (201 Created) | Generación de preferencia de pago y URL de checkout en Mercado Pago (`US06`/`TS06`). |
| `GET` | \nolinkurl{/api/v1/subscriptions} | N/A | `Subscription` `Resource` (200 OK) | Consulta de suscripción activa del titular autenticado (`US06`). |
| `GET` | \nolinkurl{/api/v1/subscriptions/{id}} | N/A | `Subscription` `Resource` (200 OK) | Consulta detallada del contrato de suscripción (`US06`). |
| `GET` | \nolinkurl{/api/v1/subscription-plans} | N/A | `List` `Plan` `Offer` `Resource`(200 OK) | Catálogo comercial de planes y tarifas vigentes (`US06`). |
| `POST` | \nolinkurl{/api/v1/payment-notifications/mercado-pago} | `Payment` `Notification` `Request` | `200 OK` | Recepción asíncrona y reconciliación de pago de Mercado Pago (`US06`/`TS07`/`CMD09`). |
| `POST` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-code-batches} | `Generate` `Invitation` `Codes` `Batch` `Request` | `Invitation` `Batch` `Resource` (201 Created) | Emisión de lote de códigos por gestor contra cupo institucional (`US08`/`TS08`/`CMD11`). |
| `GET` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-code-batches} | N/A (`?page=0&size=20`) | `Page` `Invitation` `Batch` `Summary`(200 OK) | Consulta paginada y auditoría de códigos generados (`US08`/`TS09`). |
| `POST` | \nolinkurl{/api/v1/cooperative-code-redemptions} | `Redeem` `Cooperative` `Code` `Request` | `Subscription` `Resource` (201 Created) | Canje de código corporativo por productor autenticado (`US07`/`TS10`/`CMD10`). |
| `POST` | \nolinkurl{/api/v1/cooperatives/{id}/invitation-codes/{codeId}/expiry-adjustments} | `Shorten` `Invitation` `Code` `Expiry` `Request` | `200 OK` | Adelanto de vigencia para expiración anticipada (`US08`/`TS41`/`CMD33`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Create` `SubscriptionRequest` | Request DTO | `{ planCode: String, requestedQuotaHa: Double }` | Selección comercial contrastada con el catálogo del servidor. |
| `Create` `CheckoutRequest` | Request DTO | `{ returnUrl?: String }` | Solicitud de preferencia de cobro en pasarela externa. |
| `GenerateInvitation` `CodesBatchRequest` | Request DTO | `{ quantity: Int, hectaresCapPerCode: Double, expiresAt: Instant }` | Parámetros para emisión de lote de códigos. |
| `ShortenInvitation` `CodeExpiryRequest` | Request DTO | `{ newExpiresAt: Instant }` | Acortamiento de vigencia de código disponible. |
| `RedeemCooperative` `CodeRequest` | Request DTO | `{ code: String }` | Código de activación ingresado por el productor. |
| `Payment` `NotificationRequest` | Request DTO | `{ externalNotificationId: String, externalPaymentId: String }` | Payload webhook de notificación de Mercado Pago. |
| `Subscription` `Resource` | Response DTO | `{ id: UUID, mode: String, status: String, quotaHa: Double, startsAt: Instant, endsAt: Instant, entitlementActive: Boolean }` | Representación pública de suscripción vigente. |
| `CheckoutResource` | Response DTO | `{ intentId: UUID, checkoutUrl: String, expiresAt: Instant }` | URL segura de checkout emitida por la pasarela. |
| `Invitation` `BatchResource` | Response DTO | `{ id: UUID, quantity: Int, availableSeats: Int, availableAreaHa: Double, codes: List<String> }` | Lote de códigos entregado al gestor cooperativo. |
| `Subscription` `ResourceAssembler` | Assembler | `toResource(Subscription): `SubscriptionResource` | Mapeador del agregado a DTO público de presentación. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreateSubscriptionCommandHandler` | Command Handler | `CreateSubscriptionCommand` | Comprueba perfil, serializa productor, verifica contrato vigente, crea suscripción pendiente. |
| `CreateCheckoutCommandHandler` | Command Handler | `CreateCheckoutCommand` | Persiste PaymentIntent, invoca Mercado Pago y retorna CheckoutResource con URL segura. |
| `ProcessPaymentConfirmationCommandHandler` | Command Handler | `ProcessPaymentConfirmationCommand` | Valida firma webhook, reconcilia pago (`CMD09`), activa suscripción (`POL01`) y emite `EV11`. |
| `GenerateInvitationCodesBatchCommandHandler` | Command Handler | `GenerateInvitationCodesBatchCommand` | Valida gestor y cupo en licencia (`CMD11`), descuenta plazas/área, genera lote y emite `EV14`. |
| `RedeemCooperativeCodeCommandHandler` | Command Handler | `RedeemCooperativeCodeCommand` | Localiza código (`CMD10`), valida vigencia, marca `REDEEMED`, activa patrocinio y emite `EV13` (`POL02`). |
| `ShortenInvitationCodeExpiryCommandHandler` | Command Handler | `ShortenInvitationCodeExpiryCommand` | Adelanta expiración de código disponible (`CMD33`), transiciona a `EXPIRED `y emite `EV52` (`TS41`). |
| `OnInvitationCodeExpiredEventHandler` | Event Handler | `InvitationCodeExpiredEvent` | Escucha `EV52 `y restituye plazas y hectáreas a la licencia cooperativa (`POL17`). |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `SubscriptionJpaRepository` | Persistence | Spring Data JPA | Operaciones sobre esquemas `subscription `en PostgreSQL. |
| `MercadoPagoGatewayAdapter` | External Adapter | Mercado Pago SDK | Creación de preferencias de pago y consulta de órdenes de cobro. |
| `SpringEventBusAdapter` | Integration | Spring ApplicationEvent | Publicación y enrutamiento interno de eventos transaccionales. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `subscriptions` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la suscripción. |
| `subscriptions` | `producer_id` | `UUID` | `NOT NULL, UNIQUE` | Productor titular de los derechos. |
| `subscriptions` | `plan_type` | `VARCHAR(50)` | `NOT NULL` | Modalidad (`INDIVIDUAL_PAID`,`COOPERATIVESPONSORED`). |
| `subscriptions` | `quota_ha` | `NUMERIC(8,2)` | `NOT NULL, CHECK` | Hectáreas autorizadas para parcelas. |
| `subscriptions` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`ACTIVE`,`PENDING_PAYMENT`,`EXPIRED`). |
| `subscriptions` | `starts_at` | `TIMESTAMPTZ` | `NULL` | Inicio de vigencia activa. |
| `subscriptions` | `ends_at` | `TIMESTAMPTZ` | `NULL` | Término de vigencia activa. |
| `cooperativelicenses` | `id` | `UUID` | `PRIMARY KEY` | Licencia corporativa institucional. |
| `cooperativelicenses` | `cooperative_id` | `UUID` | `NOT NULL, UNIQUE` | Cooperativa propietaria del convenio. |
| `cooperativelicenses` | `total_seats` | `INT` | `NOT NULL, CHECK` | Plazas máximas autorizadas. |
| `cooperativelicenses` | `issued_seats` | `INT` | `NOT NULL, CHECK` | Plazas comprometidas en códigos vigentes. |
| `cooperativelicenses` | `total_area_ha` | `NUMERIC(10,2)` | `NOT NULL` | Superficie máxima del convenio. |
| `cooperativelicenses` | `issued_area_ha` | `NUMERIC(10,2)` | `NOT NULL` | Superficie comprometida en códigos vigentes. |
| `invitation_codes` | `id` | `UUID` | `PRIMARY KEY` | Identificador único del código. |
| `invitation_codes` | `batch_id` | `UUID` | `NOT NULL, FK` | Lote de procedencia. |
| `invitation_codes` | `code_hash` | `VARCHAR(64)` | `NOT NULL, UNIQUE` | Hash SHA-256 del código alfanumérico. |
| `invitation_codes` | `quota_ha` | `NUMERIC(8,2)` | `NOT NULL` | Cobertura en hectáreas que confiere el código. |
| `invitation_codes` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`AVAILABLE`,`REDEEMED`,`EXPIRED`). |
| `invitation_codes` | `expires_at` | `TIMESTAMPTZ` | `NOT NULL` | Marca temporal límite para canje. |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `SubscriptionController` • `PaymentWebhookController` • `CooperativeInvitationController` • `CodeRedemptionController` | Endpoints REST para suscripciones, checkout, webhooks IPN, canje y lotes de códigos. | Spring MVC, Webhook Filter |
| **Application Layer** | • `SubscriptionCommandService` • `SubscriptionQueryService` • `PaymentReconciliationCommandService` • `CooperativeInvitationCommandService` • `CooperativeInvitationQueryService` | Orquestación de comandos comerciales/pagos, consultas de planes/cuotas, conciliación IPN y canjes. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `SubscriptionRepository` • `CooperativeInvitationBatchRepository` • `CooperativeLicenseRepository` • `InvitationCodeGenerator` • `HectareQuotaPolicy` • `SubscriptionActivationPolicy` | Puertos de repositorio y servicios de dominio para cuotas de hectáreas, códigos y períodos de vigencia. | Java Security / SecureRandom |
| **Infrastructure Layer** | • `JpaSubscriptionRepositoryAdapter` • `JpaInvitationBatchRepositoryAdapter` • `JpaCooperativeLicenseRepositoryAdapter` • `MercadoPagoPaymentAdapter` • `DomainEventPublisher` | Adaptadores de persistencia JPA sobre PostgreSQL, cliente HTTP de Mercado Pago y publicador de eventos. | Spring Data JPA, HTTP Client |

##### Flujo de Comunicación y Conectividad
1. El productor formaliza la intención de alta enviando `POST` \nolinkurl{/api/v1/subscriptions} hacia `SubscriptionController`, el cual delega en `SubscriptionCommandService`; este valida el cupo mediante `HectareQuotaPolicy` y persiste la suscripción en estado `PENDING` vía `SubscriptionRepository`.
2. Seguidamente, despacha `POST` \nolinkurl{/api/v1/subscriptions/{id}/checkouts}; `SubscriptionCommandService` registra el `PaymentIntent`, se comunica con `MercadoPagoPaymentAdapter` y retorna el `checkoutUrl` seguro de Mercado Pago (`CheckoutResource`). Las consultas de suscripción y cuotas activas se resuelven a través de `SubscriptionQueryService`.
3. El usuario completa la transacción en el gateway; Mercado Pago notifica asíncronamente a `POST` \nolinkurl{/api/v1/payment-notifications/mercado-pago}.
4. `PaymentWebhookController` autentica la firma criptográfica HMAC y delega el procesamiento en `PaymentReconciliationCommandService` (`CMD09`).
5. `PaymentReconciliationCommandService` actualiza el estado a `ACTIVE` mediante `SubscriptionRepository` y publica `SubscriptionActivatedEvent` (`EV11` bajo `POL01`) vía `DomainEventPublisher`.
6. En el modelo corporativo, el socio canjea su cupo con `POST` \nolinkurl{/api/v1/cooperative-code-redemptions}; `CodeRedemptionController` delega en `CooperativeInvitationCommandService`, el cual valida el código contra `CooperativeInvitationBatchRepository` (`CMD10`), marca el código como `REDEEMED` y emite `CooperativeCodeRedeemedEvent` (`EV13`) hacia *Cooperative Operations* (`POL02`).
7. El gestor cooperativo puede consultar el estado de lotes y cupos mediante `CooperativeInvitationQueryService`, o bien acortar la vigencia de un código disponible despachando `POST` \nolinkurl{/api/v1/cooperatives/{id}/invitation-codes/{codeId}/expiry-adjustments} (`TS41` / `CMD33`) hacia `CooperativeInvitationCommandService`, lo cual dispara `InvitationCodeExpiredEvent` (`EV52`) y restituye cupos a la licencia en `CooperativeLicenseRepository` mediante `POL17`.

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

\newpage

---

### Bounded Context: Olive Orchard and Plot Management

**Propósito:** Administra el catastro territorial y la caracterización dendrométrica del olivar. Constituye la base física sobre la cual operan los demás módulos de Viora. Es responsable del Aggregate Root `Plot`, custodiando la delimitación geográfica poligonal (GeoJSON), el marco de plantación, la densidad de árboles por hectárea, la variedad cultivada (*Criolla*, *Sevillana*, *Manzanilla*, *Arbequina*) y la fecha de última poda. Valida que el área predial no exceda la cuota suscrita y publica eventos soberanos del ciclo de vida predial (`PlotRegisteredEvent`, `PlotRemovedEvent`), habilitando la compensación asíncrona de prescripciones activas en contextos downstream (`POL16`).

#### Domain Layer

##### Modelos del Dominio: `Plot` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Delimita la identidad geográfica, catastral y dendrométrica del cuartel olivarero y salvaguarda el historial de linderos. |
| **Relaciones de Dominio** | Referencia externa por ID a `OwnerId`. Raíz espacial referenciada por telemetría, fenología y muestreos. |

###### Atributos de `Plot`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `PlotId` | Identificador único universal inmutable del predio. |
| `producerId` | `UserId` | Identificador del agricultor propietario o arrendatario. |
| `name` | `PlotName` | Denominación agronómica descriptiva del cuartel. |
| `variety` | `OliveVariety` | Variedad botánica:`CRIOLLA`,`SEVILLANA`,`MANZANILLA`,`ARBEQUINA`. |
| `geometry` | `PlotGeometry` | Polígono catastral cerrado en formato WGS84 / GeoJSON. |
| `plantationFrame` | `PlantationFrame` | Marco de plantación (distancia entre hileras y entre árboles). |
| `treeDensity` | `TreeDensity` | Densidad efectiva calculada (árboles por hectárea teóricos u observados). |
| `lastPruningDate` | `Optional<LocalDate>` | Fecha de última labor de poda registrada. |
| `status` | `PlotStatus` | Estado del predio:`ACTIVE`,`REMOVED_SOFT_DELETE`. |

###### Métodos de `Plot`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `create` | `producerId: UserId`,`name: PlotName`,`variety: OliveVariety`,`geom: PlotGeometry`,`frame: PlantationFrame` | `Plot` | Fábrica que valida topología poligonal, calcula área neta y emite `PlotDelimitedEvent`. |
| `updateDendrometricData` | `frame: PlantationFrame`,`pruningDate: LocalDate` | `void` | Recalibra densidad arbórea efectiva y registra intervenciones silvícolas. |
| `updateBoundaries` | `newGeometry: PlotGeometry`,`quotaChecker: HectareQuotaPolicy` | `void` | Valida nueva geometría contra cupo de suscripción y emite `PlotBoundariesUpdatedEvent`. |
| `remove` | `reason: String` | `void` | Ejecuta baja lógica preservando trazabilidad histórica y emite `PlotRemovedEvent`. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `PlotId` | `UUID v4` | Identificador único universal inmutable de la parcela. |
| `PlotName` | `String` | Nombre identificador del cuartel o predio (longitud 3 a 100 caracteres). |
| `OliveVariety` | `Enum` | Variedad botánica:`CRIOLLA`,`SEVILLANA`,`MANZANILLA`,`ARBEQUINA`. |
| `PlotGeometry` | `GeoJSON (Polygon)` | Polígono geográfico que computa internamente el área en hectáreas. |
| `PlantationFrame` | `rowSpacingM: Double, treeSpacingM: Double` | Distancias de siembra en metros ($m \times m$). |
| `TreeDensity` | `treesPerHectare: Int` | Densidad calculada ($D = 10000 / (row \times tree)$). |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `Cadastral` `Geometry` `Service` | Domain Service | `validate(polygon: CadastralPolygon): void` | Verifica topología cerrada sin autointersecciones ni traslapes. |
| `Cadastral` `Geometry` `Service` | Domain Service | `netAreaHa(polygon: CadastralPolygon): Decimal` | Calcula superficie neta en hectáreas geodésicas. |
| `Dendrometry` `Service` | Domain Service | `calculate(areaHa: Decimal, grid: PlantingGrid, treeCount: int): DendrometricAttributes` | Deriva densidades teóricas y observadas por hectárea. |
| `PlotRepository` | Repository | `findById(id: PlotId): Optional<Plot>` | Carga la parcela por su identificador primario. |
| `PlotRepository` | Repository | `findActiveByOwner(ownerId: OwnerId): List<Plot>` | Lista parcelas activas del productor para gestión predial. |
| `PlotRepository` | Repository | `sumActiveAreaByOwner(ownerId: OwnerId): Decimal` | Consolida superficie activa para auditoría de cuotas. |
| `PlotRepository` | Repository | `save(plot: Plot): Plot` | Persiste atómicamente la entidad y linderos espaciales. |
| `Plot` `DelimitedEvent` | Domain Event | `plotId: UUID, ownerId: UUID, polygon: String, variety: String, occurredOn: Instant` | Notifica alta de cuartel para inicializar telemetría (`EV15`). |
| `PlotBoundaries` `UpdatedEvent` | Domain Event | `plotId: UUID, ownerId: UUID, polygon: String, areaHa: Decimal, occurredOn: Instant` | Notifica alteración de linderos para recalibrar modelos (`EV16`). |
| `Plot` `RemovedEvent` | Domain Event | `plotId: UUID, ownerId: UUID, reason: String, occurredOn: Instant` | Notifica baja lógica de parcela para desvincular sensores (`EV17`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots} | `Create` `Plot` `Request` | `PlotResource` (201 Created) | Delimitación y registro georreferenciado de parcela con validación de cuota (`US09`/`TS11`/`CMD12`). |
| `GET` | \nolinkurl{/api/v1/plots} | N/A (`?updatedSince=`) | `List` `Plot` `Resource`(200 OK) | Listado y sincronización incremental delta de parcelas activas (`US09`/`TS12`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}} | N/A | `PlotResource` (200 OK) | Consulta de detalle agronómico, geometría y densidad arbórea (`US09`/`TS13`). |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}} | `Update` `Plot` `Request` (Req:`If-Match`) | `PlotResource` (200 OK) | Actualización de linderos y marco dendrométrico con control de concurrencia (`US10`/`TS14`/`CMD13`). |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}} | N/A | `204 No Content` | Baja lógica soberana de la parcela predial (`US11`/`TS15`/`CMD14`/`EV17`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Create` `PlotRequest` | Request DTO | `{ name: String, variety: String, geoJson: String, rowSpacingM: Double, treeSpacingM: Double }` | Entrada para registro predial. |
| `Update` `PlotRequest` | Request DTO | `{ name: String, rowSpacingM: Double, treeSpacingM: Double, lastPruningDate: LocalDate }` | Modificación agronómica del lote (controlado con `If-Match`). |
| `PlotResource` | Response DTO | `{ id: UUID, name: String, variety: String, areaHa: Double, treeDensity: Int, geoJson: String }` | Representación pública del predio. |
| `Plot` `ResourceAssembler` | Assembler | `toResource(Plot): `PlotResource` | Mapeador a DTO con cálculo de métricas. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `DelimitPlotCommandHandler` | Command Handler | `DelimitPlotCommand` | Valida cuota de hectáreas, instancia `Plot`, calcula densidad, persiste y emite `PlotRegisteredEvent` (`CMD12`/`EV15`). |
| `UpdatePlotBoundariesCommandHandler` | Command Handler | `UpdatePlotBoundariesCommand` | Carga predio, valida `If-Match`, actualiza linderos y marco, persiste y emite `PlotDendrometricDataUpdatedEvent` (`CMD13`/`EV16`). |
| `RemovePlotCommandHandler` | Command Handler | `RemovePlotCommand` | Marca predio inactivo, persiste la baja y emite `PlotRemovedEvent` (`CMD14`/`EV17`/`POL16`). |
| `GetPlotByIdQueryHandler` | Query Handler | `GetPlotByIdQuery` | Consulta predio por ID con optimización de lectura y retorno en DTO (`TS13`). |
| `ListPlotsQueryHandler` | Query Handler | `ListPlotsQuery` | Sincronización incremental y listado filtrado por titular y timestamp delta (`TS12`). |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `PlotJpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `plots `en PostgreSQL con soporte PostGIS/GeoJSON. |
| `JpaPlotRepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `PlotRepository`. |
| `MapboxSpatialValidationAdapter` | Adapter | GeoTools / JTS | Validación topológica de polígonos y cálculo esferoidal de área. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `plots` | `id` | `UUID` | `PRIMARY KEY` | Identificador único de la parcela. |
| `plots` | `producer_id` | `UUID` | `NOT NULL, INDEX` | Productor propietario de la parcela. |
| `plots` | `name` | `VARCHAR(100)` | `NOT NULL` | Denominación del cuartel o predio. |
| `plots` | `variety` | `VARCHAR(50)` | `NOT NULL` | Variedad botánica de olivo cultivada. |
| `plots` | `area_ha` | `NUMERIC(8,2)` | `NOT NULL, CHECK` | Superficie física calculada en hectáreas. |
| `plots` | `row_spacing_m` | `NUMERIC(4,2)` | `NOT NULL` | Distancia entre hileras en metros. |
| `plots` | `tree_spacing_m` | `NUMERIC(4,2)` | `NOT NULL` | Distancia entre plantas en metros. |
| `plots` | `tree_density` | `INT` | `NOT NULL` | Densidad calculada de árboles/ha. |
| `plots` | `polygon_geojson` | `TEXT` | `NOT NULL` | Polígono espacial en formato GeoJSON. |
| `plots` | `last_pruning_date` | `DATE` | `NULL` | Fecha registrada de la última poda. |
| `plots` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado del predio (`ACTIVE`,`REMOVED`). |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `PlotController` | Controladores REST con parámetro canónico`{plotId}`para registro, actualización, baja y sincronización delta. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `PlotCommandService` • `PlotQueryService` • `CMD12` • `CMD13` • `CMD14` | Orquestación de comandos de predio (`CMD12`,`CMD13`,`CMD14`), control de concurrencia optimista (`If-Match`) y consultas de parcelas. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `PlotRepository` • `GeospatialPolygonValidator` • `SubscriptionQuotaPort` | Contrato de persistencia (puerto de dominio), validación topológica JTS y verificación de cupo de ha. | Java puro / JTS Topology Suite |
| **Infrastructure Layer** | • `JpaPlotRepositoryAdapter` • `DomainEventPublisher` | Persistencia JPA en PostgreSQL con soporte geoespacial PostGIS y despacho de eventos de dominio. | Spring Data JPA, PostGIS, Hibernate Spatial |

##### Flujo de Comunicación y Conectividad
1. La aplicación móvil captura vértices GPS y envía `POST` \nolinkurl{/api/v1/plots} hacia `PlotController`.
2. El controlador valida el cuerpo sintácticamente y delega las operaciones de escritura en `PlotCommandService` (mientras que las lecturas de predios y sincronización delta son resueltas por `PlotQueryService`).
3. `PlotCommandService` invoca `SubscriptionQuotaPort` para verificar el cupo activo disponible en la suscripción del productor (`CMD12`).
4. Si hay cupo suficiente, delega en `GeospatialPolygonValidator` la validación de no auto-intersección del polígono GeoJSON y computa área y densidad arbórea.
5. Se persiste el predio y su registro de revisión histórica en PostgreSQL a través del puerto `PlotRepository` (implementado por `JpaPlotRepositoryAdapter`).
6. Se dispara `PlotRegisteredEvent` (`EV15`) vía `DomainEventPublisher`, permitiendo que *Telemetry* y *Phenology* sincronicen el seguimiento agronómico.

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

\newpage

---

### Bounded Context: Agroclimatic Telemetry and Sensor Monitoring

**Propósito:** Custodia la memoria agroclimática y el monitoreo de microclima del olivar. Captura series temporales horarias de temperatura ambiente, humedad relativa, radiación solar y humedad edáfica mediante dos fuentes: sondas virtuales calibradas (`IoTDevice` bajo `TS42`) y pronósticos meteorológicos a 7 días obtenidos de Open-Meteo vía un programador interno (`WeatherSyncScheduler` `@Scheduled`). Evalúa en tiempo real riesgos fisiológicos de estrés hídrico y choque térmico en floración, despachando alertas in-app (`POL04`, `POL05`) y proveyendo datos climáticos para la acumulación de frío en Fenología.

#### Domain Layer

##### Modelos del Dominio: `VirtualSensorNode` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Gestiona el inventario, profundidad y factor de calibración de los dispositivos sensores de suelo y microclima. |
| **Relaciones de Dominio** | Referencia lógica a `PlotId`. |

###### Atributos de `VirtualSensorNode`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SensorNodeId` | Identificador único del nodo sensor virtual. |
| `plotId` | `PlotId` | Referencia lógica a la parcela monitoreada. |
| `name` | `SensorNodeName` | Denominación descriptiva del punto de monitoreo. |
| `type` | `SensorNodeType` | Tipo:`MICROCLIMATE `o` SOIL_PROBE`. |
| `depthCm` | `SensorDepth` | Profundidad de instalación de sondas (30 cm o 60 cm). |
| `soilTextureType` | `SoilTextureType` | Textura edáfica: franca, franco-arenosa, arcillosa. |
| `calibrationMultiplier` | `CalibrationMultiplier` | Factor de ajuste empírico en rango [0.50, 2.00]. |
| `status` | `SensorNodeStatus` | Estado:`ACTIVE`,`PAUSED`,`UNLINKED`. |
| `lastReadingTimestamp` | `Instant` | Marca temporal de la última telemetría procesada. |

###### Métodos de `VirtualSensorNode`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `register` | `id: SensorNodeId`,`plotId: PlotId`,`name: SensorNodeName`,`type: SensorNodeType`,`depth: SensorDepth`,`texture: SoilTextureType`,`mult: CalibrationMultiplier` | `VirtualSensorNode` | Registra el nodo en el inventario predial y emite `VirtualSensorNodeRegisteredEvent`. |
| `calibrate` | `depth: SensorDepth`,`texture: SoilTextureType`,`mult: CalibrationMultiplier` | `void` | Actualiza coeficientes de cálculo de humedad volumétrica. |
| `rename` | `newName: SensorNodeName` | `void` | Actualiza la denominación del nodo garantizando unicidad en el predio. |
| `unlink` | `void` | `void` | Desvincula lógicamente el sensor de la parcela activa. |

##### Modelos del Dominio: `TelemetrySeries` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Agrupa las lecturas temporales horarias, pronósticos y eventos de estrés agroclimático para un sensor predial. |
| **Relaciones de Dominio** | Referencia a `SensorNodeId `y` PlotId`. Compone lecturas horarias, pronósticos e incidentes. |

###### Atributos de `TelemetrySeries`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `TelemetrySeriesId` | Identificador único de la serie temporal. |
| `sensorNodeId` | `SensorNodeId` | Nodo sensor emisor de los datos. |
| `plotId` | `PlotId` | Parcela a la que pertenece la serie. |
| `readings` | `List<HourlyTelemetryReading>` | Historial cronológico de mediciones horarias. |
| `forecastDays` | `List<WeatherForecastDay>` | Pronóstico meteorológico a 7 días vigente. |
| `incidents` | `List<AgroclimaticIncident>` | Registro de alertas activas e históricas de estrés. |
| `currentStatus` | `TelemetrySeriesStatus` | Estado operativo:`NORMAL`,`HYDRIC_STRESS_ACTIVE`,`FROST_ALERT`. |

###### Métodos de `TelemetrySeries`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `ingestHourlyReading` | `reading: HourlyTelemetryReading`,`evaluator: AgroclimaticThresholdEvaluator` | `void` | Incorpora lectura horaria, evalúa umbrales y emite `HourlyTelemetryReadingIngestedEvent`. |
| `updateWeatherForecast` | `forecasts: List<WeatherForecastDay>` | `void` | Actualiza pronóstico semanal georreferenciado y emite `WeatherForecastSyncedEvent`. |
| `getActiveIncidents` | `void` | `List<AgroclimaticIncident>` | Retorna incidentes abiertos de estrés hídrico o choque térmico. |

##### Modelos del Dominio: `HourlyTelemetryReading` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Captura los parámetros físicos y edafoclimáticos registrados en una hora determinada. |
| **Relaciones de Dominio** | Subordinada a `TelemetrySeries` (1 a N). |

###### Atributos de `HourlyTelemetryReading`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ReadingId` | Identificador único de la lectura horaria. |
| `observedAt` | `Instant` | Marca temporal UTC de la observación. |
| `soilMoisture30cm` | `VolumetricWaterContent` | Humedad volumétrica de suelo a 30 cm de profundidad (%). |
| `soilMoisture60cm` | `VolumetricWaterContent` | Humedad volumétrica de suelo a 60 cm de profundidad (%). |
| `airTemperature` | `Temperature` | Temperatura ambiente registrada (°C). |
| `relativeHumidity` | `RelativeHumidity` | Humedad relativa del aire (%). |
| `isSynthetic` | `boolean` | Indicador si la lectura proviene del simulador de contingencia. |

###### Métodos de `HourlyTelemetryReading`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isStressInducing` | `void` | `boolean` | Determina si los niveles hídricos caen por debajo del punto de marchitez temporal. |

##### Modelos del Dominio: `WeatherForecastDay` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Almacena la predicción meteorológica para una jornada específica en el predio. |
| **Relaciones de Dominio** | Subordinada a `TelemetrySeries` (1 a N). |

###### Atributos de `WeatherForecastDay`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ForecastDayId` | Identificador del registro diario de pronóstico. |
| `forecastDate` | `LocalDate` | Fecha calendario pronosticada. |
| `maxTemperature` | `Temperature` | Temperatura máxima prevista (°C). |
| `minTemperature` | `Temperature` | Temperatura mínima prevista (°C). |
| `precipitationProbability` | `Percentage` | Probabilidad de precipitación pluvial (0-100%). |
| `windSpeedKmh` | `WindSpeed` | Velocidad estimada del viento en km/h. |
| `syncedAt` | `Instant` | Marca temporal de sincronización con Open-Meteo. |

###### Métodos de `WeatherForecastDay`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isFrostRisk` | `void` | `boolean` | Detecta si la temperatura mínima proyectada desciende de 2.0 °C. |

##### Modelos del Dominio: `AgroclimaticIncident` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Modela el ciclo de vida de una anomalía agroclimática que amenaza la fisiología del olivar. |
| **Relaciones de Dominio** | Subordinada a `TelemetrySeries` (1 a N). |

###### Atributos de `AgroclimaticIncident`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `IncidentId` | Identificador único del incidente. |
| `type` | `IncidentType` | Tipo:`HYDRIC_STRESS`,`THERMAL_SHOCK`,`FROST_WARNING`. |
| `severity` | `IncidentSeverity` | Severidad:`WARNING`,`CRITICAL`. |
| `status` | `IncidentStatus` | Estado:`OPEN`,`RESOLVED`. |
| `triggeredAt` | `Instant` | Marca de tiempo de activación de la alerta. |
| `resolvedAt` | `Instant` | Marca de tiempo de normalización del parámetro. |
| `triggerValue` | `Double` | Valor registrado que causó el disparo. |
| `thresholdValue` | `Double` | Umbral agronómico de referencia. |
| `stressDurationMinutes` | `Long` | Minutos acumulados bajo condición de estrés. |

###### Métodos de `AgroclimaticIncident`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `resolve` | `resolutionTime: Instant` | `void` | Cierra formalmente la alerta y computa la duración del estrés fisiológico. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `SensorNodeId`,`TelemetrySeriesId` | `UUID v4` | Identificadores únicos inmutables de los agregados raíz `AGG05 `y` AGG06`. |
| `ReadingId`,`ForecastDayId`,`IncidentId` | `UUID v4` | Identificadores únicos de las entidades internas subordinadas a `TelemetrySeries`. |
| `SensorNodeName` | `String` | Denominación descriptiva única en el predio (longitud 3 a 100 caracteres). |
| `SensorDepth` | `Int (30 o 60 cm)` | Estrato radicular objetivo de absorción de agua del olivo. |
| `SoilTextureType` | `Enum` | `SANDY_LOAM`,`SANDY`,`LOAM`,`CLAY_LOAM`. |
| `CalibrationMultiplier` | `Double` | Factor volumétrico de calibración edáfica en rango agronómico $[0.50, 2.00]$. |
| `VolumetricWaterContent` | `Double (Porcentaje $\theta$)` | Humedad volumétrica de suelo entre $0.0\%$ y $100.0\%$. |
| `Temperature` | `Double (Celsius)` | Métrica de temperatura ambiental con precisión de décimas. |
| `RelativeHumidity` | `Double (Porcentaje)` | Humedad ambiental entre $0.0\%$ y $100.0\%$. |
| `IncidentSeverity` | `Enum` | Severidad del riesgo:`WARNING`,`CRITICAL`. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateHydricRisk(moisture30cm: Double, texture: SoilTextureType): HydricRiskResult` | Determina severidad de estrés hídrico según umbrales de textura. |
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateThermalRisk(temp: Double, rh: Double, stage: PhenologicalStage): ThermalRiskResult` | Evalúa golpe de calor o choque térmico según fenología. |
| `Agroclimatic` `Threshold` `Evaluator` | Domain Service | `evaluateFrostRisk(minTemp: Double): FrostRiskResult` | Detecta alerta temprana de heladas radiativas o advectivas. |
| `VirtualSensor` `NodeRepository` | Repository | `findById(id: SensorNodeId): Optional<VirtualSensorNode>` | Carga nodo sensor por identificador primario. |
| `VirtualSensor` `NodeRepository` | Repository | `findByPlotId(plotId: PlotId): List<VirtualSensorNode>` | Lista dispositivos vinculados a un predio. |
| `VirtualSensor` `NodeRepository` | Repository | `existsByPlotIdAndName(plotId: PlotId, name: SensorNodeName): boolean` | Verifica unicidad de nombre de sensor en el predio. |
| `VirtualSensor` `NodeRepository` | Repository | `save(sensorNode: VirtualSensorNode): VirtualSensorNode` | Persiste configuración y calibración del nodo. |
| `Telemetry` `Series` `Repository` | Repository | `findById(id: TelemetrySeriesId): Optional<TelemetrySeries>` | Recupera serie temporal de telemetría. |
| `Telemetry` `Series` `Repository` | Repository | `findByPlotId(plotId: PlotId): Optional<TelemetrySeries>` | Localiza la serie asociada a una parcela. |
| `Telemetry` `Series` `Repository` | Repository | `findBySensorNodeId(nodeId: SensorNodeId): Optional<TelemetrySeries>` | Recupera serie emitida por un sensor específico. |
| `Telemetry` `Series` `Repository` | Repository | `save(series: TelemetrySeries): TelemetrySeries` | Guarda lecturas, pronósticos e incidentes del agregado. |
| `VirtualSensor` `NodeRegistered` `Event` | Domain Event | `nodeId: UUID, plotId: UUID, name: String, type: String, occurredOn: Instant` | Notifica registro de sensor para inicializar ingesta (`EV18`). |
| `Hourly` `Telemetry` `Reading` `IngestedEvent` | Domain Event | `seriesId: UUID, nodeId: UUID, observedAt: Instant, occurredOn: Instant` | Notifica ingesta de medición horaria para modelos fenológicos (`EV21`). |
| `HydricStress` `AlertTriggered` `Event` | Domain Event | `plotId: UUID, severity: String, moisture: Double, occurredOn: Instant` | Alerta estrés hídrico para activar recomendaciones de riego (`EV22`). |
| `Weather` `ForecastSynced` `Event` | Domain Event | `plotId: UUID, forecastDate: LocalDate, minTemp: Double, occurredOn: Instant` | Notifica pronóstico sincronizado con Open-Meteo (`EV25`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices} | `Create` `Io` `T` `Device` `Request` | `Device` `Resource` (201 Created) | Alta y vinculación de nodo sensor o sonda edáfica virtual (`US13`/`TS16`/`CMD15`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices} | N/A | `List` `Device` `Resource`(200 OK) | Consulta de inventario de dispositivos y estado de calibración (`US14`/`TS17`). |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices/{deviceId}} | `Calibrate` `Device` `Request` | `Device` `Resource` (200 OK) | Renombrado del nodo y calibración de offset en sonda edáfica y factor edafológico (`US15`/`TS42`/`CMD16`). |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}/iot-devices/{deviceId}} | N/A | `204 No Content` | Desvinculación lógica de la sonda preservando histórico (`US16`/`TS18`/`CMD17`). |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/telemetries} | `Ingest` `Telemetry` `Request` | `Telemetry` `Resource` (201 Created) | Ingesta individual o en lote de lecturas de sensores (`US17`/`TS19`/`CMD18`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/telemetries} | N/A (`?startDate=&endDate=`) | `List` `Telemetry` `Resource`(200 OK) | Consulta de series climáticas para gráficas y monitoreo (`US17`/`TS19`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/forecasts} | N/A | `Weather` `Forecast` `Resource` (200 OK) | Consulta de pronóstico meteorológico a 7 días vía Open-Meteo (`US19`/`TS20`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/incidents} | N/A (`?status=ACTIVE`) | `List` `Incident` `Resource`(200 OK) | Consulta de alertas e incidentes de estrés hídrico o térmico (`US18`/`POL04`/`POL05`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `CreateIo` `TDeviceRequest` | Request DTO | `{ name: String, deviceType: String, depthCm: Int, soilTextureType: String }` | Registro y alta de sonda edáfica virtual. |
| `Calibrate` `DeviceRequest` | Request DTO | `{ name: String, depthCm: Int, calibrationMultiplier: Double, calibrationNotes: String }` | Ajuste físico y calibración edafológica de sonda. |
| `Ingest` `TelemetryRequest` | Request DTO | `{ sensorNodeId: UUID, readings: List<HourlyTelemetryReadingDto> }` | Lectura horaria o lote enviado por simulador o sensor. |
| `DeviceResource` | Response DTO | `{ id: UUID, plotId: UUID, name: String, deviceType: String, status: String }` | Representación de nodo sensor vinculado. |
| `Telemetry` `Resource` | Response DTO | `{ id: UUID, plotId: UUID, temperature: Double, humidity: Double, soilMoisture: Double, recordedAt: Instant }` | Representación pública de lectura agroclimática. |
| `Weather` `ForecastResource` | Response DTO | `{ plotId: UUID, dailyForecasts: List<DailyForecastDto>, generatedAt: Instant }` | Proyección meteorológica a 7 días. |
| `IncidentResource` | Response DTO | `{ id: UUID, plotId: UUID, incidentType: String, severity: String, triggeredAt: Instant }` | Alerta de estrés hídrico o térmico. |
| `Telemetry` `ResourceAssembler` | Assembler | `toResource(TelemetryReading): `TelemetryResource` | Convierte lectura interna a DTO de visualización. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `RegisterIoTDeviceCommandHandler` | Command Handler | `RegisterIoTDeviceCommandCMD15` | Valida titularidad, persiste sonda y emite `VirtualSensorNodeLinkedEvent` (`EV18`/`TS16`). |
| `CalibrateIoTDeviceCommandHandler` | Command Handler | `CalibrateIoTDeviceCommandCMD16` | Carga dispositivo, ajusta offset/factor edáfico (`TS42`), persiste y emite `EV19`. |
| `RemoveIoTDeviceCommandHandler` | Command Handler | `RemoveIoTDeviceCommandCMD17` | Desvincula lógicamente la sonda del predio y emite `VirtualSensorNodeUnlinkedEvent` (`EV20`/`TS18`). |
| `IngestPlotTelemetryCommandHandler` | Command Handler | `IngestPlotTelemetryCommandCMD18` | Persiste lecturas horarias en PostgreSQL, evalúa umbrales de estrés y despacha `EV21`,`EV22 `o` EV23`(`TS19`). |
| `GetTelemetrySeriesQueryHandler` | Query Handler | `GetTelemetrySeriesQuery` | Recupera serie temporal acotada por rango de fechas para graficado móvil (`TS19`). |
| `GetWeatherForecastQueryHandler` | Query Handler | `GetWeatherForecastQuery` | Consulta caché local de pronóstico meteorológico a 7 días para la parcela (`TS20`). |
| `WeatherSyncScheduler` | Scheduled Task | `Scheduledcron006` | Orquesta la sincronización automática periódica con Open-Meteo emitiendo `EV25` (`POL14`). |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `VirtualSensorNodeJpaRepository` | Persistence | Spring Data JPA | Almacenamiento y calibración de nodos sensores virtuales (`AGG05`). |
| `TelemetrySeriesJpaRepository` | Persistence | Spring Data JPA | Almacenamiento optimizado de series temporales horarias e incidentes (`AGG06`). |
| `OpenMeteoWeatherClientAdapter` | External Adapter | Spring RestClient | Consumo de pronósticos horarios y datos meteorológicos de Open-Meteo con caché. |
| `InAppNotificationAdapter` | Notification | WebSocket / FCM | Difusión push e in-app de alertas de estrés hídrico y choque térmico. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `telemetry_readings` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la lectura. |
| `telemetry_readings` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela monitoreada. |
| `telemetry_readings` | `temperature` | `NUMERIC(4,2)` | `NOT NULL` | Temperatura ambiente en grados Celsius. |
| `telemetry_readings` | `humidity` | `NUMERIC(5,2)` | `NOT NULL` | Humedad relativa porcentual. |
| `telemetry_readings` | `soil_moisture` | `NUMERIC(5,2)` | `NULL` | Humedad de suelo o potencial mátrico. |
| `telemetry_readings` | `recorded_at` | `TIMESTAMPTZ` | `NOT NULL, INDEX` | Marca temporal exacta de la medición. |
| `iot_devices` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la sonda o sensor. |
| `iot_devices` | `plot_id` | `UUID` | `NOT NULL` | Parcela asociada. |
| `iot_devices` | `calibration_offset` | `NUMERIC(5,2)` | `NOT NULL DEFAULT 0` | Desviación calibrada de la sonda. |
| `iot_devices` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado del dispositivo (`ACTIVE`,`CALIBRATING`). |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `PlotIotDeviceController` • `PlotTelemetryController` • `PlotForecastController` | Ingesta horaria, configuración de nodos sensores y consulta REST de series agroclimáticas y pronóstico. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `TelemetryCommandService` • `TelemetryQueryService` • `ForecastSyncScheduler` • `CMD15` • `18` | Orquestación de comandos de sensores/lecturas (`CMD15`-`18`), consultas de series/alertas y tarea programada de clima. | Spring`@Transactional`,`@Scheduled`,`@Service` |
| **Domain Layer** | • `VirtualSensorNodeRepository` • `TelemetrySeriesRepository` • `AgroclimaticThresholdEvaluator` | Contratos de persistencia (puertos de dominio) y servicio de evaluación de estrés hídrico (SWP) y heladas. | Java puro / DDD |
| **Infrastructure Layer** | • `JpaVirtualSensorNodeRepositoryAdapter` • `JpaTelemetrySeriesRepositoryAdapter` • `OpenMeteoWeatherAdapter` • `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL, consumo API Open-Meteo con caché Caffeine (3h) y publicación de eventos. | Spring Data JPA, HTTP Client, Caffeine |

##### Flujo de Comunicación y Conectividad
1. El nodo sensor o simulador despacha `POST` \nolinkurl{/api/v1/plots/{plotId}/telemetries} hacia `PlotTelemetryController`.
2. `PlotTelemetryController` valida el payload y delega la ingesta en `TelemetryCommandService` (`CMD18`). Las consultas de series temporales y pronóstico a 7 días son atendidas por `TelemetryQueryService`.
3. `TelemetryCommandService` persiste la medición en `TelemetrySeriesRepository` (implementado por `JpaTelemetrySeriesRepositoryAdapter`).
4. Se invoca el servicio de dominio `AgroclimaticThresholdEvaluator` verificando los límites de potencial hídrico en tallo (SWP), golpe de calor y heladas.
5. Si se excede el umbral crítico, `TelemetryCommandService` dispara `HydricStressAlertTriggeredEvent` (`EV22`) vía `SpringDomainEventPublisher`, notificando in-app al agricultor (`POL04`).
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

\newpage

---

### Bounded Context: Phenology and Historical Bearing Analytics

**Propósito:** Gobierna la memoria biológica y el análisis plurianual de vecería del olivar. Modela el seguimiento de las fases fenológicas en escala BBCH (brotación, floración, cuajado, endurecimiento del carozo y maduración), calcula la acumulación de frío invernal mediante el modelo dinámico de Erez (unidades de frío / porciones de frío acumuladas), proyecta la fecha crítica de lignificación de carozo mediante grados-día de desarrollo acumulados ($680.0^\circ\text{C}\cdot\text{día}$ post-antesis disparando `EV53` / `CMD34`), y evalúa el Índice de Vecería Bienal de Hoblyn ($BBI$) a partir de las series plurianuales de cosecha (`POL07` / `EV27`).

#### Domain Layer

##### Modelos del Dominio: `ChillAccumulationTracker` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Monitorea la acumulación invernal de frío (Modelo Dinámico de Erez), el tiempo térmico post-antesis y el índice de vecería de Hoblyn. |
| **Relaciones de Dominio** | Referencia a `PlotId`. Compone bitácoras diarias de frío y registros históricos plurianuales de cosecha. |

###### Atributos de `ChillAccumulationTracker`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `TrackerId` | Identificador único del seguidor de frío y fenología. |
| `plotId` | `PlotId` | Parcela olivarera analizada. |
| `currentCampaignYear` | `CampaignYear` | Año agrícola en curso de monitoreo. |
| `harvestHistory` | `List<HistoricalHarvestEntry>` | Serie histórica plurianual de cosechas (mínimo 2 años). |
| `calculatedBbi` | `BiennialBearingIndex` | Índice de vecería calculado según fórmula de Hoblyn [0.00, 1.00]. |
| `dailyChillLogs` | `List<DailyChillLog>` | Bitácora diaria de avance de frío acumulado en mayo-agosto. |
| `accumulatedGddPostAnthesis` | `Double` | Grados día de desarrollo acumulados tras plena floración. |
| `pitHardeningReached` | `Boolean` | Indicador si se alcanzó el endurecimiento de carozo (~680 GDD). |

###### Métodos de `ChillAccumulationTracker`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `registerHarvest` | `entry: HistoricalHarvestEntry` | `void` | Añade cosecha histórica, recalcula el BBI de Hoblyn y emite `BiennialBearingIndexAssessedEvent`. |
| `rectifyHarvest` | `year: CampaignYear`,`yield: Double` | `void` | Corrige pesajes de cosechas previas actualizando el índice de alternancia. |
| `deleteHarvest` | `year: CampaignYear` | `void` | Elimina registro histórico manteniendo la coherencia de la serie. |
| `processDailyTemperatures` | `date: LocalDate`,`temps: List<Double>` | `void` | Computa porciones de frío de Erez considerando termodestrucción. |
| `processPostAnthesisThermalTime` | `date: LocalDate`,`max: Double`,`min: Double` | `void` | Acumula GDD y detecta endurecimiento de carozo emitiendo `PhenologicalStageTransitionedEvent`. |

##### Modelos del Dominio: `HistoricalHarvestEntry` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Registra el rendimiento cuantitativo anual obtenido en una campaña previa para cálculo de alternancia. |
| **Relaciones de Dominio** | Subordinada a `ChillAccumulationTracker` (1 a N). |

###### Atributos de `HistoricalHarvestEntry`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `HarvestEntryId` | Identificador único del registro de cosecha. |
| `campaignYear` | `CampaignYear` | Año de la campaña agrícola. |
| `totalYieldKg` | `Double` | Masa total de fruto cosechado en kilogramos. |
| `greenKg` | `Double` | Kilogramos de aceituna verde para conserva. |
| `blackKg` | `Double` | Kilogramos de aceituna negra natural. |
| `bearingClassification` | `BearingClassification` | Clasificación:`ON_YEAR`,`OFF_YEAR`,`BALANCED`. |

###### Métodos de `HistoricalHarvestEntry`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `updateYield` | `total: Double`,`green: Double`,`black: Double` | `void` | Actualiza rendimientos verificando consistencia de pesajes. |
| `classify` | `averageYield: Double` | `void` | Asigna categoría productiva comparando contra el promedio móvil predial. |

##### Modelos del Dominio: `DailyChillLog` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Almacena el cálculo matemático de porciones de frío acumuladas en una jornada invernal. |
| **Relaciones de Dominio** | Subordinada a `ChillAccumulationTracker` (1 a N). |

###### Atributos de `DailyChillLog`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `DailyChillLogId` | Identificador del registro diario de frío. |
| `logDate` | `LocalDate` | Fecha invernal evaluada. |
| `portionsAccumulatedToday` | `Double` | Porciones de frío aportadas por el ciclo térmico diario. |
| `totalAccumulatedToDate` | `Double` | Acumulado progresivo de porciones al cierre del día. |
| `maxDayTemperature` | `Double` | Temperatura máxima diurna (°C). |
| `minNightTemperature` | `Double` | Temperatura mínima nocturna (°C). |

###### Métodos de `DailyChillLog`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isDestructiveHeatOccurred` | `void` | `boolean` | Indica si temperaturas > 24 °C destruyeron el intermediario térmico inestable. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `TrackerId`,`HarvestEntryId`,`DailyChillLogId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CampaignYear` | `Int` | Año de la campaña agrícola evaluada ($1980 \le year \le 2100$). |
| `BiennialBearingIndex` | `Double ($0.0 \le BBI \le 1.0$)` | Índice de vecería de Hoblyn: $0$ (regularidad) a $1$ (alternancia extrema). |
| `BBCHStage` | `stageCode: Int, description: String` | Código estandarizado BBCH (ej. 65: Plena Floración, 75: Endurecimiento de Carozo). |
| `GrowingDegreeDays` | `Double (Grados-Día)` | Acumulación térmica sobre umbral base ($T_{base} = 10^\circ\text{C}$). |
| `DynamicErezPortion` | `Double` | Porciones de frío dinámico acumuladas según cinética Erez-Fishman. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `ErezDynamic` `Model` `Calculator` | Domain Service | `computePortions(temps: List<Double>): Double` | Implementa las ecuaciones diferenciales del Modelo Dinámico de Erez. |
| `GrowingDegree` `DaysCalculator` | Domain Service | `calculateGdd(max: Double, min: Double, baseTemp: Double): Double` | Computa acumulación térmica post-antesis (base 10 °C). |
| `HoblynBbi` `Calculator` `Service` | Domain Service | `calculateBbi(harvests: List<HistoricalHarvestEntry>): BiennialBearingIndex` | Evalúa la alternancia productiva interanual según Hoblyn. |
| `Chill` `Accumulation` `Tracker` `Repository` | Repository | `findById(id: TrackerId): Optional<ChillAccumulationTracker>` | Carga el seguidor de frío y fenología por ID. |
| `Chill` `Accumulation` `Tracker` `Repository` | Repository | `findByPlotIdAndCampaign(plotId: PlotId, year: CampaignYear): Optional<ChillAccumulationTracker>` | Recupera el tracker de una campaña agrícola en el predio. |
| `Chill` `Accumulation` `Tracker` `Repository` | Repository | `save(tracker: ChillAccumulationTracker): ChillAccumulationTracker` | Persiste atómicamente el estado y bitácoras de frío. |
| `Phenological` `Stage` `Transitioned` `Event` | Domain Event | `plotId: UUID, previousStage: String, newStage: String, gdd: Double, occurredOn: Instant` | Notifica cambio de fase fenológica (ej. carozo a 680 GDD,`EV53`). |
| `Biennial` `BearingIndex` `AssessedEvent` | Domain Event | `plotId: UUID, bbiValue: Double, classification: String, occurredOn: Instant` | Informa severidad de vecería hacia Crop Load Regulation (`EV27`/`POL08`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records} | `Record` `Harvest` `Yield` `Request` | `Harvest` `Record` `Resource` (201 Created) | Asienta el volumen cosechado de una campaña anual (`TS21`/`US20`/`CMD20`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records} | N/A (`?campaignYear=`) | `List` `Harvest` `Record` `Resource`(200 OK) | Historial plurianual de cosechas con filtro opcional (`TS22`/`US20`). |
| `PUT` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records/{recordId}} | `Update` `Harvest` `Yield` `Request` | `Harvest` `Record` `Resource` (200 OK) | Rectificación de pesaje histórico de una campaña (`TS43`/`US21`/`CMD21`). |
| `DELETE` | \nolinkurl{/api/v1/plots/{plotId}/harvest-records/{recordId}} | N/A | `204 No Content` | Eliminación de registro de cosecha erróneo (`TS43`/`US21`/`CMD22`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/metrics} | N/A (`?name=BBI`/`?name=CHILLING`) | `Metric` `Resource` (200 OK) | Consulta de $BBI$ de Hoblyn y porciones de frío de Erez (`TS23`/`US20`/`US22`/`US23`). |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/phenology-observations} | `Record` `Phenology` `Observation` `Request` | `Phenology` `Observation` `Resource` (201 Created) | Registro visual de estadio fenológico en escala BBCH (`CMD35`/`EV53`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `RecordHarvest` `YieldRequest` | Request DTO | `{ campaignYear: Int, totalTons: Double, oliveUseType: String, notes: String }` | Asiento de pesaje anual cosechado. |
| `UpdateHarvest` `YieldRequest` | Request DTO | `{ totalTons: Double, notes: String }` | Corrección auditada de volumen de cosecha. |
| `Harvest` `RecordResource` | Response DTO | `{ id: UUID, plotId: UUID, campaignYear: Int, totalTons: Double, recordedAt: Instant }` | Representación de cosecha histórica. |
| `MetricResource` | Response DTO | `{ metricName: String, value: Double, qualitativeCategory: String, details: Map<String, Object>, evaluatedAt: Instant }` | Métrica de vecería ($BBI$) o frío dinámico (Erez). |
| `RecordPhenology` `ObservationRequest` | Request DTO | `{ stageCode: Int, observationDate: LocalDate, notes: String }` | Inspección de estadio BBCH en campo. |
| `Phenology` `ObservationResource` | Response DTO | `{ id: UUID, plotId: UUID, currentStage: Int, accumulatedGdd: Double, isWindowClosed: Boolean }` | Estado biológico y ventana de aclareo. |
| `HarvestRecord` `ResourceAssembler` | Assembler | `toResource(HistoricalHarvestEntry): `HarvestRecordResource` | Transformador a DTO desacoplado. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `RecordHarvestYieldCommandHandler` | Command Handler | `RecordHarvestYieldCommandCMD20` | Asienta pesaje de campaña, actualiza agregado y recalcula $BBI$ si $N \ge 3$ (`TS21`/`EV27`). |
| `UpdateHarvestYieldCommandHandler` | Command Handler | `UpdateHarvestYieldCommandCMD21` | Rectifica pesaje de campaña (`TS43`), actualiza serie histórica y recalcula $BBI$. |
| `DeleteHarvestYieldCommandHandler` | Command Handler | `DeleteHarvestYieldCommandCMD22` | Da de baja registro de cosecha erróneo (`TS43`) y revalúa suficiencia muestral del $BBI$. |
| `ListHarvestRecordsQueryHandler` | Query Handler | `ListHarvestRecordsQuery` | Consulta cronológica de cosechas con filtro por campaña agrícola (`TS22`). |
| `GetPlotMetricsQueryHandler` | Query Handler | `GetPlotMetricsQuery` | Consulta índices biológicos paramétricos ($BBI$ o Porciones de Frío de Erez) (`TS23`). |
| `RecordPhenologicalObservationCommandHandler` | Command Handler | `RecordPhenologicalObservationCommand` (`CMD35`) | Actualiza estadio BBCH, recalcula sumas térmicas y emite `PhenologicalStageAdvancedEvent` (`EV53`). |
| `AccumulatePostAnthesisThermalTimeCommandHandler` | Command Handler | `AccumulatePostAnthesisThermalTimeCommand` (`CMD34`) | `Suma GDD diarios post-antesis; si supera $680^\circ\text{C}\cdot\text{día}$, emite `EV53` cerrando la ventana (POL10).` |
| `ChillComputationScheduler` | Scheduled Task | `Scheduledcron000` | Procesa lecturas telemétricas nocturnas acumulando porciones de frío bajo modelo dinámico de Erez. |
| `OnCampaignHarvestSettledEventHandler` | Event Handler | `CampaignHarvestSettledEventEV46` | Escucha cierre de cosecha en Liquidación y actualiza bitácora plurianual recalculando $BBI$ (`POL07`/`EV27`). |
| `OnLateThinningExecutionRecordedEventHandler` | Event Handler | `LateThinningExecutionRecordedEventEV45` | Penaliza el factor de mitigación en un $70\%$ ante aclareo extemporáneo (`POL11`). |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `PhenologyJpaRepository` | Persistence | Spring Data JPA | Acceso a tablas de fenología y frío en PostgreSQL. |
| `JpaPhenologyRepositoryAdapter` | Adapter | Spring Component | Implementa contratos de persistencia de fenología. |
| `ErezAlgorithmNativeAdapter` | Domain Service Impl | Java Puro | Motor matemático optimizado para porciones de frío. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `phenologicalrecords` | `id` | `UUID` | `PRIMARY KEY` | Identificador del registro. |
| `phenologicalrecords` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela monitoreada. |
| `phenologicalrecords` | `current_stage` | `INT` | `NOT NULL` | Código numérico BBCH actual. |
| `phenologicalrecords` | `accumulated_gdd` | `NUMERIC(6,2)` | `NOT NULL DEFAULT 0` | Grados-día de desarrollo post-antesis. |
| `phenologicalrecords` | `is_window_closed` | `BOOLEAN` | `NOT NULL DEFAULT FALSE` | Indicador de carozo endurecido. |
| `chill_trackers` | `id` | `UUID` | `PRIMARY KEY` | Identificador del seguimiento de frío. |
| `chill_trackers` | `plot_id` | `UUID` | `NOT NULL` | Parcela asociada. |
| `chill_trackers` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola evaluado. |
| `chill_trackers` | `erez_portions` | `NUMERIC(6,2)` | `NOT NULL` | Porciones de frío dinámico acumuladas. |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `PlotChillController` • `PlotPhenologyController` • `PlotHarvestRecordController` • `PlotBearingController` | API REST para seguimiento fenológico, acumulación de frío, cosechas históricas y vecería. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `PhenologyCommandService` • `PhenologyQueryService` • `DailyChillComputationJob` • `CMD19` • `22` | Orquestación de comandos de estadios y cosechas (`CMD19`-`22`), consultas de frío/vecería y tarea programada de frío Erez. | Spring`@Transactional`,`@Scheduled`,`@Service` |
| **Domain Layer** | • `ChillAccumulationTrackerRepository` • `ErezDynamicModelCalculator` • `GrowingDegreeDaysCalculator` • `HoblynBbiCalculatorService` | Contrato de persistencia (puerto de dominio), algoritmos biológicos Erez, GDD post-antesis e índice $BBI$ de Hoblyn. | Java puro / DDD |
| **Infrastructure Layer** | • `JpaChillAccumulationTrackerRepositoryAdapter` • `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL (`phenology.*`) y despacho de eventos de dominio. | Spring Data JPA, Spring Events |

##### Flujo de Comunicación y Conectividad
1. El agricultor registra un estadio visual de floración con `POST` \nolinkurl{/api/v1/plots/{plotId}/phenology-observations} (o rectifica cosechas históricas vía `PlotHarvestRecordController`).
2. `PlotPhenologyController` delega la mutación en `PhenologyCommandService` (`CMD19`), actualizando el estadio a BBCH 65 en `ChillAccumulationTrackerRepository`. Las consultas de frío, GDD y vecería son atendidas por `PhenologyQueryService`.
3. Diariamente, `DailyChillComputationJob` activa `PhenologyCommandService` para ejecutar el cálculo dinámico de porciones de frío (`ErezDynamicModelCalculator`) y acumular grados-día (`GrowingDegreeDaysCalculator`).
4. Al alcanzar $680^\circ\text{C}\cdot\text{día}$ acumulados, se transiciona `isWindowClosed = true` y `PhenologyCommandService` despacha `EV53` vía `SpringDomainEventPublisher`.
5. El evento `EV53` es recibido reactivamente por *Crop Load Regulation*, invalidando prescripciones de aclareo pendientes (`POL10`).
6. Ante la incorporación de cosechas históricas (`CMD20`-`22`), `PhenologyCommandService` persiste los rendimientos en `ChillAccumulationTrackerRepository`, y `PhenologyQueryService` computa el índice $BBI$ de Hoblyn mediante `HoblynBbiCalculatorService`.

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

\newpage

---

### Bounded Context: Crop Load Regulation and Thinning Advisory

**Propósito:** Núcleo agronómico prescriptivo de Viora. Regula la carga frutal del olivar para mitigar la alternancia productiva entre campañas consecutivas. Gestiona el registro de muestreos de campo con soporte *offline-first* en dispositivos móviles (`TS24` / SQLite Room y sqflite con sincronización `WorkManager` y claves compuestas de idempotencia), calcula la tasa sostenible de frutos por metro lineal de copa, emite prescripciones automáticas de aclareo frutal en verde cuando se alcanza la representatividad muestral (`POL09` / `EV37` / `EV39`), alerta sobrecarga productiva sectorial hacia la cooperativa (`POL13` / `EV40`), y valida la ejecución oportuna de la labor frente al endurecimiento de carozo (`EV44` vs `EV45`). Otorga trazabilidad y cobertura técnica directa a las historias de usuario **US24** (Muestreo guiado de cuajado offline), **US25** (Avance y representatividad muestral con detalle de árboles evaluados), **US26** (Carga frutal admisible sostenible), **US27** (Prescripción in-app y ventana fenológica de intervención) y **US28** (Registro y confirmación de ejecución de aclareo).

#### Domain Layer

##### Modelos del Dominio: `FruitThinningPrescription` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Consolida los muestreos de brotes en campo, determina la carga frutal sostenible y emite la prescripción de raleo manual. |
| **Relaciones de Dominio** | Referencia a `PlotId`. Compone rondas de muestreo y la confirmación de ejecución de raleo. |

###### Atributos de `FruitThinningPrescription`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `PrescriptionId` | Identificador único de la prescripción. |
| `plotId` | `PlotId` | Parcela olivarera evaluada. |
| `campaignYear` | `CampaignYear` | Año de la campaña de regulación. |
| `observedPlotRevision` | `Long` | Versión catastral observada durante la prescripción. |
| `samplingRounds` | `List<SamplingRound>` | Rondas de muestreo de frutos por entrenudo registradas. |
| `sustainableLoad` | `SustainableCropLoad` | Carga frutal agronómicamente sostenible recomendada. |
| `status` | `PrescriptionStatus` | Estado:`SAMPLING_IN_PROGRESS`,`PRESCRIBED`,`EXECUTED_OPTIMAL`,`CLOSED_BY_PIT_HARDENING`. |
| `execution` | `ExecutionConfirmation` | Datos de auditoría de la labor de raleo en campo. |

###### Métodos de `FruitThinningPrescription`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `recordTreeSampling` | `record: TreeSamplingRecord` | `void` | Incorpora conteo de brote garantizando no duplicidad de árbol. |
| `ingestSamplingsBatch` | `records: List<TreeSamplingRecord>`,`evaluator: SamplingCoverageEvaluator` | `void` | Procesa lote móvil offline y emite `SamplingRoundCompletedEvent `al alcanzar representatividad ($N \ge 5$). |
| `determineSustainableCropLoad` | `inputs: AgronomicInputs`,`calc: CropLoadBalancingCalculatorService` | `void` | Calcula porcentaje óptimo de remoción y emite `SustainableCropLoadDeterminedEvent`. |
| `confirmExecution` | `confirm: ExecutionConfirmation` | `void` | Registra ejecución de raleo emitiendo `ThinningExecutionConfirmedEvent`. |
| `closeWindowByPitHardening` | `date: LocalDate` | `void` | Cierra la ventana de intervención oportuna por endurecimiento de carozo. |

##### Modelos del Dominio: `SamplingRound` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Agrupa un conjunto de árboles muestreados en un cuartel olivarero durante una jornada de evaluación. |
| **Relaciones de Dominio** | Subordinada a `FruitThinningPrescription` (1 a N). |

###### Atributos de `SamplingRound`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `RoundId` | Identificador de la ronda de muestreo. |
| `actorId` | `UserId` | Técnico o productor que recolectó las muestras. |
| `clientBatchId` | `String` | Identificador de idempotencia del cliente móvil offline. |
| `samplingRecords` | `List<TreeSamplingRecord>` | Muestras individuales de árboles recolectadas. |
| `isRepresentative` | `Boolean` | Indicador si cumple el tamaño muestral mínimo representativo. |

###### Métodos de `SamplingRound`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `addRecord` | `record: TreeSamplingRecord` | `void` | Añade una muestra individual al lote de la ronda. |
| `evaluateRepresentativeness` | `evaluator: SamplingCoverageEvaluator` | `void` | Valida que la cobertura de muestreo sea estadísticamente sólida. |

##### Modelos del Dominio: `TreeSamplingRecord` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Captura los conteos de brotes, cuajado y vigor en un olivo individualizado. |
| **Relaciones de Dominio** | Subordinada a `SamplingRound` (1 a N). |

###### Atributos de `TreeSamplingRecord`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SamplingRecordId` | Identificador del registro de árbol. |
| `treeTag` | `String` | Identificador físico o código de placa del árbol evaluado. |
| `shootCount` | `Int` | Número de brotes representativos contabilizados. |
| `fruitSetCount` | `Int` | Cantidad de frutos cuajados observados. |
| `trunkDiameterMm` | `Double` | Diámetro de tronco a 30 cm de altura para estimar área de sección transversal (TCSA). |
| `samplingDate` | `LocalDate` | Fecha de recolección de la muestra. |

###### Métodos de `TreeSamplingRecord`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `getFruitsPerMeter` | `void` | `Double` | Calcula la densidad lineal de carga en frutos por metro de brote. |

##### Modelos del Dominio: `ExecutionConfirmation` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Acredita la ejecución material de la labor de raleo manual en el cuartel. |
| **Relaciones de Dominio** | Subordinada a `FruitThinningPrescription` (1 a 1). |

###### Atributos de `ExecutionConfirmation`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ConfirmationId` | Identificador de la confirmación de raleo. |
| `executionDate` | `LocalDate` | Fecha en la que la cuadrilla completó la labor. |
| `actualRemovalPercentage` | `Double` | Porcentaje real de frutos retirados del árbol. |
| `laborCrewSize` | `Int` | Número de operarios de campo participantes. |
| `timeliness` | `ExecutionTimeliness` | Calificación:`OPTIMAL` (previo a carozo) o `LATE`. |

###### Métodos de `ExecutionConfirmation`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `isOpportune` | `void` | `Boolean` | Verifica si la intervención ocurrió antes del endurecimiento de carozo. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `PrescriptionId`,`RoundId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CropLoadDensity` | `fruitsPerMeter: Double, fruitsPerTree: Int` | Densidad óptima de carga frutal balanceada. |
| `ThinningIntensity` | `percentageToRemove: Double, kgToRemovePerTree: Double` | Porcentaje y masa recomendada a defructificar en verde. |
| `PrescriptionStatus` | `Enum (7 estados)` | `SAMPLINGINPROGRESS`,`PRESCRIBED`,`CONFIRMED`,`EXECUTED`,`EXPIRED`,`VOIDEDBYPLOTREMOVAL`,`REJECTED`. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `CropLoad` `Balancing` `Calculator` `Service` | Domain Service | `calculateTargetRemoval(currentLoad: Double, bbi: Double, waterStatus: Double): Double` | Computa la tasa agronómica de remoción recomendada. |
| `FieldSampling` `Deduplicator` | Domain Service | `deduplicate(samples: List<TreeSamplingRecord>): List<TreeSamplingRecord>` | Garantiza que no existan registros superpuestos del mismo árbol. |
| `FruitThinning` `Prescription` `Repository` | Repository | `findById(id: PrescriptionId): Optional<FruitThinningPrescription>` | Carga la prescripción por su identificador primario. |
| `FruitThinning` `Prescription` `Repository` | Repository | `findByPlotIdAndCampaign(plotId: PlotId, year: CampaignYear): Optional<FruitThinningPrescription>` | Carga la prescripción vigente para la campaña en el predio. |
| `FruitThinning` `Prescription` `Repository` | Repository | `save(prescription: FruitThinningPrescription): FruitThinningPrescription` | Guarda estado de muestreos y prescripción. |
| `SamplingRound` `CompletedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, evaluatedTrees: int, occurredOn: Instant` | Notifica representatividad muestral suficiente para prescribir (`EV37`). |
| `Sustainable` `CropLoad` `Determined` `Event` | Domain Event | `prescriptionId: UUID, plotId: UUID, removalPercentage: Double, occurredOn: Instant` | Emite prescripción formal de raleo frutal (`EV39`). |
| `OverloadRisk` `DetectedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, overloadFactor: Double, occurredOn: Instant` | Alerta riesgo de sobrecarga crítica hacia la cooperativa (`EV40`/`POL13`). |
| `Thinning` `Execution` `ConfirmedEvent` | Domain Event | `prescriptionId: UUID, plotId: UUID, removalPct: Double, timeliness: String, occurredOn: Instant` | Confirma ejecución de la labor para liquidación de cosecha (`EV44`/`POL18`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/samplings} | `Submit` `Sampling` `Request` | `Sampling` `Summary` `Resource` (201 Created) | Ingesta de muestreos individuales o por lote con cabecera `Idempotency-Key`(`TS24`/`US24`/`CMD24`,`CMD25`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/samplings} | N/A (`?campaignYear=&view=summary`) | `Sampling` `Summary` `Resource` (200 OK) | Consulta del avance y representatividad muestral de la campaña (`TS25`/`US25`/`RM09`). |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/thinning-prescriptions} | N/A | `Prescription` `Resource` (201 Created) | Determinación de carga frutal sostenible y emisión de prescripción bajo demanda (`CMD26`/`US26`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/thinning-prescriptions} | N/A (`?status=ACTIVE`) | `Prescription` `Resource` (200 OK) | Consulta de prescripción vigente o por campaña (`TS26`/`US27`/`RM10`). |
| `GET` | \nolinkurl{/api/v1/thinning-prescriptions/{id}} | N/A | `Prescription` `Resource` (200 OK) | Consulta de prescripción por identificador unívoco directo (`TS26`/`US27`). |
| `POST` | \nolinkurl{/api/v1/thinning-prescriptions/{id}/execution-confirmations} | `Confirm` `Execution` `Request` | `Execution` `Confirmation` `Resource` (201 Created) | Declaración y confirmación de labor de aclareo oportuna o tardía (`TS27`/`US28`/`CMD28`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Submit` `SamplingRequest` | Request DTO | `{ clientBatchId: String, samples: List<ShootSampleDto> }` | Lote de conteo capturado en campo offline. |
| `Sampling` `SummaryResource` | Response DTO | `{ plotId: UUID, sampledTreesCount: Int, sampledShootsCount: Int, meanFruitsPerMeter: Double, isRepresentative: Boolean, treesNeeded: Int }` | Resumen de representatividad muestral. |
| `Prescription` `Resource` | Response DTO | `{ id: UUID, plotId: UUID, targetLoad: Double, percentageToRemove: Double, status: String, windowClosesOn: LocalDate }` | Asesoramiento oficial de aclareo. |
| `Confirm` `ExecutionRequest` | Request DTO | `{ executedDate: LocalDate, removedKg: Double, notes: String }` | Declaración de ejecución de la labor. |
| `Execution` `ConfirmationResource` | Response DTO | `{ prescriptionId: UUID, confirmationStatus: String, executedDate: LocalDate, isOpportune: Boolean, recordedAt: Instant }` | Constancia de ejecución y sellado biológico. |
| `Prescription` `ResourceAssembler` | Assembler | `toResource(FruitThinningPrescription): `PrescriptionResource` | Mapeo a DTO con formateo agronómico. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `IngestFieldSamplingsBatchCommandHandler` | Command Handler | `IngestFieldSamplingsBatchCommandCMD25` | Verifica idempotencia`(actorId, plotId, clientBatchId)`, persiste muestras; si cumple representatividad, emite `EV37` (`POL09`). |
| `GetSamplingRoundStatusQueryHandler` | Query Handler | `GetSamplingRoundStatusQuery` | Sirve `RM09 `informando el avance muestral y suficiencia sin descargar el historial completo (`TS25`). |
| `DetermineSustainableCropLoadCommandHandler` | Command Handler | `DetermineSustainableCropLoadCommandCMD26` | Invoca `CropLoadBalanceCalculatorService`, fija carga admisible, emite `EV39 `y` EV40 `si hay sobrecarga (`POL13`). |
| `GetThinningPrescriptionQueryHandler` | Query Handler | `GetThinningPrescriptionQuery` | Retorna snapshot autorizado de la prescripción activa o histórica (`TS26`/`RM10`). |
| `ConfirmThinningExecutionCommandHandler` | Command Handler | `ConfirmThinningExecutionCommandCMD28` | Compara fecha con `windowClosesOn`; si es oportuna emite `EV44` (`POL18`); si es tardía emite `EV45` (`POL11`). |
| `OnThinningWindowClosedEventHandler` | Event Handler | `ThinningWindowClosedByPitHardeningEventEV43` | Transiciona prescripciones pendientes a `EXPIRED` (`POL10`). |
| `OnPlotRemovedEventHandler` | Event Handler | `PlotRemovedEventEV17` | Anula reactivamente prescripciones abiertas mediante `POL16`. |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `ThinningPrescriptionJpaRepository` | Persistence | Spring Data JPA | Almacenamiento relacional de prescripciones en PostgreSQL. |
| `FieldSamplingRoundJpaRepository` | Persistence | Spring Data JPA | Ingesta transaccional con índice único de lote. |
| `MobileOfflineStorageStrategy` | Client Persistence | Room (Android) / sqflite (Flutter) | Almacenamiento local SQLite y cola durable `WorkManager`. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `thinningprescriptions` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la prescripción. |
| `thinningprescriptions` | `plot_id` | `UUID` | `NOT NULL, INDEX` | Parcela asociada. |
| `thinningprescriptions` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola de la labor. |
| `thinningprescriptions` | `target_fruits_m` | `NUMERIC(5,2)` | `NOT NULL` | Carga objetivo de frutos/m lineal. |
| `thinningprescriptions` | `percentage_remove` | `NUMERIC(4,2)` | `NOT NULL` | Porcentaje de remoción recomendado. |
| `thinningprescriptions` | `status` | `VARCHAR(30)` | `NOT NULL, INDEX` | Estado del ciclo de vida (7 estados). |
| `thinningprescriptions` | `window_closes_on` | `DATE` | `NOT NULL` | Fecha límite biológica de aclareo. |
| `fieldsamplingrounds` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la ronda de muestreo. |
| `fieldsamplingrounds` | `plot_id` | `UUID` | `NOT NULL` | Parcela muestreada. |
| `fieldsamplingrounds` | `actor_id` | `UUID` | `NOT NULL` | Usuario que ejecutó el muestreo. |
| `fieldsamplingrounds` | `client_batch_id` | `VARCHAR(64)` | `NOT NULL` | Identificador UUID local para idempotencia. |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `PlotSamplingController` • `PlotThinningPrescriptionController` • `ThinningExecutionController` | Endpoints REST para ingesta de muestreo de campo, consulta de prescripciones y confirmación de aclareo. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `CropLoadCommandService` • `CropLoadQueryService` • `CMD24` • `CMD25` • `CMD28` | Orquestación de comandos de muestreo y aclareo (`CMD24`,`CMD25`,`CMD28`), consultas de prescripciones y resúmenes muestrales. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `FruitThinningPrescriptionRepository` • `CropLoadBalancingCalculatorService` • `FieldSamplingDeduplicator` | Contrato de persistencia (puerto de dominio), cálculo de carga admisible y deduplicación de lotes offline. | Java puro / DDD |
| **Infrastructure Layer** | • `JpaFruitThinningPrescriptionRepositoryAdapter` • `SamplingSyncWorkManager` • `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL, sincronización en background en clientes móviles y publicación de eventos. | Spring Data JPA, WorkManager, SQLite |

##### Flujo de Comunicación y Conectividad
1. El agricultor registra muestras de brotes sin conexión en el dispositivo móvil (persistidas en Room/sqflite).
2. Al recuperar conectividad, `SamplingSyncWorkManager` despacha `POST` \nolinkurl{/api/v1/plots/{plotId}/samplings} con cabecera `Idempotency-Key` hacia `PlotSamplingController`.
3. `PlotSamplingController` delega el procesamiento en `CropLoadCommandService` (`CMD24`, `CMD25`), mientras que las consultas de prescripciones y resúmenes muestrales son atendidas por `CropLoadQueryService`.
4. `CropLoadCommandService` invoca `FieldSamplingDeduplicator` para filtrar duplicados y persiste los registros en `FruitThinningPrescriptionRepository`.
5. Si el muestreo alcanza suficiencia estadística ($N \ge 5$), `CropLoadCommandService` invoca `CropLoadBalancingCalculatorService` y publica `ThinningPrescribedEvent` (`EV41`) vía `SpringDomainEventPublisher`. Si detecta riesgo de sobrecarga, emite alerta hacia *Cooperative Operations* (`POL13`).
6. El productor confirma el aclareo mediante `POST` \nolinkurl{/api/v1/thinning-prescriptions/{id}/execution-confirmations} (`TS27` / `CMD28`); `ThinningExecutionController` delega en `CropLoadCommandService`, el cual actualiza la prescripción a `EXECUTED` en el repositorio y emite `ThinningExecutedEvent` (`EV44` bajo `POL18`).

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

\newpage

---

### Bounded Context: Cooperative Operations and Territorial Intelligence

**Propósito:** Agrupa la inteligencia territorial, la administración gremial y las proyecciones logísticas de acopio para organizaciones agrarias y cooperativas olivareras. Gobierna el Aggregate Root `Cooperative`, delimitado bajo la autoridad de un gestor técnico institucional único (`technicalManagerUserId: UserId`, validado mediante claims de token JWT con rol `ROLE_GESTOR_COOPERATIVA`). Administra el padrón unificado de socios (`cooperative_members`), evalúa el semáforo territorial de riesgos fenológicos, climáticos y de sobrecarga sectorial (`GET .../territorial-risk` con parámetros GPS `?latitude=&longitude=` bajo `TS29`), y proyecta tempranamente el volumen agregado de cosecha en toneladas verdes y negras (`EarlyIntakeProjection`), advirtiendo penalizaciones de confianza si la representatividad muestral del padrón es inferior al $50\%$ (`EV51`).

#### Domain Layer

##### Modelos del Dominio: `Cooperative` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Administra el padrón de socios olivareros, proyecta el volumen de cosecha temprana y evalúa la matriz territorial de riesgos. |
| **Relaciones de Dominio** | Gobierna miembros (`CooperativeMember`), proyecciones de acopio y evaluaciones de riesgo territorial. |

###### Atributos de `Cooperative`

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

###### Métodos de `Cooperative`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `authorizeCodeIssuance` | `managerId: UserId` | `void` | Autoriza generación de lotes de códigos de patrocinio institucional. |
| `affiliateProducer` | `userId: UserId`,`ha: Double`,`plots: List<PlotId>` | `CooperativeMember` | Incorpora productor al padrón y emite `MemberAffiliatedEvent` (`POL02`). |
| `updateMemberContact` | `userId: UserId`,`name: String`,`phone: String`,`email: String` | `void` | Sincroniza datos de contacto del socio reaccionando a `POL03`. |
| `evaluateTerritorialRiskMatrix` | `incidents: List<AgroclimaticIncident>` | `void` | Consolida alertas activas y emite `CooperativeRiskMatrixEvaluatedEvent`. |
| `projectIntakeVolume` | `service: YieldAggregationDomainService` | `void` | Agrega proyecciones de cosecha a partir de muestras y floración (`EV50`). |

##### Modelos del Dominio: `CooperativeMember` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Representa la membresía y situación gremial de un productor olivarero en la cooperativa. |
| **Relaciones de Dominio** | Subordinada a `Cooperative` (1 a N). |

###### Atributos de `CooperativeMember`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `MemberId` | Identificador de membresía gremial. |
| `producerUserId` | `UserId` | Identificador de cuenta del socio productor. |
| `fullName` | `String` | Nombre completo oficial del socio. |
| `contactPhone` | `String` | Teléfono de contacto registrado. |
| `totalDeclaredHa` | `Double` | Hectáreas olivareras declaradas ante la cooperativa. |
| `status` | `MemberStatus` | Estado de membresía:`ACTIVE`,`SUSPENDED`,`RESIGNED`. |

###### Métodos de `CooperativeMember`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `updateContact` | `name: String`,`phone: String`,`email: String` | `void` | Actualiza datos civiles de comunicación del socio. |
| `linkPlot` | `plotId: PlotId`,`ha: Double` | `void` | Registra parcela asociada a la cuota de entrega de aceituna. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `CooperativeId` | `UUID v4` | Identificador único universal de la cooperativa. |
| `CooperativeName` | `String` | Razón social de la organización agraria (longitud 3 a 150 caracteres). |
| `TaxIdentificationNumber` | `String` | Registro tributario institucional oficial. |
| `MemberId` | `UUID v4` | Identificador único de la membresía gremial. |
| `TerritorialRiskMatrix` | `Map<String, RiskLevel>` | Evaluación cualitativa de riesgos sectoriales (`LOW`,`MEDIUM`,`HIGH`,`CRITICAL`). |
| `EarlyIntakeProjection` | `greenTons: Double, blackTons: Double` | Estimación temprana de acopio en toneladas métricas por variedad y uso industrial. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `Territorial` `Risk` `Aggregation` `Service` | Domain Service | `evaluateSectorRisk(alerts: List<AgroclimaticIncident>): TerritorialRiskMatrix` | Consolida semáforo territorial de heladas y estrés hídrico. |
| `Yield` `Aggregation` `DomainService` | Domain Service | `projectHarvestYield(samples: List<CropLoadSampling>, factor: Double): IntakeProjectionResult` | Agrega proyecciones tempranas de volumen de aceituna. |
| `Cooperative` `Repository` | Repository | `findById(id: CooperativeId): Optional<Cooperative>` | Carga la cooperativa por su identificador primario. |
| `Cooperative` `Repository` | Repository | `findByTaxId(taxId: TaxIdentificationNumber): Optional<Cooperative>` | Localiza la cooperativa por su registro fiscal único. |
| `Cooperative` `Repository` | Repository | `findByTechnicalManagerUserId(userId: UserId): List<Cooperative>` | Lista cooperativas gestionadas por un responsable técnico. |
| `Cooperative` `Repository` | Repository | `save(cooperative: Cooperative): Cooperative` | Persiste cooperativa, padrón de socios y proyecciones. |
| `Cooperative` `RiskMatrix` `EvaluatedEvent` | Domain Event | `cooperativeId: UUID, severity: String, frostAlertsCount: int, occurredOn: Instant` | Notifica mapa de calor territorial a gestores cooperativos (`EV49`). |
| `Member` `Affiliated` `Event` | Domain Event | `cooperativeId: UUID, memberId: UUID, producerUserId: UUID, occurredOn: Instant` | Confirma afiliación de productor al padrón cooperativo (`EV54`/`POL02`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/members} | N/A (`?status=ACTIVE`) | `List` `Cooperative` `Member` `Resource`(200 OK) | Padrón de socios agremiados (`US08`/`RM13`). |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/members/{memberId}} | N/A | `Cooperative` `Member` `Resource` (200 OK) | Ficha gremial individual de socio (`US08`/`RM13`). |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/territorial-risk} | N/A (`?latitude=&longitude=`) | `Territorial` `Risk` `Matrix` `Resource` (200 OK) | Semáforo territorial de riesgo fenológico y sobrecarga con geolocalización GPS (`US12`/`US31`/`TS29`/`RM14`). |
| `GET` | \nolinkurl{/api/v1/cooperatives/{cooperativeId}/intake-forecasts} | N/A (`?campaignYear=`) | `Intake` `Forecast` `Resource` (200 OK) | Proyección temprana agregada de acopio en toneladas (`US32`/`TS30`/`RM15`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Cooperative` `MemberResource` | Response DTO | `{ id: UUID, producerUserId: UUID, fullName: String, contactPhone: String, totalDeclaredHa: Double, status: String }` | Datos de socio agremiado. |
| `TerritorialRisk` `MatrixResource` | Response DTO | `{ cooperativeId: UUID, highRiskSectors: List<String>, generalStatus: String, evaluatedAt: Instant }` | Semáforo de riesgo territorial. |
| `Intake` `ForecastResource` | Response DTO | `{ cooperativeId: UUID, greenOlivesTons: Double, blackOlivesTons: Double, confidenceDegraded: Boolean }` | Proyección de acopio para salmuera y aceite. |
| `Cooperative` `ResourceAssembler` | Assembler | `toResource(Cooperative): `CooperativeResource` | Transformador a DTO público de presentación. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `EvaluateCooperativeRiskMatrixCommandHandler` | Command Handler | `EvaluateCooperativeRiskMatrixCommand` | Carga el agregado `Cooperative`, recopila alertas activas de telemetría y sobrecarga de las parcelas socias, invoca `evaluateTerritorialRiskMatrix(...)`, persiste y publica `CooperativeRiskMatrixEvaluatedEvent` (`EV49`) (`CMD31`/`US31`/`TS29`). |
| `ProjectCooperativeIntakeVolumeCommandHandler` | Command Handler | `ProjectCooperativeIntakeVolumeCommand` | Invocado reactivamente ante `SamplingRoundCompletedEvent` (`EV37`); `@Transactional`; consulta resúmenes biométricos, invoca `projectIntakeVolume(...)`, verifica cobertura, persiste y publica `CooperativeIntakeVolumeProjectedEvent` (`EV50`) y, de corresponder, `LowSamplingCoverageWarnedForIntakeEvent` (`EV51`) (`CMD32`/`US32`/`TS30`). |
| `GetCooperativeDirectoryQueryHandler` | Query Handler | `GetCooperativeDirectoryQuery` | Recupera el padrón de socios ordenado por apellido y estado de afiliación; aporta únicamente la porción gremial de `RM13` (`US08`). |
| `GetTerritorialRiskMatrixQueryHandler` | Query Handler | `GetTerritorialRiskMatrixQuery` | Entrega el semáforo sectorial consolidado, resolviendo el sector por GPS con `locateSectorByCoordinates(lat, lon)` (`RM14`/`US12`/`US31`/`TS29`). |
| `GetEarlyIntakeProjectionQueryHandler` | Query Handler | `GetEarlyIntakeProjectionQuery` | Entrega las toneladas proyectadas de aceituna verde y negra filtradas por campaña agrícola (`RM15`/`US32`/`TS30`). |
| `OnCooperativeCodeRedeemedEventHandler` | Event Handler | `CooperativeCodeRedeemedEvent` (`EV13`) | Escucha el evento de *Subscription & Cooperative Membership* e invoca `affiliateProducer(...)` dando de alta al socio con la superficie concedida; no descuenta cupo, pues plazas y superficie se comprometieron al emitirse el código en `CooperativeLicense` (`AGG11`); idempotente ante reentregas (`POL02`). |
| `OnContactProfileUpdatedEventHandler` | Event Handler | `ContactProfileUpdatedEvent` (`EV09`) | Aplica política `POL03`: sincroniza datos de contacto del socio en el padrón cooperativo. |
| `OnOverloadRiskDetectedEventHandler` | Event Handler | `OverloadRiskDetectedEvent` (`EV40`) | Escucha el evento de *Crop Load Regulation & Thinning Advisory*; si la parcela pertenece a un socio agremiado, actualiza la matriz de riesgo del sector marcando alerta roja de sobrecarga (`POL13`). |
| `OnWeatherForecastIngestedEventHandler` | Event Handler | `WeatherForecastIngestedEvent` (`EV25`) | Escucha el evento de *Agroclimatic Telemetry & Sensor Monitoring*; si se proyecta $T \le 1.5^\circ\text{C}$ a 48 horas en un sector, actualiza el semáforo a alerta de helada y despacha aviso regional (`POL14`). |
| `OnSamplingRoundCompletedEventHandler` | Event Handler | `SamplingRoundCompletedEvent` (`EV37`) | Escucha el evento de *Crop Load Regulation & Thinning Advisory*; despacha `ProjectCooperativeIntakeVolumeCommand` para actualizar la proyección de acopio gremial (`POL15`). |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `CooperativeJpaRepository` | Persistence | Spring Data JPA | Acceso a tabla `cooperatives `y padrón de socios en PostgreSQL. |
| `JpaCooperativeRepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `CooperativeRepository`. |
| `GpsSpatialSectoringAdapter` | GIS Adapter | GeoTools / JTS | Asocia coordenadas GPS (`lat, lon`) a sectores territoriales del valle olivarero. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `cooperatives` | `id` | `UUID` | `PRIMARY KEY` | Identificador de la cooperativa. |
| `cooperatives` | `name` | `VARCHAR(150)` | `NOT NULL` | Razón social de la organización agraria. |
| `cooperatives` | `tax_id` | `VARCHAR(11)` | `NOT NULL, UNIQUE` | RUC institucional de 11 dígitos. |
| `cooperatives` | `license_id` | `UUID` | `NOT NULL` | Referencia al contrato corporativo en Subscription. |
| `cooperatives` | `technical_manager_user_id` | `UUID` | `NOT NULL` | Gestor técnico único autorizado de la cooperativa. |
| `cooperative_members` | `id` | `UUID` | `PRIMARY KEY` | Identificador del socio en padrón. |
| `cooperative_members` | `cooperative_id` | `UUID` | `NOT NULL, FK` | Cooperativa a la que pertenece. |
| `cooperative_members` | `producer_user_id` | `UUID` | `NOT NULL` | Usuario productor socio. |
| `cooperative_members` | `full_name` | `VARCHAR(150)` | `NOT NULL` | Nombre civil del socio. |
| `cooperative_members` | `declared_ha` | `NUMERIC(8,2)` | `NOT NULL` | Hectáreas aportadas al padrón. |

##### Script DDL de Base de Datos

```sql
CREATE SCHEMA IF NOT EXISTS cooperative;

CREATE TABLE cooperative.cooperatives (
    id                         UUID PRIMARY KEY,
    name                       VARCHAR(150) NOT NULL,
    tax_id                     VARCHAR(11) NOT NULL UNIQUE,
    license_id                 UUID NOT NULL,
    technical_manager_user_id  UUID NOT NULL,
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
    ON cooperative.cooperatives(technical_manager_user_id);
```

#### Bounded Context Software Architecture Component Level Diagrams

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `CooperativeMemberController` • `CooperativeIntakeController` • `CooperativeRiskController` | API REST para padrón de socios, proyección de acopio y semáforo de riesgo territorial. | Spring MVC, Jakarta Validation |
| **Application Layer** | • `CooperativeCommandService` • `CooperativeQueryService` • `CMD31` | Orquestación de comandos de afiliación y evaluación de riesgos (`CMD31`), y consultas de padrón, acopio y semáforo. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `CooperativeRepository` • `TerritorialRiskAggregationService` • `YieldAggregationDomainService` | Contrato de persistencia (puerto de dominio), agregación de riesgo bioclimático y proyección de rendimiento. | Java puro / DDD |
| **Infrastructure Layer** | • `JpaCooperativeRepositoryAdapter` • `SpringDomainEventPublisher` | Persistencia JPA en PostgreSQL y despacho de eventos de dominio de riesgo territorial. | Spring Data JPA, Spring Events |

##### Flujo de Comunicación y Conectividad
1. El gestor técnico consulta el semáforo territorial con `GET .../territorial-risk?latitude=-18.05&longitude=-70.25` hacia `CooperativeRiskController`.
2. `CooperativeRiskController` delega la consulta en `CooperativeQueryService` (mientras que los comandos de afiliación, suspensión y evaluación formal de riesgo son atendidos por `CooperativeCommandService`, `CMD31`).
3. `CooperativeQueryService` consulta `CooperativeRepository` e interactúa con el servicio de dominio `TerritorialRiskAggregationService` para consolidar alertas de heladas y sobrecarga por sector agroclimático (*Sector Valle Bajo*, *Sector Costa*, *Sector Litoral*).
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

\newpage

---

### Bounded Context: Harvest Settlement and Performance Reporting

**Propósito:** Custodia la memoria productiva consolidada y la emisión de certificaciones oficiales de cosecha de Viora. Es responsable del Aggregate Root `AgronomicReport`, administrando las liquidaciones cuantitativas de pesajes comerciales al cierre de campaña (`HarvestSettlement` bajo `TS39` / `CMD29`), calculando la curva de atenuación interanual de vecería ($ARR$) y la varianza productiva mediante el servicio puro `StabilizationCurveCalculatorService`, vinculando la confirmación de aclareos en verde con el balance final (`POL18` / `EV44`), y emitiendo expedientes agronómicos certificados con firma criptográfica y hash SHA-256 inmutable (`CMD30` / `EV48` / `TS40`), los cuales pueden ser consultados en JSON o descargados en PDF inmutable mediante negociación de contenidos HTTP (`Accept: application/pdf` bajo `TS28`).

#### Domain Layer

##### Modelos del Dominio: `AgronomicReport` (`Aggregate Root`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Aggregate Root |
| **Propósito** | Consolida la memoria productiva auditada de una parcela, evalúa la curva de atenuación de vecería y emite expedientes oficiales certificados. |
| **Relaciones de Dominio** | Referencia a `PlotId `y` UserId`. Compone las liquidaciones anuales de cosecha (`HarvestSettlement`). |

###### Atributos de `AgronomicReport`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `ReportId` | Identificador único del expediente agronómico predial. |
| `plotId` | `PlotId` | Parcela olivarera evaluada. |
| `producerId` | `UserId` | Productor titular de la parcela. |
| `settlements` | `List<HarvestSettlement>` | Liquidaciones históricas de cosecha registradas. |
| `trendCurve` | `StabilizationTrendCurve` | Curva y tasa de atenuación de vecería interanual (ARR). |
| `dossierMetadata` | `DossierMetadata` | Sello criptográfico SHA-256 y firma del auditor colegiado. |

###### Métodos de `AgronomicReport`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `settleCampaign` | `year: CampaignYear`,`greenKg: Double`,`blackKg: Double`,`notes: String` | `HarvestSettlement` | Asienta balance de cosecha y emite `CampaignHarvestSettledEvent` (`EV46`). |
| `evaluateStabilizationTrend` | `calculator: StabilizationCurveCalculatorService` | `void` | Computa varianza interanual y tasa de estabilización de vecería. |
| `compileDossier` | `signature: AuditorSignature`,`pdfGen: AgronomicDossierPdfGenerator` | `byte[]` | Compila expediente binario PDF, estampa SHA-256 y emite `AgronomicDossierGeneratedEvent`. |
| `isStabilizationTargetAchieved` | `void` | `boolean` | Determina si la reducción de fluctuación interanual supera el 30% esperado. |

##### Modelos del Dominio: `HarvestSettlement` (`Internal Entity`)

| Propiedad | Definición en el Dominio |
|:---|:---|
| **Estereotipo DDD** | Internal Entity |
| **Propósito** | Modela la liquidación formal de pesaje y destino comercial de aceituna para una campaña anual concreta. |
| **Relaciones de Dominio** | Subordinada a `AgronomicReport` (1 a N). |

###### Atributos de `HarvestSettlement`

| Atributo | Tipo | Descripción e Invariantes |
|:---|:---|:---|
| `id` | `SettlementId` | Identificador de la liquidación anual. |
| `campaignYear` | `CampaignYear` | Año agrícola liquidado. |
| `greenOlivesWeight` | `OliveWeight` | Kilogramos de aceituna verde entregada (conserva). |
| `blackOlivesWeight` | `OliveWeight` | Kilogramos de aceituna negra entregada (mesa/aceite). |
| `totalHarvestWeight` | `OliveWeight` | Suma consolidada de cosecha en kilogramos. |
| `status` | `SettlementStatus` | Estado:`DRAFT`,`SETTLED`,`AUDITED`. |

###### Métodos de `HarvestSettlement`

| Método | Parámetros | Retorno | Comportamiento e Invariantes |
|:---|:---|:---:|:---|
| `calculateTotalWeight` | `void` | `OliveWeight` | Suma pesajes de verde y negra garantizando consistencia contable. |
| `markAsAudited` | `auditor: AuditorSignature` | `void` | Congela la liquidación bajo sello de auditoría técnica. |

##### Objetos de Valor (Value Objects)

| Value Object | Base Type / Structure | Purpose & Validation Invariants |
|:---|:---|:---|
| `ReportId`,`SettlementId` | `UUID v4` | Identificadores únicos universales inmutables. |
| `CampaignYear` | `Int` | Año de la campaña agrícola (rango $2000 \le year \le 2100$). |
| `OliveWeight` | `Double (Kilogramos)` | Peso exacto en kilos con validación de no negatividad. |
| `StabilizationTrendCurve` | `baselineYield: Double, variance: Double, arr: Double` | Curva de estabilización interanual de vecería. |
| `DossierMetadata` | `verificationHash: String (SHA-256), certifiedAt: Instant` | Metadatos inmutables de sellado criptográfico del expediente. |

##### Servicios de Dominio, Repositorios y Eventos

| Componente | Patrón DDD | Firma / Contrato / Payload | Propósito en el Dominio |
|:---|:---|:---|:---|
| `Stabilization` `Curve` `Calculator` `Service` | Domain Service | `computeCurve(settlements: List<HarvestSettlement>): StabilizationTrendCurve` | Computa varianza interanual y tasa de atenuación de vecería ($ARR$). |
| `Agronomic` `DossierPdf` `Generator` | Output Port | `renderPdf(report: AgronomicReport): byte[]` | Contrato agnóstico para compilar binario PDF con sello criptográfico. |
| `Agronomic` `Report` `Repository` | Repository | `findById(id: ReportId): Optional<AgronomicReport>` | Carga el reporte agronómico por identificador primario. |
| `Agronomic` `Report` `Repository` | Repository | `findByPlotId(plotId: PlotId): Optional<AgronomicReport>` | Recupera el reporte agronómico consolidado de una parcela. |
| `Agronomic` `Report` `Repository` | Repository | `save(report: AgronomicReport): AgronomicReport` | Persiste atómicamente el reporte y sus liquidaciones. |
| `Campaign` `HarvestSettled` `Event` | Domain Event | `reportId: UUID, plotId: UUID, campaignYear: int, totalKg: Double, occurredOn: Instant` | Notifica liquidación anual de cosecha hacia Fenología (`EV46`/`POL07`). |
| `Agronomic` `Dossier` `GeneratedEvent` | Domain Event | `reportId: UUID, plotId: UUID, verificationHash: String, certifiedAt: Instant` | Certifica emisión oficial de expediente con hash SHA-256 (`EV48`). |

#### Interface Layer

##### Controladores y Endpoints REST

| Method | Route (Endpoint) | Request Body (DTO) | Response (DTO / Code) | Purpose & Traceability (US/TS) |
|:-------:|:--------------------------|:------------------------|:------------------------|:-------------------------|
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} | `Settle` `Harvest` `Request` | `Harvest` `Settlement` `Resource` (201 Created) | Asienta liquidación anual de cosecha (`TS39`/`US29`/`CMD29`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} | N/A (`?campaignYear=`) | `List` `Harvest` `Settlement` `Resource`(200 OK) | Lista histórica de liquidaciones prediales (`TS39`/`US29`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements/{settlementId}} | N/A | `Harvest` `Settlement` `Resource` (200 OK) | Consulta liquidación puntual por su UUID (`TS39`/`US29`). |
| `GET` | \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports} | N/A (`Accept: application/json `o` application/pdf`) | `Agronomic` `Report` `Resource`/`byte[]`(200 OK) | Consulta métricas (JSON) o descarga expediente oficial en PDF mediante Content Negotiation (`TS28`/`US30`). |
| `POST` | \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports/certifications} | `Certify` `Dossier` `Request` | `Dossier` `Certification` `Resource` (201 Created) | Emite certificación colegiada oficial y estampa hash SHA-256 (`TS40`/`US30`/`CMD30`). |

##### DTOs (Resources) y Mappers (Assemblers)

| Component | Type | Mapping / Structure | Purpose |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `Settle` `HarvestRequest` | Request DTO | `{ campaignYear: Int, greenOlivesKg: Double, blackOlivesKg: Double, notes: String }` | Datos del pesaje comercial asentado. |
| `Certify` `DossierRequest` | Request DTO | `{ auditorSignature: String, notes: String }` | Solicitud de certificación formal colegiada. |
| `Harvest` `SettlementResource` | Response DTO | `{ id: UUID, campaignYear: Int, totalYieldKg: Double, status: String, settledAt: Instant }` | Representación de liquidación anual. |
| `Agronomic` `ReportResource` | Response DTO | `{ reportId: UUID, interannualVariance: Double, amplitudeReductionRate: Double, isEffective: Boolean }` | Resumen de estabilización interanual. |
| `GenerateAgronomic` `DossierCommandAssembler` | Assembler | `toCommand(CertifyDossierRequest, plotId): `GenerateAgronomicDossierCommand` | Ensamblador alineado al comando canónico `CMD30`. |
#### Application Layer

##### Orquestación de Casos de Uso (Handlers)

| Handler | Type | Input Message (Command/Query/Event) | Orchestration Flow & Transactionality |
|:----------------------------------|:-----------------|:-----------------------------------|:---------------------------------------|
| `SettleCampaignHarvestCommandHandler` | Command Handler | `SettleCampaignHarvestCommandCMD29` | Inicia`@Transactional`, valida año único, calcula totales, recalcula curva y emite `EV46 `y` EV47`. |
| `GenerateAgronomicDossierCommandHandler` | Command Handler | `GenerateAgronomicDossierCommandCMD30` | Carga reporte, compila PDF con `AgronomicDossierPdfGenerator`, estampa hash SHA-256 y emite `EV48`. |
| `GetAgronomicDossierQueryHandler` | Query Handler | `GetAgronomicDossierQueryTS28` | Retorna flujo binario inmutable del PDF o metadatos JSON según encabezado `Accept `negociado. |
| `OnThinningExecutionConfirmedEventHandler` | Event Handler | `ThinningExecutionConfirmedEventEV44` | Vincula remoción en verde con el balance final cosechado en fin de campaña (`POL18`/`US29`). |
| `OnHistoricalBearingIndexAssessedEventHandler` | Event Handler | `BiennialBearingIndexAssessedEventEV27` | Recibe $BBI$ de Fenología y actualiza índices de contraste para la curva de atenuación. |

#### Infrastructure Layer

##### Componentes y Adaptadores Técnicos

| Component | Package / Role | Technology | Technical Responsibility |
|:----------------------------------|:-----------------|:-----------------|:----------------------------------------|
| `AgronomicReportJpaRepository` | Persistence | Spring Data JPA | Acceso a tablas de reporte y liquidaciones en PostgreSQL. |
| `JpaAgronomicReportRepositoryAdapter` | Adapter | Spring Component | Implementa el puerto de dominio `AgronomicReportRepository`. |
| `OpenPdfAgronomicDossierAdapter` | PDF Adapter | OpenPDF / iText | Renderizado en memoria del expediente técnico inmutable en PDF. |

##### Diccionario de Datos Relacional (PostgreSQL)

| Table | Column | SQL Type (PostgreSQL) | Constraints / Indexes | Description & Domain Meaning |
|:---|:---|:---|:---|:---|
| `agronomic_reports` | `id` | `UUID` | `PRIMARY KEY` | Identificador del expediente agronómico. |
| `agronomic_reports` | `plot_id` | `UUID` | `NOT NULL, UNIQUE` | Parcela asociada. |
| `agronomic_reports` | `producer_id` | `UUID` | `NOT NULL` | Productor titular. |
| `agronomic_reports` | `interannualvariance` | `NUMERIC(8,2)` | `NOT NULL DEFAULT 0` | Varianza de rendimiento entre campañas. |
| `agronomic_reports` | `amplitudereductionrate` | `NUMERIC(5,2)` | `NOT NULL DEFAULT 0` | Tasa de reducción de alternancia ($ARR$). |
| `agronomic_reports` | `verification_hash` | `VARCHAR(64)` | `NULL` | Hash SHA-256 del expediente certificado. |
| `harvestsettlements` | `id` | `UUID` | `PRIMARY KEY` | Identificador único de la liquidación anual. |
| `harvestsettlements` | `report_id` | `UUID` | `NOT NULL, FK` | Reporte agronómico al que pertenece. |
| `harvestsettlements` | `campaign_year` | `INT` | `NOT NULL` | Año agrícola liquidado. |
| `harvestsettlements` | `green_olives_kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (>= 0)` | Kilos cosechados de aceituna verde. |
| `harvestsettlements` | `black_olives_kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (>= 0)` | Kilos cosechados de aceituna negra. |
| `harvestsettlements` | `total_yield_kg` | `NUMERIC(10,2)` | `NOT NULL CHECK (> 0)` | Kilos totales consolidados de la campaña. |
| `harvestsettlements` | `status` | `VARCHAR(30)` | `NOT NULL` | Estado (`AUDITED`,`SETTLED`). |

##### Script DDL de Base de Datos

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

##### Descomposición de Componentes por Capa

| Architectural Layer | Main Component(s) | Architectural Responsibility | Key Technologies |
|:---------------------|:------------------------------------------------|:--------------------------------------|:-------------------|
| **Interface Layer** | • `PlotHarvestSettlementController` • `PlotAgronomicReportController` | API REST para liquidación anual, métricas y descarga oficial de informe colegiado vía Content Negotiation. | Spring MVC, Content Negotiation |
| **Application Layer** | • `HarvestSettlementCommandService` • `AgronomicReportQueryService` • `CMD29` • `CMD30` | Orquestación de comandos de liquidación (`CMD29`,`CMD30`), certificación colegiada y consultas con streaming de PDF. | Spring`@Transactional`,`@Service` |
| **Domain Layer** | • `AgronomicReportRepository` • `StabilizationCurveCalculatorService` | Contrato de persistencia (puerto de dominio) y servicio de cálculo de curva de atenuación de vecería ($ARR$). | Java puro / DDD |
| **Infrastructure Layer** | • `JpaAgronomicReportRepositoryAdapter` • `OpenPdfAgronomicDossierAdapter` • `SpringDomainEventPublisher` | Persistencia en PostgreSQL, compilación binaria OpenPDF con hash SHA-256 y publicación de eventos. | Spring Data JPA, OpenPDF |

##### Flujo de Comunicación y Conectividad
1. El productor asienta la cosecha anual enviando `POST` \nolinkurl{/api/v1/plots/{plotId}/harvest-settlements} hacia `PlotHarvestSettlementController`.
2. `PlotHarvestSettlementController` delega el comando `SettleCampaignHarvestCommand` (`CMD29`) en `HarvestSettlementCommandService`.
3. `HarvestSettlementCommandService` carga el reporte desde `AgronomicReportRepository`, valida las reglas y delega en `StabilizationCurveCalculatorService` la actualización de la varianza interanual y la tasa de atenuación de vecería ($ARR$).
4. Se persiste el cierre mediante `AgronomicReportRepository` y se despacha `CampaignHarvestSettledEvent` (`EV46`) vía `SpringDomainEventPublisher` hacia *Phenology* (`POL07` / `POL12`).
5. Ante la solicitud `POST` \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports/certification}, `HarvestSettlementCommandService` compila el expediente colegiado (`CMD30`), estampa la firma con `OpenPdfAgronomicDossierAdapter`, genera el hash SHA-256 inmutable y emite `EV48`.
6. Ante `GET` \nolinkurl{/api/v1/plots/{plotId}/agronomic-reports} con cabecera `Accept: application/pdf`, `AgronomicReportQueryService` consulta `AgronomicReportRepository` y delega en `OpenPdfAgronomicDossierAdapter` transmitiendo el binario inmutable del informe oficial en streaming directo con hash SHA-256 (`TS28`).

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

\newpage