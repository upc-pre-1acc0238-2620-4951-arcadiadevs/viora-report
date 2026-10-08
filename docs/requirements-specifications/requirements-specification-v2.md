# Especificación de Requisitos del Ecosistema Viora

Esta sección contiene la especificación formal de los requisitos de los productos digitales que integran el ecosistema Viora, articulando las necesidades de los productores olivareros independientes y de los gestores técnicos de organizaciones olivareras con los servicios de backend y la presencia digital del negocio.

El presente documento consolida exclusivamente el **Product Backlog** priorizado, las **Historias de Usuario (HU)**, las **Historias Técnicas (TS)** y las **Spike Stories (SPK)** de investigación técnica, estructurados bajo las **Épicas (EP)** del sistema y con criterios de aceptación comprobables bajo el formato BDD / Gherkin (*Given-When-Then*).

## Tabla de Contenidos

1. [Épicas del Ecosistema (EP01 a EP15)](#1-épicas-del-ecosistema-viora)
2. [Historias de Usuario - User Stories (US01 a US43)](#2-historias-de-usuario-user-stories)
3. [Historias Técnicas - Technical Stories (TS01 a TS55)](#3-historias-técnicas-technical-stories)
4. [Spikes de Viabilidad Técnica (SPK01 a SPK03)](#4-spikes-de-viabilidad-técnica-spike-stories)
5. [Product Backlog Priorizado (101 Ítems)](#5-product-backlog-priorizado)

---

## 1. Épicas del Ecosistema Viora

En esta sección se definen las 15 Épicas del ecosistema Viora, estructuradas a partir de la línea de tiempo agronómica y los focos de incertidumbre identificados en el dominio del olivar (*Unmeasured Crop Load* y *Lack of History*). Las épicas abarcan la gestión de identidad, suscripciones SaaS, delimitación geoespacial, monitoreo agroclimático, motor fenológico de vecería, regulación de carga y aclareo, inteligencia territorial cooperativa, presencia web y los contratos de integración para backend y aplicaciones cliente.

### EP01: Gestión de Identidad, Acceso y Perfil de Usuario

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP01** | Productor Olivarero / Gestor Técnico | Alta | EP01 |

| Title |
| :--- |
| Gestión de Identidad, Acceso y Perfil de Usuario |

| Description |
| :--- |
| **Como** usuario de Viora (Productor Olivarero o Gestor Técnico), **quiero** registrarme, autenticarme con credenciales seguras y gestionar mis datos de contacto, **para** acceder a la plataforma con las vistas, privilegios y seguridad correspondientes a mi rol. |

---

### EP02: Gestión de Suscripciones SaaS y Membresía Cooperativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP02** | Productor Olivarero / Gestor Técnico | Alta | EP02 |

| Title |
| :--- |
| Gestión de Suscripciones SaaS y Membresía Cooperativa |

| Description |
| :--- |
| **Como** usuario de Viora (Productor Olivarero o Gestor Técnico), **quiero** gestionar mi modalidad de suscripción (mediante pago digital en línea para planes individuales o canje de código de activación de cooperativa) y administrar cupos corporativos, **para** habilitar y mantener activo el acceso a los servicios de la plataforma. |

---

### EP03: Delimitación Georreferenciada y Gestión de Parcelas

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP03** | Productor Olivarero / Gestor Técnico | Alta | EP03 |

| Title |
| :--- |
| Delimitación Georreferenciada y Gestión de Parcelas |

| Description |
| :--- |
| **Como** usuario de Viora (Productor Olivarero o Gestor Técnico), **quiero** delimitar espacialmente mis parcelas con el sensor GPS interno y mapas satelitales, registrando la caracterización agronómica de variedad de olivo cultivada, marco de plantación y densidad de árboles por hectárea, así como consultar la cartera georreferenciada de predios socios, **para** estructurar la base territorial y dendrométrica del olivar y optimizar las rutas de asistencia técnica en campo. |

---

### EP04: Monitoreo Agroclimático y Dispositivos de Parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP04** | Productor Olivarero | Alta | EP04 |

| Title |
| :--- |
| Monitoreo Agroclimático y Dispositivos de Parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** vincular nodos sensores a mis lotes, consultar las series periódicas de temperatura, humedad ambiental y suelo, y revisar los pronósticos meteorológicos de la zona, **para** vigilar el microclima de mi unidad productiva y anticipar condiciones climáticas desfavorables. |

---

### EP05: Diagnóstico Histórico de Vecería y Cómputo de Frío Invernal

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP05** | Productor Olivarero | Alta | EP05 |

| Title |
| :--- |
| Diagnóstico Histórico de Vecería y Cómputo de Frío Invernal |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** registrar las cosechas de campañas previas, calcular automáticamente mi índice BBI de alternancia y monitorear la acumulación de frío invernal con alerta por picos térmicos de efecto ENOS, para conocer la severidad histórica de la alternancia en mi fundo y prever el potencial floral de la temporada. |

---

### EP06: Regulación de Carga Frutal y Prescripción de Aclareo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP06** | Productor Olivarero | Alta | EP06 |

| Title |
| :--- |
| Regulación de Carga Frutal y Prescripción de Aclareo |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** realizar muestreos guiados de cuajado en campo operando sin conexión a internet mediante persistencia local en el dispositivo y sincronización automática al recuperar cobertura, calcular la carga frutal objetivo sostenible y recibir prescripciones in-app de intensidad y ventana de aclareo, **para** remover el exceso de fruta a tiempo antes del endurecimiento del carozo y mitigar la vecería prolongada en los años de menor rendimiento. |

---

### EP07: Cierre de Campaña, Balance Productivo y Reportes Técnicos

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP07** | Productor Olivarero | Media | EP07 |

| Title |
| :--- |
| Cierre de Campaña, Balance Productivo y Reportes Técnicos |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** asentar los kilogramos cosechados al término del ciclo agrícola, visualizar la curva comparativa de estabilización interanual frente al año base y generar la ficha técnica en PDF con la trazabilidad agronómica de mi predio, **para** certificar el rendimiento del lote, sustentar financiamiento agrícola y demostrar ante compradores la consistencia productiva de mi olivar. |

---

### EP08: Inteligencia Territorial Cooperativa y Proyecciones de Acopio

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP08** | Gestor Técnico de Cooperativa | Alta | EP08 |

| Title |
| :--- |
| Inteligencia Territorial Cooperativa y Proyecciones de Acopio |

| Description |
| :--- |
| **Como** Gestor Técnico de Cooperativa, **quiero** consultar un semáforo de riesgo fenológico que priorice parcelas socias con sobrecarga frutal o déficit térmico, y generar proyecciones tempranas del volumen global de acopio discriminadas por aceituna verde y negra, **para** orientar las visitas de campo a los predios más vulnerables, optimizar la capacidad de salmueras en planta y respaldar compromisos comerciales de exportación. |

---

### EP09: Presencia Web, Propuesta de Valor y Conversión de Usuarios

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP09** | Visitante | Media | EP09 |

| Title |
| :--- |
| Presencia Web, Propuesta de Valor y Conversión de Usuarios |

| Description |
| :--- |
| **Como** visitante del sitio web de Viora, **quiero** conocer la propuesta de valor para mitigar la vecería prolongada y sostener la productividad del olivar en los años de menor cosecha, consultar las tarifas transparentes en Soles (PEN), conocer al equipo fundador, acceder a los enlaces de descarga móvil y consultar en el pie de página los Términos y Condiciones junto con las Políticas de Privacidad conforme a la Ley N° 29733, **para** evaluar la adopción de la solución digital con total respaldo legal e instalar la aplicación en mi dispositivo. |

---

### EP10: Integración de Servicios de Identidad, Acceso y Suscripciones (IAM & Billing)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP10** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Integración de Servicios de Identidad, Acceso y Suscripciones (IAM & Billing) |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consumir los endpoints de autenticación JWT, registro por roles, generación de preferencias de cobro en pasarela de pagos digitales (Sandbox) y canje de códigos de activación, **para** implementar las interfaces de control de acceso, monetización directa y membresías corporativas en las aplicaciones móviles y web. |

---

### EP11: Integración de Servicios Geoespaciales, Nodos de Campo y Clima

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP11** | Desarrollador de Aplicaciones Cliente | Alta | EP11 |

| Title |
| :--- |
| Integración de Servicios Geoespaciales, Nodos de Campo y Clima |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consumir los endpoints de gestión poligonal de parcelas, ciclo de vida de nodos sensores, consulta de telemetría y pronósticos meteorológicos externos, **para** implementar las vistas cartográficas satelitales, vinculación de dispositivos y paneles de monitoreo climático en la interfaz de usuario. |

---

### EP12: Integración de Servicios del Motor de Vecería, Regulación de Carga y Acopio

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP12** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Integración de Servicios del Motor de Vecería, Regulación de Carga y Acopio |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consumir los endpoints de registro de cosechas, métricas de BBI y frío, muestreos de cuajado, prescripciones de aclareo, generación de PDF y proyección agregada de acopio, para implementar los flujos agronómicos centrales y los paneles predictivos de la cooperativa en la experiencia móvil. |

---

### EP13: Fundamentos de Arquitectura Core y Estandarización de Backend

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP13** | Ingeniero de Plataforma Core | Alta | EP13 |

| Title |
| :--- |
| Fundamentos de Arquitectura Core y Estandarización de Backend |

| Description |
| :--- |
| **Como** Ingeniero de Plataforma Core, **quiero** implementar los componentes transversales de la arquitectura en capas DDD (manejo centralizado de excepciones RFC 7807, estrategias de nomenclatura ORM y contratos OpenAPI/Swagger), **para** proveer una infraestructura backend robusta, uniforme, observable y desacoplada que facilite el consumo de servicios por los desarrolladores frontend. |

---

### EP14: Spikes de Viabilidad Técnica y Aprendizaje Autónomo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP14** | Equipo de Desarrollo de Viora | Alta | EP14 |

| Title |
| :--- |
| Spikes de Viabilidad Técnica y Aprendizaje Autónomo |

| Description |
| :--- |
| **Como** equipo de desarrollo de Viora, **queremos** prototipar e investigar la viabilidad matemática del modelo de Erez, los mecanismos de persistencia offline-first con SQLite local y el flujo de checkout en sandbox de Mercado Pago, **para** mitigar la incertidumbre técnica y asegurar la correcta integración de tecnologías clave en la solución final. |

---

### EP15: Internacionalización y Localización del Ecosistema (i18n / l10n)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **EP15** | Usuario del Ecosistema Viora | Media | EP15 |

| Title |
| :--- |
| Internacionalización y Localización del Ecosistema (i18n / l10n) |

| Description |
| :--- |
| **Como** usuario del ecosistema digital de Viora (Visitante, Productor Olivarero o Gestor Técnico), **quiero** acceder a la plataforma web y móvil en mi idioma de preferencia (Español o Inglés) con adaptación de contenidos y formatos regionales, **para** interactuar con las herramientas agronómicas y comerciales en un entorno comprensible que facilite la adopción y la expansión internacional de la plataforma. |

---


---

## 2. Historias de Usuario (User Stories)

A continuación, se presentan las 43 Historias de Usuario desarrolladas para el ecosistema Viora. Cada historia modela las interacciones operativas de los productores olivareros, gestores técnicos y visitantes, con criterios de aceptación comprobables en formato Gherkin (*Given-When-Then*) en tiempo presente y tercera persona, abarcando escenarios de éxito, validación y control de excepciones:

### US01: Registro de cuenta de acceso y credenciales seguras con asignación de rol

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US01** | Productor Olivarero / Gestor Técnico | Alta | EP01 |

| Title |
| :--- |
| Registro de cuenta de acceso y credenciales seguras con asignación de rol |

| Description |
| :--- |
| **Como** usuario nuevo de Viora (Productor Olivarero o Gestor Técnico), **quiero** registrar una cuenta en la plataforma ingresando mi correo electrónico y una contraseña segura desde la aplicación móvil de mi segmento, **para** darme de alta en el sistema y disponer de una identidad de acceso con el rol asignado automáticamente según la aplicación cliente utilizada. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de cuenta de acceso con asignación de rol por aplicación cliente**<br>**Given** un usuario que no posee una cuenta registrada en la plataforma y accede desde la aplicación móvil de su segmento (App Productor en Android o App Gestor en Flutter).<br>**When** solicita su registro proporcionando un correo electrónico válido y una contraseña segura.<br>**Then** el sistema crea la cuenta de acceso en estado activo con el rol correspondiente a la aplicación desde la que se registró (Productor Olivarero o Gestor Técnico).<br>**And** el usuario puede autenticarse satisfactoriamente en dicha aplicación con esas credenciales. |
| **Escenario 2: Rechazo por correo electrónico ya registrado**<br>**Given** un usuario que intenta registrarse en el sistema.<br>**When** ingresa una dirección de correo electrónico que ya se encuentra asociada a una cuenta existente.<br>**Then** el sistema rechaza la solicitud impidiendo duplicar identidades de acceso.<br>**And** notifica que el correo electrónico ya se encuentra registrado en la plataforma. |
| **Escenario 3: Rechazo por contraseña que incumple estándar de seguridad**<br>**Given** un usuario que solicita el registro de una nueva cuenta de acceso.<br>**When** ingresa una contraseña que posee menos de 8 caracteres o carece de combinación alfanumérica.<br>**Then** el sistema rechaza la operación sin registrar la cuenta.<br>**And** notifica el incumplimiento de las políticas de complejidad requeridas para la contraseña. |
| **Escenario 4: Rechazo de autenticación cruzada en aplicación de segmento no correspondiente**<br>**Given** un usuario registrado con rol de un segmento específico (por ejemplo, Productor Olivarero).<br>**When** intenta iniciar sesión en la aplicación cliente correspondiente al otro segmento (por ejemplo, App Gestor Técnico en Flutter).<br>**Then** el sistema rechaza el acceso informando que las credenciales corresponden a otro perfil de usuario.<br>**And** orienta al usuario hacia la aplicación móvil oficial correspondiente a su rol. |

---

### US02: Inicio de sesión y autenticación persistente mediante tokens

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US02** | Productor Olivarero / Gestor Técnico | Alta | EP01 |

| Title |
| :--- |
| Inicio de sesión y autenticación persistente mediante tokens |

| Description |
| :--- |
| **Como** usuario registrado de Viora (Productor Olivarero o Gestor Técnico), **quiero** autenticarme con mi correo electrónico y contraseña para mantener mi sesión activa en el dispositivo móvil mediante tokens seguros, **para** operar de forma continua y protegida en la gestión de mis predios o cartera cooperativa sin tener que reingresar credenciales continuamente durante mis labores agrícolas en campo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Autenticación exitosa con emisión de tokens de acceso y actualización**<br>**Given** un usuario que posee una cuenta activa registrada en la plataforma.<br>**When** solicita el inicio de sesión proporcionando su correo electrónico y contraseña correcta.<br>**Then** el sistema valida satisfactoriamente la identidad del usuario.<br>**And** emite un token de acceso seguro (JWT) con los privilegios de su rol ("ROLE_PRODUCTOR" o "ROLE_GESTOR") junto con un token de actualización.<br>**And** establece la sesión persistente en el dispositivo autorizando las operaciones subsiguientes. |
| **Escenario 2: Denegación de acceso por credenciales inválidas**<br>**Given** un usuario que solicita el inicio de sesión en el sistema.<br>**When** proporciona una contraseña incorrecta o un correo electrónico no registrado.<br>**Then** el sistema rechaza la autenticación sin generar tokens de sesión.<br>**And** notifica que las credenciales son inválidas sin detallar cuál de los datos es el erróneo por motivos de seguridad. |
| **Escenario 3: Renovación transparente de sesión mediante token de actualización**<br>**Given** un usuario con sesión iniciada en el dispositivo móvil cuyo token de acceso ha expirado.<br>**When** la aplicación realiza una solicitud a los servicios presentando un token de actualización válido y vigente.<br>**Then** el sistema valida el token de actualización y emite un nuevo token de acceso.<br>**And** ejecuta la operación solicitada sin interrumpir las labores del usuario en campo ni requerir el reingreso manual de credenciales. |

---

### US03: Consulta y actualización de datos de perfil y contacto

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US03** | Productor Olivarero / Gestor Técnico | Media | EP01 |

| Title |
| :--- |
| Consulta y actualización de datos de perfil y contacto |

| Description |
| :--- |
| **Como** usuario autenticado de Viora (Productor Olivarero o Gestor Técnico), **quiero** consultar y modificar mis datos personales, país y número telefónico en mi perfil, **para** mantener actualizada mi información de contacto y facilitar las coordinaciones operativas y de asistencia técnica entre productores y la administración cooperativa. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa de datos de contacto**<br>**Given** un usuario autenticado que accede a la gestión de su perfil.<br>**When** actualiza su nombre completo o número celular proporcionando un valor conforme a la norma E.164 según su país de residencia.<br>**Then** el sistema persiste los cambios en los datos del usuario.<br>**And** confirma la actualización manteniendo la información de contacto vigente para las coordinaciones operativas. |
| **Escenario 2: Rechazo por número telefónico con formato incompatible**<br>**Given** un usuario autenticado editando sus datos de contacto.<br>**When** ingresa un número telefónico que no cumple con el estándar E.164 o cuya longitud no corresponde al país seleccionado.<br>**Then** el sistema deniega la actualización sin modificar el registro previo.<br>**And** notifica la inconsistencia especificando el formato telefónico esperado. |
| **Escenario 3: Rechazo por envío de atributos obligatorios vacíos**<br>**Given** un usuario autenticado editando su información personal.<br>**When** envía la solicitud de actualización omitiendo el nombre completo o dejándolo en blanco.<br>**Then** el sistema rechaza la operación preservando los valores originales en la base de datos.<br>**And** notifica que el nombre completo es un campo obligatorio para la identificación en la plataforma. |

---

### US04: Cambio seguro de contraseña de acceso

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US04** | Productor Olivarero / Gestor Técnico | Media | EP01 |

| Title |
| :--- |
| Cambio seguro de contraseña de acceso |

| Description |
| :--- |
| **Como** usuario autenticado de Viora (Productor Olivarero o Gestor Técnico), **quiero** actualizar mi contraseña de acceso verificando mi clave actual e ingresando una nueva clave robusta, **para** proteger el acceso a mis registros agrícolas, históricos de cosecha y datos comerciales ante sospechas de vulneración y salvaguardar la privacidad de mis parcelas o cartera gremial. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa de contraseña**<br>**Given** un usuario autenticado que accede a la configuración de seguridad de su cuenta.<br>**When** proporciona su contraseña actual correcta y define una nueva contraseña que satisface los requisitos de seguridad y es distinta a la anterior.<br>**Then** el sistema actualiza las credenciales de acceso del usuario en la plataforma.<br>**And** el usuario puede autenticarse satisfactoriamente utilizando únicamente la nueva contraseña definida. |
| **Escenario 2: Rechazo por contraseña actual incorrecta**<br>**Given** un usuario autenticado que solicita el cambio de su clave de acceso.<br>**When** ingresa una contraseña actual que no coincide con la registrada en el sistema.<br>**Then** el sistema rechaza la solicitud sin modificar las credenciales persistidas.<br>**And** notifica que la contraseña actual es errónea. |
| **Escenario 3: Rechazo por nueva contraseña que incumple políticas de complejidad**<br>**Given** un usuario autenticado que solicita la actualización de su contraseña.<br>**When** valida satisfactoriamente su clave actual pero ingresa una nueva contraseña con menos de 8 caracteres o sin combinación alfanumérica.<br>**Then** el sistema bloquea el cambio sin persistir modificaciones.<br>**And** notifica los criterios de complejidad requeridos para la nueva contraseña. |
| **Escenario 4: Rechazo por nueva contraseña idéntica a la actual**<br>**Given** un usuario autenticado que intenta modificar su clave de acceso.<br>**When** ingresa como nueva contraseña exactamente la misma clave que tiene en uso.<br>**Then** el sistema deniega la operación impidiendo la reutilización inmediata de la misma clave.<br>**And** notifica al usuario que la nueva contraseña debe diferir de la contraseña actual. |

---

### US05: Recuperación de contraseña olvidada mediante enlace por correo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US05** | Productor Olivarero / Gestor Técnico | Media | EP01 |

| Title |
| :--- |
| Recuperación de contraseña olvidada mediante enlace por correo |

| Description |
| :--- |
| **Como** usuario registrado de Viora (Productor Olivarero o Gestor Técnico), **quiero** solicitar el restablecimiento de mi clave ingresando mi correo electrónico para recibir un enlace de un solo uso, **para** recuperar el acceso a mis registros agrícolas o cartera gremial de forma autónoma sin depender de soporte técnico ni perder la trazabilidad histórica de mis parcelas. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Solicitud exitosa de enlace de recuperación**<br>**Given** un usuario que no recuerda su contraseña y posee una cuenta activa en la plataforma.<br>**When** solicita la recuperación de clave proporcionando su dirección de correo electrónico registrada.<br>**Then** el sistema genera un token de seguridad temporal de un solo uso con vigencia de 15 minutos y envía el correo con el enlace de restablecimiento.<br>**And** notifica que la solicitud ha sido procesada. |
| **Escenario 2: Restablecimiento exitoso de contraseña con token válido**<br>**Given** un usuario que accede mediante un token de recuperación válido y vigente.<br>**When** define una nueva contraseña que satisface los requisitos de complejidad y confirma su envío.<br>**Then** el sistema actualiza la contraseña del usuario e invalida el token de recuperación utilizado.<br>**And** el usuario puede autenticarse exitosamente utilizando su nueva contraseña. |
| **Escenario 3: Rechazo por token de recuperación expirado o ya utilizado**<br>**Given** un usuario que intenta restablecer su clave utilizando un enlace cuyo token ya caducó o fue consumido previamente.<br>**When** envía la solicitud con la nueva contraseña.<br>**Then** el sistema rechaza la operación sin modificar las credenciales del usuario.<br>**And** notifica que el enlace de recuperación ha expirado, requiriendo generar una nueva solicitud. |
| **Escenario 4: Manejo seguro ante solicitud con correo electrónico no registrado**<br>**Given** un usuario que solicita la recuperación de acceso.<br>**When** ingresa una dirección de correo electrónico que no existe en el sistema.<br>**Then** el sistema procesa la petición sin generar tokens ni enviar correos.<br>**And** emite la misma notificación genérica de confirmación sin revelar si el correo está o no registrado para evitar ataques de enumeración. |

---

### US06: Suscripción individual al Plan Productor mediante pasarela de pago digital

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US06** | Productor Olivarero | Alta | EP02 |

| Title |
| :--- |
| Suscripción individual al Plan Productor mediante pasarela de pago digital |

| Description |
| :--- |
| **Como** Productor Olivarero independiente, **quiero** suscribirme al Plan Productor seleccionando la tarifa correspondiente a la extensión de mis parcelas y realizando el pago en línea mediante una pasarela digital segura, **para** habilitar de inmediato las herramientas de diagnóstico histórico, monitoreo climático y prescripción agronómica de Viora sin depender de intermediarios ni membresías corporativas. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Suscripción y confirmación exitosa de pago en línea**<br>**Given** un productor olivarero independiente con cuenta activa que no posee una suscripción vigente.<br>**When** selecciona el Plan Productor según la extensión de su predio y completa el pago a través de la pasarela digital con un medio de pago válido.<br>**Then** el sistema registra la suscripción en estado activo.<br>**And** el usuario puede acceder inmediatamente a las funcionalidades de diagnóstico de vecería y prescripción de aclareo de su plan. |
| **Escenario 2: Pago rechazado o fondos insuficientes en la pasarela**<br>**Given** un productor iniciando el proceso de suscripción al Plan Productor.<br>**When** la pasarela digital rechaza la transacción por fondos insuficientes o medio de pago declinado.<br>**Then** el sistema mantiene la cuenta en estado no suscrito sin realizar cargos.<br>**And** notifica que la transacción no pudo completarse, permitiendo reintentar la operación con otro medio de pago. |
| **Escenario 3: Activación asíncrona mediante confirmación de pago**<br>**Given** una transacción de pago procesada a través de la pasarela digital.<br>**When** el sistema recibe la confirmación electrónica del pago exitoso.<br>**Then** el sistema valida la confirmación de la pasarela y asocia el identificador de pago a la cuenta del productor.<br>**And** actualiza la vigencia de la suscripción anual en el sistema. |

---

### US07: Activación de cuenta de socio mediante canje de código de cooperativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US07** | Productor Olivarero | Alta | EP02 |

| Title |
| :--- |
| Activación de cuenta de socio mediante canje de código de cooperativa |

| Description |
| :--- |
| **Como** Productor Olivarero socio de una cooperativa agraria, **quiero** canjear un código de activación proporcionado por mi organización, **para** habilitar el acceso completo a los servicios de Viora bajo la membresía corporativa de la cooperativa sin asumir costos individuales de suscripción. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Canje exitoso de código de activación de cooperativa**<br>**Given** un productor olivarero autenticado que no cuenta con una membresía activa.<br>**When** ingresa un código de invitación válido emitido por su cooperativa agraria.<br>**Then** el sistema vincula al productor con la cooperativa correspondiente y marca el código como utilizado.<br>**And** el usuario accede a las herramientas del sistema con estado de membresía corporativa activa. |
| **Escenario 2: Rechazo por código de invitación inexistente o inválido**<br>**Given** un productor ingresando un código de activación.<br>**When** proporciona un código que no existe en el registro de invitaciones del sistema.<br>**Then** el sistema deniega la vinculación sin alterar el estado de la cuenta.<br>**And** notifica que el código ingresado no es válido. |
| **Escenario 3: Rechazo por código de invitación expirado o ya canjeado**<br>**Given** un productor intentando vincularse a una cooperativa.<br>**When** ingresa un código cuya fecha de vigencia caducó o que ya fue consumido por otro usuario.<br>**Then** el sistema rechaza el canje impidiendo la activación de la membresía.<br>**And** notifica que el código ha expirado o ya no cuenta con cupos disponibles. |

---

### US08: Administración de la cartera de socios productores y consulta de cuota corporativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US08** | Gestor Técnico de Cooperativa | Alta | EP02 |

| Title |
| :--- |
| Administración de la cartera de socios productores y consulta de cuota corporativa |

| Description |
| :--- |
| **Como** Gestor Técnico de Cooperativa, **quiero** consultar la nómina de socios productores agremiados con su superficie declarada y verificar el cupo contratado de la membresía colectiva, **para** supervisar la base territorial de la cooperativa y coordinar la entrega de códigos de activación a los agricultores elegibles. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de padrón gremial**<br>**Given** un gestor técnico autenticado con rol `GESTOR`.<br>**When** accede al directorio de miembros de su cooperativa.<br>**Then** el sistema retorna la lista consolidada de socios agremiados detallando nombre completo, teléfono E.164, correo, hectáreas declaradas y estado de vinculación. |
| **Escenario 2: Consulta de estado de licencias y códigos**<br>**Given** un gestor técnico consultando la capacidad contratada.<br>**When** solicita el balance de la licencia institucional.<br>**Then** el sistema presenta las plazas y hectáreas totales contratadas frente a las comprometidas y disponibles, junto con el estado de los lotes de códigos emitidos. |
| **Escenario 3: Restricción de acceso**<br>**Given** una solicitud emitida por un usuario sin rol de gestor técnico en la organización.<br>**When** el sistema evalúa los privilegios institucionales.<br>**Then** deniega el acceso con código `403 Forbidden`. |

---

### US09: Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US09** | Productor Olivarero | Alta | EP03 |

| Title |
| :--- |
| Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** delimitar el contorno de mi parcela capturando los vértices mediante el sensor GPS del dispositivo móvil o fijándolos sobre la cartografía satelital, registrando la variedad de olivo cultivada y el marco de plantación, **para** establecer la base territorial y dendrométrica de mi lote necesaria para dimensionar el potencial productivo y regular la carga frutal. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de parcela con polígono cerrado y cálculo de densidad**<br>**Given** un productor autenticado que inicia el alta de una nueva parcela en la plataforma.<br>**When** delimita un polígono cerrado de al menos tres vértices, asigna una denominación al lote, selecciona la variedad de olivo correspondiente y define el marco de plantación.<br>**Then** el sistema calcula la superficie en hectáreas y la densidad de árboles resultante.<br>**And** registra la parcela en estado activo asociada a la cuenta del productor permitiendo su visualización cartográfica. |
| **Escenario 2: Rechazo por polígono abierto o vértices insuficientes**<br>**Given** un productor trazando los límites de su predio.<br>**When** intenta registrar el predio con menos de tres coordenadas georreferenciadas o con un trazado perimétrico que no cierra geométricamente.<br>**Then** el sistema deniega el registro impidiendo la creación del lote.<br>**And** notifica que se requiere un polígono cerrado de al menos tres vértices válidos. |
| **Escenario 3: Trazado manual sobre mapa satelital ante ausencia de señal GPS**<br>**Given** un productor delimitando un lote en campo sin recepción de señal satelital en el sensor GPS del dispositivo.<br>**When** no se obtiene fijación de coordenadas satelitales directas.<br>**Then** el sistema permite fijar manualmente los puntos perimétricos sobre la vista satelital de la zona.<br>**And** calcula el área delimitada conservando la validez geométrica del lote. |

---

### US10: Consulta y modificación de linderos y datos dendrométricos de parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US10** | Productor Olivarero | Media | EP03 |

| Title |
| :--- |
| Consulta y modificación de linderos y datos dendrométricos de parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar y actualizar los linderos perimétricos, el nombre o el marco de plantación de una parcela existente, **para** corregir mediciones topográficas tras labores de replante y mantener al día la caracterización dendrométrica del olivar. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa de linderos y recálculo de área**<br>**Given** un productor que consulta una de sus parcelas registradas.<br>**When** ajusta la posición de uno de los vértices del polígono perimétrico y confirma los cambios.<br>**Then** el sistema recalcula la superficie total en hectáreas.<br>**And** actualiza la geometría del predio conservando el historial agronómico previo. |
| **Escenario 2: Modificación del marco de plantación y actualización de densidad**<br>**Given** un productor editando los parámetros agronómicos de su lote.<br>**When** modifica el marco de plantación (ej. de 10x10 a 8x8 metros) tras una renovación de árboles.<br>**Then** el sistema recalcula automáticamente la densidad de árboles por hectárea.<br>**And** actualiza la población vegetal estimada para los modelos de regulación de carga. |
| **Escenario 3: Rechazo por marco de plantación incompatible con la agronomía del olivo**<br>**Given** un productor modificando las dimensiones del marco de plantación.<br>**When** ingresa espaciamientos negativos o valores que arrojan densidades biológicamente incompatibles con el olivar (superiores a 500 árboles/ha en sistema tradicional).<br>**Then** el sistema bloquea la actualización sin alterar la configuración previa.<br>**And** notifica los rangos agronómicos admisibles para la plantación. |

---

### US11: Baja y remoción de parcela del inventario productivo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US11** | Productor Olivarero | Baja | EP03 |

| Title |
| :--- |
| Baja y remoción de parcela del inventario productivo |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** dar de baja o eliminar una parcela registrada por error o que ya no forma parte de mi explotación agrícola, **para** mantener ordenado mi inventario de unidades productivas y evitar asignación innecesaria de recursos o cobros. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Eliminación exitosa de una parcela sin registros históricos asociados**<br>**Given** un productor olivarero que gestiona una parcela recientemente creada sin cosechas ni muestreos vinculados.<br>**When** confirma la eliminación definitiva del predio.<br>**Then** el sistema remueve la parcela del inventario de unidades productivas del usuario.<br>**And** libera el área asociada permitiendo su reutilización en el límite del plan de suscripción. |
| **Escenario 2: Solicitud de confirmación ante eliminación de parcela con datos históricos**<br>**Given** un productor que solicita dar de baja una parcela que cuenta con registros de cosechas e historial telemétrico previo.<br>**When** inicia la solicitud de eliminación del predio.<br>**Then** el sistema advierte sobre la pérdida permanente de la trazabilidad agronómica asociada al lote.<br>**And** requiere una confirmación explícita para procesar la baja definitiva. |

---

### US12: Consulta de la matriz de riesgo territorial y semáforo sectorial con geolocalización GPS

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US12** | Gestor Técnico de Cooperativa | Alta | EP03 |

| Title |
| :--- |
| Consulta de la matriz de riesgo territorial y semáforo sectorial con geolocalización GPS |

| Description |
| :--- |
| **Como** Gestor Técnico de Cooperativa, **quiero** consultar un tablero con la matriz de riesgo territorial del valle olivarero detectando mi posición GPS en tiempo real, **para** identificar en qué sector me encuentro y priorizar visitas de asistencia agronómica en las parcelas que presentan sobrecarga crítica o alerta de helada en dicha zona. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Detección de sector mediante GPS interno**<br>**Given** un gestor técnico en campo con el sensor GPS activado en su dispositivo móvil.<br>**When** abre la matriz de riesgo territorial de la cooperativa.<br>**Then** el sistema captura las coordenadas de latitud y longitud del asesor.<br>**And** sitúa automáticamente su posición dentro del sector geográfico correspondiente (e.g., Sector La Yarada Baja), destacando visualmente el semáforo y las alertas activas de esa zona. |
| **Escenario 2: Visualización consolidada de sectores del valle**<br>**Given** un gestor técnico consultando el estado general de su organización.<br>**When** examina el tablero macro territorial.<br>**Then** el sistema despliega el semáforo consolidado de todos los sectores agrupando el número de predios en sobrecarga crítica (> 30%) y el conteo de alertas climáticas activas. |
| **Escenario 3: GPS fuera de cobertura o sin señal**<br>**Given** el gestor en una zona sin fijación satelital GPS o con permisos denegados.<br>**When** accede a la matriz territorial.<br>**Then** el sistema presenta la vista global por defecto y permite seleccionar manualmente el sector de interés. |

---

### US13: Vinculación y alta de nodo sensor virtual a una parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US13** | Productor Olivarero | Alta | EP04 |

| Title |
| :--- |
| Vinculación y alta de nodo sensor virtual a una parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** dar de alta un nodo sensor virtual (estación microclimática o sonda de humedad de suelo) en una de mis parcelas asignándole una denominación y tipo, **para** habilitar la ingesta y recepción de series telemétricas en el lote sin requerir el despliegue de hardware físico en campo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Vinculación exitosa de nodo sensor virtual**<br>**Given** un productor olivarero autenticado que gestiona una parcela registrada.<br>**When** registra un nodo sensor virtual indicando un nombre descriptivo y seleccionando el tipo de sensor (microclima o sonda de suelo).<br>**Then** el sistema asocia el nodo sensor virtual a la parcela registrándolo en estado activo.<br>**And** habilita la ingesta periódica de telemetría simulada para dicha unidad productiva. |
| **Escenario 2: Rechazo por campos obligatorios incompletos o tipo no soportado**<br>**Given** un productor intentando dar de alta un nodo sensor virtual.<br>**When** omite el nombre descriptivo o selecciona un tipo de dispositivo no admitido por el sistema.<br>**Then** el sistema deniega el registro sin modificar la configuración del lote.<br>**And** notifica los campos obligatorios y tipos de sensores virtuales válidos. |
| **Escenario 3: Rechazo por nombre duplicado de nodo virtual en la misma parcela**<br>**Given** un productor registrando un nodo virtual en su parcela.<br>**When** ingresa una denominación idéntica a la de otro nodo virtual ya existente en la misma parcela.<br>**Then** el sistema bloquea el alta impidiendo nombres duplicados en el predio.<br>**And** notifica que la denominación del sensor virtual debe ser única en el lote. |

---

### US14: Consulta de inventario y estado operativo de nodos sensores virtuales en parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US14** | Productor Olivarero | Media | EP04 |

| Title |
| :--- |
| Consulta de inventario y estado operativo de nodos sensores virtuales en parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar el inventario de nodos sensores virtuales vinculados a mi parcela y su estado de transmisión simulada, **para** comprobar qué puntos de monitoreo se encuentran activos alimentando los modelos agroclimáticos del olivar. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado consolidado de nodos virtuales con estado operativo activo**<br>**Given** una parcela que cuenta con múltiples nodos sensores virtuales vinculados.<br>**When** el productor accede al inventario de dispositivos del predio.<br>**Then** el sistema presenta la relación de nodos virtuales detallando tipo de dispositivo, estado operativo (activo o pausado) y fecha de última telemetría generada.<br>**And** resalta en estado activo aquellos nodos que alimentan la simulación climática actual. |
| **Escenario 2: Visualización de nodo virtual en estado de transmisión pausado**<br>**Given** un nodo sensor virtual cuyo estado de transmisión ha sido pausado por el usuario o por mantenimiento de datos.<br>**When** el productor consulta la lista de dispositivos de la parcela.<br>**Then** el sistema clasifica el nodo en estado inactivo o en pausa.<br>**And** notifica que las series temporales de dicho punto se encuentran temporalmente suspendidas. |
| **Escenario 3: Consulta en parcela sin dispositivos sensores asignados**<br>**Given** un productor que consulta una parcela que aún no posee nodos virtuales vinculados.<br>**When** accede al módulo de sensores.<br>**Then** el sistema informa que no existen nodos sensores virtuales asociados al lote.<br>**And** presenta la opción de dar de alta un nuevo sensor virtual. |

---

### US15: Configuración y calibración de nodo sensor virtual en parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US15** | Productor Olivarero | Baja | EP04 |

| Title |
| :--- |
| Configuración y calibración de nodo sensor virtual en parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** personalizar la denominación del nodo sensor virtual y definir la profundidad de monitoreo de la sonda de suelo (30 cm o 60 cm), **para** asegurar que las lecturas telemétricas se computen en el estrato radicular correspondiente a las raíces absorbentes del olivo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Configuración exitosa de profundidad y etiqueta de sonda virtual**<br>**Given** un productor que gestiona un sensor virtual de humedad de suelo vinculado a su parcela.<br>**When** asigna un nombre descriptivo (ej. "Sonda Sector Norte") y selecciona la profundidad de monitoreo (30 cm o 60 cm).<br>**Then** el sistema persiste la configuración técnica del nodo virtual.<br>**And** asocia las series de humedad posteriores al estrato radicular seleccionado. |
| **Escenario 2: Rechazo por profundidad de sonda no soportada**<br>**Given** un productor configurando los parámetros de una sonda virtual de suelo.<br>**When** ingresa un valor de profundidad fuera de las opciones estándar de calibración (30 cm o 60 cm).<br>**Then** el sistema rechaza la actualización sin alterar la configuración previa.<br>**And** notifica los valores de profundidad admitidos para el monitoreo radicular del olivo. |

---

### US16: Desvinculación y baja de nodo sensor virtual de una parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US16** | Productor Olivarero | Media | EP04 |

| Title |
| :--- |
| Desvinculación y baja de nodo sensor virtual de una parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** dar de baja o desvincular un nodo sensor virtual de mi parcela cuando ya no requiera monitorear ese punto, **para** mantener limpio el inventario del lote preservando intacto el historial previo de telemetría registrada. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Desvinculación exitosa conservando la serie histórica de datos**<br>**Given** un productor olivarero que gestiona un nodo sensor virtual activo en una parcela.<br>**When** solicita y confirma la desvinculación del nodo virtual del predio.<br>**Then** el sistema remueve el nodo sensor virtual del inventario activo de la parcela.<br>**And** preserva intactas todas las series de telemetría y lecturas históricas registradas previamente en el lote. |
| **Escenario 2: Consulta de métricas históricas de parcela tras desvinculación de nodo**<br>**Given** un productor que consulta las métricas históricas de una parcela tras la baja de un sensor virtual.<br>**When** accede a los reportes de temporadas anteriores.<br>**Then** el sistema presenta las series históricas generadas durante la vigencia del sensor.<br>**And** confirma que la desvinculación no afectó los datos acumulados de campañas pasadas. |

---

### US17: Monitoreo agroclimático y consulta de series temporales de suelo y microclima

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US17** | Productor Olivarero | Alta | EP04 |

| Title |
| :--- |
| Monitoreo agroclimático y consulta de series temporales de suelo y microclima |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar las lecturas periódicas de temperatura ambiental, humedad relativa y humedad del suelo registradas en mi parcela, **para** supervisar el confort hídrico del olivar y detectar oportunamente riesgos de estrés térmico en floración o déficit de humedad en cuajado. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de telemetría para un rango temporal definido**<br>**Given** un productor olivarero con sensores activos en su parcela.<br>**When** consulta el historial agroclimático seleccionando un rango de fechas (últimas 24 horas, 7 días o 30 días).<br>**Then** el sistema presenta las curvas temporales de temperatura, humedad relativa y humedad del suelo correspondientes al intervalo.<br>**And** destaca el último valor medido con su respectiva marca de tiempo. |
| **Escenario 2: Visualización de promedios diurnos y nocturnos de temperatura**<br>**Given** una parcela con lecturas horarias consolidadas durante la semana.<br>**When** el productor consulta el resumen térmico semanal.<br>**Then** el sistema discrimina las temperaturas promedio diurnas y nocturnas registradas en el campo.<br>**And** calcula la oscilación térmica diaria para evaluar el estímulo fisiológico del cultivo. |

---

### US18: Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US18** | Productor Olivarero | Alta | EP04 |

| Title |
| :--- |
| Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** recibir alertas automáticas en el sistema cuando la humedad del suelo caiga a niveles de estrés o la temperatura ambiental supere umbrales fisiológicos críticos, **para** adelantar turnos de riego y proteger la viabilidad del polen durante la etapa crítica de floración. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Emisión de alerta por caída de humedad de suelo a punto de recarga**<br>**Given** una parcela con monitoreo continuo de humedad de suelo.<br>**When** la lectura de la sonda en el estrato radicular desciende por debajo del punto de recarga configurado (ej. < 18% de humedad volumétrica).<br>**Then** el sistema emite una alerta de estrés hídrico de prioridad alta asociada a la parcela.<br>**And** sugiere la programación urgente de un turno de riego en el sector afectado. |
| **Escenario 2: Emisión de alerta por temperatura extrema durante floración**<br>**Given** una parcela en fase de floración con telemetría de microclima activa.<br>**When** la temperatura ambiental supera los 32°C con humedad relativa inferior al 20% durante más de tres horas consecutivas.<br>**Then** el sistema registra una advertencia de riesgo de desecación estigmática y aborto floral.<br>**And** notifica al productor el peligro de reducción en la tasa de cuajado. |
| **Escenario 3: Normalización de alerta tras restablecimiento de variables dentro de rango**<br>**Given** una parcela con alerta activa por estrés hídrico.<br>**When** una nueva lectura de la sonda registra una recuperación de humedad de suelo por encima del umbral seguro tras un evento de riego.<br>**Then** el sistema actualiza el estado de la alerta a normalizada.<br>**And** registra el tiempo total que el olivar permaneció bajo estrés hídrico. |

---

### US19: Consulta de pronóstico meteorológico geolocalizado a 7 días

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US19** | Productor Olivarero | Media | EP04 |

| Title |
| :--- |
| Consulta de pronóstico meteorológico geolocalizado a 7 días |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar el pronóstico del tiempo a 7 días geolocalizado para las coordenadas de mi predio, **para** anticipar condiciones climáticas desfavorables (vientos desecantes o bajadas térmicas) y programar con antelación los riegos y labores de aclareo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de proyección meteorológica a 7 días**<br>**Given** un productor autenticado que selecciona una de sus parcelas georreferenciadas.<br>**When** consulta el pronóstico meteorológico del predio.<br>**Then** el sistema presenta la proyección a 7 días con temperaturas máximas, mínimas, velocidad del viento y probabilidad de lluvia calculadas para las coordenadas del lote. |
| **Escenario 2: Presentación de datos en caché ante indisponibilidad del servicio externo**<br>**Given** un productor solicitando la previsión meteorológica.<br>**When** el servicio meteorológico externo presenta demoras o falla de conexión.<br>**Then** el sistema muestra la última previsión almacenada en memoria caché.<br>**And** notifica la fecha y hora de la última sincronización disponible. |

---

### US20: Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US20** | Productor Olivarero | Alta | EP05 |

| Title |
| :--- |
| Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** registrar los volúmenes totales cosechados en campañas agrícolas de años anteriores en mi parcela, **para** que el sistema calcule el Índice de Vecería de Hoblyn (BBI) y determine la intensidad histórica de alternancia de mi cuartel. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Cálculo exitoso de BBI con al menos tres campañas históricas**<br>**Given** una parcela con 3 o más campañas previas registradas.<br>**When** el productor guarda el pesaje de una campaña histórica adicional.<br>**Then** el sistema evalúa la fórmula matemática de Hoblyn y clasifica la vecería en baja (< 0.20), moderada (0.20 - 0.40) o severa (> 0.40). |
| **Escenario 2: Datos insuficientes para evaluación matemática**<br>**Given** una parcela con menos de 3 campañas históricas registradas.<br>**When** el usuario solicita la métrica de vecería.<br>**Then** el sistema notifica que la serie histórica es insuficiente y solicita registrar cosechas anteriores sin bloquear la operatividad predial. |
| **Escenario 3: Rechazo por volumen de cosecha negativo o año futuro**<br>**Given** un productor ingresando datos de cosecha.<br>**When** proporciona un pesaje negativo o un año de campaña futuro que aún no ha tenido lugar.<br>**Then** el sistema bloquea el registro impidiendo almacenar datos inconsistentes.<br>**And** notifica los rangos válidos para el año agrícola y los kilogramos cosechados. |

---

### US21: Modificación y rectificación de registros históricos de cosecha

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US21** | Productor Olivarero | Baja | EP05 |

| Title |
| :--- |
| Modificación y rectificación de registros históricos de cosecha |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** corregir o actualizar las cifras de kilogramos cosechados en una campaña anterior, **para** subsanar errores de digitación de boletas de pesaje en almazara y recalcular con precisión el índice BBI histórico de la parcela. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Rectificación exitosa de pesaje y recálculo automático del BBI**<br>**Given** una parcela con registros de cosechas plurianuales e índice BBI previamente calculado.<br>**When** el productor modifica el pesaje en kilogramos de una campaña previa y confirma la rectificación.<br>**Then** el sistema actualiza el registro histórico del año corregido.<br>**And** recalcula automáticamente la serie de índices BBI de alternancia para todos los intervalos interanuales afectados. |
| **Escenario 2: Eliminación de un registro erróneo de cosecha**<br>**Given** un productor que consulta el historial de cosechas de una parcela.<br>**When** elimina un registro de campaña duplicado o erróneo.<br>**Then** el sistema suprime el registro del historial del lote.<br>**And** actualiza la línea base de alternancia según las campañas válidas remanentes. |

---

### US22: Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US22** | Productor Olivarero | Alta | EP05 |

| Title |
| :--- |
| Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar el avance de acumulación de porciones de frío calculadas mediante el modelo dinámico de Erez durante el reposo invernal en mi parcela, **para** conocer si el olivo alcanzará el estímulo fisiológico indispensable para inducir una floración uniforme en el olivar. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta del avance periódico de porciones de frío de Erez**<br>**Given** una parcela con registros horarios de temperatura durante los meses de invierno (mayo a agosto).<br>**When** el productor consulta el panel de descanso invernal del lote.<br>**Then** el sistema calcula y muestra las porciones de frío acumuladas a la fecha aplicando el modelo dinámico de Erez.<br>**And** contrasta la cifra acumulada frente al umbral fisiológico requerido por la variedad registrada en la parcela (ej. 25 a 30 porciones para Sevillana/Criolla). |
| **Escenario 2: Notificación de cumplimiento de acumulación de frío**<br>**Given** una parcela en seguimiento de reposo invernal.<br>**When** las porciones de frío acumuladas alcanzan el umbral óptimo de la variedad.<br>**Then** el sistema actualiza el estado fisiológico de la parcela a estímulo térmico completado.<br>**And** notifica al productor que el olivar cuenta con el estímulo térmico necesario para una brotación uniforme. |
| **Escenario 3: Consulta fuera del período invernal de acumulación**<br>**Given** un productor accediendo al panel térmico fuera de la temporada de reposo (meses de verano u otoño).<br>**When** solicita la lectura de acumulación de frío en curso.<br>**Then** el sistema informa que el ciclo de acumulación de frío se encuentra inactivo.<br>**And** expone el consolidado histórico final de la campaña invernal previa. |

---

### US23: Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US23** | Productor Olivarero | Alta | EP05 |

| Title |
| :--- |
| Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** recibir advertencias tempranas en el sistema cuando se registren picos de calor anómalos durante el invierno asociados al fenómeno de El Niño, **para** anticipar una baja inducción floral y reajustar oportunamente las proyecciones de rendimiento y las metas de aclareo de la campaña. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Detección de temperaturas diurnas perjudiciales en invierno**<br>**Given** una parcela durante la etapa de acumulación de frío invernal.<br>**When** la temperatura ambiental diurna supera sostenidamente los 24°C durante más de tres días consecutivos destruyendo los intermediarios del frío de Erez.<br>**Then** el sistema registra una advertencia de anomalía térmica invernal asociada al lote.<br>**And** notifica al productor el riesgo de reversión floral y brotación exclusivamente vegetativa. |
| **Escenario 2: Reajuste predictivo de floración y carga frutal potencial**<br>**Given** una parcela con advertencia activa por invierno cálido.<br>**When** el productor consulta el detalle de la advertencia térmica.<br>**Then** el sistema presenta el resumen del estrés térmico acumulado y actualiza la proyección de diferenciación floral a nivel crítico.<br>**And** reajusta la estimación de carga potencial de la parcela para considerar la baja floración en los modelos de regulación de carga. |

---

### US24: Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US24** | Productor Olivarero | Alta | EP06 |

| Title |
| :--- |
| Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** registrar los conteos de brotes y frutos de muestra a pie de árbol (con el diámetro de tronco como dato dendrométrico opcional) sin requerir conexión a internet, **para** asentar la densidad real de cuajado directamente en el olivar y sincronizar automáticamente las observaciones al restablecer la conectividad celular o de red. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Registro offline de conteo de frutos a pie de árbol con diámetro de tronco opcional**<br>**Given** un productor olivarero ubicado en campo sin cobertura celular ni acceso a internet.<br>**When** registra el número de árbol muestreado, total de brotes observados, frutos cuajados en la muestra y opcionalmente el diámetro del tronco en milímetros (`trunkDiameterMm`), confirmando el guardado.<br>**Then** la aplicación móvil almacena el registro en la base de datos local del dispositivo tanto si incluye el diámetro del tronco como si dicho campo opcional se deja en blanco.<br>**And** clasifica el muestreo como pendiente de sincronización permitiendo continuar con la evaluación de los siguientes árboles. |
| **Escenario 2: Sincronización automática de muestreos al recuperar conexión**<br>**Given** un dispositivo con muestreos de cuajado pendientes de sincronización en su almacenamiento local.<br>**When** el dispositivo restablece la conectividad a internet.<br>**Then** el sistema transmite de manera automática el lote de registros al servidor de Viora.<br>**And** actualiza el estado de los muestreos a sincronizados sin requerir intervención manual del usuario. |
| **Escenario 3: Rechazo por conteos fuera de rango biológico**<br>**Given** un productor registrando datos en el protocolo de muestreo.<br>**When** ingresa valores negativos o una cantidad de frutos cuajados que supera físicamente la capacidad biológica del brote evaluado.<br>**Then** el sistema rechaza el ingreso impidiendo registrar mediciones inverosímiles.<br>**And** notifica los rangos biológicos admisibles para el conteo de frutos por brote. |

---

### US25: Consulta de representatividad estadística e historial de árboles muestreados en campo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US25** | Productor Olivarero | Media | EP06 |

| Title |
| :--- |
| Consulta de representatividad estadística e historial de árboles muestreados en campo |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** consultar el avance de la ronda de muestreo y revisar la lista de árboles evaluados en mi predio, **para** saber si alcancé la representatividad mínima requerida (≥ 5 árboles) e identificar qué árboles ya fueron evaluados a pie de campo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de representatividad y listado de árboles evaluados**<br>**Given** una ronda de muestreo en progreso en la parcela activa.<br>**When** el usuario consulta el estado del muestreo en su dispositivo.<br>**Then** el sistema presenta el indicador de suficiencia estadística (`isSampleSufficient`), la media de frutos por brote y el listado de árboles evaluados con su etiqueta física, brotes y frutos registrados. |
| **Escenario 2: Alcanzar el umbral de representatividad**<br>**Given** una ronda donde se alcanza el árbol mínimo requerido (≥ 5 árboles válidos).<br>**When** se sincroniza el último registro.<br>**Then** el sistema transiciona la ronda a completada y habilita la generación de la prescripción de aclareo. |

---

### US26: Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US26** | Productor Olivarero | Alta | EP06 |

| Title |
| :--- |
| Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** que el sistema procese los muestreos de cuajado, la densidad de plantación y el área de mi predio para calcular la carga frutal máxima sostenible en frutos por árbol y kilogramos por hectárea, **para** conocer el límite productivo que el olivo puede soportar sin agotar sus reservas y evitar el colapso vegetativo de la siguiente campaña. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Cálculo exitoso de carga admisible con muestra representativa**<br>**Given** una parcela con al menos 5 árboles representativos muestreados en campo.<br>**When** el productor solicita el balance de carga frutal de la temporada.<br>**Then** el sistema procesa el promedio de frutos cuajados y proyecta la carga total estimada en frutos por árbol.<br>**And** determina la carga frutal objetivo sostenible y el rendimiento en kilogramos por hectárea según el marco de plantación del lote. |
| **Escenario 2: Detección de sobrecarga frutal con riesgo de vecería severa**<br>**Given** una parcela cuyo cálculo de carga estimada supera en más del 30% la capacidad de carga biológica calibrada para la variedad registrada en el predio.<br>**When** se genera el cálculo de rendimiento potencial.<br>**Then** el sistema clasifica el lote en estado de sobrecarga severa.<br>**And** notifica al productor que el exceso de fruta inducirá una vecería prolongada si no se regula la carga a tiempo. |
| **Escenario 3: Bloqueo de cálculo por cantidad insuficiente de árboles evaluados**<br>**Given** una parcela con menos de 5 árboles muestreados.<br>**When** el productor solicita el dimensionamiento productivo.<br>**Then** el sistema deniega el cálculo automático por falta de representatividad muestral.<br>**And** notifica la cantidad de árboles adicionales requeridos para completar el diagnóstico. |

---

### US27: Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US27** | Productor Olivarero | Alta | EP06 |

| Title |
| :--- |
| Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** recibir una prescripción agronómica con el porcentaje exacto de frutos a remover y la ventana de fechas límite de ejecución, **para** remover el exceso de fruta a tiempo antes del endurecimiento del carozo y asegurar un buen calibre comercial sin inducir vecería en el siguiente año. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Prescripción de aclareo ante sobrecarga frutal**<br>**Given** una parcela con diagnóstico de sobrecarga frutal procesado durante la fase previa al endurecimiento del carozo.<br>**When** el productor consulta la recomendación de regulación de carga.<br>**Then** el sistema prescribe el porcentaje óptimo de remoción de fruta (ej. 30% de aclareo).<br>**And** define la ventana temporal recomendada con fecha de inicio y fecha límite de ejecución antes de la lignificación del carozo. |
| **Escenario 2: Parcela con carga frutal equilibrada que no requiere aclareo**<br>**Given** una parcela cuya carga estimada se encuentra dentro del rango fisiológico óptimo.<br>**When** el productor consulta la prescripción de regulación.<br>**Then** el sistema determina un porcentaje de aclareo del 0%.<br>**And** notifica que la carga frutal es óptima y no requiere intervención para sostener la productividad interanual. |
| **Escenario 3: Advertencia por consulta posterior al endurecimiento del carozo**<br>**Given** una parcela donde la fecha de consulta supera la ventana fenológica de aclareo con el carozo ya endurecido (lignificado).<br>**When** el productor solicita la prescripción de aclareo.<br>**Then** el sistema advierte que la ventana óptima de aclareo ha concluido.<br>**And** notifica que la remoción tardía de fruto ya no evitará la inhibición hormonal de la floración de la siguiente campaña. |

---

### US28: Registro y confirmación de ejecución de aclareo en campo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US28** | Productor Olivarero | Media | EP06 |

| Title |
| :--- |
| Registro y confirmación de ejecución de aclareo en campo |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** registrar la fecha y el porcentaje real de frutos removidos durante las labores de aclareo en mi parcela, **para** asentar la ejecución de la práctica de manejo en la bitácora del lote, estimar el estado de carga residual y, cuando exista calibración de la variedad, proyectar el rango de calibre comercial esperado. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Registro exitoso de intervención de aclareo y proyección de calibre COI**<br>**Given** un productor con una prescripción de aclareo activa para su predio.<br>**When** registra la fecha de ejecución (`executedDate`) en campo y confirma el porcentaje real de fruta removida (`actualRemovalPercentage`).<br>**Then** el sistema actualiza la bitácora agronómica del lote marcando la labor como ejecutada.<br>**And** muestra la carga residual y su estado de balance; si el modelo de la variedad se encuentra calibrado, proyecta el calibre comercial COI más probable con su intervalo de confianza al 80 %. |
| **Escenario 2: Advertencia por ejecución tardía fuera de la ventana fenológica**<br>**Given** un productor registrando la ejecución de aclareo.<br>**When** la fecha ingresada es posterior a la fecha límite prescrita por endurecimiento del carozo.<br>**Then** el sistema guarda el registro de la labor en la bitácora.<br>**And** notifica una advertencia indicando que la eficacia para mitigar la vecería será reducida debido a la lignificación del carozo, omitiendo la proyección de calibre por ejecución tardía fuera de ventana. |
| **Escenario 3: Modelo varietal en fase de calibración sin observaciones suficientes**<br>**Given** un lote cuya variedad aún no cuenta con el número mínimo de campañas cosechadas y liquidadas para calibrar el modelo estadístico.<br>**When** el productor confirma la ejecución del aclareo.<br>**Then** el sistema calcula y exhibe el balance de carga residual.<br>**And** clasifica la proyección de calibre en estado 'En calibración', informando cuántas campañas adicionales de liquidación se requieren sin arrojar cifras no respaldadas. |
| **Escenario 4: Carga residual fuera de rango biológico admisible**<br>**Given** un lote donde la intensidad de remoción informada resulta en una carga residual fuera del dominio experimental de calibración (por ejemplo, 100 % de defrutado o sobrecarga extrema sin aclareo efectivo).<br>**When** el sistema evalúa la proyección de tamaño de fruto.<br>**Then** marca el estado de proyección como no aplicable o no estimado, absteniéndose de extrapolar calibres fuera del rango de validez del modelo. |

---

### US29: Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US29** | Productor Olivarero | Alta | EP07 |

| Title |
| :--- |
| Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** asentar formalmente el pesaje real de cosecha al término de la temporada discriminando kilos de aceituna verde y negra e indicando opcionalmente el calibre comercial de venta (`commercialFruitsPerKg`), **para** formalizar la liquidación de entrega, alimentar la calibración empírica del modelo varietal y auditar la curva interanual de atenuación de vecería. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Asentamiento exitoso de liquidación de cosecha con calibre comercial opcional**<br>**Given** la culminación de las faenas de cosecha de la campaña en curso.<br>**When** el productor o la almazara asienta los kilogramos recolectados (`greenOlivesKg` y `blackOlivesKg`) e ingresa opcionalmente el calibre comercial de venta (`commercialFruitsPerKg` en escala COI).<br>**Then** el sistema emite el comprobante inmutable de liquidación, registra la observación para calibración de calibre, actualiza la curva de estabilización productiva y bloquea el año contra modificaciones no autorizadas. |
| **Escenario 2: Campaña previamente liquidada**<br>**Given** un intento de registrar un pesaje sobre una campaña ya asentada.<br>**When** el sistema valida la unicidad anual.<br>**Then** responde con código `409 Conflict` preservando la inmutabilidad de auditoría. |
| **Escenario 3: Calibre comercial fuera de rango biológico admisible**<br>**Given** un registro de liquidación que incluye el dato opcional de calibre de venta.<br>**When** el valor de `commercialFruitsPerKg` es menor o igual a cero o excede el límite agronómico de frutos por kilogramo configurable en el sistema.<br>**Then** el sistema rechaza la solicitud notificando error de validación biológica (`400 Bad Request`). |

---

### US30: Emisión, certificación criptográfica y exportación del expediente agronómico en PDF

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US30** | Productor Olivarero / Gestor Técnico | Media | EP07 |

| Title |
| :--- |
| Emisión, certificación criptográfica y exportación del expediente agronómico en PDF |

| Description |
| :--- |
| **Como** Productor Olivarero, **quiero** generar el expediente agronómico oficial de mi parcela con certificación criptográfica, **para** descargar un documento PDF auditable con el historial técnico, telemetría y labores de aclareo para trámites bancarios o cooperativos. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Descarga del expediente binario en formato PDF**<br>**Given** una solicitud con cabecera `Accept: application/pdf`.<br>**When** el motor compila el historial productivo, clima y regulaciones de carga.<br>**Then** responde con `Content-Type: application/pdf`, cabecera `Content-Disposition` para descarga y el sello criptográfico en el pie de página. |
| **Escenario 2: Consulta de metadatos y verificación de integridad**<br>**Given** una solicitud con cabecera `Accept: application/json`.<br>**When** se consulta el expediente técnico.<br>**Then** responde con los datos resumidos del predio y el hash SHA-256 de autenticidad documental. |

---

### US31: Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US31** | Gestor Técnico de Cooperativa | Alta | EP08 |

| Title |
| :--- |
| Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica |

| Description |
| :--- |
| **Como** Gestor Técnico de Cooperativa, **quiero** que el semáforo territorial se actualice reactivamente cuando se detecte sobrecarga frutal (> 30%) o riesgo de helada en las parcelas socias, **para** focalizar de inmediato la emisión de alertas agronómicas en los sectores más vulnerables. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Activación reactiva de semáforo rojo por sobrecarga frutal**<br>**Given** un socio cuya prescripción técnica arroja una sobrecarga superior al 30%.<br>**When** el evento de dominio impacta en el contexto de territorio.<br>**Then** el semáforo del sector correspondiente transiciona automáticamente a nivel crítico (Rojo) e incrementa el contador de parcelas en riesgo. |
| **Escenario 2: Alerta meteorológica preventiva**<br>**Given** una predicción de temperatura crítica (≤ 1.5°C) a 48 horas en un sector.<br>**When** el evento climático es recibido desde telemetría.<br>**Then** el sector activa la advertencia de helada radiativa en el semáforo gremial. |

---

### US32: Proyección agregada temprana de volumen de acopio de aceituna verde y negra para la cooperativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US32** | Gestor Técnico de Cooperativa | Alta | EP08 |

| Title |
| :--- |
| Proyección agregada temprana de volumen de acopio de aceituna verde y negra para la cooperativa |

| Description |
| :--- |
| **Como** Gestor Técnico de Cooperativa, **quiero** consultar la estimación agregada del tonelaje total de aceituna verde y negra que entregarán los socios en la campaña, **para** planificar con meses de anticipación la logística de salmueras en almazara, gestionar turnos de recepción y asegurar contratos comerciales de exportación sin riesgo de penalidades. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Proyección consolidada de cosecha cooperativa por aptitud comercial**<br>**Given** una cooperativa agraria con predios socios que han registrado sus muestreos de cuajado y regulación de carga.<br>**When** el gestor técnico solicita la proyección agregada de cosecha para la campaña en curso.<br>**Then** el sistema consolida los modelos productivos individuales y calcula el tonelaje total proyectado para la cooperativa.<br>**And** discrimina el volumen estimado por aptitud comercial en aceituna verde para mesa y aceituna negra para aceite y maduración. |
| **Escenario 2: Advertencia por baja cobertura de muestreos en la cartera de socios**<br>**Given** una cartera cooperativa donde menos del 50% de las parcelas socias ha completado el protocolo de muestreo de cuajado.<br>**When** el gestor técnico consulta la estimación de acopio.<br>**Then** el sistema presenta la proyección preliminar indicando el porcentaje de predios contabilizados.<br>**And** notifica que la estimación posee un margen de incertidumbre elevado hasta incrementar la cobertura de fundos evaluados. |

---

### US33: Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US33** | Visitante | Alta | EP09 |

| Title |
| :--- |
| Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar |

| Description |
| :--- |
| **Como** Visitante, **quiero** que el sistema exponga con claridad cómo la integración de datos de microclima, frío invernal y regulación de carga frutal atenúa la severidad de la alternancia productiva y mitiga la vecería prolongada, **para** comprender de inmediato la solución tecnológica que ofrece Viora frente a la incertidumbre agronómica del cultivo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Comprensión del valor del ecosistema ante la incertidumbre climática**<br>**Given** un visitante que accede al sitio web informativo de la plataforma.<br>**When** consulta la presentación inicial de la propuesta de valor.<br>**Then** el sistema expone la relación entre acumulación de frío, riesgo fenológico y decisiones preventivas de aclareo basadas en datos.<br>**And** resalta el objetivo agronómico de atenuar la severidad de la vecería y sostener un piso productivo viable en los años de menor cosecha sin comprometer la longevidad del olivar.<br>**And** la interfaz responde con diseño adaptativo fluido (*mobile-first*), reordenando los bloques visuales y garantizando legibilidad en pantallas móviles (≤ 480px), tablets y escritorio sin desbordamiento horizontal. |
| **Escenario 2: Adaptabilidad a diversas variedades de olivar y aptitudes comerciales**<br>**Given** un visitante evaluando la pertinencia técnica de la plataforma para su predio.<br>**When** explora los fundamentos del modelo de estabilización productiva.<br>**Then** el sistema detalla cómo los algoritmos adaptan dinámicamente los parámetros de frío y regulación de carga según la variedad de olivo registrada (mesa o aceite).<br>**And** comunica cómo el soporte técnico continuo asiste la toma de decisiones del agricultor. |

---

### US34: Exploración de beneficios y capacidades operativas para el productor olivarero

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US34** | Visitante Productor | Alta | EP09 |

| Title |
| :--- |
| Exploración de beneficios y capacidades operativas para el productor olivarero |

| Description |
| :--- |
| **Como** Visitante Productor, **quiero** consultar las herramientas tecnológicas orientadas al monitoreo y manejo agronómico de parcelas, **para** evaluar cómo la plataforma me ayuda a registrar conteos sin conexión a internet, anticipar estrés hídrico y recibir prescripciones precisas de aclareo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Descubrimiento de herramientas para el trabajo a pie de árbol**<br>**Given** un visitante con perfil de agricultor explorando el sitio informativo.<br>**When** solicita la información de beneficios orientada al productor individual.<br>**Then** el sistema presenta las capacidades de recolección offline de datos en campo, sincronización diferida y cálculo automático del índice de vecería BBI.<br>**And** expone las alertas tempranas de estrés hídrico y térmico junto con la prescripción técnica de porcentaje de fruta a remover. |
| **Escenario 2: Consulta del impacto en la estabilidad de ingresos del predio**<br>**Given** un productor olivarero evaluando el retorno productivo de la adopción.<br>**When** revisa la justificación técnica de la regulación de carga frutal.<br>**Then** el sistema expone la proyección de calibres comerciales uniformes y la reducción del riesgo de colapso productivo en la siguiente campaña. |

---

### US35: Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US35** | Visitante Gestor de Cooperativa | Alta | EP09 |

| Title |
| :--- |
| Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias |

| Description |
| :--- |
| **Como** Visitante Gestor de Cooperativa, **quiero** consultar las capacidades de supervisión cartográfica y proyección agregada de cosecha, **para** determinar si la plataforma facilita la asistencia técnica a los socios agremiados y mejora la planificación logística del acopio en almazara. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Descubrimiento de capacidades de supervisión territorial y semáforo de riesgo**<br>**Given** un representante de cooperativa agraria consultando las soluciones institucionales.<br>**When** accede a la información de valor para organizaciones de productores.<br>**Then** el sistema expone el mapa satelital de parcelas socias con posición GPS y el tablero semafórico de vulnerabilidad fenológica.<br>**And** detalla la optimización de rutas de asistencia técnica según la severidad de sobrecarga frutal de los predios. |
| **Escenario 2: Visualización de capacidades de estimación temprana de acopio**<br>**Given** un gestor técnico evaluando el impacto de la solución en la recepción de materia prima.<br>**When** revisa los módulos de previsión de volumen.<br>**Then** el sistema presenta la estimación agregada temprana de tonelaje discriminada por aptitud comercial (aceituna de mesa y para almazara) para organizar turnos de procesamiento y salmueras. |

---

### US36: Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US36** | Visitante | Alta | EP09 |

| Title |
| :--- |
| Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN) |

| Description |
| :--- |
| **Como** Visitante, **quiero** consultar las tarifas de suscripción en Soles (PEN) por superficie o membresía institucional junto con el detalle de servicios incluidos, **para** evaluar la opción comercial más conveniente y transparente para mi escala productiva antes de contratar. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de alternativas comerciales diferenciadas por segmento**<br>**Given** un visitante interesado en contratar el servicio de la plataforma.<br>**When** consulta las opciones de suscripción y tarifas vigentes.<br>**Then** el sistema presenta los costos expresados en Soles (PEN), diferenciando el plan de productor individual por hectárea y la membresía corporativa para cooperativas.<br>**And** detalla las prestaciones analíticas, límites de parcelas y soporte agronómico comprendidos en cada alternativa. |
| **Escenario 2: Transparencia en condiciones de facturación y renovación**<br>**Given** un agricultor evaluando la periodicidad de pago del servicio.<br>**When** revisa las condiciones comerciales del plan.<br>**Then** el sistema expone con claridad los ciclos de cobro, los medios locales de pago admitidos y la ausencia de penalidades ocultas por cancelación. |

---

### US37: Reproducción del video promocional y demostrativo del producto ("About the Product")

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US37** | Visitante Interesado | Media | EP09 |

| Title |
| :--- |
| Reproducción del video promocional y demostrativo del producto ("About the Product") |

| Description |
| :--- |
| **Como** Visitante Interesado, **quiero** reproducir un video demostrativo breve sobre el funcionamiento de Viora, **para** apreciar la aplicación práctica de los modelos agronómicos en campo y validar su eficacia en la mitigación de la vecería prolongada antes de adoptar la plataforma. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Reproducción del video demostrativo del producto**<br>**Given** un visitante interesado en conocer la operatividad práctica de la plataforma.<br>**When** solicita reproducir el contenido audiovisual sobre el producto ("About the Product").<br>**Then** el sistema inicia la reproducción del video demostrando el flujo de muestreo a pie de árbol, la sincronización offline y la generación de prescripciones agronómicas.<br>**And** presenta casos de uso orientados tanto a productores individuales como a organizaciones cooperativas. |
| **Escenario 2: Control de reproducción adaptativa**<br>**Given** un usuario reproduciendo el video del producto sobre una conexión de datos móvil.<br>**When** el contenido audiovisual se reproduce en el navegador.<br>**Then** el sistema ofrece controles de reproducción, pausa y ajuste dinámico de calidad según el ancho de banda disponible. |

---

### US38: Reproducción del video institucional sobre el equipo y proceso de ingeniería ("About the Team")

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US38** | Visitante Cauteloso | Baja | EP09 |

| Title |
| :--- |
| Reproducción del video institucional sobre el equipo y proceso de ingeniería ("About the Team") |

| Description |
| :--- |
| **Como** Visitante Cauteloso, **quiero** reproducir un video sobre el equipo y el proceso de trabajo detrás del desarrollo de Viora, **para** corroborar el respaldo profesional, rigor agronómico e institucional del software antes de incorporarlo en mi actividad agrícola. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Reproducción del video de trayectoria y metodología del equipo**<br>**Given** un visitante que busca comprobar la seriedad y el respaldo técnico del proyecto.<br>**When** solicita reproducir el video institucional del equipo ("About the Team").<br>**Then** el sistema reproduce el material audiovisual documentando el trabajo de campo con agricultores, diseño centrado en el usuario y pruebas de software.<br>**And** expone las intervenciones de los integrantes describiendo las competencias agronómicas y tecnológicas aplicadas en la solución. |
| **Escenario 2: Consulta de perfiles y roles de los miembros del equipo**<br>**Given** un visitante examinando la información institucional del proyecto.<br>**When** consulta el detalle complementario del equipo.<br>**Then** el sistema presenta la identidad, especialidad y rol técnico de cada integrante del equipo desarrollador. |

---

### US39: Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US39** | Visitante | Alta | EP09 |

| Title |
| :--- |
| Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733) |

| Description |
| :--- |
| **Como** Visitante, **quiero** consultar los Términos y Condiciones y la Política de Privacidad formulada conforme a la Ley N° 29733 (Ley de Protección de Datos Personales del Perú), **para** tener plena certidumbre legal sobre la confidencialidad de mis registros de cultivo y los derechos sobre mis datos agronómicos. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta formal de la política de privacidad de datos**<br>**Given** un visitante interesado en las garantías de protección de la información.<br>**When** accede al documento de política de privacidad de la plataforma.<br>**Then** el sistema expone los lineamientos de tratamiento de datos personales en estricta conformidad con la Ley N° 29733 y su reglamento.<br>**And** especifica los fines exclusivamente agronómicos de custodia y los canales formales para ejercer los derechos de acceso, rectificación, cancelación y oposición (derechos ARCO). |
| **Escenario 2: Consulta de términos y condiciones de la plataforma SaaS**<br>**Given** un usuario evaluando el marco contractual del servicio digital.<br>**When** consulta las condiciones de uso de la plataforma.<br>**Then** el sistema expone los términos comerciales estipulando la propiedad inalienable de los datos de cosecha por parte del agricultor y los compromisos de disponibilidad del servicio. |

---

### US40: Redirección y acceso a la descarga oficial de la aplicación móvil

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US40** | Visitante | Alta | EP09 |

| Title |
| :--- |
| Redirección y acceso a la descarga oficial de la aplicación móvil |

| Description |
| :--- |
| **Como** Visitante, **quiero** distinguir accesos directos hacia las aplicaciones móviles oficiales según mi segmento (App Productor Olivarero en Android/Kotlin o App Gestor Técnico en Flutter), **para** descargar e instalar la aplicación correspondiente a mi actividad e iniciar mi experiencia en la plataforma. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Acceso guiado a la descarga según segmento y plataforma del dispositivo**<br>**Given** un visitante que decide adoptar una solución móvil de Viora.<br>**When** solicita el acceso a la descarga diferenciada para Productor Olivarero o Gestor Técnico.<br>**Then** el sistema provee los enlaces directos y verificados hacia los repositorios oficiales de distribución móvil según el segmento y sistema operativo seleccionado.<br>**And** confirma los requisitos mínimos de compatibilidad del sistema operativo para una instalación exitosa.<br>**And** los botones y badges de descarga mantienen un área táctil mínima de 48 por 48 píxeles en dispositivos móviles. |
| **Escenario 2: Orientación de primeros pasos al completar la instalación sin ambigüedad de segmentos**<br>**Given** un visitante que finaliza la instalación de la aplicación móvil específica de su segmento.<br>**When** abre la aplicación por primera vez en su dispositivo.<br>**Then** el sistema ofrece la alternativa de iniciar sesión con credenciales previas o crear una nueva cuenta del segmento correspondiente a la aplicación instalada (Productor Olivarero o Gestor Técnico).<br>**And** omite cualquier referencia a tipos de cuenta corporativa o de cooperativa no contemplados en el modelo de roles del sistema. |

---

### US41: Selección de idioma y localización de contenidos en la Landing Page

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US41** | Visitante | Media | EP15 |

| Title |
| :--- |
| Selección de idioma y localización de contenidos en la Landing Page |

| Description |
| :--- |
| **Como** Visitante, **quiero** alternar el idioma de los contenidos entre Español e Inglés mediante un selector visible en la cabecera, **para** consultar la propuesta de valor, los beneficios agronómicos y las tarifas en mi idioma preferido. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Detección automática del idioma del navegador**<br>**Given** un visitante que accede al sitio web público de Viora.<br>**When** la página carga en el navegador del dispositivo.<br>**Then** el sistema detecta la configuración regional del navegador y presenta los contenidos en idioma inglés si el navegador utiliza dicho idioma, o en español de forma predeterminada.<br>**And** el selector de cabecera refleja visualmente la opción de idioma activa. |
| **Escenario 2: Cambio manual interactivo y persistencia local**<br>**Given** un visitante explorando cualquier sección de la landing page.<br>**When** selecciona un idioma distinto a través del componente selector en la barra superior.<br>**Then** la interfaz traduce instantáneamente todos los textos, menús y tarifas sin requerir la recarga completa del sitio web.<br>**And** persiste la preferencia en el almacenamiento local (`localStorage`) para conservar la configuración en visitas sucesivas. |

---

### US42: Configuración y cambio de idioma de la interfaz en la aplicación móvil

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US42** | Productor Olivarero / Gestor Técnico | Media | EP15 |

| Title |
| :--- |
| Configuración y cambio de idioma de la interfaz en la aplicación móvil |

| Description |
| :--- |
| **Como** usuario autenticado de la aplicación móvil de Viora (Productor Olivarero o Gestor Técnico), **quiero** seleccionar mi idioma de preferencia (Español o Inglés) desde el panel de ajustes de la aplicación, **para** visualizar todos los menús, diagnósticos y alertas en el idioma con el que tenga mayor familiaridad. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Cambio de idioma en caliente sin reinicio de sesión**<br>**Given** un usuario autenticado navegando dentro de la aplicación móvil.<br>**When** ingresa a la configuración de preferencias y selecciona una nueva opción de idioma (Español o Inglés).<br>**Then** la aplicación actualiza en caliente todas las etiquetas, títulos, botones y mensajes de alerta al idioma seleccionado sin cerrar la sesión activa del usuario.<br>**And** adapta los separadores de miles y fechas según la convención regional correspondiente. |
| **Escenario 2: Persistencia local de la preferencia de idioma en el dispositivo**<br>**Given** un usuario que configuró previamente su preferencia de idioma en la app.<br>**When** cierra la aplicación y vuelve a iniciarla o reinicia el dispositivo móvil.<br>**Then** la aplicación móvil recupera el ajuste persistido desde el almacenamiento local seguro y levanta directamente en el idioma seleccionado. |

---

### US43: Completado de perfil de usuario y contacto validado bajo estándar E.164

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **US43** | Productor Olivarero / Gestor Técnico | Alta | EP01 |

| Title |
| :--- |
| Completado de perfil de usuario y contacto validado bajo estándar E.164 |

| Description |
| :--- |
| **Como** usuario nuevo autenticado en Viora (Productor Olivarero o Gestor Técnico), **quiero** completar mi perfil de usuario ingresando mi nombre completo, país de residencia y número celular de contacto, **para** personalizar mi cuenta y habilitar los canales de notificación agronómica y operativa del sistema. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Registro exitoso de perfil y contacto con normalización telefónica**<br>**Given** un usuario autenticado con una cuenta activa que aún no ha completado su perfil inicial.<br>**When** ingresa su nombre completo, país de residencia y un número celular válido para dicho país.<br>**Then** el sistema persiste el perfil de usuario asociándolo a su cuenta y normaliza el número telefónico bajo el estándar internacional E.164.<br>**And** habilita el acceso completo a las funciones operativas de la plataforma según su rol asignado. |
| **Escenario 2: Rechazo por número telefónico incompatible con el país seleccionado**<br>**Given** un usuario autenticado completando su información de perfil.<br>**When** proporciona un número telefónico que no cumple con el formato E.164 o cuya longitud no corresponde al estándar del país seleccionado.<br>**Then** el sistema rechaza el guardado del perfil sin alterar la cuenta de acceso existente.<br>**And** notifica la inconsistencia indicando el formato telefónico y prefijo requerido para dicho país. |
| **Escenario 3: Rechazo por campos obligatorios incompletos o nombre vacío**<br>**Given** un usuario autenticado completando su perfil de usuario.<br>**When** envía el formulario omitiendo su nombre completo o país de residencia.<br>**Then** el sistema deniega el registro del perfil.<br>**And** resalta los campos requeridos solicitando su debido diligenciamiento. |

---


---

## 3. Historias Técnicas (Technical Stories)

A continuación, se presentan las 55 Historias Técnicas (*Technical Stories*) orientadas al equipo de desarrollo de backend, correspondientes a los servicios de integración RESTful y arquitectura de soporte (**EP10**, **EP11**, **EP12**, **EP13** y **EP15**). Conforme a las directrices de arquitectura de software en capas DDD, cada historia técnica comprende exactamente un único endpoint HTTP con sus respectivos escenarios BDD basados en códigos de respuesta RESTful:

### TS01: Registro de credenciales de cuenta de usuario y asignación de rol en IAM

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS01** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Registro de credenciales de cuenta de usuario y asignación de rol en IAM |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar las credenciales de registro (correo, contraseña y rol) al servicio de autenticación, **para** crear la cuenta de usuario con contraseña cifrada y rol asignado en el contexto de identidad y acceso. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de cuenta de usuario**<br>**Given** una solicitud POST a `/api/v1/auth/sign-up` es recibida con un cuerpo JSON que contiene: `email`, `password` y `role`.<br>**When** la API valida la sintaxis, verifica que el correo no esté registrado y genera el hash seguro de la contraseña mediante BCrypt.<br>**Then** la API responde `201 Created` y retorna `UserAccountResource` con id, email, role y status activo.<br>**And** persiste la cuenta de usuario en el almacén de identidades. |
| **Escenario 2: Correo electrónico duplicado en el sistema**<br>**Given** una solicitud POST a `/api/v1/auth/sign-up` con un correo ya existente en el sistema.<br>**When** la API detecta conflicto de unicidad en la base de datos de identidades.<br>**Then** la API responde `409 Conflict` bajo el estándar RFC 7807 indicando que la dirección de correo ya se encuentra en uso. |
| **Escenario 3: Contraseña no cumple con las políticas de complejidad**<br>**Given** una solicitud POST a `/api/v1/auth/sign-up` con una contraseña que no satisface las reglas de longitud mínima o complejidad.<br>**When** el validador de payload procesa los atributos del registro.<br>**Then** la API responde `400 Bad Request` detallando la infracción de la política de contraseñas. |

---

### TS02: Autenticación de usuarios y emisión de tokens JWT con claims de rol

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS02** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Autenticación de usuarios y emisión de tokens JWT con claims de rol |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar las credenciales de acceso a la API, **para** autenticar al usuario y recibir un token de acceso JWT con sus respectivos claims de autorización. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Autenticación exitosa**<br>**Given** una solicitud POST a `/api/v1/auth/sign-in` es recibida con email y password válidos.<br>**When** la API verifica el hash criptográfico de la contraseña.<br>**Then** la API responde `200 OK` y retorna `AuthResource` conteniendo accessToken (JWT con vigencia de 15 minutos y claims de rol), refreshToken con rotación y tokenType Bearer. |
| **Escenario 2: Credenciales incorrectas**<br>**Given** una solicitud POST a `/api/v1/auth/sign-in` con contraseña incorrecta o correo no registrado.<br>**When** la API valida las credenciales.<br>**Then** la API responde `401 Unauthorized` con mensaje genérico de error de autenticación. |

---

### TS03: Renovación periódica de tokens de sesión mediante Refresh Token

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS03** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Renovación periódica de tokens de sesión mediante Refresh Token |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar el refresh token a la API, **para** renovar el token de acceso JWT expirado sin requerir que el usuario vuelva a ingresar sus credenciales. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Renovación exitosa de token**<br>**Given** una solicitud POST a `/api/v1/auth/refresh-tokens` es recibida con un refreshToken vigente y no revocado.<br>**When** la API valida la firma y el estado de la sesión en el almacén de tokens.<br>**Then** la API responde `200 OK` y retorna `AuthResource` con un nuevo accessToken y un nuevo refreshToken rotado. |
| **Escenario 2: Refresh token expirado o revocado**<br>**Given** una solicitud POST a `/api/v1/auth/refresh-tokens` con un token revocado o caducado.<br>**When** la API valida el token.<br>**Then** la API responde `401 Unauthorized` exigiendo nueva autenticación interactiva. |

---

### TS04: Consulta de información de perfil del usuario autenticado

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS04** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Consulta de información de perfil del usuario autenticado |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consumir el endpoint GET del perfil de usuario, **para** obtener los datos personales, de membresía y contacto del usuario autenticado. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de perfil propio**<br>**Given** una solicitud GET a `/api/v1/profiles/{userId}` con cabecera Authorization Bearer.<br>**When** la API valida que el `userId` solicitado coincide con el claim del token JWT o el solicitante es administrador.<br>**Then** la API responde `200 OK` y retorna `ProfileResource` con id, userId, fullName, country, phoneNumber y createdAt. |
| **Escenario 2: Intento de consulta de perfil de otro usuario**<br>**Given** una solicitud GET a `/api/v1/profiles/{userId}` con un identificador ajeno al usuario autenticado.<br>**When** la API evalúa la correspondencia de propiedad de la cuenta.<br>**Then** la API responde `403 Forbidden`. |
| **Escenario 3: Usuario inexistente**<br>**Given** una solicitud GET a `/api/v1/profiles/{userId}` con un identificador no registrado.<br>**When** la API consulta la persistencia.<br>**Then** la API responde `404 Not Found`. |

---

### TS05: Actualización parcial de datos de perfil con validación telefónica E.164

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS05** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Actualización parcial de datos de perfil con validación telefónica E.164 |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar actualizaciones parciales del perfil a la API, **para** modificar el nombre de contacto o el número de teléfono operativo validado bajo el estándar E.164. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa**<br>**Given** una solicitud PATCH a `/api/v1/profiles/{userId}` con cuerpo JSON que incluye fullName y/o phoneNumber y país.<br>**When** la API valida la propiedad de la cuenta y verifica el nuevo teléfono mediante la biblioteca `libphonenumber`.<br>**Then** la API responde `200 OK` y retorna `ProfileResource` con los datos actualizados y persistidos. |
| **Escenario 2: Teléfono inválido en actualización**<br>**Given** una solicitud PATCH a `/api/v1/profiles/{userId}` con un teléfono que no cumple la norma E.164 según `libphonenumber`.<br>**When** la API valida los campos provistos.<br>**Then** la API responde `400 Bad Request` sin alterar la información previa. |
| **Escenario 3: Permiso denegado sobre cuenta ajena**<br>**Given** una solicitud PATCH a `/api/v1/profiles/{userId}` dirigida a un identificador distinto al token autenticado.<br>**When** la API evalúa la correspondencia.<br>**Then** la API responde `403 Forbidden`. |

---

### TS06: Generación de preferencia de checkout para suscripción de productor independiente

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS06** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Generación de preferencia de checkout para suscripción de productor independiente |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar a la API la creación de una orden de suscripción SaaS, **para** obtener el identificador de preferencia y la URL de redirección a la pasarela digital de pagos. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de preferencia de suscripción**<br>**Given** una solicitud POST a `/api/v1/subscriptions` con cuerpo JSON: planType: PRODUCER y hectares: number.<br>**When** la API calcula el monto en Soles (PEN) según la superficie y genera la orden en la pasarela de pagos configurada.<br>**Then** la API responde `201 Created` y retorna `SubscriptionPreferenceResource` con preferenceId, checkoutUrl y externalReference. |
| **Escenario 2: Datos de suscripción inválidos**<br>**Given** una solicitud POST a `/api/v1/subscriptions` con hectares menor o igual a cero o plan inexistente.<br>**When** la API valida la solicitud de cobro.<br>**Then** la API responde `400 Bad Request` con la especificación del error. |

---

### TS07: Recepción y procesamiento de webhooks de notificación de pagos

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS07** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Recepción y procesamiento de webhooks de notificación de pagos |

| Description |
| :--- |
| **Como** desarrollador de plataforma backend, **quiero** exponer un endpoint webhook para la pasarela de pagos, **para** procesar asíncronamente las confirmaciones de transacción y activar la suscripción del productor de manera inmediata. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Procesamiento exitoso de pago confirmado**<br>**Given** una solicitud POST a `/api/v1/payment-notifications/mercado-pago` recibida desde la pasarela con cabecera `x-signature` conteniendo la firma criptográfica HMAC-SHA256 válida y estado approved.<br>**When** la API valida la firma de autenticidad, recupera la orden y actualiza el estado de la suscripción del usuario.<br>**Then** la API responde `200 OK` y transiciona el estado de la suscripción a ACTIVE, asignando la fecha de vigencia correspondiente. |
| **Escenario 2: Firma de webhook inválida**<br>**Given** una solicitud POST a `/api/v1/payment-notifications/mercado-pago` con cabecera `x-signature` ausente o alterada.<br>**When** el validador criptográfico de webhooks detecta discrepancia en la firma HMAC.<br>**Then** la API responde `400 Bad Request` bajo RFC 7807 y descarta el procesamiento. |

---

### TS08: Generación de lote de códigos de activación para socios cooperativos

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS08** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Generación de lote de códigos de activación para socios cooperativos |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar la creación de códigos de activación institucionales a la API, **para** que el gestor técnico pueda distribuirlos a los socios de la cooperativa. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Generación exitosa de códigos de activación**<br>**Given** una solicitud POST a `/api/v1/cooperatives/{id}/invitation-code-batches` con cuerpo JSON conteniendo: `quantity` y `validDays`.<br>**When** la API valida que el usuario tiene rol GESTOR en dicha cooperativa y que la cantidad solicitada no supera el límite contratado en la licencia.<br>**Then** la API responde `201 Created` y retorna `InvitationCodeBatchResource` con el identificador del lote, arreglo de códigos alfanuméricos únicos generados y fecha de expiración. |
| **Escenario 2: Cupo de membresías excedido**<br>**Given** una solicitud POST con una cantidad que sobrepasa el cupo de la membresía cooperativa.<br>**When** la API evalúa la disponibilidad de cupos en la licencia.<br>**Then** la API responde `400 Bad Request` indicando el límite de licencias permitidas. |
| **Escenario 3: Acceso no autorizado para no gestores**<br>**Given** una solicitud POST emitida por un usuario sin rol GESTOR en la cooperativa especificada.<br>**When** la API valida los permisos institucionales.<br>**Then** la API responde `403 Forbidden`. |

---

### TS09: Consulta y auditoría de códigos de activación de cooperativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS09** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Consulta y auditoría de códigos de activación de cooperativa |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el listado de códigos de activación de una cooperativa a la API, **para** mostrar al gestor los códigos disponibles, canjeados y los socios vinculados. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado de códigos disponibles y canjeados**<br>**Given** una solicitud GET a `/api/v1/cooperatives/{id}/invitation-code-batches` con token de gestor técnico y parámetros opcionales de filtro por estado.<br>**When** la API valida la pertenencia institucional y consulta los registros del agregado.<br>**Then** la API responde `200 OK` con un arreglo de objetos `InvitationCodeBatchResource` que detallan lotes, códigos, estados (AVAILABLE, REDEEMED, EXPIRED) y fechas de expiración. |
| **Escenario 2: Acceso no autorizado**<br>**Given** una solicitud GET emitida por un usuario que no es gestor de la cooperativa.<br>**When** la API verifica el rol institucional.<br>**Then** la API responde `403 Forbidden`. |

---

### TS10: Canje de código de activación de socio para vinculación cooperativa

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS10** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Canje de código de activación de socio para vinculación cooperativa |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar el código de activación provisto por el socio a la API, **para** afiliar al productor a la licencia colectiva de la cooperativa sin cobro individual. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Canje exitoso y afiliación**<br>**Given** una solicitud POST a `/api/v1/cooperative-code-redemptions` con cuerpo JSON: `invitationCode`.<br>**When** la API valida que el código existe, está en estado AVAILABLE y pertenece al socio autenticado.<br>**Then** la API responde `201 Created` y retorna `CooperativeMembershipResource` confirmando la vinculación con la cooperativa y el cambio de estado del código a REDEEMED. |
| **Escenario 2: Código inválido o agotado**<br>**Given** una solicitud POST con un `invitationCode` inexistente o ya canjeado previamente.<br>**When** la API consulta la validez del código.<br>**Then** la API responde `400 Bad Request` indicando que el código no es válido o expiró. |
| **Escenario 3: Socio ya vinculado activamente**<br>**Given** una solicitud POST emitida por un usuario que ya cuenta con membresía activa en la cooperativa.<br>**When** la API comprueba el estado actual de membresías.<br>**Then** la API responde `409 Conflict`. |

---

### TS11: Creación y delimitación poligonal de parcelas georreferenciadas

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS11** | Desarrollador de Aplicaciones Cliente | Alta | EP11 |

| Title |
| :--- |
| Creación y delimitación poligonal de parcelas georreferenciadas |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los vértices poligonales en formato WGS84 a la API, **para** registrar una nueva parcela y persistir sus propiedades agronómicas. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de parcela**<br>**Given** una solicitud POST a `/api/v1/plots` con cuerpo JSON conteniendo: name, polygonCoordinates, variety, plantDensity y plantationYear.<br>**When** la API verifica que el polígono esté cerrado, calcula la superficie en hectáreas y valida la densidad biológica.<br>**Then** la API responde `201 Created` y retorna `PlotResource` con el identificador asignado y el área calculada. |
| **Escenario 2: Geometría poligonal inválida**<br>**Given** una solicitud POST a `/api/v1/plots` con menos de 3 vértices o con un polígono que no cierra.<br>**When** la API valida la geometría espacial.<br>**Then** la API responde `400 Bad Request` indicando la inconsistencia en las coordenadas. |

---

### TS12: Listado y sincronización incremental delta de parcelas

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS12** | Desarrollador de Aplicaciones Cliente | Alta | EP11 |

| Title |
| :--- |
| Listado y sincronización incremental delta de parcelas |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar el inventario de parcelas con soporte de marcas temporales, **para** actualizar la base de datos local SQLite mediante sincronización delta eficiente. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta y sincronización incremental**<br>**Given** una solicitud GET a `/api/v1/plots` con parámetro opcional `?updatedSince=\{timestamp\}`.<br>**When** la API filtra las parcelas del usuario modificadas posteriormente a dicha marca temporal.<br>**Then** la API responde `200 OK` con un arreglo de objetos `PlotResource` actualizados. |
| **Escenario 2: Acceso no autorizado a predios ajenos**<br>**Given** una solicitud GET a `/api/v1/plots` con parámetro `?userId=\{id\}` perteneciente a otro agricultor sin ser gestor técnico.<br>**When** la API valida los permisos de acceso.<br>**Then** la API responde `403 Forbidden`. |

---

### TS13: Consulta detallada de información agronómica y espacial de parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS13** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta detallada de información agronómica y espacial de parcela |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el detalle de una parcela mediante su ID, **para** visualizar la ficha agronómica completa del predio en la interfaz de usuario. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Obtención de detalle de parcela**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}` con token autorizado.<br>**When** la API verifica la titularidad y recupera la parcela.<br>**Then** la API responde `200 OK` y retorna `PlotDetailResource` con geometría, variedad, densidad, año de siembra y sensores vinculados. |
| **Escenario 2: Parcela inexistente**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}` con un identificador no existente.<br>**When** la API busca en la base de datos.<br>**Then** la API responde `404 Not Found`. |

---

### TS14: Actualización y rectificación integral de parcela con bloqueo optimista

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS14** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Actualización y rectificación integral de parcela con bloqueo optimista |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los datos actualizados de la parcela mediante el método PUT junto con el parámetro de ruta `{plotId}`, la cabecera `If-Match` y los datos en el cuerpo JSON, **para** rectificar linderos poligonales, marco de plantación o atributos agronómicos previniendo colisiones de concurrencia. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa con control de concurrencia (HTTP 200 OK)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}` con parámetro de ruta `plotId`, cabecera `If-Match` conteniendo el ETag de la versión actual y cuerpo JSON con `name`, `cultivar`, `plantingYear`, `spacing`, `coordinates` e `irrigationType`.<br>**When** la API valida la titularidad del predio, comprueba que la versión en `If-Match` coincida con la persistida, recalcula la superficie geodésica si variaron las coordenadas y persiste los cambios.<br>**Then** la API responde `200 OK`, retorna `PlotResponse` actualizado y emite una nueva cabecera `ETag` con la versión incrementada. |
| **Escenario 2: Conflicto de concurrencia optimista por versión desactualizada (HTTP 412 Precondition Failed)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}` donde el valor de la cabecera `If-Match` no coincide con la versión actual del recurso en la base de datos.<br>**When** el interceptor de concurrencia optimista detecta el conflicto de modificación concurrente.<br>**Then** la API responde `412 Precondition Failed` bajo el estándar RFC 7807 (`ProblemDetail`), impidiendo sobreescrituras simultáneas y preservando la integridad del registro. |
| **Escenario 3: Parámetros inválidos o inconsistencia en linderos geométricos (HTTP 400 Bad Request)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}` cuyo cuerpo contiene coordenadas poligonales no cerradas, valores nulos requeridos o datos agronómicos fuera de rango admisible.<br>**When** el validador de contratos procesa el cuerpo de la petición.<br>**Then** la API responde `400 Bad Request` detallando las violaciones de validación de campos. |
| **Escenario 4: Cuartel no encontrado en el inventario (HTTP 404 Not Found)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}` con un identificador `plotId` inexistente o archivado.<br>**When** el servicio de dominio consulta el repositorio parcelario.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS15: Eliminación y baja lógica de parcela del inventario

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS15** | Desarrollador de Aplicaciones Cliente | Baja | EP11 |

| Title |
| :--- |
| Eliminación y baja lógica de parcela del inventario |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar a la API la remoción de una parcela, **para** dar de baja predios registrados por error o desafectados de la producción. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Eliminación exitosa**<br>**Given** una solicitud DELETE a `/api/v1/plots/{plotId}` emitida por el propietario del lote.<br>**When** la API valida la propiedad y ejecuta la baja lógica del predio.<br>**Then** la API responde `204 No Content`. |
| **Escenario 2: Parcela ajena**<br>**Given** una solicitud DELETE a un lote perteneciente a otro usuario.<br>**When** la API verifica permisos.<br>**Then** la API responde `403 Forbidden`. |

---

### TS16: Alta y vinculación de nodo sensor virtual a parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS16** | Desarrollador de Aplicaciones Cliente | Alta | EP11 |

| Title |
| :--- |
| Alta y vinculación de nodo sensor virtual a parcela |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** registrar un nodo sensor virtual (microclima o sonda de suelo a 30/60 cm) en la API, **para** activar la simulación de telemetría agroclimática en la parcela. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Alta exitosa de nodo sensor virtual**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/iot-devices` con cuerpo JSON conteniendo name, type (MICROCLIMATE o SOIL_PROBE) y depthCm.<br>**When** la API valida que el tipo sea válido y la profundidad corresponda a 30 o 60 cm para sondas.<br>**Then** la API responde `201 Created` y retorna `IotDeviceResource` con id asignado y estado ACTIVE. |
| **Escenario 2: Nombre duplicado de sensor en la misma parcela**<br>**Given** una solicitud POST con un nombre de sensor ya existente en dicho lote.<br>**When** la API comprueba unicidad dentro del predio.<br>**Then** la API responde `409 Conflict`. |
| **Escenario 3: Parámetros de nodo inválidos**<br>**Given** una solicitud POST con tipo desconocido o profundidad distinta a 30 o 60 cm.<br>**When** la API evalúa la configuración técnica.<br>**Then** la API responde `400 Bad Request`. |

