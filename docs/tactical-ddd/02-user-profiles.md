# Tactical-Level Domain-Driven Design: User Profiles

### Bounded Context: User Profiles

**Propósito:** Gestiona la identidad civil, la información personal de contacto y la acreditación de productores olivareros y gestores técnicos dentro de la plataforma Viora. En la línea de tiempo del sistema, el perfil se crea y formaliza inmediatamente después del primer inicio de sesión autenticado del usuario, cuando la aplicación cliente detecta la ausencia de un perfil asignado a la nueva cuenta. Centraliza la custodia del nombre completo, país de residencia y número telefónico validado internacionalmente bajo el estándar E.164 mediante la biblioteca `libphonenumber`. Se vincula de forma desacoplada con el Bounded Context de *Identity and Access Management (IAM)* mediante una referencia lógica al identificador de cuenta (`UserId`), garantizando canales de comunicación auditables y fidedignos indispensables para la afiliación gremial en *Cooperative Operations*, la contratación de planes en *Subscription & Cooperative Membership* y el despacho de notificaciones operativas en campo.

---

#### Domain Layer

En esta capa se modela la lógica pura de la identidad civil de los usuarios de Viora, independiente de frameworks web o mecanismos de persistencia relacional. Comprende el agregado de perfil de usuario, objetos de valor inmutables para nombre, país y teléfono, eventos de dominio e interfaces de persistencia.

##### Aggregates y Entities

###### Profile (Aggregate Root)
* **Propósito:** Encapsula y protege la coherencia transaccional de los datos de contacto y la identidad civil de un usuario en Viora, asegurando la correspondencia unívoca con una cuenta de acceso.
* **Atributos:**
  * `id: ProfileId` (Identificador único universal del perfil / UUID)
  * `userId: UserId` (Referencia foránea lógica al identificador de cuenta en IAM)
  * `fullName: FullName` (Nombre y apellidos del titular)
  * `country: Country` (Código de país de residencia bajo ISO 3166-1 alpha-2)
  * `phoneNumber: PhoneNumber` (Número de contacto telefónico normalizado bajo el estándar E.164)
* **Métodos:**
  * `create(userId: UserId, fullName: FullName, country: Country, phoneNumber: PhoneNumber): Profile` - Constructor de fábrica que inicializa el perfil formalizado y genera el evento de creación `ProfileCreatedEvent`.
  * `updateContactInfo(newFullName: FullName, newCountry: Country, newPhoneNumber: PhoneNumber): void` - Actualiza los datos de contacto del usuario tras verificar su validez y emite el evento de dominio `ContactProfileUpdatedEvent`.
* **Invariantes y Reglas de Negocio:**
  1. Cada cuenta de acceso (`UserId`) puede poseer exactamente un único `Profile` en el sistema (relación biunívoca 1:1).
  2. El nombre completo es obligatorio, no puede consistir exclusivamente en espacios en blanco y debe contar con una longitud mínima de 2 caracteres y máxima de 150 caracteres alfabéticos válidos.
  3. El número telefónico es obligatorio y debe validar rigurosamente su longitud, estructura y prefijo de marcación nacional según el país seleccionado mediante el estándar E.164.
  4. El `UserId` asignado durante la creación del perfil es inmutable; no puede transferirse ni reasignarse a otra cuenta de acceso.

##### Value Objects (Conceptuales e Inmutables)
* **`ProfileId`**: Identificador único global fuertemente tipado encapsulando un valor `UUID`.
* **`UserId`**: Encapsula un valor `UUID` inmutable que actúa como referencia externa lógica hacia la cuenta registrada en IAM.
* **`FullName`**: Cadena inmutable validada que almacena el nombre y apellidos completos; valida en su constructor que no sea nula, no esté en blanco y satisfaga el rango de 2 a 150 caracteres. Lanza excepción de dominio ante cualquier incumplimiento.
* **`Country`**: Objeto inmutable que representa el código de país de residencia estandarizado bajo la norma ISO 3166-1 alpha-2 (ej. `PE`, `CL`, `ES`).
* **`PhoneNumber`**: Objeto inmutable que encapsula el número telefónico normalizado en formato internacional E.164 (ej. `+51952123456`), garantizando su validez estructural antes de ser asignado al agregado.

