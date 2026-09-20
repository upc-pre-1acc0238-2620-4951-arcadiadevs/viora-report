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

\vspace{0.3cm}