---

### TS17: Consulta de inventario de nodos virtuales vinculados a parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS17** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta de inventario de nodos virtuales vinculados a parcela |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el listado de nodos virtuales de una parcela a la API, **para** desplegar su estado operativo y última lectura simulada en la interfaz. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado de dispositivos vinculados**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/iot-devices` con token de usuario autorizado.<br>**When** la API recupera los dispositivos asociados a la parcela.<br>**Then** la API responde `200 OK` con un arreglo de objetos `IotDeviceResource` detallando id, name, type, depthCm, status y lastReadingTimestamp. |
| **Escenario 2: Parcela inexistente**<br>**Given** una solicitud GET con un plotId inexistente.<br>**When** la API consulta la persistencia.<br>**Then** la API responde `404 Not Found`. |

---

### TS18: Desvinculación de nodo virtual preservando trazabilidad histórica

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS18** | Desarrollador de Aplicaciones Cliente | Baja | EP11 |

| Title |
| :--- |
| Desvinculación de nodo virtual preservando trazabilidad histórica |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar la desvinculación de un nodo virtual a la API, **para** retirar sensores obsoletos preservando las lecturas históricas asociadas al lote. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Desvinculación exitosa**<br>**Given** una solicitud DELETE a `/api/v1/plots/{plotId}/iot-devices/{deviceId}` emitida por el titular de la parcela.<br>**When** la API verifica la pertenencia y ejecuta la baja lógica del nodo.<br>**Then** la API responde `204 No Content` manteniendo la integridad de las series cronológicas previas. |
| **Escenario 2: Dispositivo no encontrado**<br>**Given** una solicitud DELETE con identificador de dispositivo inexistente.<br>**When** la API busca el registro.<br>**Then** la API responde `404 Not Found`. |