##### Repositories (Interfaces en Domain)
Contratos agnósticos de persistencia definidos en la capa de dominio:
* **`ProfileRepository`**:
  * `findById(id: ProfileId): Optional<Profile>`
  * `findByUserId(userId: UserId): Optional<Profile>`
  * `existsByUserId(userId: UserId): boolean`
  * `save(profile: Profile): Profile`

##### Domain Events
Eventos inmutables en tiempo pasado que señalan hitos de formalización de identidad:
* **`ProfileCreatedEvent`**: `{ profileId: UUID, userId: UUID, fullName: String, country: String, phoneNumber: String, occurredOn: Instant }`
  * *Disparado cuando:* El usuario formaliza su perfil civil inicial en el flujo de incorporación a la plataforma (`US43`, `TS35`, `CMD07`), habilitando la contratación de membresías y la gestión agronómica.
* **`ContactProfileUpdatedEvent`**: `{ profileId: UUID, userId: UUID, fullName: String, country: String, phoneNumber: String, occurredOn: Instant }`
  * *Disparado cuando:* El usuario modifica su nombre o número telefónico desde los ajustes de su cuenta (`US03`, `CMD08`), permitiendo sincronizar la información hacia el padrón de socios en *Cooperative Operations*.

---

#### Interface Layer

Expone los puntos de entrada HTTP mediante controladores REST orientados a recursos para la creación, consulta y actualización de perfiles de usuario, desacoplados de detalles internos del dominio.

##### Controllers (REST)
Diseño basado estrictamente en recursos (sustantivos en plural) y verbos HTTP estándar, alineado con los contratos oficiales del reporte (`TS04`, `TS05`, `TS35`) y con las User Stories funcionales de perfil (`US03`, `US43`):

* **`ProfilesController`** (Ruta base: `/api/v1/profiles`):
  * `POST /api/v1/profiles` - Registra y formaliza el perfil civil inicial del usuario autenticado en onboarding (`TS35`, `US43`, `CMD07`). Requiere cabecera `Authorization: Bearer <JWT>` y cuerpo JSON con datos de contacto. Extrae el `userId` del claim del token y valida el teléfono con `libphonenumber`. Retorna `201 Created` con `ProfileResource`. Respuestas de error: `400 Bad Request` (teléfono inválido bajo norma E.164), `401 Unauthorized` (token ausente o corrupto), `409 Conflict` (perfil ya existente para dicho usuario).
  * `GET /api/v1/profiles/{userId}` - Consulta la información de perfil y contacto asociada a un identificador de usuario (`TS04`, `US03`). Valida que el `userId` solicitado coincida con el claim del token o que el solicitante cuente con privilegios de administración (*Owner Check*). Retorna `200 OK` con `ProfileResource`. Respuestas de error: `401 Unauthorized`, `403 Forbidden` (intento de acceso a perfil ajeno), `404 Not Found` (perfil no registrado para dicho usuario).
  * `PATCH /api/v1/profiles/{userId}` - Actualización parcial de nombre completo, país o número telefónico con validación E.164 (`TS05`, `US03`, `CMD08`). Valida la titularidad de la cuenta y verifica el nuevo teléfono mediante `libphonenumber`. Retorna `200 OK` con `ProfileResource` actualizado. Respuestas de error: `400 Bad Request` (teléfono no cumple norma E.164 o país inválido), `401 Unauthorized`, `403 Forbidden` (intento de mutación de cuenta ajena), `404 Not Found`.

##### Resources (DTOs / Request & Response Models)
* **`CreateProfileRequest`**: `{ fullName: String, country: String, phoneNumber: String }` (Payload recibido en POST; el identificador `userId` se extrae de forma segura del claim `sub` del token JWT autenticado para garantizar integridad de identidad).
* **`UpdateContactProfileRequest`**: `{ fullName: String, country: String, phoneNumber: String }` (Payload recibido en PATCH para modificación parcial de datos de contacto).
* **`ProfileResource`**: `{ id: UUID, userId: UUID, fullName: String, country: String, phoneNumber: String, createdAt: Instant }` (DTO de respuesta consolidada con datos del titular, teléfono normalizado E.164 y marca temporal de creación).

