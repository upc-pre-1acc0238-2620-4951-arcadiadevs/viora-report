# Capítulo IV: Product Implementation & Validation

En este capítulo se expone de manera estructurada el proceso de ingeniería, configuración, construcción, verificación, despliegue y validación de los productos digitales que integran la plataforma Viora. A lo largo de las siguientes secciones, se documentan las directrices de gestión de configuración de software, la línea base de los entornos de desarrollo, las políticas de control de versiones y convenciones de codificación, así como la topología física de despliegue en la nube y el avance colaborativo a través de los Sprints de desarrollo.

## Software Configuration Management

La gestión de configuración de software (*Software Configuration Management* o SCM) comprende el conjunto sistemático de disciplinas, herramientas y convenciones técnicas orientadas a garantizar la integridad, consistencia y reproducibilidad de los artefactos del sistema a lo largo de su ciclo de vida. Dentro del ecosistema Viora, la SCM asegura la paridad entre las estaciones de trabajo locales, los entornos de prueba y la infraestructura en producción, dividiéndose en: configuración del entorno de desarrollo, gestión de código fuente (GitFlow), guías de estilo y arquitectura de despliegue.

### Software Development Environment Configuration

Para asegurar que el desarrollo de los productos digitales que componen la solución Viora se ejecute de manera determinista y libre de discrepancias de compilación (*configuration drift*), ArcadiaDevs ha establecido una línea base de herramientas homologadas. Cada miembro del equipo debe aprovisionar su estación de trabajo y cuentas institucionales respetando con rigurosidad las versiones, runtimes y canales oficiales declarados.

La selección cubre la totalidad de las actividades requeridas por el ciclo de vida del software: *Project Management*, *Requirements Management*, *Product UX/UI Design*, *Software Development*, *Software Testing*, *Software Deployment* y *Software Documentation*.

En la \autoref{tab:dev-environment-tools} se detalla la matriz integral de herramientas de software aprobadas para el proyecto.

\vspace{0.3cm}

\renewcommand{\arraystretch}{1.25}
\begin{longtable}{p{2.5cm} p{2.1cm} p{6.7cm} p{4.2cm}}
\caption{Matriz de configuración del entorno de desarrollo de software de Viora.} \label{tab:dev-environment-tools} \\
\hline
\textbf{Categoría / Actividad} & \textbf{Herramienta} & \textbf{Propósito en el ecosistema Viora} & \textbf{Entorno y enlace oficial} \\ \hline
\endfirsthead

\hline
\textbf{Categoría / Actividad} & \textbf{Herramienta} & \textbf{Propósito en el ecosistema Viora} & \textbf{Entorno y enlace oficial} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{4}{l}{\parbox{15.5cm}{\vspace{0.15cm} \textit{Nota.} Especificación técnica de herramientas locales y SaaS aprobadas para el equipo de desarrollo de ArcadiaDevs. Elaboración propia.}} \\
\endlastfoot