---

### TS19: Consulta de series temporales de telemetría ambiental y de suelo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS19** | Desarrollador de Aplicaciones Cliente | Alta | EP11 |

| Title |
| :--- |
| Consulta de series temporales de telemetría ambiental y de suelo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar las lecturas horarias de microclima y humedad de suelo a la API, **para** graficar las curvas térmicas e hídricas en los paneles de control de la parcela. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de series históricas**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/telemetries` con parámetros `?startDate=\{ISO\}&endDate=\{ISO\}`.<br>**When** la API valida el rango temporal y recupera las series horarias continuas.<br>**Then** la API responde `200 OK` y retorna `TelemetrySeriesResource` con arreglos de temperatura, humedad relativa y humedad volumétrica a 30 y 60 cm. |
| **Escenario 2: Rango temporal ilógico**<br>**Given** una solicitud GET con una fecha inicial posterior a la fecha final.<br>**When** la API valida la coherencia de las fechas.<br>**Then** la API responde `400 Bad Request`. |

---

### TS20: Consulta de pronóstico meteorológico geolocalizado a 7 días

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS20** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta de pronóstico meteorológico geolocalizado a 7 días |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el pronóstico meteorológico para la coordenada centroide de la parcela, **para** advertir al productor sobre olas de calor, heladas o vientos desecantes. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Entrega de pronóstico geolocalizado**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/forecasts` con token autorizado.<br>**When** la API resuelve el centroide del lote y obtiene el pronóstico a 7 días desde el servicio climático externo con almacenamiento en caché local por 3 horas.<br>**Then** la API responde `200 OK` y retorna `ForecastResource` con temperaturas máximas y mínimas, probabilidad de precipitación, velocidad de viento y timestamp de actualización. |
| **Escenario 2: Parcela sin geometría definida**<br>**Given** una solicitud GET dirigida a una parcela sin coordenadas válidas.<br>**When** la API intenta calcular el centroide geográfico.<br>**Then** la API responde `400 Bad Request` indicando la ausencia de georreferenciación. |

