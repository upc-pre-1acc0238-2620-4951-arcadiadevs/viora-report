# Capítulo IV: Product Implementation & Validation

En este capítulo se expone de manera estructurada el proceso de ingeniería, configuración, construcción, verificación, despliegue y validación de los productos digitales que integran la plataforma Viora. A lo largo de las siguientes secciones, se documentan las directrices de gestión de configuración de software, la línea base de los entornos de desarrollo, las políticas de control de versiones y convenciones de codificación, así como la topología física de despliegue en la nube y el avance colaborativo a través de los Sprints de desarrollo.

## Software Configuration Management

La gestión de configuración de software (*Software Configuration Management* o SCM) comprende el conjunto sistemático de disciplinas, herramientas y convenciones técnicas orientadas a garantizar la integridad, consistencia y reproducibilidad de los artefactos del sistema a lo largo de su ciclo de vida. Dentro del ecosistema Viora, la SCM asegura la paridad entre las estaciones de trabajo locales, los entornos de prueba y la infraestructura en producción, dividiéndose en: configuración del entorno de desarrollo, gestión de código fuente (GitFlow), guías de estilo y arquitectura de despliegue.

### Software Development Environment Configuration

Para asegurar que el desarrollo de los productos digitales que componen la solución Viora se ejecute de manera determinista y libre de discrepancias de compilación (*configuration drift*), ArcadiaDevs ha establecido una línea base de herramientas homologadas. Cada miembro del equipo debe aprovisionar su estación de trabajo y cuentas institucionales respetando con rigurosidad las versiones, runtimes y canales oficiales declarados.

La selección cubre la totalidad de las actividades requeridas por el ciclo de vida del software: *Project Management*, *Requirements Management*, *Product UX/UI Design*, *Software Development*, *Software Testing*, *Software Deployment* y *Software Documentation*.

En la \autoref{tab:dev-environment-tools} se detalla la matriz integral de herramientas de software aprobadas para el proyecto.

\vspace{0.3cm}

\renewcommand{\arraystretch}{1.2}
\begin{longtable}{|p{2.8cm}|p{2.4cm}|p{5.8cm}|p{4.2cm}|}
\hline
\textbf{Categoría / Actividad} & \textbf{Herramienta} & \textbf{Propósito en el Ecosistema Viora} & \textbf{Entorno y Enlace Oficial} \\ \hline
\endfirsthead

\hline
\textbf{Categoría / Actividad} & \textbf{Herramienta} & \textbf{Propósito en el Ecosistema Viora} & \textbf{Entorno y Enlace Oficial} \\ \hline
\endhead

\hline
\endfoot

\hline
\caption{Matriz de configuración del entorno de desarrollo de software de Viora.} \label{tab:dev-environment-tools} \\
\multicolumn{4}{|p{15.2cm}|}{\textit{Nota.} Especificación técnica de herramientas locales y SaaS aprobadas para el equipo de desarrollo de ArcadiaDevs. Elaboración propia.}
\endlastfoot