Gestión de proyectos & Trello & Gestión ágil del ciclo de vida, administración del Product Backlog priorizado (89 ítems) y tableros Kanban por Sprint. & SaaS Cloud (Freemium) \newline \url{https://trello.com} \\[0.15cm]

Gestión de proyectos & Discord & Comunicación sincrónica del equipo, coordinación técnica diaria y sesiones de pair programming. & SaaS Cloud (Freemium) \newline \url{https://discord.com} \\[0.15cm]

Gestión de proyectos & Arcadia To-Do & Asignación de tareas operativas internas, seguimiento de fechas de entrega y repositorio centralizado de enlaces y documentación clave para el equipo. & SaaS Cloud (In-house) \newline \url{https://arcadia-to-do-application.vercel.app} \\[0.15cm]

Gestión de requisitos & Miro & Elaboración colaborativa del Big Picture EventStorming y profundización en comandos, eventos y agregados. & SaaS Cloud (Educativo) \newline \url{https://miro.com} \\[0.15cm]

Gestión de requisitos & UXPressia & Modelado de artefactos de diseño centrado en el usuario: User Personas, Empathy Maps, Journey Maps e Impact Maps. & SaaS Cloud (Educativo) \newline \url{https://uxpressia.com} \\[0.15cm]

Gestión de requisitos & Lucidchart & Elaboración de Bounded Context Canvases, flujos de interacción (User Flows) y esquemas de navegación (Wireflows). & SaaS Cloud (Educativo) \newline \url{https://www.lucidchart.com} \\[0.15cm]

Diseño UX/UI de producto & Figma & Diseño del sistema de componentes atómicos UI bajo Material Design 3 y prototipado interactivo de alta fidelidad. & SaaS Cloud / Desktop \newline \url{https://www.figma.com} \\[0.15cm]

Desarrollo de software \newline (Runtime Java) & OpenJDK 21 \newline LTS (Temurin) & Kit de desarrollo Java universal corporativo. Provee el compilador, máquina virtual (JVM) y runtime para el Backend y Gradle. & Local (Eclipse Open Source) \newline \url{https://adoptium.net} \\[0.15cm]

Desarrollo de software \newline (Backend API) & IntelliJ IDEA & Entorno de desarrollo integrado (IDE) principal para la construcción del Backend RESTful con Spring Boot 3 y Java 21. & Local (JetBrains / Apache 2.0) \newline \url{https://www.jetbrains.com/idea} \\[0.15cm]

Desarrollo de software \newline (Mobile Android) & Android Studio & IDE oficial para el desarrollo del cliente móvil nativo Android con Kotlin, Jetpack Compose, Room SQLite y Android SDK 34. & Local (Google Freeware / Apache) \newline \url{https://developer.android.com/studio} \\[0.15cm]

Desarrollo de software \newline (Mobile Flutter) & Flutter SDK \newline v3.24.x (Stable) & Framework de desarrollo multiplataforma con lenguaje Dart 3.5.x para la compilación del cliente móvil cross-platform de Viora. & Local (BSD 3-Clause) \newline \url{https://flutter.dev} \\[0.15cm]

Desarrollo de software \newline (Landing Page) & Visual Studio \newline Code & Editor de código fuente para la maquetación semántica y estilizado del sitio estático Landing Page (HTML5, CSS3, JavaScript). & Local (MIT License) \newline \url{https://code.visualstudio.com} \\[0.15cm]

Desarrollo de software \newline (Motor de base de datos) & PostgreSQL 16 & Sistema gestor de base de datos relacional para la persistencia transaccional y espacial de parcelas, telemetría y suscripciones. & Local \newline \url{https://www.postgresql.org} \\[0.15cm]

Pruebas de software \newline (Pruebas de API) & Swagger UI & Inspección, validación y ejecución interactiva de contratos de endpoints RESTful bajo especificación OpenAPI. & Local / Web (Apache 2.0) \newline \url{https://swagger.io} \\[0.15cm]

Pruebas de software \newline (Pruebas BDD) & Cucumber JVM & Framework de pruebas automatizadas de aceptación basadas en comportamiento (BDD) mediante especificaciones en sintaxis Gherkin. & Local (MIT License / Apache 2.0) \newline \url{https://cucumber.io} \\[0.15cm]

Despliegue de software \newline (Alojamiento web) & Vercel & Plataforma de alojamiento en la nube con integración continua (CI/CD) para el despliegue automático del sitio web Landing Page. & PaaS Cloud (Free Tier) \newline \url{https://vercel.com} \\[0.15cm]

Despliegue de software \newline (Alojamiento de contenedores) & Render & Plataforma PaaS de despliegue para la ejecución del contenedor Dockerizado de la API RESTful de Spring Boot y el Telemetry Simulator. & PaaS Cloud (Free Tier) \newline \url{https://render.com} \\[0.15cm]

Despliegue de software \newline (Base de datos en la nube) & Filess.io & Servicio DBaaS para el alojamiento administrado de la base de datos PostgreSQL 16 con soporte SSL. & DBaaS Cloud (Free Tier) \newline \url{https://filess.io} \\[0.15cm]

Despliegue de software \newline (Distribución móvil) & Firebase App \newline Distribution & Servicio de distribución continua de paquetes binarios compilados (APK) de Android nativo y Flutter para pruebas de QA. & SaaS Cloud (Google Free Tier) \newline \url{https://firebase.google.com} \\[0.15cm]

Documentación de software & OpenAPI \newline Specification & Estándar de especificación para la descripción técnica e interactiva de los servicios web RESTful del backend. & Web (Apache 2.0) \newline \url{https://swagger.io/specification} \\[0.15cm]

Documentación de software & Structurizr & Modelado formal y estructuración de la Arquitectura de Software del sistema Viora mediante C4 Model (niveles 1, 2 y 3). & SaaS Cloud / Local \newline \url{https://structurizr.com} \\[0.15cm]

Documentación de software & PlantUML & Herramienta de modelado basada en código (Diagram-as-Code) para la generación determinista de diagramas de clases y base de datos. & Local (GPL / Apache) \newline \url{https://plantuml.com} \\[0.15cm]

Documentación de software & Pandoc + \newline XeLaTeX & Motor de procesamiento documental y tipográfico para la compilación automatizada del informe técnico en formato PDF. & Local (GPL / LPPL) \newline \url{https://pandoc.org} \\

\end{longtable}

\vspace{0.3cm}

A continuación, se sintetizan las consideraciones técnicas y de runtime adoptadas para cada área operativa:

* **Gestión de proyectos (*Project Management*):** Uso de Trello para la administración del Product Backlog (89 ítems) y tableros Kanban por Sprint; Arcadia To-Do como plataforma in-house para la asignación de tareas operativas internas, control de fechas límite y repositorio de enlaces documentales; complementado con Discord para la comunicación técnica sincrónica de ArcadiaDevs.
* **Gestión de requisitos (*Requirements Management*):** Miro para la facilitación colaborativa del Big Picture EventStorming y definición de eventos de dominio; UXPressia para el modelado de artefactos de diseño centrado en el usuario (Personas, Journey Maps e Impact Maps); y Lucidchart para los Bounded Context Canvases y flujos de navegación (User Flows y Wireflows).
* **Diseño UX/UI de producto (*Product UX/UI Design*):** Figma como estándar de diseño atómico basado en Material Design 3, definiendo componentes modulares, paleta cromática contextual (tonos tierra y verde olivo) y prototipos interactivos de alta fidelidad para Android y web.
* **Desarrollo de software (Backend y base de datos):** Estandarización corporativa en OpenJDK 21 LTS (Eclipse Temurin) enlazado a la variable de entorno `JAVA_HOME`. Desarrollo sobre IntelliJ IDEA con Spring Boot 3 y Spring Data JPA, utilizando PostgreSQL 16 como motor relacional transaccional en entorno local.
* **Desarrollo de software (Mobile y Web):** Para el cliente nativo `viora-mobile-android`, Android Studio con Android SDK Platform 34 (Android 14, `minSdk` 26) y Jetpack Compose. Para el cliente cross-platform `viora-mobile-flutter`, Flutter SDK v3.24.x y Dart 3.5.x. Maquetación de `viora-landing-page` en Visual Studio Code bajo HTML5 semántico, CSS3 y JavaScript.
* **Pruebas de software (*Software Testing*):** Inspección y prueba interactiva de contratos de endpoints RESTful mediante Swagger UI, y pruebas automatizadas de aceptación BDD con Cucumber JVM en el repositorio `viora-acceptance-tests`.
* **Despliegue de software (*Software Deployment*):** Despliegue continuo de la Landing Page en Vercel; contenedorización del backend Java 21 en Docker desplegado como servicio web en Render; persistencia administrada en Filess.io (PostgreSQL 16); y distribución controlada de paquetes APK para Android y Flutter mediante Firebase App Distribution.
* **Documentación de software (*Software Documentation*):** Documentación formal de contratos REST mediante OpenAPI Specification; estructuración de diagramas de arquitectura C4 Model con Structurizr; generación automatizada de diagramas UML mediante PlantUML; y compilación tipográfica del informe técnico mediante Pandoc + XeLaTeX bajo arquitectura *Documentation-as-Code*.

\newpage

### Source Code Management

Para garantizar la integridad, trazabilidad, reproducibilidad y el trabajo colaborativo en la ingeniería de la solución distribuida de Viora, ArcadiaDevs ha establecido un esquema de organización basado en el control de versiones descentralizado mediante Git y GitHub.

#### Estrategia de repositorios
&nbsp;

Se utiliza GitHub bajo la organización institucional `upc-pre-1acc0238-2620-4951-arcadiadevs` como plataforma central para la custodia, revisión y gestión del código fuente. La solución adopta una arquitectura de repositorios independientes para desacoplar el ciclo de vida, las pruebas y los despliegues de cada producto digital:

* **Landing Page (`viora-landing-page`):** Contiene la maquetación semántica estructurada en HTML5, hojas de estilo CSS3 y scripts en JavaScript nativo del sitio web público de conversión y presentación comercial de Viora.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-landing-page}

* **Mobile Application Android (`viora-mobile-android`):** Repositorio dedicado al cliente móvil nativo desarrollado en Kotlin para Android, implementado con Jetpack Compose para la interfaz reactiva, persistencia local desconectada con Room SQLite y consumo de servicios REST.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-mobile-android}

* **Cross-Platform Mobile Application (`viora-mobile-flutter`):** Repositorio correspondiente al cliente móvil multiplataforma desarrollado con Flutter y lenguaje Dart, integrando almacenamiento local con sqflite y la misma lógica de negocio orientada a roles.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-mobile-flutter}

* **Web Services & Platform Backend (`viora-platform`):** Centraliza la lógica de negocio y arquitectura modular construida en Java 21 con Spring Boot 3 y Spring Data JPA. Comprende los doce componentes de backend, la persistencia relacional sobre PostgreSQL 16 y la documentación interactiva OpenAPI/Swagger.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}

* **IoT Telemetry Simulator (`viora-telemetry-simulator`):** Repositorio dedicado al servicio ejecutable autónomo en Java/Docker que simula el comportamiento de los nodos sensores en campo. Genera lecturas sintéticas periódicas de temperatura, humedad ambiental y humedad del suelo, despachándolas vía HTTP REST hacia el Backend API.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-telemetry-simulator}

* **Acceptance Testing Suite (`viora-acceptance-tests`):** Repositorio enfocado en el aseguramiento de calidad del software mediante pruebas automatizadas de aceptación basadas en comportamiento (BDD), orquestadas con Cucumber JVM y sintaxis Gherkin.
  \par \vspace{0.08cm}
  \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-acceptance-tests}

* **Technical Report Documentation (`viora-report`):** Repositorio bajo enfoque *Documentation-as-Code* que alberga el código fuente en Markdown, plantillas LaTeX, fuentes PlantUML y la configuración de compilación de los informes técnicos del proyecto.
  \par \vspace{0.08cm}
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

### Source Code Style Guide & Conventions 

Para garantizar la consistencia, legibilidad, mantenibilidad y el trabajo colaborativo en la base de código de Viora, ArcadiaDevs ha establecido un conjunto de estándares y convenciones de codificación obligatorios. Como directriz transversal a todos los repositorios, toda la nomenclatura (nombres de paquetes, clases, interfaces, métodos, variables, atributos, parámetros, comentarios técnicos y nombres de archivos) se redactará exclusivamente en idioma inglés, asegurando la interoperabilidad con bibliotecas internacionales y siguiendo las mejores prácticas de la industria.

A continuación, se detallan las guías de estilo adoptadas para cada una de las tecnologías y lenguajes utilizados en la solución:

#### Especificaciones de comportamiento: Gherkin
&nbsp;

Para la redacción de los criterios de aceptación en historias de usuario y la automatización de pruebas BDD en el repositorio `viora-acceptance-tests`, se siguen las directrices oficiales de @cucumbergherkin:

* **Idioma y palabras clave:** Todas las palabras reservadas (`Feature`, `Scenario`, `Scenario Outline`, `Given`, `When`, `Then`, `And`, `But`, `Examples`) se declaran en inglés.
* **Estructura comprobable:** Cada escenario modela un flujo de interacción concreto sin hacer referencia a detalles efímeros de interfaz gráfica ni elementos visuales transitorios.
* **Parametrización y reusabilidad:** Se prioriza el uso de `Scenario Outline` junto con tablas de datos en `Examples` para validar múltiples combinaciones de entrada y respuesta esperada, evitando duplicación innecesaria.

#### Estructura web: HTML5
&nbsp;

La maquetación del sitio estático `viora-landing-page` se rige por los estándares de @w3schoolshtml5 y las recomendaciones de @googlehtmlcss:

* **Sintaxis y elementos:** Se emplean minúsculas para todas las etiquetas y atributos HTML. Los valores de los atributos deben delimitarse obligatoriamente con comillas dobles.
* **Semántica estructural:** Es mandatorio el uso de elementos semánticos de HTML5 (`<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`) para optimizar la indexación SEO y la navegación accesible.
* **Accesibilidad (a11y):** Toda imagen debe incorporar su correspondiente atributo `alt` descriptivo, y cada elemento de formulario interactivo debe estar asociado inequívocamente con su elemento `<label>`.

#### Estilos y diseño visual: CSS3
&nbsp;

Para las hojas de estilo de la Landing Page, se adoptan las directrices de @googlehtmlcss complementadas con la metodología de nomenclatura BEM (*Block, Element, Modifier*):

* **Formato e indentación:** Se establece una indentación consistente de 2 espacios sin tabulaciones. Las reglas se declaran con una propiedad por línea.
* **Nomenclatura BEM:** Se utiliza la notación en minúsculas con guiones (*kebab-case*) para estructurar los selectores (ej. `.viora-card`, `.viora-card__title`, `.viora-card--highlighted`).
* **Especificidad y selectores:** Se restringe el uso de selectores de tipo anidados para maximizar el rendimiento del motor de renderizado. Queda estrictamente prohibido el uso de selectores por identificador (`#id`) para aplicar estilos visuales, reservándolos únicamente para anclajes o enlaces con JavaScript.

#### Lógica del servidor: Java y Spring Boot
&nbsp;

El desarrollo del Backend API en el repositorio `viora-platform` y del simulador `viora-telemetry-simulator` se fundamenta en la @googlejava y en las convenciones arquitectónicas de @springbootfeatures:

* **Convenciones de nomenclatura:** Los nombres de clases, interfaces y tipos enumerados se escriben en *UpperCamelCase* (ej. `CropLoadAssessmentService`, `TelemetryRecord`). Los métodos y variables locales adoptan *lowerCamelCase* (ej. `calculateBearingIndex`, `plotId`). Las constantes inmutables y valores de enumeración se definen en mayúsculas sostenidas con guion bajo (*CONSTANT\_CASE*, ej. `MAX_SAMPLE_INTERVAL_HOURS`).
* **Bloques y control de flujo:** Es obligatorio el uso de llaves delimitadoras `{}` en todas las estructuras de control (`if`, `else`, `for`, `while`), incluso en sentencias que contengan una única instrucción.
* **Documentación Javadoc:** Toda clase de dominio, servicio de aplicación y controlador REST público debe contar con bloques de documentación Javadoc (`/** ... */`), especificando las etiquetas `@param`, `@return` y `@throws` cuando corresponda.
* **Estructura modular en Spring Boot:** Se ubica la clase anotada con `@SpringBootApplication` en el paquete raíz (`pe.edu.upc.viora.platform`) para habilitar el escaneo automático de componentes. Se aplica inyección de dependencias mediante constructores y se estructuran los paquetes respetando la separación en capas de la arquitectura limpia y DDD táctico.

\newpage

#### Cliente móvil nativo: Kotlin y Android
&nbsp;

El desarrollo del cliente móvil Android en `viora-mobile-android` se rige por la guía oficial @androidkotlinstyle de Google:

* **Nomenclatura en Kotlin:** Clases, objetos y funciones componibles de Jetpack Compose adoptan *PascalCase* (ej. `PlotCardView`, `ThinningScheduleScreen`). Las propiedades y funciones estándar emplean *camelCase* (ej. `fetchOfflineSamples()`).
* **Inmutabilidad:** Se prioriza el uso de variables inmutables (`val`) sobre mutables (`var`), y el empleo de colecciones de solo lectura para salvaguardar el estado de la UI.
* **Compose y corrutinas:** El manejo de concurrencia y flujos asíncronos para operaciones de base de datos local (Room) y peticiones de red se gestiona mediante Kotlin Coroutines y `StateFlow`, delimitando el ciclo de vida en ViewModels.
* **KDoc:** Se utiliza sintaxis KDoc (`/** ... */`) para documentar clases de repositorio, casos de uso y componentes reutilizables de UI.

#### Cliente móvil multiplataforma: Dart y Flutter
&nbsp;

Para la aplicación multiplataforma en `viora-mobile-flutter`, el equipo aplica la guía oficial de estilo @effectivedart:

* **Nomenclatura de archivos y clases:** Los nombres de archivos de código fuente, recursos y carpetas se redactan obligatoriamente en minúsculas con guiones bajos (*snake\_case*, ej. `plot_repository.dart`, `harvest_history_screen.dart`). Las clases, *mixins* y extensiones se definen en *UpperCamelCase* (ej. `AgronomicRecordViewModel`).
* **Identificadores y métodos:** Las funciones, métodos, variables y parámetros se nombran en *lowerCamelCase*. Los miembros privados se prefijan con guion bajo (`_privateField`).
* **Seguridad nula estricta (*Sound Null Safety*):** Todo el código se compila bajo modo estricto de seguridad nula, evitando el operador de aserción no nula (`!`) sin validación previa.
* **Documentación con dartdoc:** Se emplea la convención de barras triples (`///`) para la documentación de cabecera de Widgets, modelos de datos y servicios Dio.

\newpage

### Software Deployment Configuration

\newpage