---

### TS21: Asentamiento de cosecha anual por campaña para auditoría productiva

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS21** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Asentamiento de cosecha anual por campaña para auditoría productiva |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los kilogramos cosechados al cierre de la temporada a la API, **para** registrar la producción anual del lote y alimentar el cálculo del índice BBI. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Asentamiento exitoso de cosecha**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/harvest-records` con cuerpo JSON: campaignYear, totalYieldKg, greenKg y blackKg.<br>**When** la API valida la propiedad del lote, verifica que la suma de calidades coincida con el total y persiste el registro.<br>**Then** la API responde `201 Created` y retorna `HarvestRecordResource` con el registro auditado. |
| **Escenario 2: Campaña ya registrada previamente**<br>**Given** una solicitud POST para una campaña agrícola ya asentada en dicho lote.<br>**When** la API comprueba la existencia del año agrícola.<br>**Then** la API responde `409 Conflict`. |
| **Escenario 3: Valores de cosecha inconsistentes**<br>**Given** una solicitud POST con rendimientos negativos o año futuro.<br>**When** la API valida los campos numéricos.<br>**Then** la API responde `400 Bad Request`. |

---

### TS22: Consulta del historial plurianual de cosechas de la parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS22** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Consulta del historial plurianual de cosechas de la parcela |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el historial de cosechas de una parcela a la API, **para** renderizar la curva interanual de rendimiento productivo en la interfaz. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado cronológico de cosechas**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/harvest-records` con token de usuario autorizado.<br>**When** la API recupera los registros productivos históricos del lote.<br>**Then** la API responde `200 OK` con un arreglo de objetos `HarvestRecordResource` ordenados cronológicamente por año agrícola. |
| **Escenario 2: Parcela no encontrada**<br>**Given** una solicitud GET con un plotId inexistente.<br>**When** la API consulta la base de datos.<br>**Then** la API responde `404 Not Found`. |