\textbf{Project Management} & Trello & Gestión ágil del ciclo de vida, administración del Product Backlog priorizado (89 ítems) y tableros Kanban por Sprint. & SaaS Cloud (Freemium) \newline \url{https://trello.com} \\ \hline

\textbf{Project Management} & Discord & Comunicación sincrónica del equipo, coordinación técnica diaria y sesiones de pair programming. & SaaS Cloud (Freemium) \newline \url{https://discord.com} \\ \hline

\textbf{Project Management} & Arcadia To-Do & Asignación de tareas operativas internas, seguimiento de fechas de entrega y repositorio centralizado de enlaces y documentación clave para el equipo. & SaaS Cloud (In-house) \newline \url{https://arcadia-to-do-application.vercel.app} \\ \hline

\textbf{Requirements Management} & Miro & Elaboración colaborativa del Big Picture EventStorming y profundización en comandos, eventos y agregados. & SaaS Cloud (Educativo) \newline \url{https://miro.com} \\ \hline

\textbf{Requirements Management} & UXPressia & Modelado de artefactos de diseño centrado en el usuario: User Personas, Empathy Maps, Journey Maps e Impact Maps. & SaaS Cloud (Educativo) \newline \url{https://uxpressia.com} \\ \hline

\textbf{Requirements Management} & Lucidchart & Elaboración de Bounded Context Canvases, flujos de interacción (User Flows) y esquemas de navegación (Wireflows). & SaaS Cloud (Educativo) \newline \url{https://www.lucidchart.com} \\ \hline

\textbf{Product UX/UI Design} & Figma & Diseño del sistema de componentes atómicos UI bajo Material Design 3 y prototipado interactivo de alta fidelidad. & SaaS Cloud / Desktop \newline \url{https://www.figma.com} \\ \hline

\textbf{Software Development} \newline (Runtime Java) & OpenJDK 21 \newline LTS (Temurin) & Kit de desarrollo Java universal corporativo. Provee el compilador, máquina virtual (JVM) y runtime para el Backend y Gradle. & Local (Eclipse Open Source) \newline \url{https://adoptium.net} \\ \hline

\textbf{Software Development} \newline (Backend API) & IntelliJ IDEA & Entorno de desarrollo integrado (IDE) principal para la construcción del Backend RESTful con Spring Boot 3 y Java 21. & Local (JetBrains / Apache 2.0) \newline \url{https://www.jetbrains.com/idea} \\ \hline

\textbf{Software Development} \newline (Mobile Android) & Android Studio & IDE oficial para el desarrollo del cliente móvil nativo Android con Kotlin, Jetpack Compose, Room SQLite y Android SDK 34. & Local (Google Freeware / Apache) \newline \url{https://developer.android.com/studio} \\ \hline

\textbf{Software Development} \newline (Landing Page) & Visual Studio \newline Code & Editor de código fuente para la maquetación semántica y estilizado del sitio estático Landing Page (HTML5, CSS3, JavaScript). & Local (MIT License) \newline \url{https://code.visualstudio.com} \\ \hline

\textbf{Software Development} \newline (Database Engine) & PostgreSQL 16 & Sistema gestor de base de datos relacional para la persistencia transaccional y espacial de parcelas, telemetría y suscripciones. & Local \newline \url{https://www.postgresql.org} \\ \hline

\textbf{Software Testing} \newline (API Testing) & Swagger UI & Inspección, validación y ejecución interactiva de contratos de endpoints RESTful bajo especificación OpenAPI. & Local / Web (Apache 2.0) \newline \url{https://swagger.io} \\ \hline

\textbf{Software Testing} \newline (BDD Testing) & Cucumber JVM & Framework de pruebas automatizadas de aceptación basadas en comportamiento (BDD) mediante especificaciones en sintaxis Gherkin. & Local (MIT License / Apache 2.0) \newline \url{https://cucumber.io} \\ \hline

\textbf{Software Deployment} \newline (Web Hosting) & Vercel & Plataforma de alojamiento en la nube con integración continua (CI/CD) para el despliegue automático del sitio web Landing Page. & PaaS Cloud (Free Tier) \newline \url{https://vercel.com} \\ \hline

\textbf{Software Deployment} \newline (Container Hosting) & Render & Plataforma PaaS de despliegue para la ejecución del contenedor Dockerizado de la API RESTful de Spring Boot y el Telemetry Simulator. & PaaS Cloud (Free Tier) \newline \url{https://render.com} \\ \hline

\textbf{Software Deployment} \newline (Cloud Database) & Filess.io & Servicio DBaaS para el alojamiento administrado de la base de datos PostgreSQL 16 con soporte SSL. & DBaaS Cloud (Free Tier) \newline \url{https://filess.io} \\ \hline

\textbf{Software Deployment} \newline (Mobile Distribution) & Firebase App \newline Distribution & Servicio de distribución continua de paquetes binarios compilados (APK) de Android nativo y Flutter para pruebas de QA. & SaaS Cloud (Google Free Tier) \newline \url{https://firebase.google.com} \\ \hline

\textbf{Software Documentation} & OpenAPI \newline Specification & Estándar de especificación para la descripción técnica e interactiva de los servicios web RESTful del backend. & Web (Apache 2.0) \newline \url{https://swagger.io/specification} \\ \hline

\textbf{Software Documentation} & Structurizr & Modelado formal y estructuración de la Arquitectura de Software del sistema Viora mediante C4 Model (niveles 1, 2 y 3). & SaaS Cloud / Local \newline \url{https://structurizr.com} \\ \hline

\textbf{Software Documentation} & PlantUML & Herramienta de modelado basada en código (Diagram-as-Code) para la generación determinista de diagramas de clases y base de datos. & Local (GPL / Apache) \newline \url{https://plantuml.com} \\ \hline

\textbf{Software Documentation} & Pandoc + \newline XeLaTeX & Motor de procesamiento documental y tipográfico para la compilación automatizada del informe técnico en formato PDF. & Local (GPL / LPPL) \newline \url{https://pandoc.org} \\ \hline

\end{longtable}

\vspace{0.3cm}

A continuación, se sintetizan las consideraciones técnicas y de runtime adoptadas para cada área operativa:

* **Project Management:** Uso de Trello para la administración del Product Backlog (89 ítems) y tableros Kanban por Sprint; Arcadia To-Do como plataforma in-house para la asignación de tareas internas, control de fechas límite y repositorio de enlaces documentales; complementado con Discord para la comunicación técnica sincrónica de ArcadiaDevs.
* **Requirements Management:** Miro para la facilitación colaborativa del Big Picture EventStorming y definición de eventos de dominio; UXPressia para el modelado de artefactos de diseño centrado en el usuario (Personas, Journey Maps e Impact Maps); y Lucidchart para los Bounded Context Canvases y flujos de navegación (User Flows y Wireflows).
* **Product UX/UI Design:** Figma como estándar de diseño atómico basado en Material Design 3, definiendo componentes modulares, paleta cromática contextual (tonos tierra y verde olivo) y prototipos interactivos de alta fidelidad para Android y web.
* **Software Development (Backend & Database):** Estandarización corporativa en OpenJDK 21 LTS (Eclipse Temurin) enlazado a la variable de entorno `JAVA_HOME`. Desarrollo sobre IntelliJ IDEA con Spring Boot 3 y Spring Data JPA, utilizando PostgreSQL 16 como motor relacional transaccional en entorno local.
* **Software Development (Mobile & Web):** Para el cliente nativo `viora-mobile-android`, Android Studio con Android SDK Platform 34 (Android 14, `minSdk` 26) y Jetpack Compose. Maquetación de `viora-landing-page` en Visual Studio Code bajo HTML5 semántico, CSS3 y JavaScript.
* **Software Testing:** Inspección y prueba interactiva de contratos de endpoints RESTful mediante Swagger UI, y pruebas automatizadas de aceptación BDD con Cucumber JVM en el repositorio `viora-acceptance-tests`.
* **Software Deployment:** Despliegue continuo de la Landing Page en Vercel; contenedorización del backend Java 21 en Docker desplegado como servicio web en Render; persistencia administrada en Filess.io (PostgreSQL 16); y distribución controlada de paquetes APK para Android mediante Firebase App Distribution.
* **Software Documentation:** Documentación formal de contratos REST mediante OpenAPI Specification; estructuración de diagramas de arquitectura C4 Model con Structurizr; generación automatizada de diagramas UML mediante PlantUML; y compilación tipográfica del informe técnico mediante Pandoc + XeLaTeX bajo arquitectura *Documentation-as-Code*.

\newpage

### Source Code Management

Para garantizar la integridad, trazabilidad, reproducibilidad y el trabajo colaborativo en la ingeniería de la solución distribuida de Viora, ArcadiaDevs ha establecido un esquema de organización basado en el control de versiones descentralizado mediante Git y GitHub.

#### Estrategia de repositorios
&nbsp;

Se utiliza GitHub bajo la organización institucional `upc-pre-1acc0238-2620-4951-arcadiadevs` como plataforma central para la custodia, revisión y gestión del código fuente. La solución adopta una arquitectura de repositorios independientes para desacoplar el ciclo de vida, las pruebas y los despliegues de cada producto digital:

* **Landing Page (`viora-landing-page`):** Contiene la maquetación semántica estructurada en HTML5, hojas de estilo CSS3 y scripts en JavaScript nativo del sitio web público de conversión y presentación comercial de Viora.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-landing-page}

* **Mobile Application Android (`viora-mobile-android`):** Repositorio dedicado al cliente móvil nativo desarrollado en Kotlin para Android, implementado con Jetpack Compose para la interfaz reactiva, persistencia local desconectada con Room SQLite y consumo de servicios REST.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-mobile-android}

* **Cross-Platform Mobile Application (`viora-mobile-flutter`):** Repositorio correspondiente al cliente móvil multiplataforma desarrollado con Flutter y lenguaje Dart, integrando almacenamiento local con sqflite y la misma lógica de negocio orientada a roles.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-mobile-flutter}

* **Web Services & Platform Backend (`viora-platform`):** Centraliza la lógica de negocio y arquitectura modular construida en Java 21 con Spring Boot 3 y Spring Data JPA. Comprende los doce componentes de backend, la persistencia relacional sobre PostgreSQL 16 y la documentación interactiva OpenAPI/Swagger.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}

* **IoT Telemetry Simulator (`viora-telemetry-simulator`):** Repositorio dedicado al servicio ejecutable autónomo en Java/Docker que simula el comportamiento de los nodos sensores en campo. Genera lecturas sintéticas periódicas de temperatura, humedad ambiental y humedad del suelo, despachándolas vía HTTP REST hacia el Backend API.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-telemetry-simulator}

* **Acceptance Testing Suite (`viora-acceptance-tests`):** Repositorio enfocado en el aseguramiento de calidad del software mediante pruebas automatizadas de aceptación basadas en comportamiento (BDD), orquestadas con Cucumber JVM y sintaxis Gherkin.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-acceptance-tests}

* **Technical Report Documentation (`viora-report`):** Repositorio bajo enfoque *Documentation-as-Code* que alberga el código fuente en Markdown, plantillas LaTeX, fuentes PlantUML y la configuración de compilación de los informes técnicos del proyecto.
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-report}

#### Flujo de trabajo de control de versiones: GitFlow
&nbsp;

Para gobernar el ciclo de vida del código fuente de manera predecible y aislar los incrementos inestables de los entornos productivos, el equipo aplica rigurosamente el modelo de ramificación GitFlow propuesto por @driessen2010.

\noindent \textbf{Ramas principales (de larga duración):}

* `main`: Representa el estado estable, auditado y listo para producción. Únicamente incorpora cambios consolidados a través de fusiones (*merges*) provenientes de ramas de estabilización de versión (*release*) o correcciones de emergencia en caliente (*hotfixes*). Cada integración en `main` se asocia indefectiblemente con una etiqueta de versión (*tag*).
* `develop`: Es la rama central de integración continua. Refleja el estado de desarrollo más reciente y consolida las funcionalidades aprobadas para el siguiente ciclo o sprint antes de ser promovidas a estabilización.

\noindent \textbf{Ramas auxiliares (de soporte temporal):}

* **Ramas de funcionalidad (`feature/<nombre-caracteristica>`):** Empleadas para el desarrollo de requisitos específicos, historias de usuario o épicas delimitadas. Nacen a partir de `develop` y se reintegran exclusivamente a `develop` mediante solicitudes de extracción (*Pull Requests*) una vez finalizada la tarea y aprobada la revisión por pares.
* **Ramas de estabilización (*Release*) (`release/vX.Y.Z`):** Se bifurcan desde `develop` cuando las funcionalidades del sprint alcanzan el estado de congelamiento. En esta rama se ejecutan únicamente ajustes menores de documentación, resolución de defectos y pruebas integrales antes de realizar la doble fusión hacia `main` (con su respectiva etiqueta de versión) y hacia `develop`.
* **Ramas de corrección urgente (*Hotfix*) (`hotfix/<descripcion-defecto>`):** Se originan de manera excepcional directamente desde `main` para solventar fallos críticos identificados en producción. Una vez validada la corrección, la rama se fusiona de inmediato tanto en `main` (incrementando la versión de parche) como en `develop` para preservar la sincronización de la base de código.

#### Convenciones de versionamiento: Semantic Versioning 2.0.0
&nbsp;

El equipo estandariza la nomenclatura de versiones de software y etiquetas (*tags*) aplicando la especificación *Semantic Versioning 2.0.0* [@semver]. Cada versión se expresa formalmente mediante tres componentes numéricos cardinales:

\begin{equation*}
\textbf{vMAYOR.MENOR.PARCHE} \quad (\text{ejemplo: } \text{v1.0.0})
\end{equation*}

* **MAYOR (X.0.0):** Se incrementa cuando se introducen modificaciones arquitecturales sustanciales o cambios en los contratos de interfaces y APIs que rompen la compatibilidad hacia atrás (*breaking changes*).
* **MENOR (X.Y.0):** Se incrementa cuando se incorporan nuevas funcionalidades o casos de uso que preservan la compatibilidad regresiva con los clientes existentes.
* **PARCHE (X.Y.Z):** Se incrementa al implementar correcciones de defectos, optimizaciones de rendimiento o parches de seguridad que no alteran la interfaz pública ni agregan características funcionales nuevas.

#### Estándar de mensajería: Conventional Commits 1.0.0
&nbsp;

A fin de preservar un historial de confirmaciones semánticamente estructurado, legible por humanos y apto para la generación automatizada de bitácoras de cambios (*changelogs*), ArcadiaDevs implementa la especificación *Conventional Commits 1.0.0* [@conventionalcommits]. 

La estructura formal obligatoria para cada mensaje de confirmación se define de la siguiente manera:

\begin{verbatim}
<tipo>(<alcance>): <descripcion>

[cuerpo opcional]

[pie de mensaje opcional]
\end{verbatim}

\noindent \textbf{Tipos de confirmación admitidos:}

* `feat`: Incorporación de una nueva funcionalidad, endpoint o pantalla de usuario.
* `fix`: Corrección de un defecto o fallo técnico en el sistema.
* `docs`: Cambios o ampliaciones exclusivas en la documentación técnica del proyecto.
* `style`: Ajustes cosméticos que no alteran el significado del código (formateo, indentación, espacios en blanco).
* `refactor`: Modificaciones internas del código que no añaden funcionalidades ni corrigen errores de comportamiento.
* `test`: Adición o refactorización de suites de pruebas automatizadas unitarias, de integración o de aceptación (BDD).
* `chore`: Actualización de tareas de compilación, scripts de automatización, dependencias o herramientas del entorno.

\noindent \textbf{Reglas de redacción de los componentes:}

* **Alcance (*scope*):** Elemento contextual entre paréntesis que designa el módulo, bounded context o componente técnico intervenido (ej. `auth`, `telemetry`, `crop-load`, `scm`).
* **Descripción (*subject*):** Resumen sucinto del cambio, redactado en modo imperativo, tiempo presente, en minúsculas y sin punto final.
* **Cuerpo (*body*):** Bloque opcional separado por una línea en blanco que detalla la motivación técnica del cambio y el contraste con el comportamiento previo.
* **Cambios disruptivos (*Breaking Changes*):** Si la confirmación introduce una incompatibilidad en la API o arquitectura, se añade obligatoriamente un signo de exclamación tras el tipo/alcance (ej. `feat(api)!: modify authentication payload`) o se declara una nota `BREAKING CHANGE:` en el pie del mensaje explicando el impacto y los pasos de migración requeridos.

\newpage

### Source Code Style Guide & Conventions 

\newpage

### Software Deployment Configuration

\newpage