##### Assemblers / Mappers
* **`ProfileResourceFromEntityAssembler`**: Mapea el Aggregate `Profile` hacia el DTO `ProfileResource`.
* **`CreateProfileCommandFromResourceAssembler`**: Transforma el `userId` autenticado del token y el payload `CreateProfileRequest` en `CreateProfileCommand`.
* **`UpdateContactProfileCommandFromResourceAssembler`**: Transforma el parámetro de ruta `userId` junto al payload `UpdateContactProfileRequest` en `UpdateContactProfileCommand`.

---

#### Application Layer

Orquesta los casos de uso de gestión de perfil, gestiona los límites transaccionales de cada comando, delega en servicios de dominio y despacha eventos a componentes locales o asíncronos.

##### Outbound Ports (Servicios de Aplicación)
* **`PhoneValidationService`**: Puerto de salida que define los contratos de validación y normalización telefónica internacional bajo el estándar E.164:
  * `isValid(rawNumber: String, country: Country): boolean`
  * `formatToE164(rawNumber: String, country: Country): String`

##### Command Handlers
* **`CreateProfileCommandHandler`**:
  * *Entrada:* `CreateProfileCommand` (corresponde a `CMD07` y `TS35`)
  * *Flujo:* Comprueba que no exista un perfil previo para el `userId` en `ProfileRepository` (invariante 1:1) -> valida el número telefónico contra el país mediante `phoneValidationService.isValid(command.phoneNumber, country)` -> construye los Value Objects `FullName`, `Country` y `PhoneNumber` (normalizado a E.164) -> instancia el Aggregate `Profile` invocando `Profile.create(...)` -> persiste en `ProfileRepository` -> publica `ProfileCreatedEvent`.
* **`UpdateContactProfileCommandHandler`**:
  * *Entrada:* `UpdateContactProfileCommand` (corresponde a `CMD08` y `TS05`)
  * *Flujo:* Recupera el agregado por `userId` en `ProfileRepository` -> valida el nuevo número de teléfono contra el país mediante `phoneValidationService.isValid(command.phoneNumber, country)` -> construye los nuevos Value Objects -> ejecuta `profile.updateContactInfo(...)` -> persiste los cambios en `ProfileRepository` -> publica `ContactProfileUpdatedEvent`.

##### Query Handlers
* **`GetProfileByUserIdQueryHandler`**: Resuelve `GetProfileByUserIdQuery` recuperando el agregado desde `ProfileRepository` y transformándolo en `ProfileResource` mediante el Assembler (`TS04`).
* **`GetProfileByIdQueryHandler`**: Resuelve la consulta directa por identificador interno `ProfileId`.

##### Event Handlers
* **`OnContactProfileUpdatedEventHandler`**:
  * *Disparador:* Escucha `ContactProfileUpdatedEvent` (`EV09`).
  * *Acción:* Notifica a los módulos colaboradores (como *Cooperative Operations*) para actualizar el directorio de contactos del productor en el padrón técnico.

---

#### Infrastructure Layer

Implementa la persistencia física en PostgreSQL mediante Spring Data JPA, el adaptador de validación telefónica mediante Google libphonenumber y las configuraciones de auditoría y seguridad.

##### 1. Paquetes y componentes principales
* **Persistence:**
  * `ProfileJpaRepository`: Interfaz Spring Data JPA que extiende `JpaRepository<ProfileJpaEntity, UUID>` declarando consultas derivadas como `findByUserId(UUID userId)` y `existsByUserId(UUID userId)`.
  * `JpaProfileRepositoryAdapter`: Adaptador de repositorio con `@Repository` que implementa la interfaz de puerto de dominio `ProfileRepository`, delegando en `ProfileJpaRepository` y mapeando mediante `ProfileEntityMapper`.
  * `ProfileJpaEntity`: Entidad mapeada mediante anotaciones JPA (`@Entity`, `@Table(name = "profiles")`).
  * `ProfileEntityMapper`: Ensamblador bidireccional entre el Aggregate `Profile` y `ProfileJpaEntity`.