---

### TS23: Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS23** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar los indicadores matemáticos de vecería y frío invernal a la API, **para** desplegar el índice BBI y las porciones de frío acumuladas con alertas térmicas ENOS. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Cálculo exitoso de índice BBI o frío de Erez**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/metrics` con parámetro `?name=BBI` o `?name=CHILLING`.<br>**When** la API computa la fórmula de Hoblyn (≥ 3 campañas) o ejecuta el modelo dinámico de Erez sobre las temperaturas horarias.<br>**Then** la API responde `200 OK` y retorna `MetricResource` con el valor numérico, categoría de severidad y el flag `enosAnomalyDetected: boolean`. |
| **Escenario 2: Datos insuficientes para el cálculo**<br>**Given** una solicitud GET para BBI en un lote con menos de 3 campañas registradas.<br>**When** la API valida los requisitos estadísticos.<br>**Then** la API responde `400 Bad Request` indicando que se requieren al menos 3 campañas agrícolas. |

---

### TS24: Registro y sincronización de muestreos guiados de cuajado en campo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS24** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Registro y sincronización de muestreos guiados de cuajado en campo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los registros de conteo de frutos y brotes tomados a pie de árbol mediante el método POST con parámetro de ruta `{plotId}` y cuerpo JSON con árboles evaluados (incluyendo el diámetro de tronco como atributo opcional nullable), **para** sincronizar los muestreos offline y calcular la carga frutal del predio sin bloquear el proceso si no se midió el tronco. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Sincronización exitosa de lote de muestreos con o sin diámetro de tronco (HTTP 201 Created)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/samplings` con parámetro de ruta `plotId` y cuerpo JSON con `campaignYear`, `samplingDate` y el arreglo `trees` (`treeNumber`, `shootsCount`, `fruitsCount`, y `trunkDiameterMm` como atributo opcional nullable).<br>**When** la API valida los conteos, comprueba la existencia de la parcela, procesa los registros admitiendo la presencia o ausencia de `trunkDiameterMm` sin exigir su medición obligatoria y computa la tasa promedio de frutos por brote.<br>**Then** la API responde `201 Created` retornando `SamplingBatchResponse` con `treesSampled`, `averageFruitPerShoot`, `cropLoadIndex` y el estado de suficiencia estadística. |
| **Escenario 2: Rechazo por conteos negativos o incongruencia biológica (HTTP 400 Bad Request)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/samplings` con conteos negativos, números de árbol duplicados en el mismo lote o valores de frutos por brote biológicamente inverosímiles.<br>**When** el servicio de validación evalúa la integridad agronómica del lote.<br>**Then** la API responde `400 Bad Request` indicando las violaciones de restricción del lote de muestreo. |
| **Escenario 3: Parcela no encontrada en el repositorio (HTTP 404 Not Found)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/samplings` con un parámetro de ruta `plotId` inexistente en el sistema.<br>**When** la API intenta asociar el lote de muestreo al predio.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS25: Consulta de representatividad estadística y estado de muestreo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS25** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Consulta de representatividad estadística y estado de muestreo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el estado de representatividad de muestreos a la API, **para** notificar al usuario si ha evaluado suficientes árboles para generar prescripciones confiables. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta de cobertura de muestreos**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/samplings` con token autorizado.<br>**When** la API consolida los árboles evaluados en la campaña activa.<br>**Then** la API responde `200 OK` y retorna `SamplingSummaryResource` con total de árboles evaluados, representatividad porcentual y el indicador `isSampleSufficient: boolean` (≥ 5 árboles). |
| **Escenario 2: Parcela no encontrada**<br>**Given** una solicitud GET con plotId inválido o inexistente.<br>**When** la API busca en persistencia.<br>**Then** la API responde `404 Not Found`. |

---

### TS26: Consulta de prescripción técnica de aclareo y ventana fenológica

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS26** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Consulta de prescripción técnica de aclareo y ventana fenológica |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar la prescripción agronómica activa mediante el método GET al endpoint `/api/v1/plots/{plotId}/thinning-prescriptions/active` con parámetro de ruta `{plotId}`, **para** desplegar el porcentaje de remoción recomendado, la ventana fenológica de intervención y la lista explícita de bloqueadores en caso de información faltante. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de prescripción activa o bloqueadores diagnósticos (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/thinning-prescriptions/active` con parámetro de ruta `plotId`.<br>**When** la API evalúa la representatividad del muestreo y la fecha de plena floración registrada para el cuartel.<br>**Then** la API responde `200 OK` retornando `ThinningPrescriptionResponse` conteniendo: `status`, `targetRemovalPercentage`, `recommendedWindowStart`, `recommendedWindowEnd`, `phenologicalStage`, `isOverloaded`, la lista explícita `blockers` (por ejemplo, `SAMPLING_NOT_REPRESENTATIVE` o `FULL_BLOOM_MISSING`) e instrucciones operativas de manejo.<br>**And** entrega las orientaciones técnicas para desbloquear la prescripción en caso de requerir mediciones adicionales. |
| **Escenario 2: Cuartel no encontrado o sin prescripción activa (HTTP 404 Not Found)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/thinning-prescriptions/active` con un identificador `plotId` inexistente o que no posee ninguna prescripción emitida en la campaña.<br>**When** el servicio de aplicación consulta el contexto de aclareo.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS27: Confirmación y registro de ejecución de labor de aclareo en campo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS27** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Confirmación y registro de ejecución de labor de aclareo en campo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la confirmación de ejecución de aclareo mediante el método POST a `/api/v1/plots/{plotId}/thinning-prescriptions/active/confirmations` con parámetro de ruta `{plotId}` y cuerpo JSON (`executedDate`, `actualRemovalPercentage`, `removedKg`, `laborCrewSize`, `notes`), **para** asentar la práctica en la bitácora, actualizar el balance de carga residual y proyectar el calibre comercial COI. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Confirmación exitosa con balance de carga y proyección de calibre COI (HTTP 201 Created)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/thinning-prescriptions/active/confirmations` con parámetro de ruta `plotId` y cuerpo JSON con `executedDate`, `actualRemovalPercentage` (entre 0 y 100), `removedKg`, `laborCrewSize` y `notes`.<br>**When** la API valida los campos, registra la confirmación de aclareo en la bitácora del cuartel y evalúa la proyección de calibre según la calibración del modelo de la variedad.<br>**Then** la API responde `201 Created` retornando `ExecutionConfirmationResponse` conteniendo `id`, `executedDate`, `actualRemovalPercentage`, `loadBalance` (`residualLoadIndex`, `loadState`), `caliberProjection` (`status`: `ESTIMATED` o `IN_CALIBRATION`, `probableGrade`, `confidenceInterval80`) y la marca temporal de confirmación. |
| **Escenario 2: Confirmación con 100 % de remoción y calibre no aplicable (HTTP 201 Created)**<br>**Given** una solicitud POST donde `actualRemovalPercentage` es igual a 100.0 (defrutado total sanitario o severo).<br>**When** la API registra la intervención en el predio.<br>**Then** la API responde `201 Created` retornando el balance con carga residual en cero y `caliberProjection.status` en `NOT_APPLICABLE`. |
| **Escenario 3: Porcentaje de remoción fuera de rango o fecha inválida (HTTP 400 Bad Request)**<br>**Given** una solicitud POST con un porcentaje de remoción negativo, mayor a 100 % o una fecha de ejecución futura.<br>**When** el servicio valida las restricciones de dominio agronómico.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807. |
| **Escenario 4: Cuartel o prescripción activa inexistente (HTTP 404 Not Found)**<br>**Given** una solicitud POST dirigida a un `plotId` inexistente o que carece de prescripción activa susceptible de confirmación.<br>**When** el servicio consulta el agregado en el contexto de Thinning.<br>**Then** la API responde `404 Not Found`. |

---

### TS28: Generación y descarga de reporte agronómico auditable en formato PDF

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS28** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Generación y descarga de reporte agronómico auditable en formato PDF |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el archivo binario del reporte agronómico a la API, **para** descargar la ficha técnica en PDF con la trazabilidad completa del predio para trámites bancarios o cooperativos. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Generación exitosa de PDF mediante negociación de contenidos**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/agronomic-reports` con cabecera `Accept: application/pdf` y token autorizado.<br>**When** la API compila los registros de cosecha, índice BBI, frío acumulado y labores de aclareo en el motor de renderizado de documentos.<br>**Then** la API responde `200 OK` con tipo de contenido `application/pdf` y cabecera `Content-Disposition` para descarga directa. |
| **Escenario 2: Consulta en formato estructurado JSON**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/agronomic-reports` con cabecera `Accept: application/json`.<br>**When** la API recupera la estructura agregada del expediente agronómico.<br>**Then** la API responde `200 OK` y retorna `AgronomicReportResource` con los metadatos y hash de certificación. |
| **Escenario 3: Parcela inexistente**<br>**Given** una solicitud GET con un identificador de parcela no existente.<br>**When** la API busca los datos del reporte.<br>**Then** la API responde `404 Not Found`. |

---

### TS29: Consulta de la matriz de riesgo territorial y semáforo sectorial para el gestor técnico

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS29** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Consulta de la matriz de riesgo territorial y semáforo sectorial para el gestor técnico |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar el estado consolidado de riesgo de los predios socios geolocalizados a la API, **para** desplegar el semáforo fenológico y priorizar visitas técnicas a parcelas con sobrecarga crítica (> 30%) o estrés hídrico. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de semáforo de riesgo sectorial**<br>**Given** una solicitud GET a `/api/v1/cooperatives/{cooperativeId}/territorial-risk` con parámetros `?latitude=\{lat\}&longitude=\{lon\}` y token de gestor técnico.<br>**When** la API evalúa los indicadores de frío y sobrecarga de todas las parcelas socias registradas en el radio territorial.<br>**Then** la API responde `200 OK` y retorna `TerritorialRiskResource` agrupando los predios en verde (óptimo), amarillo (moderado) y rojo (sobrecarga > 30% o frío insuficiente). |
| **Escenario 2: Permisos insuficientes para no gestores**<br>**Given** una solicitud GET emitida por un usuario sin rol GESTOR en la cooperativa.<br>**When** la API valida las credenciales.<br>**Then** la API responde `403 Forbidden`. |

---

### TS30: Proyección agregada temprana de volumen de acopio cooperativo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS30** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Proyección agregada temprana de volumen de acopio cooperativo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar la proyección temprana consolidada de acopio a la API, **para** mostrar el tonelaje total previsto discriminado por aptitud de aceituna verde para mesa y negra para aceite. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Proyección de acopio agregada**<br>**Given** una solicitud GET a `/api/v1/cooperatives/{cooperativeId}/intake-forecasts` con parámetro `?campaignYear=\{year\}`.<br>**When** la API agrega las cargas estimadas de los muestreos de los socios y computa el tonelaje esperado.<br>**Then** la API responde `200 OK` y retorna `IntakeForecastResource` con total de toneladas estimadas, desglose mesa/aceite y el porcentaje de superficie muestreada. |
| **Escenario 2: Acceso no autorizado**<br>**Given** una solicitud GET emitida por un usuario sin rol de gestor.<br>**When** la API evalúa la pertenencia institucional.<br>**Then** la API responde `403 Forbidden`. |

---

### TS31: Manejo centralizado de excepciones y errores bajo estándar RFC 7807

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS31** | Ingeniero de Plataforma Core | Alta | EP13 |

| Title |
| :--- |
| Manejo centralizado de excepciones y errores bajo estándar RFC 7807 |

| Description |
| :--- |
| **Como** ingeniero de plataforma core, **quiero** implementar un interceptor global de excepciones en el backend, **para** garantizar que todas las respuestas de error sigan el estándar RFC 7807 (Problem Details) con códigos HTTP semánticos y sin exponer trazas internas. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Intercepción de excepciones de validación y dominio**<br>**Given** una solicitud a cualquier endpoint que dispara una excepción de validación o regla de negocio.<br>**When** el interceptor centralizado captura la excepción.<br>**Then** responde con el código HTTP correspondiente (`400`, `404` o `409`) y cuerpo `application/problem+json` conteniendo `type`, `title`, `status`, `detail`, `instance` y `timestamp`. |
| **Escenario 2: Protección ante fallas no controladas**<br>**Given** un error interno no previsto en el servidor.<br>**When** el interceptor procesa el fallo.<br>**Then** responde `500 Internal Server Error` con un mensaje seguro sin divulgar stacktraces de la base de datos o sistema operativo. |

---

### TS32: Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS32** | Ingeniero de Plataforma Core | Alta | EP13 |

| Title |
| :--- |
| Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial |

| Description |
| :--- |
| **Como** ingeniero de plataforma core, **quiero** configurar la estrategia de mapeo objeto-relacional en el ORM, **para** normalizar la conversión automática de propiedades camelCase a snake_case y persistir tipos geométricos espaciales WGS84 de forma consistente. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Mapeo automático de entidades y convenciones**<br>**Given** la capa de persistencia interactuando con el motor relacional.<br>**When** se ejecutan las migraciones y consultas del ORM.<br>**Then** las tablas son nombradas en plural en minúsculas, las columnas se persisten en formato `snake_case` y las claves foráneas mantienen integridad referencial ACID. |
| **Escenario 2: Conversión bidireccional de geometrías espaciales**<br>**Given** entidades con polígonos o coordenadas de geolocalización.<br>**When** se persisten o recuperan desde la base de datos.<br>**Then** el ORM serializa y deserializa transparentemente entre tipos espaciales nativos y GeoJSON conforme al elipsoide WGS84. |

---

### TS33: Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS33** | Ingeniero de Plataforma Core | Alta | EP13 |

| Title |
| :--- |
| Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0 |

| Description |
| :--- |
| **Como** ingeniero de plataforma core, **quiero** integrar el generador de contratos OpenAPI 3.0 en el backend, **para** exponer una interfaz Swagger UI interactiva y esquemas JSON que documenten exhaustivamente todos los endpoints del sistema. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Exposición de consola Swagger UI**<br>**Given** el backend en ejecución.<br>**When** un desarrollador accede a `/swagger-ui.html`.<br>**Then** el sistema presenta la documentación viva interactiva con la totalidad de controladores, modelos de petición/respuesta y autenticación Bearer JWT configurada. |
| **Escenario 2: Generación del esquema OpenAPI en formato JSON**<br>**Given** una solicitud GET a `/v3/api-docs`.<br>**When** se consulta el endpoint de especificación.<br>**Then** la API responde `200 OK` con el documento OpenAPI 3.0 completo en formato JSON para pruebas automatizadas y generación de SDKs. |

---

### TS34: Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS34** | Ingeniero de Plataforma Core | Media | EP15 |

| Title |
| :--- |
| Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language |

| Description |
| :--- |
| **Como** ingeniero de plataforma core, **quiero** configurar el resolvedor de localización y los catálogos de recursos MessageSource en el backend, **para** interceptar el encabezado HTTP Accept-Language y entregar mensajes de validación y errores RFC 7807 traducidos en Español o Inglés. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Respuesta localizada en base a la cabecera HTTP**<br>**Given** una solicitud a cualquier endpoint de la API con el encabezado `Accept-Language: en` que dispara una excepción de validación o dominio.<br>**When** el interceptor centralizado captura la excepción e invoca el resolvedor de mensajes `MessageSource`.<br>**Then** responde con el código HTTP correspondiente y cuerpo RFC 7807 conteniendo el detalle y descripción traducidos en idioma inglés. |
| **Escenario 2: Aplicación del idioma predeterminado ante omisión o valor no soportado**<br>**Given** una solicitud HTTP recibida sin encabezado `Accept-Language` o con un código de idioma no configurado en el backend.<br>**When** el interceptor procesa el fallo.<br>**Then** el sistema aplica Español (`es`) como localización por defecto y entrega los mensajes en idioma español. |

---

### TS35: Creación y completado inicial de perfil de usuario con validación telefónica E.164

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS35** | Desarrollador de Aplicaciones Cliente | Alta | EP10 |

| Title |
| :--- |
| Creación y completado inicial de perfil de usuario con validación telefónica E.164 |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los datos de perfil y contacto (nombre completo, país y número celular) a la API de perfiles junto con el token JWT de autenticación, **para** crear el registro de perfil vinculado al usuario y validar el teléfono con la biblioteca especializada. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Creación exitosa de perfil de usuario**<br>**Given** una solicitud POST a `/api/v1/profiles` es recibida con el encabezado `Authorization: Bearer <JWT>` y un cuerpo JSON que contiene: `fullName`, `country` y `phoneNumber`.<br>**When** la API extrae el identificador del usuario autenticado (`userId`), procesa el número telefónico mediante la biblioteca `libphonenumber` verificando su validez para el país provisto y normalizándolo al formato E.164.<br>**Then** la API responde `201 Created` y retorna `ProfileResource` con id, userId, fullName, country, phoneNumber normalizado y createdAt.<br>**And** persiste el registro de perfil en la base de datos vinculado al usuario. |
| **Escenario 2: Número telefónico inválido según la biblioteca de validación**<br>**Given** una solicitud POST a `/api/v1/profiles` con un número telefónico que no cumple con el formato o longitud requerida según `libphonenumber` para el país seleccionado.<br>**When** la API somete el teléfono a validación internacional.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807 indicando la invalidez del número telefónico. |
| **Escenario 3: Solicitud no autenticada o token inválido**<br>**Given** una solicitud POST a `/api/v1/profiles` enviada sin la cabecera `Authorization` o con un token expirado o corrupto.<br>**When** el filtro de seguridad intercepta la petición.<br>**Then** la API responde `401 Unauthorized` impidiendo la persistencia del perfil. |

---

### TS36: Actualización de contraseña para sesión de usuario autenticado

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS36** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Actualización de contraseña para sesión de usuario autenticado |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la contraseña actual y la nueva contraseña confirmada a la API de autenticación, **para** que el usuario con sesión activa modifique sus credenciales de acceso de forma segura. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Actualización exitosa de contraseña**<br>**Given** una solicitud PATCH a `/api/v1/auth/passwords` con cabecera `Authorization: Bearer <JWT>` y cuerpo JSON con `currentPassword`, `newPassword` y `confirmPassword`.<br>**When** la API valida la identidad del token, verifica que el hash de `currentPassword` coincida con el almacenado y que `newPassword` cumpla las políticas de complejidad.<br>**Then** la API responde `204 No Content` y persiste el nuevo hash criptográfico BCrypt. |
| **Escenario 2: Contraseña actual incorrecta**<br>**Given** una solicitud PATCH a `/api/v1/auth/passwords` con una contraseña actual errónea.<br>**When** el servicio de autenticación compara los hashes criptográficos.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807 indicando credencial previa no coincidente. |
| **Escenario 3: Nueva contraseña no cumple políticas de complejidad**<br>**Given** una solicitud PATCH a `/api/v1/auth/passwords` con una nueva clave que no satisface longitud mínima o variedad de caracteres.<br>**When** el validador de seguridad procesa la solicitud.<br>**Then** la API responde `400 Bad Request` detallando la regla de complejidad incumplida. |

---

### TS37: Solicitud de código de restablecimiento de contraseña olvidada vía correo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS37** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Solicitud de código de restablecimiento de contraseña olvidada vía correo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la dirección de correo del usuario al servicio de recuperación de contraseñas, **para** que el sistema despache de manera asíncrona un token temporal seguro sin revelar la existencia previa del correo en la base de datos. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Solicitud exitosa de restablecimiento**<br>**Given** una solicitud POST a `/api/v1/auth/password-reset-tokens` con cuerpo JSON conteniendo: `email`.<br>**When** la API valida la sintaxis del correo, genera un token criptográfico unívoco de 6 dígitos con expiración a 15 minutos y encola el evento para despacho seguro de correo.<br>**Then** la API responde `202 Accepted` bajo el patrón de procesamiento asíncrono. |
| **Escenario 2: Dirección de correo con formato inválido**<br>**Given** una solicitud POST a `/api/v1/auth/password-reset-tokens` con una cadena que no conforma un correo electrónico válido.<br>**When** el validador sintáctico analiza el cuerpo de la petición.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807. |

---

### TS38: Restablecimiento de contraseña mediante token temporal de un solo uso

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS38** | Desarrollador de Aplicaciones Cliente | Media | EP10 |

| Title |
| :--- |
| Restablecimiento de contraseña mediante token temporal de un solo uso |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar el token temporal recibido por correo y la nueva contraseña a la API, **para** restablecer el acceso a la cuenta del usuario y revocar el token consumido. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Restablecimiento exitoso de contraseña**<br>**Given** una solicitud PUT a `/api/v1/auth/password-reset-tokens/{token}` con cuerpo JSON conteniendo `newPassword` y `confirmPassword`.<br>**When** la API valida que el token exista, no haya expirado, no haya sido consumido previamente y aplica el nuevo hash criptográfico BCrypt.<br>**Then** la API responde `204 No Content`, marca el token como CONSUMED y revoca todas las sesiones activas previas. |
| **Escenario 2: Token expirado, inexistente o consumido previamente**<br>**Given** una solicitud PUT a `/api/v1/auth/password-reset-tokens/{token}` con un token inválido o vencido.<br>**When** la API consulta el almacén de tokens temporales.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807 exigiendo reiniciar el flujo de recuperación. |
| **Escenario 3: Nueva contraseña idéntica a la anterior o sin complejidad**<br>**Given** una solicitud PUT a `/api/v1/auth/password-reset-tokens/{token}` con una clave que coincide con el hash previo o incumple las reglas de seguridad.<br>**When** la API valida la política de credenciales.<br>**Then** la API responde `400 Bad Request`. |

---

### TS39: Asentamiento formal y balance de liquidación de cosecha de fin de campaña

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS39** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Asentamiento formal y balance de liquidación de cosecha de fin de campaña |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la liquidación formal de cosecha mediante el método POST a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `greenOlivesKg`, `blackOlivesKg`, `commercialFruitsPerKg`, `notes`), **para** asentar la balanza oficial de fin de campaña, computar el balance frente a la prescripción y congelar la curva de estabilización interanual. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Asentamiento exitoso de liquidación de cosecha con balance y estabilización (HTTP 201 Created)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `plotId` y cuerpo JSON con `campaignYear`, `greenOlivesKg`, `blackOlivesKg`, `commercialFruitsPerKg` opcional y `notes`.<br>**When** la API valida la titularidad, comprueba que la suma total de kilos sea estrictamente positiva, comprueba que la campaña no haya sido liquidada previamente, computa el balance frente a la prescripción de aclareo (`thinningBalance`) y calcula la curva de estabilización de vecería (`stabilization`: índice de Hoblyn y ARR).<br>**Then** la API responde `201 Created`, retorna `HarvestSettlementResource` con el desglose auditado y publica el evento de dominio `CampaignHarvestSettledEvent`. |
| **Escenario 2: Parámetros inválidos o inconsistencia en pesajes (HTTP 400 Bad Request)**<br>**Given** una solicitud POST con kilogramos negativos, total de cosecha igual a cero, año de campaña fuera de rango (2000–2100) o calibre comercial menor o igual a cero.<br>**When** el validador de dominio procesa el cuerpo del mensaje.<br>**Then** la API responde `400 Bad Request` indicando los errores de restricción de datos. |
| **Escenario 3: Parcela no encontrada o inactiva (HTTP 404 Not Found)**<br>**Given** una solicitud POST con un identificador `plotId` inexistente en el contexto de inventario parcelario.<br>**When** la API busca el cuartel en el repositorio.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |
| **Escenario 4: Conflicto por campaña ya liquidada previamente (HTTP 409 Conflict)**<br>**Given** una solicitud POST dirigida a un año de campaña agrícola que ya cuenta con una liquidación formal registrada e inmutable para dicha parcela.<br>**When** el servicio de aplicación valida la regla de unicidad anual de cierre de campaña.<br>**Then** la API responde `409 Conflict` impidiendo la sobreescritura de los pesajes oficiales. |

---