* **Adapters / External Services:**
  * `LibphonenumberAdapter`: Implementa el puerto de salida `PhoneValidationService` encapsulando la biblioteca Google `libphonenumber` (`com.googlecode.libphonenumber:libphonenumber`) para formateo estricto E.164 y validación por país.
* **Events:**
  * `SpringEventPublisher`: Publica eventos de dominio en el bus interno de la aplicación mediante `ApplicationEventPublisher`.
* **Configuration:**
  * `ProfileJpaConfig`: Configura la persistencia transaccional y auditoría JPA (`@EnableJpaAuditing`) para la tabla de perfiles.

##### 2. Modelo de datos y mapeos
Estructura relacional en PostgreSQL para la tabla de perfiles de usuario:

* **Tabla: `profiles`**
  ```sql
  CREATE TABLE profiles (
      id           UUID PRIMARY KEY,
      user_id      UUID NOT NULL,
      full_name    VARCHAR(150) NOT NULL,
      country      VARCHAR(50)  NOT NULL,
      phone_number VARCHAR(25)  NOT NULL,
      created_at   TIMESTAMPTZ  NOT NULL,
      updated_at   TIMESTAMPTZ  NOT NULL
  );
  ```
* **Índices y Restricciones:**
  * Índice único de cuenta: `CREATE UNIQUE INDEX uq_profiles_user_id ON profiles(user_id);`
  * Índice de búsqueda por teléfono: `CREATE INDEX idx_profiles_phone_number ON profiles(phone_number);`
  * Restricción CHECK de longitud: `CHECK (length(trim(full_name)) >= 2)`

* **Mapeo Entity <-> Persistencia:**
  * Dominio -> DB: `profile.getId().getValue() -> jpaEntity.setId()`, `profile.getUserId().getValue() -> jpaEntity.setUserId()`, `profile.getFullName().getValue() -> jpaEntity.setFullName()`, `profile.getCountry().getValue() -> jpaEntity.setCountry()`, `profile.getPhoneNumber().getValue() -> jpaEntity.setPhoneNumber()`.
  * DB -> Dominio: Reconstrucción del agregado invocando su método factoría privado sin disparar eventos de registro.

##### 3. Repositories – Implementación
* **`JpaProfileRepositoryAdapter`**:
  * Implementa `ProfileRepository` del Domain Layer inyectando `ProfileJpaRepository`.
  * Ejecuta consultas derivadas sobre Spring Data JPA como `findByUserId(UUID userId)` y `existsByUserId(UUID userId)`.
  * Gestiona transacciones acotadas con `@Transactional(readOnly = true)` en consultas y `@Transactional` en modificaciones.
  * Garantiza el cumplimiento de la restricción de un solo perfil por usuario capturando violaciones de unicidad a nivel de persistencia.

##### 4. Seguridad & Resiliencia
* **Validación Telefónica Rigurosa:** Estandarización y validación estricta en formato E.164 mediante `libphonenumber` previo a la persistencia, impidiendo la entrada de datos telefónicos inválidos o corruptos en canales de notificación.
* **Control de Autorización y Titularidad (Owner Check):** En los endpoints `/api/v1/profiles/{userId}`, el filtro de seguridad y el controlador validan que el `userId` solicitado coincida exactamente con el claim del token JWT (`sub` / `userId`), denegando la consulta o modificación con `403 Forbidden` ante intentos de acceso a perfiles ajenos (`TS04`, `TS05`).
* **Auditoría Inmutable:** Registro riguroso de marcas temporales de creación y modificación en UTC (`created_at`, `updated_at`) mediante `@CreatedDate` y `@LastModifiedDate`.

---

#### Bounded Context Software Architecture Component Level Diagrams