### TS40: Certificación criptográfica colegiada del expediente agronómico inmutable

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS40** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Certificación criptográfica colegiada del expediente agronómico inmutable |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** registrar la certificación colegiada del expediente mediante el método POST a `/api/v1/plots/{plotId}/certifications` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `auditorSignature`, `certifiedBy`, `cipNumber`, `notes`), **para** sellar el dossier técnico de la campaña y generar la huella criptográfica SHA-256 inmutable de no repudiación. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Emisión exitosa de certificación colegiada y hash SHA-256 (HTTP 201 Created)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/certifications` con parámetro de ruta `plotId` y cuerpo JSON con `campaignYear`, `auditorSignature`, `certifiedBy`, `cipNumber` y `notes`.<br>**When** la API comprueba que la campaña especificada cuenta con liquidación oficial previa, compila el expediente documental y calcula la huella criptográfica SHA-256 inmutable.<br>**Then** la API responde `201 Created`, retorna `DossierCertificationResource` conteniendo `certificationId`, `plotId`, `campaignYear`, `verificationHash`, `auditorSignature`, `certifiedBy`, `cipNumber` y `certifiedAt`, y emite el evento `AgronomicDossierGeneratedEvent`. |
| **Escenario 2: Datos de firma o colegiatura inválidos (HTTP 400 Bad Request)**<br>**Given** una solicitud POST con campos de firma en blanco, número CIP que excede los 20 caracteres o notas mayores a 1000 caracteres.<br>**When** la API procesa y valida los atributos del comando.<br>**Then** la API responde `400 Bad Request` detallando las inconsistencias de validación. |
| **Escenario 3: Parcela no encontrada o inactiva (HTTP 404 Not Found)**<br>**Given** una solicitud POST dirigida a un `plotId` que no existe en el catálogo parcelario.<br>**When** la API evalúa la existencia del cuartel.<br>**Then** la API responde `404 Not Found`. |
| **Escenario 4: Precondición incumplida por campaña sin liquidación formal (HTTP 422 Unprocessable Content)**<br>**Given** una solicitud POST sobre una campaña agrícola que aún no ha completado su proceso de liquidación oficial de cosecha.<br>**When** el servicio de dominio valida las precondiciones de certificación documental.<br>**Then** la API responde `422 Unprocessable Content` indicando la violación de regla de negocio. |
| **Escenario 5: Conflicto por expediente previamente certificado (HTTP 409 Conflict)**<br>**Given** una solicitud POST sobre una campaña que ya dispone de un expediente colegiado certificado e inmutable.<br>**When** el sistema verifica la unicidad de certificación de la campaña.<br>**Then** la API responde `409 Conflict` preservando la no repudiación del expediente. |

---

### TS41: Revocación anticipada y ajuste de vigencia de código de activación cooperativo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS41** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Revocación anticipada y ajuste de vigencia de código de activación cooperativo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar la solicitud de expiración inmediata de un código no canjeado a la API, **para** revocar la invitación emitida por la cooperativa y restituir el cupo disponible a la licencia colectiva. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Expiración anticipada y restitución de cupo**<br>**Given** una solicitud POST a `/api/v1/cooperatives/{id}/invitation-codes/{codeId}/expiry-adjustments` emitida por un gestor técnico institucional.<br>**When** la API valida que el código se encuentre en estado AVAILABLE, adelanta su fecha de expiración a la fecha actual y transiciona su estado a EXPIRED.<br>**Then** la API responde `200 OK`, retorna `InvitationCodeResource` actualizado, emite `InvitationCodeExpiredEvent` y restituye automáticamente el cupo en la licencia cooperativa. |
| **Escenario 2: Código ya canjeado o inactivo**<br>**Given** una solicitud POST sobre un código que ya se encuentra en estado REDEEMED o EXPIRED.<br>**When** la API evalúa el ciclo de vida del código.<br>**Then** la API responde `409 Conflict` impidiendo la alteración de códigos consumidos. |
| **Escenario 3: Acceso no autorizado para no gestores**<br>**Given** una solicitud POST emitida por un usuario sin rol GESTOR en la cooperativa.<br>**When** la API valida los permisos institucionales.<br>**Then** la API responde `403 Forbidden`. |

---

### TS42: Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS42** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar los parámetros de calibración mediante el método PUT al endpoint `/api/v1/plots/{plotId}/iot-devices/{deviceId}` con parámetros de ruta `{plotId}`, `{deviceId}` y cabecera `If-Match`, **para** ajustar las lecturas telemétricas según las condiciones edafoclimáticas del predio previniendo inconsistencias de concurrencia. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Calibración exitosa de sonda IoT con concurrencia optimista (HTTP 200 OK)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}/iot-devices/{deviceId}` con parámetros de ruta `plotId` y `deviceId`, cabecera `If-Match` con el ETag de versión actual y cuerpo JSON con `multiplier`, `temperatureOffset`, `humidityOffset` y `soilCorrectionFactor`.<br>**When** la API valida la titularidad del cuartel, verifica la coincidencia del ETag de versión, comprueba que el dispositivo esté activo y persiste los nuevos coeficientes de calibración.<br>**Then** la API responde `200 OK`, retorna `IoTDeviceResponse` actualizado y emite una nueva cabecera `ETag`. |
| **Escenario 2: Parámetros de calibración fuera de rangos admisibles (HTTP 400 Bad Request)**<br>**Given** una solicitud PUT con un multiplicador menor o igual a cero o valores de offset que exceden los límites físicos de medición de la sonda.<br>**When** el validador de dominio procesa la carga útil.<br>**Then** la API responde `400 Bad Request` indicando las restricciones físicas violadas. |
| **Escenario 3: Dispositivo o cuartel no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud PUT con un `plotId` o `deviceId` inexistente o donde el dispositivo no pertenece a la parcela indicada.<br>**When** la API busca el dispositivo en el catálogo telemétrico.<br>**Then** la API responde `404 Not Found`. |
| **Escenario 4: Conflicto de versión por concurrencia optimista (HTTP 412 Precondition Failed)**<br>**Given** una solicitud PUT donde el valor de la cabecera `If-Match` no coincide con la versión actual de la sonda en la base de datos.<br>**When** el interceptor de concurrencia detecta una modificación simultánea previa.<br>**Then** la API responde `412 Precondition Failed` bajo el estándar RFC 7807. |

---

### TS43: Rectificación de pesaje de cosecha anual con bloqueo optimista

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS43** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Rectificación de pesaje de cosecha anual con bloqueo optimista |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** enviar una solicitud de rectificación de pesaje mediante el método PUT a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `{plotId}`, `{recordId}`, cabecera `If-Match` y cuerpo JSON (`rectifiedYieldKg`, `rectificationReason`), **para** corregir inconsistencias en pesajes históricos y recomputar reactivamente el Índice de Vecería (BBI). |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Rectificación exitosa de pesaje histórico con recálculo de BBI (HTTP 200 OK)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `plotId` y `recordId`, cabecera `If-Match` con la versión actual y cuerpo JSON con `rectifiedYieldKg` y `rectificationReason`.<br>**When** la API valida la titularidad, verifica que el pesaje sea estrictamente positivo, actualiza la serie histórica fenológica, recálcula reactivamente el Índice de Vecería (BBI) del cuartel y persiste la auditoría de rectificación.<br>**Then** la API responde `200 OK`, retorna `HarvestRecordResponse` actualizado y emite la cabecera `ETag` con la versión actualizada. |
| **Escenario 2: Datos de rectificación inconsistentes o motivo insuficiente (HTTP 400 Bad Request)**<br>**Given** una solicitud PUT con `rectifiedYieldKg` menor o igual a cero o con un motivo de rectificación ausente o con menos de 10 caracteres.<br>**When** el validador procesa el cuerpo de la petición.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807. |
| **Escenario 3: Registro de cosecha o cuartel no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud PUT hacia un `plotId` o `recordId` inexistente en el repositorio fenológico.<br>**When** el servicio consulta la persistencia de cosechas.<br>**Then** la API responde `404 Not Found`. |
| **Escenario 4: Conflicto de concurrencia optimista en rectificación (HTTP 412 Precondition Failed)**<br>**Given** una solicitud PUT donde la cabecera `If-Match` no coincide con la versión actual del registro de cosecha.<br>**When** el interceptor detecta colisión de modificaciones concurrentes.<br>**Then** la API responde `412 Precondition Failed` previniendo sobreescrituras desfasadas. |

---

### TS44: Restauración de cuartel olivícola archivado

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS44** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Restauración de cuartel olivícola archivado |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** solicitar la restauración de una parcela dada de baja mediante el método POST a `/api/v1/plots/{plotId}/restore` con parámetro de ruta `{plotId}`, **para** reintegrar el cuartel al inventario productivo activo sin pérdida de historial ni geometrías. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Restauración exitosa de cuartel archivado (HTTP 200 OK)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/restore` con parámetro de ruta `plotId` correspondiente a un cuartel previamente eliminado de manera lógica (`ARCHIVED`).<br>**When** la API valida la titularidad del predio y reactiva el estado operativo del cuartel a `ACTIVE`.<br>**Then** la API responde `200 OK` retornando `PlotResponse` con estado activo y emite una cabecera `ETag` actualizada. |
| **Escenario 2: Cuartel no encontrado en el sistema (HTTP 404 Not Found)**<br>**Given** una solicitud POST a `/api/v1/plots/{plotId}/restore` con un identificador `plotId` que no existe en el repositorio.<br>**When** la API busca el cuartel en el almacén de datos.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |
| **Escenario 3: Conflicto por cuartel que ya se encuentra activo (HTTP 409 Conflict)**<br>**Given** una solicitud POST dirigida a un cuartel cuyo estado actual ya es `ACTIVE`.<br>**When** el servicio evalúa las transiciones de ciclo de vida del predio.<br>**Then** la API responde `409 Conflict` notificando que el cuartel no se encuentra archivado. |

---

### TS45: Eliminación de registro erróneo de cosecha en histórico fenológico

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS45** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Eliminación de registro erróneo de cosecha en histórico fenológico |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** eliminar un pesaje de cosecha asentado por error mediante el método DELETE a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `{plotId}` y `{recordId}`, **para** purgar datos anómalos del historial y recalcular el Índice de Vecería (BBI) del cuartel. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Eliminación exitosa de registro de cosecha (HTTP 204 No Content)**<br>**Given** una solicitud DELETE a `/api/v1/plots/{plotId}/harvest-records/{recordId}` con parámetros de ruta `plotId` y `recordId`.<br>**When** la API valida la titularidad del predio, elimina el registro erróneo del histórico plurianual y recomputa reactivamente el balance y el índice BBI del cuartel.<br>**Then** la API responde `204 No Content` con cuerpo vacío confirmando la remoción definitiva del registro. |
| **Escenario 2: Registro de cosecha o cuartel no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud DELETE con un identificador `plotId` o `recordId` inexistente en el repositorio fenológico.<br>**When** la API verifica la existencia del registro en la base de datos.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS46: Consulta global de incidentes agroclimáticos con contadores y filtrado

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS46** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta global de incidentes agroclimáticos con contadores y filtrado |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar la lista general de incidentes mediante el método GET al endpoint `/api/v1/agroclimatic-incidents` con parámetros de consulta de estado y paginación, **para** poblar el centro de alertas de la aplicación móvil y desplegar los contadores de severidad territorial. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta paginada exitosa con contadores de severidad (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/agroclimatic-incidents` con parámetros de consulta opcionales `activeOnly`, `status`, `page` y `size`.<br>**When** la API consulta el contexto de telemetría y evalúa los incidentes de helada, ola de calor y estrés hídrico registrados para las parcelas del usuario.<br>**Then** la API responde `200 OK` retornando una lista paginada de `AgroclimaticIncidentResponse` junto con contadores consolidados por nivel de severidad (`CRITICAL`, `WARNING`, `INFO`). |
| **Escenario 2: Parámetros de consulta con formato inválido (HTTP 400 Bad Request)**<br>**Given** una solicitud GET a `/api/v1/agroclimatic-incidents` con un valor no reconocido para `status` o paginación negativa.<br>**When** la capa de transporte valida los parámetros de consulta.<br>**Then** la API responde `400 Bad Request` detallando el error de sintaxis en los parámetros. |

---

### TS47: Consulta de incidentes agroclimáticos asociados a un cuartel específico

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS47** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta de incidentes agroclimáticos asociados a un cuartel específico |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar los incidentes agroclimáticos de una parcela mediante el método GET a `/api/v1/plots/{plotId}/agroclimatic-incidents` con parámetro de ruta `{plotId}` y filtros de consulta, **para** desplegar los riesgos agroclimáticos y recomendaciones en la ficha individual del cuartel. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado exitoso de incidentes del cuartel (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/agroclimatic-incidents` con parámetro de ruta `plotId` y parámetros de consulta opcionales `activeOnly` y `status`.<br>**When** la API valida la titularidad del cuartel y recupera los eventos de anomalía climática asociados al predio.<br>**Then** la API responde `200 OK` retornando una colección de `AgroclimaticIncidentResponse` con la tipología de riesgo, valores medidos, umbrales y estado de mitigación. |
| **Escenario 2: Cuartel no encontrado en inventario (HTTP 404 Not Found)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/agroclimatic-incidents` con un identificador `plotId` inexistente.<br>**When** el servicio consulta la existencia de la parcela.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS48: Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS48** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar el detalle exhaustivo de una alerta mediante el método GET a `/api/v1/agroclimatic-incidents/{incidentId}` con parámetro de ruta `{incidentId}`, **para** visualizar la serie temporal de la anomalía, el checklist interactivo de mitigación y el diagnóstico agronómico. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta detallada de incidente con checklist y curva histórica (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/agroclimatic-incidents/{incidentId}` con parámetro de ruta `incidentId`.<br>**When** la API valida la existencia del incidente y consolida los datos de telemetría que originaron la alarma junto con las recomendaciones agronómicas.<br>**Then** la API responde `200 OK` retornando `AgroclimaticIncidentDetailResponse` conteniendo: descripción de la anomalía, serie temporal de tendencia climática, indicador de helada o estrés hídrico y la lista ordenada de pasos de mitigación agronómica con sus respectivos estados (`PENDING`, `COMPLETED`). |
| **Escenario 2: Incidente no encontrado en el sistema (HTTP 404 Not Found)**<br>**Given** una solicitud GET hacia un `incidentId` inexistente en el catálogo de alertas.<br>**When** la API busca el incidente en persistencia.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS49: Postergación temporal de notificaciones de incidente agroclimático (Snooze)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS49** | Desarrollador de Aplicaciones Cliente | Baja | EP11 |

| Title |
| :--- |
| Postergación temporal de notificaciones de incidente agroclimático (Snooze) |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** postergar las notificaciones de un incidente mediante el método POST a `/api/v1/agroclimatic-incidents/{incidentId}/snooze` con parámetro de ruta `{incidentId}` y cuerpo JSON (`snoozeHours`), **para** silenciar temporalmente los avisos push durante la ventana horaria definida sin resolver la alerta en el lote. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Postergación exitosa de notificaciones del incidente (HTTP 200 OK)**<br>**Given** una solicitud POST a `/api/v1/agroclimatic-incidents/{incidentId}/snooze` con parámetro de ruta `incidentId` y cuerpo JSON con `snoozeHours` (entre 1 y 72).<br>**When** la API valida el estado del incidente, calcula la marca temporal de expiración del snooze y suspende el despacho de notificaciones push recurrentes hasta dicho momento.<br>**Then** la API responde `200 OK` retornando `AgroclimaticIncidentResponse` con el estado actualizado a `SNOOZED` y la fecha de reactivación programada `snoozeUntil`. |
| **Escenario 2: Duración de postergación fuera de rango permitido (HTTP 400 Bad Request)**<br>**Given** una solicitud POST con `snoozeHours` menor a 1 o mayor a 72 horas.<br>**When** la API valida el valor de las horas solicitadas.<br>**Then** la API responde `400 Bad Request` indicando que el tiempo de postergación debe encontrarse entre 1 y 72 horas. |
| **Escenario 3: Incidente no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud POST a `/api/v1/agroclimatic-incidents/{incidentId}/snooze` con un identificador `incidentId` que no existe.<br>**When** el servicio consulta el repositorio de incidentes.<br>**Then** la API responde `404 Not Found`. |

---

### TS50: Completado de paso de mitigación agronómica de incidente

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS50** | Desarrollador de Aplicaciones Cliente | Media | EP11 |

| Title |
| :--- |
| Completado de paso de mitigación agronómica de incidente |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** asentar la ejecución de un paso del protocolo de mitigación mediante el método POST a `/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}/complete` con parámetros de ruta `{incidentId}` y `{stepId}`, **para** registrar las labores de respuesta en campo y actualizar el estado de resolución del incidente. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Completado exitoso de paso y avance del incidente (HTTP 200 OK)**<br>**Given** una solicitud POST a `/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}/complete` con parámetros de ruta `incidentId` y `stepId`, y cuerpo JSON opcional con `notes`.<br>**When** la API valida que el paso pertenezca al incidente, lo marca como `COMPLETED` con su marca temporal de ejecución y evalúa si todos los pasos han sido concluidos para transicionar el incidente a `RESOLVED` o mantenerlo en `IN_MITIGATION`.<br>**Then** la API responde `200 OK` retornando `AgroclimaticIncidentDetailResponse` con el paso marcado como completado y el progreso actualizado de la mitigación. |
| **Escenario 2: Notas de ejecución exceden la longitud permitida (HTTP 400 Bad Request)**<br>**Given** una solicitud POST cuyo campo `notes` contiene más de 500 caracteres.<br>**When** la capa de validación procesa el cuerpo.<br>**Then** la API responde `400 Bad Request` con el mensaje de violación de longitud. |
| **Escenario 3: Incidente o paso no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud POST hacia un `incidentId` o `stepId` inexistente o cuando el paso no forma parte del incidente referenciado.<br>**When** la API realiza la búsqueda en persistencia.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS51: Consulta de estado global de muestreos de cuarteles (Plot Picker)

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS51** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Consulta de estado global de muestreos de cuarteles (Plot Picker) |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar el estado consolidado de muestreos de todos los cuarteles mediante el método GET al endpoint `/api/v1/samplings/overview` con parámetros de consulta de campaña y estado, **para** renderizar el selector de predios (Plot Picker) en la interfaz móvil destacando el avance y suficiencia de cada lote. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de cobertura y estado de muestreo de los cuarteles (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/samplings/overview` con parámetros de consulta opcionales `campaignYear` y `status`.<br>**When** la API consolida la totalidad de parcelas activas del productor y computa para cada una el avance muestreal, árboles registrados y si se ha alcanzado la suficiencia estadística (≥ 5 árboles).<br>**Then** la API responde `200 OK` retornando una lista de `PlotSamplingOverviewResponse` optimizada para el selector de parcelas (Plot Picker) en la aplicación móvil. |
| **Escenario 2: Formato inválido en año de campaña o filtro de estado (HTTP 400 Bad Request)**<br>**Given** una solicitud GET a `/api/v1/samplings/overview` con un año de campaña menor a 2000 o un estado no reconocido.<br>**When** el controlador procesa los parámetros de consulta.<br>**Then** la API responde `400 Bad Request` bajo el estándar RFC 7807. |

---

### TS52: Registro de fecha de plena floración observada en cuartel

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS52** | Desarrollador de Aplicaciones Cliente | Alta | EP12 |