##### 1. Descomposición de Componentes por Capa
* **Interface / API Layer:** `ProfilesController` recibe y valida las solicitudes HTTP de creación (`POST /api/v1/profiles`), consulta (`GET /api/v1/profiles/{userId}`) y actualización (`PATCH /api/v1/profiles/{userId}`).
* **Application Layer:** `CreateProfileCommandHandler` y `UpdateContactProfileCommandHandler` procesan las mutaciones de estado; `GetProfileByUserIdQueryHandler` resuelve las lecturas de información civil, coordinando transacciones y publicación de eventos.
* **Domain Layer:** El Aggregate Root `Profile` custodia las invariantes de identidad y contacto; los Value Objects `ProfileId`, `UserId`, `FullName`, `Country` y `PhoneNumber` aseguran inmutabilidad y tipado fuerte, y `ProfileRepository` declara los contratos esenciales de persistencia.
* **Infrastructure Layer:** `JpaProfileRepositoryAdapter` interactúa con PostgreSQL mediante Spring Data JPA (`ProfileJpaRepository`); `LibphonenumberAdapter` resuelve la normalización internacional de teléfonos y `SpringEventPublisher` propaga los eventos del dominio.

##### 2. Flujo de Comunicación y Conectividad
1. **Flujo de Creación Inicial en Onboarding (Timeline post-autenticación):**
   * Tras autenticarse por primera vez en IAM (`TS02`), la aplicación cliente detecta que la cuenta no tiene un perfil asociado (`GET /api/v1/profiles/{userId}` retorna `404 Not Found`).
   * La app solicita al usuario completar sus datos y envía una solicitud HTTP `POST /api/v1/profiles` con `{ fullName, country, phoneNumber }` y la cabecera `Authorization: Bearer <JWT>` (`CreateProfileRequest`, `TS35`, `CMD07`).
   * `JwtAuthenticationFilter` extrae el `userId` del claim `sub` del token autenticado.
   * `CreateProfileCommandHandler` valida que no exista un perfil previo (invariante 1:1) e invoca a `PhoneValidationService` (`LibphonenumberAdapter`) para verificar y formatear el número bajo la norma E.164.
   * Se instancia el agregado `Profile.create(...)`, se persiste en PostgreSQL mediante `JpaProfileRepositoryAdapter` y se publica `ProfileCreatedEvent`, habilitando la operatividad del usuario en la plataforma. El controlador responde `201 Created` con `ProfileResource`.
2. **Flujo de Actualización Parcial de Contacto (`PATCH /api/v1/profiles/{userId}`):**
   * El cliente autenticado envía una solicitud HTTP `PATCH /api/v1/profiles/{userId}` con `{ fullName, country, phoneNumber }` en el cuerpo JSON junto al token Bearer (`UpdateContactProfileRequest`, `TS05`, `CMD08`).
   * `JwtAuthenticationFilter` extrae el token y valida que el `userId` autenticado coincida con el parámetro de ruta (`Owner Check`).
   * `ProfilesController` delega en `UpdateContactProfileCommandFromResourceAssembler` para generar `UpdateContactProfileCommand`.
   * `UpdateContactProfileCommandHandler` recibe el comando y solicita a `ProfileRepository` la recuperación del perfil correspondiente.
   * El handler invoca a `PhoneValidationService` (`LibphonenumberAdapter`) para certificar que el número cumpla la norma E.164 para el país indicado.
   * Se ejecuta `profile.updateContactInfo(...)` aplicando los nuevos objetos de valor y encolando `ContactProfileUpdatedEvent`.
   * El repositorio ejecuta el guardado sobre PostgreSQL mediante JPA y se despacha el evento de dominio, respondiendo HTTP `200 OK` con `ProfileResource` actualizado.

---

#### Bounded Context Software Architecture Code Level Diagrams

##### Bounded Context Domain Layer Class Diagrams

##### 1. Estructura de Clases y Estereotipos
* **`Profile` (Aggregate Root):**
  * *Atributos Privados (`-`):* `- id: ProfileId`, `- userId: UserId`, `- fullName: FullName`, `- country: Country`, `- phoneNumber: PhoneNumber`.
  * *Métodos Públicos (`+`):*
    * `+ create(userId: UserId, fullName: FullName, country: Country, phoneNumber: PhoneNumber): Profile`: Instancia el perfil emitiendo `ProfileCreatedEvent`.
    * `+ updateContactInfo(newFullName: FullName, newCountry: Country, newPhoneNumber: PhoneNumber): void`: Actualiza los datos de contacto validando invariantes y emite `ContactProfileUpdatedEvent`.
* **`ProfileId` (Value Object):** Encapsula el identificador único `UUID` (`- value: UUID`, `+ getValue(): UUID`).
* **`UserId` (Value Object):** Encapsula el `UUID` de la cuenta de IAM asociada (`- value: UUID`, `+ getValue(): UUID`).
* **`FullName` (Value Object):** Encapsula el nombre y apellidos validados (`- value: String`, `+ getValue(): String`).
* **`Country` (Value Object):** Encapsula el código de país ISO 3166-1 alpha-2 (`- value: String`, `+ getValue(): String`).
* **`PhoneNumber` (Value Object):** Encapsula el número telefónico formateado E.164 (`- value: String`, `+ getValue(): String`).
* **`ProfileRepository` (Interface):** Contrato de persistencia en dominio:
  * `+ findById(id: ProfileId): Optional<Profile>`
  * `+ findByUserId(userId: UserId): Optional<Profile>`
  * `+ existsByUserId(userId: UserId): boolean`
  * `+ save(profile: Profile): Profile`

##### 2. Relaciones y Conectividad entre Clases
* **Composición y Cardinalidad (`1 *-->`):**
  * `Profile "1" *--> "1" ProfileId`: Todo perfil posee obligatoriamente una identidad única universal.
  * `Profile "1" *--> "1" UserId`: Todo perfil está vinculado unívocamente a una cuenta de acceso mediante referencia débil por ID.
  * `Profile "1" *--> "1" FullName`: Todo perfil contiene exactamente un nombre civil válido.
  * `Profile "1" *--> "1" Country`: Todo perfil registra un país de residencia.
  * `Profile "1" *--> "1" PhoneNumber`: Todo perfil custodia un número telefónico validado.
* **Dependencia de Repositorio (`..>`):** La interfaz `ProfileRepository ..> Profile` gestiona exclusivamente instancias del aggregate root.
* **Independencia hacia otros Bounded Contexts:** User Profiles no posee dependencias binarias directas hacia IAM ni otros contextos; mantiene un acoplamiento débil (*Reference by Identity*) hacia la cuenta mediante el Value Object `UserId`, y se comunica hacia contextos aguas abajo (*Downstream*, como *Cooperative Operations*) mediante la emisión de eventos de dominio inmutables (`ProfileCreatedEvent`, `ContactProfileUpdatedEvent`).

##### Bounded Context Database Design Diagram

##### 1. Tablas y Estructura de Claves
* **Tabla Principal: `profiles`**
  * `id` (UUID, Primary Key): Identificador único del perfil.
  * `user_id` (UUID, NOT NULL, UNIQUE): Identificador del usuario propietario (referencia foránea lógica a `user_accounts.id`).
  * `full_name` (VARCHAR(150), NOT NULL): Nombre y apellidos civiles.
  * `country` (VARCHAR(50), NOT NULL): Código de país de residencia.
  * `phone_number` (VARCHAR(25), NOT NULL): Número telefónico normalizado bajo estándar E.164.
  * `created_at` (TIMESTAMPTZ, NOT NULL): Marca temporal de registro del perfil.
  * `updated_at` (TIMESTAMPTZ, NOT NULL): Marca temporal de última modificación.

##### 2. Relaciones y Cardinalidad Relacional
* **Relación Lógica 1 a 1 con IAM:** Cada registro de la tabla `profiles` se asocia exactamente a una fila de `user_accounts` en el contexto de identidad mediante `user_id`. Se preserva la modularidad de esquemas sin añadir restricciones físicas `FOREIGN KEY` entre contextos independientes.
* **Aplanamiento de Value Objects:** Los Value Objects `FullName`, `Country` y `PhoneNumber` se aplanan directamente como columnas simples en la tabla `profiles`, sin requerir tablas de unión adicionales.

##### 3. Índices y Reglas de Integridad
* **Índice Único:** `uq_profiles_user_id` sobre `user_id` para garantizar que ninguna cuenta de acceso posea más de un perfil activo.
* **Índice de Búsqueda:** `idx_profiles_phone_number` sobre `phone_number` para optimizar consultas de verificación telefónica.
* **Restricción CHECK:** Validación de longitud mínima para evitar nombres en blanco: `CHECK (length(trim(full_name)) >= 2)`.