| Title |
| :--- |
| Registro de fecha de plena floración observada en cuartel |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** registrar la fecha de plena floración del olivar mediante el método PUT a `/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom` con parámetro de ruta `{plotId}` y cuerpo JSON (`campaignYear`, `fullBloomDate`), **para** calibrar la base cronológica y calcular con precisión la ventana fenológica de aclareo antes del endurecimiento del carozo. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Registro exitoso de plena floración y actualización de ventana de aclareo (HTTP 200 OK)**<br>**Given** una solicitud PUT a `/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom` con parámetro de ruta `plotId` y cuerpo JSON con `campaignYear` y `fullBloomDate` válida.<br>**When** la API valida la titularidad, comprueba que la fecha no sea futura y pertenezca al año de la campaña, asienta el hito fenológico y recalcula automáticamente los límites temporales de la ventana de aclareo (`windowOpensOn` y `windowClosesOn`) para la prescripción del cuartel.<br>**Then** la API responde `200 OK` retornando `ThinningPrescriptionResponse` con las nuevas fechas de apertura y cierre de intervención agronómica. |
| **Escenario 2: Fecha de plena floración futura o fuera del año de campaña (HTTP 400 Bad Request)**<br>**Given** una solicitud PUT con una fecha `fullBloomDate` posterior a la fecha actual o que no corresponde al año agrícola de `campaignYear`.<br>**When** la API valida las restricciones cronológicas y biológicas.<br>**Then** la API responde `400 Bad Request` indicando la inconsistencia temporal. |
| **Escenario 3: Cuartel no encontrado en el sistema (HTTP 404 Not Found)**<br>**Given** una solicitud PUT con un identificador `plotId` inexistente en el inventario.<br>**When** el servicio consulta el repositorio parcelario.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS53: Consulta de eventos cronológicos y bitácora agronómica de raleo

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS53** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Consulta de eventos cronológicos y bitácora agronómica de raleo |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar la bitácora histórica de intervenciones de aclareo mediante el método GET a `/api/v1/plots/{plotId}/thinning-events` con parámetro de ruta `{plotId}` y parámetro de consulta de campaña, **para** visualizar en orden cronológico todos los eventos de muestreo, prescripción y confirmación ejecutados en el predio. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta cronológica exitosa de bitácora de intervenciones (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/thinning-events` con parámetro de ruta `plotId` y parámetro de consulta opcional `campaignYear`.<br>**When** la API recupera la secuencia de eventos de muestreo, cálculo de prescripción, registro de floración y confirmaciones de aclareo ordenados cronológicamente.<br>**Then** la API responde `200 OK` retornando una colección de `ThinningEventResponse` con el tipo de evento, fecha de ocurrencia, actores, datos cuantificados y notas asociadas. |
| **Escenario 2: Cuartel no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud GET con un parámetro de ruta `plotId` inexistente.<br>**When** la API evalúa la existencia de la parcela.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS54: Listado de liquidaciones oficiales de cosecha por cuartel

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS54** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Listado de liquidaciones oficiales de cosecha por cuartel |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar el historial de cierres formales de cosecha mediante el método GET a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `{plotId}` y parámetros de consulta de paginación, **para** desplegar la serie plurianual de pesajes oficiales y balance de entrega en la ficha del cuartel. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Listado paginado exitoso de liquidaciones de cosecha (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/harvest-settlements` con parámetro de ruta `plotId` y parámetros de consulta opcionales `page` y `size`.<br>**When** la API valida la titularidad del predio y recupera el historial de liquidaciones formales de fin de campaña ordenadas descendentemente por año agrícola.<br>**Then** la API responde `200 OK` retornando una lista paginada de `HarvestSettlementResource` con el desglose de kilogramos verdes y negros, total cosechado, calibre comercial registrado y estado de auditoría. |
| **Escenario 2: Cuartel no encontrado en inventario (HTTP 404 Not Found)**<br>**Given** una solicitud GET con un identificador `plotId` que no existe en el repositorio parcelario.<br>**When** la API busca el cuartel en la base de datos.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---

### TS55: Consulta detallada de liquidación de cosecha por campaña individual

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **TS55** | Desarrollador de Aplicaciones Cliente | Media | EP12 |

| Title |
| :--- |
| Consulta detallada de liquidación de cosecha por campaña individual |

| Description |
| :--- |
| **Como** desarrollador de aplicaciones cliente, **quiero** consultar el comprobante formal de una liquidación específica mediante el método GET a `/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}` con parámetros de ruta `{plotId}` y `{campaignYear}`, **para** visualizar el pesaje certificado, el balance frente a la prescripción y el Índice de Reducción de Alternancia (ARR). |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Consulta exitosa de liquidación de campaña con balance y métricas (HTTP 200 OK)**<br>**Given** una solicitud GET a `/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}` con parámetros de ruta `plotId` y `campaignYear`.<br>**When** la API valida la existencia de la liquidación formal para el año agrícola indicado en dicho cuartel.<br>**Then** la API responde `200 OK` retornando `HarvestSettlementResource` conteniendo: identidad del reporte, kilogramos recolectados (`greenOlivesKg` y `blackOlivesKg`), `totalYieldKg`, `commercialFruitsPerKg`, fecha de liquidación, balance de aclareo (`thinningBalance`) y el estado de la curva de estabilización (`stabilization` con ARR e índice de alternancia). |
| **Escenario 2: Liquidación de campaña o cuartel no encontrado (HTTP 404 Not Found)**<br>**Given** una solicitud GET con un `plotId` inexistente o para un año de campaña agrícola que no ha sido formalmente liquidado.<br>**When** el servicio consulta el almacén de datos de liquidaciones.<br>**Then** la API responde `404 Not Found` bajo el estándar RFC 7807. |

---


---

## 4. Spikes de Viabilidad Técnica (Spike Stories)

A continuación, se presentan las 3 *Spike Stories* (**EP14**) orientadas a la investigación, prototipado y reducción de riesgo técnico crítico antes de la integración definitiva en el incremento de producto:

### SPK01: Investigación y modelado dinámico de Erez para cálculo de frío en backend

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **SPK01** | Equipo de Desarrollo de Backend | Alta | EP14 |

| Title |
| :--- |
| Investigación y modelado dinámico de Erez para cálculo de frío en backend |

| Description |
| :--- |
| **Como** equipo de desarrollo de backend, **queremos** implementar un prototipo computacional del modelo dinámico de Erez en nuestro backend Spring Boot Java para la Plataforma Viora, **para** validar la viabilidad matemática de procesar series horarias de temperatura y calibrar el umbral invernal del olivo antes de su integración definitiva en los servicios RESTful. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Ejecución del algoritmo dinámico de dos etapas**<br>**Given** series sintéticas de temperatura horaria correspondientes a los meses de reposo invernal.<br>**When** el algoritmo procesa las fluctuaciones térmicas acumulando intermediarios termolábiles y porciones de frío fijadas.<br>**Then** el prototipo computa con exactitud las porciones de frío de Erez contrastándolas contra el umbral agronómico de 25 a 30 porciones. |
| **Escenario 2: Informe de viabilidad y código reproducible**<br>**Given** la conclusión de los ensayos de cálculo.<br>**When** se evalúa el rendimiento computacional del algoritmo en el backend.<br>**Then** el equipo emite un informe técnico de viabilidad y consolida la función matemática en el módulo de dominio del backend. |

---

### SPK02: Investigación de persistencia local SQLite y protocolo offline-first

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **SPK02** | Equipo de Desarrollo Móvil | Alta | EP14 |

| Title |
| :--- |
| Investigación de persistencia local SQLite y protocolo offline-first |

| Description |
| :--- |
| **Como** equipo de desarrollo móvil, **queremos** construir un prototipo de persistencia local en SQLite (Room / sqflite) para nuestras aplicaciones móviles Android (Kotlin) y Cross-Platform (Flutter) de la Plataforma Viora, **para** verificar la operatividad offline del muestreo a pie de árbol y comprobar la sincronización bidireccional idempotente con el backend. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Registro y almacenamiento local en modo desconectado**<br>**Given** el prototipo móvil funcionando en un entorno simulado sin conexión a internet.<br>**When** el usuario registra conteos de muestreo de frutos y brotes a pie de árbol.<br>**Then** los datos se persisten de manera inmediata en la base de datos local SQLite y se encolan para su despacho. |
| **Escenario 2: Sincronización automática idempotente al recuperar red**<br>**Given** un lote de registros pendientes en la cola local de SQLite.<br>**When** se restablece la conectividad celular o Wi-Fi.<br>**Then** el prototipo despacha los registros al backend y actualiza los identificadores remotos sin duplicar información. |

---

### SPK03: Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks

| Story ID | User | Priority | Epic |
| :--- | :--- | :--- | :--- |
| **SPK03** | Equipo de Desarrollo (Móvil y Backend) | Alta | EP14 |

| Title |
| :--- |
| Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks |

| Description |
| :--- |
| **Como** equipo de desarrollo (móvil y backend),<br>**queremos** investigar y prototipar la integración de Mercado Pago Checkout Pro (Sandbox) y webhooks en nuestras aplicaciones móviles Android (Kotlin) / Flutter y backend Spring Boot Java para la Plataforma Viora,<br>**para** que podamos entender las implicaciones técnicas, riesgos potenciales de transacción y esfuerzo requerido para la implementación completa en los componentes móvil y backend. |

| Acceptance Criteria |
| :--- |
| **Escenario 1: Compatibilidad del backend y generación de preferencia Checkout Pro**<br>**Given** el backend Spring Boot Java configurado con credenciales de prueba de Mercado Pago Sandbox.<br>**When** el backend procesa una solicitud de suscripción en Soles (PEN) invocando el SDK oficial.<br>**Then** genera la preferencia con éxito, retornando el enlace `init_point` de Checkout Pro sin capturar datos sensibles de tarjetas. |
| **Escenario 2: Integración del flujo de pago en la aplicación móvil**<br>**Given** la aplicación móvil (Android Kotlin / Flutter) interactuando con el backend de Viora.<br>**When** el usuario inicia el pago de su suscripción y la app móvil recibe el identificador `init_point` desde el backend.<br>**Then** la aplicación móvil abre de manera segura la pasarela de Checkout Pro mediante Custom Tabs o Deep Linking, permitiendo el abono en Soles (PEN) y retornando el control a la app tras la transacción. |
| **Escenario 3: Integración y verificación asíncrona de webhooks en el backend**<br>**Given** una notificación asíncrona de pago enviada por el simulador de Mercado Pago Sandbox al endpoint `/api/v1/webhooks/payment`.<br>**When** el backend Spring Boot verifica el encabezado criptográfico `x-signature` y valida el estado aprobado del pago.<br>**Then** confirma la validez del evento y simula la activación de la suscripción SaaS en la base de datos PostgreSQL de forma idempotente. |
| **Escenario 4: Prototipo funcional integrado (PoC) y Definition of Done**<br>**Given** la integración de los componentes móvil y backend en el entorno Sandbox.<br>**When** el equipo valida el flujo end-to-end de pago y documenta los hallazgos técnicos y el esfuerzo requerido.<br>**Then** el PoC funcional queda integrado y versionado en una rama del repositorio, y el spike se completa dentro del *timebox* establecido (8 a 16 horas). |

---


---

## 5. Product Backlog Priorizado

El Product Backlog de Viora consolida y prioriza los **101 ítems de trabajo** del sistema (43 Historias de Usuario, 55 Technical Stories y 3 Spike Stories) estructurados rigurosamente bajo el criterio de valor para el negocio y mitigación temprana de riesgo técnico. Esta versión 2.0 asegura una correspondencia estricta de una Historia Técnica por cada uno de los **33 endpoints de los servicios RESTful del backend**, integrando los contratos de parámetros y códigos de estado HTTP de respuesta formalizados en la especificación OpenAPI.

La asignación temporal y estratégica se distribuye a lo largo de 3 Sprints de desarrollo:

- **Sprint 1 (Presencia Comercial, Spikes, Backend Core, Suite Completa de 33 Endpoints REST y App Móvil del Productor):** Concentra el despliegue íntegro de la Landing Page para asegurar la captación comercial y credibilidad agronómica (US33 a US41), los spikes críticos de campo (SPK01 sobre el modelo dinámico de Erez y SPK02 sobre persistencia offline-first con SQLite), la arquitectura base del backend bajo RFC 7807 y convenciones JPA (TS31 a TS34), la **suite completa de los 33 servicios RESTful del backend** (TS11 a TS27, TS39, TS40, TS42, TS43 y TS44 a TS55) que respaldan operativamente todas las funcionalidades del productor y gestor, y las 20 Historias de Usuario móviles clave distribuidas y priorizadas según la asignación de responsabilidades del equipo para abarcar:
  - **Lotes y aclareo (Victor):** US09, US10, US11, US27, US26 y US28 (junto al armazón estructural del Home).
  - **Alertas y muestreo en campo (Fabrizio):** US18, US24 y US25 (centro de alertas tempranas seguido de captura de muestreo a pie de árbol).
  - **Monitoreo de frío dinámico (Piero):** US22, US23 y US19 (seguimiento de porciones de frío, riesgo floral por efecto ENOS y pronóstico a 7 días).
  - **Telemetría y sensores del lote (Diana):** US13, US14, US15, US16 y US17 (alta, inventario, calibración, baja de nodos y series temporales de suelo y clima).
  - **Fenología y balance de cosecha (Jahat):** US20, US21 y US29 (memoria histórica de producción, rectificación de pesajes y liquidación formal de fin de campaña).
- **Sprint 2 (Plataforma Comercial SaaS, Pasarela Mercado Pago y Gestión Cooperativa):** Despliega el spike de pasarela (SPK03), la integración transaccional de pagos digitales (Mercado Pago Sandbox Checkout Pro con TS06 y webhooks con TS07), la administración de licencias y códigos de activación corporativa para cooperativas (TS08, TS09, TS10), los flujos de suscripción del productor (US06, US07, US08), la matriz territorial y semáforo sectorial (US12, TS29), la descarga del informe agronómico en PDF (TS28) y la proyección agregada temprana de volumen de acopio (TS30).
- **Sprint 3 (Seguridad e Identidad IAM, Perfiles E.164, Localización Móvil y Expediente Certificado):** Culmina con la implementación integral de la seguridad e identidad IAM mediante tokens JWT y Refresh Tokens (US01 a US05, TS01 a TS05), completado de perfil con validación telefónica E.164 (US43, TS35), actualización y recuperación de credenciales (TS36 a TS38), expiración anticipada de invitaciones (TS41), configuración multilingüe de la interfaz cliente (US42), semáforo fenológico de sobrecarga crítica (US31), proyección agregada de cosecha para la cooperativa (US32) y la certificación colegiada y exportación final del expediente agronómico en PDF (US30).

### Matriz del Product Backlog Priorizado (101 Ítems)

| # Orden | Story ID | Título | Story Points | Sprint |
| :---: | :---: | :--- | :---: | :---: |
| 1 | **US33** | Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar | 2 | Sprint 1 |
| 2 | **US34** | Exploración de beneficios y capacidades operativas para el productor olivarero | 2 | Sprint 1 |
| 3 | **US35** | Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias | 2 | Sprint 1 |
| 4 | **US36** | Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN) | 2 | Sprint 1 |
| 5 | **US37** | Reproducción del video promocional y demostrativo del producto ("About the Product") | 1 | Sprint 1 |
| 6 | **US38** | Reproducción del video institucional sobre el equipo y proceso de ingeniería ("About the Team") | 1 | Sprint 1 |
| 7 | **US39** | Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733) | 1 | Sprint 1 |
| 8 | **US40** | Redirección y acceso a la descarga oficial de la aplicación móvil | 1 | Sprint 1 |
| 9 | **US41** | Selección de idioma y localización de contenidos en la Landing Page | 2 | Sprint 1 |
| 10 | **SPK01** | Investigación y modelado dinámico de Erez para cálculo de frío en backend | 3 | Sprint 1 |
| 11 | **SPK02** | Investigación de persistencia local SQLite y protocolo offline-first | 3 | Sprint 1 |
| 12 | **TS31** | Manejo centralizado de excepciones y errores bajo estándar RFC 7807 | 1 | Sprint 1 |
| 13 | **TS32** | Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial | 1 | Sprint 1 |
| 14 | **TS33** | Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0 | 1 | Sprint 1 |
| 15 | **TS34** | Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language | 1 | Sprint 1 |
| 16 | **TS11** | Creación y delimitación poligonal de parcelas georreferenciadas | 5 | Sprint 1 |
| 17 | **TS12** | Listado y sincronización incremental delta de parcelas | 3 | Sprint 1 |
| 18 | **TS13** | Consulta detallada de información agronómica y espacial de parcela | 2 | Sprint 1 |
| 19 | **TS14** | Actualización y rectificación integral de parcela con bloqueo optimista | 3 | Sprint 1 |
| 20 | **TS15** | Eliminación y baja lógica de parcela del inventario | 2 | Sprint 1 |
| 21 | **TS16** | Alta y vinculación de nodo sensor virtual a parcela | 3 | Sprint 1 |
| 22 | **TS17** | Consulta de inventario de nodos virtuales vinculados a parcela | 2 | Sprint 1 |
| 23 | **TS18** | Desvinculación de nodo virtual preservando trazabilidad histórica | 2 | Sprint 1 |
| 24 | **TS19** | Consulta de series temporales de telemetría ambiental y de suelo | 3 | Sprint 1 |
| 25 | **TS20** | Consulta de pronóstico meteorológico geolocalizado a 7 días | 3 | Sprint 1 |
| 26 | **TS21** | Asentamiento de cosecha anual por campaña para auditoría productiva | 3 | Sprint 1 |
| 27 | **TS22** | Consulta del historial plurianual de cosechas de la parcela | 2 | Sprint 1 |
| 28 | **TS23** | Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez | 5 | Sprint 1 |
| 29 | **TS24** | Registro y sincronización de muestreos guiados de cuajado en campo | 5 | Sprint 1 |
| 30 | **TS25** | Consulta de representatividad estadística y estado de muestreo | 3 | Sprint 1 |
| 31 | **TS26** | Consulta de prescripción técnica de aclareo y ventana fenológica | 3 | Sprint 1 |
| 32 | **TS27** | Confirmación y registro de ejecución de labor de aclareo en campo | 3 | Sprint 1 |
| 33 | **TS39** | Asentamiento formal y balance de liquidación de cosecha de fin de campaña | 3 | Sprint 1 |
| 34 | **TS40** | Certificación criptográfica colegiada del expediente agronómico inmutable | 3 | Sprint 1 |
| 35 | **TS42** | Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela | 2 | Sprint 1 |
| 36 | **TS43** | Rectificación de pesaje de cosecha anual con bloqueo optimista | 2 | Sprint 1 |
| 37 | **TS44** | Restauración de cuartel olivícola archivado | 2 | Sprint 1 |
| 38 | **TS45** | Eliminación de registro erróneo de cosecha en histórico fenológico | 2 | Sprint 1 |
| 39 | **TS46** | Consulta global de incidentes agroclimáticos con contadores y filtrado | 3 | Sprint 1 |
| 40 | **TS47** | Consulta de incidentes agroclimáticos asociados a un cuartel específico | 2 | Sprint 1 |
| 41 | **TS48** | Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación | 3 | Sprint 1 |
| 42 | **TS49** | Postergación temporal de notificaciones de incidente agroclimático (Snooze) | 2 | Sprint 1 |
| 43 | **TS50** | Completado de paso de mitigación agronómica de incidente | 2 | Sprint 1 |
| 44 | **TS51** | Consulta de estado global de muestreos de cuarteles (Plot Picker) | 3 | Sprint 1 |
| 45 | **TS52** | Registro de fecha de plena floración observada en cuartel | 3 | Sprint 1 |
| 46 | **TS53** | Consulta de eventos cronológicos y bitácora agronómica de raleo | 2 | Sprint 1 |
| 47 | **TS54** | Listado de liquidaciones oficiales de cosecha por cuartel | 2 | Sprint 1 |
| 48 | **TS55** | Consulta detallada de liquidación de cosecha por campaña individual | 2 | Sprint 1 |
| 49 | **US09** | Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial | 5 | Sprint 1 |
| 50 | **US10** | Consulta y modificación de linderos y datos dendrométricos de parcela | 3 | Sprint 1 |
| 51 | **US11** | Baja y remoción de parcela del inventario productivo | 2 | Sprint 1 |
| 52 | **US27** | Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo | 5 | Sprint 1 |
| 53 | **US26** | Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña | 5 | Sprint 1 |
| 54 | **US28** | Registro y confirmación de ejecución de aclareo en campo | 3 | Sprint 1 |
| 55 | **US18** | Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela | 3 | Sprint 1 |
| 56 | **US24** | Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline | 5 | Sprint 1 |
| 57 | **US25** | Consulta de representatividad estadística e historial de árboles muestreados en campo | 3 | Sprint 1 |
| 58 | **US22** | Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez | 5 | Sprint 1 |
| 59 | **US23** | Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS | 3 | Sprint 1 |
| 60 | **US19** | Consulta de pronóstico meteorológico geolocalizado a 7 días | 3 | Sprint 1 |
| 61 | **US13** | Vinculación y alta de nodo sensor virtual a una parcela | 3 | Sprint 1 |
| 62 | **US14** | Consulta de inventario y estado operativo de nodos sensores virtuales en parcela | 2 | Sprint 1 |
| 63 | **US15** | Configuración y calibración de nodo sensor virtual en parcela | 2 | Sprint 1 |
| 64 | **US16** | Desvinculación y baja de nodo sensor virtual de una parcela | 2 | Sprint 1 |
| 65 | **US17** | Monitoreo agroclimático y consulta de series temporales de suelo y microclima | 5 | Sprint 1 |
| 66 | **US20** | Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) | 5 | Sprint 1 |
| 67 | **US21** | Modificación y rectificación de registros históricos de cosecha | 2 | Sprint 1 |
| 68 | **US29** | Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva | 3 | Sprint 1 |
| 69 | **SPK03** | Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks | 3 | Sprint 2 |
| 70 | **TS06** | Generación de preferencia de checkout para suscripción de productor independiente | 3 | Sprint 2 |
| 71 | **TS07** | Recepción y procesamiento de webhooks de notificación de pagos | 5 | Sprint 2 |
| 72 | **TS08** | Generación de lote de códigos de activación para socios cooperativos | 3 | Sprint 2 |
| 73 | **TS09** | Consulta y auditoría de códigos de activación de cooperativa | 2 | Sprint 2 |
| 74 | **TS10** | Canje de código de activación de socio para vinculación cooperativa | 3 | Sprint 2 |
| 75 | **US06** | Suscripción individual al Plan Productor mediante pasarela de pago digital | 5 | Sprint 2 |
| 76 | **US07** | Activación de cuenta de socio mediante canje de código de cooperativa | 3 | Sprint 2 |
| 77 | **US08** | Administración de la cartera de socios productores y consulta de cuota corporativa | 3 | Sprint 2 |
| 78 | **US12** | Consulta de la matriz de riesgo territorial y semáforo sectorial con geolocalización GPS | 5 | Sprint 2 |
| 79 | **TS28** | Generación y descarga de reporte agronómico auditable en formato PDF | 5 | Sprint 2 |
| 80 | **TS29** | Consulta de la matriz de riesgo territorial y semáforo sectorial para el gestor técnico | 3 | Sprint 2 |
| 81 | **TS30** | Proyección agregada temprana de volumen de acopio cooperativo | 5 | Sprint 2 |
| 82 | **US01** | Registro de cuenta de acceso y credenciales seguras con asignación de rol | 3 | Sprint 3 |
| 83 | **US02** | Inicio de sesión y autenticación persistente mediante tokens | 3 | Sprint 3 |
| 84 | **US03** | Consulta y actualización de datos de perfil y contacto | 2 | Sprint 3 |
| 85 | **US04** | Cambio seguro de contraseña de acceso | 2 | Sprint 3 |
| 86 | **US05** | Recuperación de contraseña olvidada mediante enlace por correo | 3 | Sprint 3 |
| 87 | **US43** | Completado de perfil de usuario y contacto validado bajo estándar E.164 | 3 | Sprint 3 |
| 88 | **US42** | Configuración y cambio de idioma de la interfaz en la aplicación móvil | 2 | Sprint 3 |
| 89 | **TS01** | Registro de credenciales de cuenta de usuario y asignación de rol en IAM | 3 | Sprint 3 |
| 90 | **TS02** | Autenticación de usuarios y emisión de tokens JWT con claims de rol | 3 | Sprint 3 |
| 91 | **TS03** | Renovación periódica de tokens de sesión mediante Refresh Token | 2 | Sprint 3 |
| 92 | **TS04** | Consulta de información de perfil del usuario autenticado | 2 | Sprint 3 |
| 93 | **TS05** | Actualización parcial de datos de perfil con validación telefónica E.164 | 2 | Sprint 3 |
| 94 | **TS35** | Creación y completado inicial de perfil de usuario con validación telefónica E.164 | 3 | Sprint 3 |
| 95 | **TS36** | Actualización de contraseña para sesión de usuario autenticado | 2 | Sprint 3 |
| 96 | **TS37** | Solicitud de código de restablecimiento de contraseña olvidada vía correo | 3 | Sprint 3 |
| 97 | **TS38** | Restablecimiento de contraseña mediante token temporal de un solo uso | 2 | Sprint 3 |
| 98 | **TS41** | Revocación anticipada y ajuste de vigencia de código de activación cooperativo | 2 | Sprint 3 |
| 99 | **US30** | Emisión, certificación criptográfica y exportación del expediente agronómico en PDF | 5 | Sprint 3 |
| 100 | **US31** | Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica | 5 | Sprint 3 |
| 101 | **US32** | Proyección agregada temprana de volumen de acopio de aceituna verde y negra para la cooperativa | 5 | Sprint 3 |

### Tablero de Gestión Ágil en Trello

Para garantizar la visibilidad compartida, la trazabilidad ágil y la gestión continua del flujo de trabajo, los 101 ítems del Product Backlog han sido registrados y priorizados en la herramienta colaborativa Trello. Cada tarjeta consolida su código de historia, denominación estandarizada, estimación de esfuerzo en story points, sprint asignado y su narrativa ágil con criterios de aceptación Gherkin.

- **Tablero público en Trello:** [Product Backlog Viora en Trello](https://tinyurl.com/1acc0238-product-backlog)
