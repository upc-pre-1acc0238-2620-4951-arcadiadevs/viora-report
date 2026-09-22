## Landing Page & Mobile Application Implementation 

### Sprint 1

#### Sprint Planning 1
&nbsp;

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma Discord. El propósito central de esta reunión fue alinear los esfuerzos técnicos con la estrategia de captación comercial y validación agronómica temprana de Viora, definiendo un compromiso de trabajo basado en una velocidad de 130 puntos de historia para abordar un alcance priorizado de 119 puntos de historia del Product Backlog (14 puntos en la Landing Page completa, 6 puntos en spikes de viabilidad técnica de campo, 33 puntos en historias de usuario de las aplicaciones cliente móviles del productor olivarero y 66 puntos en technical stories del backend fundacional y agronómico).

A continuación, en la \autoref{tab:sprint-planning-1} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación y el Sprint Goal formulado bajo el estándar de Scrum.org para garantizar que este primer incremento de software entregue valor tangible a los productores y organizaciones olivareras.

\begin{table}[H]
\caption{Resumen de la sesión de planificación del Sprint 1 (Sprint Planning 1)} \label{tab:sprint-planning-1}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\begin{tabular}{|p{4.2cm}|p{10.8cm}|}
\hline
\textbf{Sprint \#} & Sprint 1 \\ \hline
\textbf{Sprint Planning Background} & Sesión de planificación virtual para definir los compromisos del primer incremento de software de Viora. \\ \hline
\textbf{Date} & 2026-09-21 \\ \hline
\textbf{Time} & 07:00 AM \\ \hline
\textbf{Location} & Discord (Virtual) \\ \hline
\textbf{Prepared By} & Trinidad León, Jahat Jassiel \\ \hline
\textbf{Attendees (to planning meeting)} & Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Victor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad León, Jahat Jassiel \\ \hline
\textbf{Sprint 0 Review Summary} & Conclusión de la conceptualización de producto, definición del Product Backlog priorizado y formalización de la línea base arquitectural DDD y SCM. \\ \hline
\textbf{Sprint 0 Retrospective Summary} & El equipo identificó la necesidad de mitigar tempranamente la incertidumbre en algoritmos agroclimáticos y persistencia offline antes de abordar la lógica de negocio completa. \\ \hline
\textbf{Sprint 1 Goal} & \textbf{Nuestro enfoque se orienta a} presentar de manera comercial y diferenciada la propuesta de valor y tarifas de Viora a visitantes y organizaciones olivareras, habilitar la digitalización y captura de datos agronómicos en campo sin conexión para el segmento de productores olivareros, e incrementar las capacidades de integración y desarrollo mediante servicios web desacoplados para el equipo de aplicaciones cliente. \textbf{Creemos que esto entrega} mayor aceleración en la captación y conversión de clientes calificados interesados en los planes de suscripción, reducción del costo operativo de levantamiento de datos en predio y validación temprana de mercado para los productores agrícolas, y celeridad de construcción técnica con contratos estables para los desarrolladores de software. \textbf{Esto se confirmará cuando} los visitantes del sitio web consulten las tarifas en moneda nacional (PEN) en no más de tres interacciones y accedan a los enlaces de descarga directa, los productores olivareros registren exitosamente una parcela georreferenciada y almacenen muestreos de cuajado locales desconectados en la aplicación móvil nativa (Kotlin con Jetpack Compose y Room SQLite), y los desarrolladores clientes consuman los endpoints documentados con OpenAPI en Swagger UI cubriendo más del 70\% de los servicios web del backend fundacional y de gestión agronómica sin requerir intervención del equipo de base de datos. \\ \hline
\textbf{Sprint 1 Velocity} & 130 \\ \hline
\textbf{Sum of Story Points} & 119 \\ \hline
\end{tabular}
\caption*{\textit{Nota.} Elaboración propia.}
\end{table}

#### Aspect Leaders and Collaborators 
&nbsp;

Para maximizar la eficiencia en la ejecución, garantizar la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 1, se definió la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna con precisión un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos funcionales y arquitecturales priorizados en esta primera iteración.

En el presente Sprint 1, los aspectos seleccionados comprenden los dominios de software y Bounded Contexts que concentran los 45 ítems de trabajo comprometidos:

* **Communications (Landing Page):** Abarca la maquetación semántica, diseño visual responsivo, localización (i18n) y despliegue continuo en Vercel del sitio web comercial e institucional de Viora (`viora-landing-page`), asegurando la presentación de la propuesta de valor y captación de clientes.
* **Orchard (Olive Orchard and Plot Management):** Comprende el catastro y delimitación georreferenciada de predios olivareros mediante coordenadas GPS y polígonos GeoJSON, tipificación varietal (Criolla y Sevillana), densidad arbórea y rectificación de datos, articulando los contratos REST del backend y las vistas cartográficas cliente.
* **Telemetry (Agroclimatic Telemetry and Sensor Monitoring):** Involucra el ciclo de vida de nodos sensores virtuales a nivel de parcela, calibración y factores de corrección edafoclimática (TS42), consulta de series temporales agroclimáticas y consumo de pronósticos meteorológicos integrados al simulador IoT.
* **Phenology (Phenology and Historical Bearing Analytics):** Cubre la memoria histórica de cosechas plurianuales, rectificación de pesajes históricos (TS43), la formulación matemática del Índice de Vecería ($BBI$) y el spike de viabilidad técnica sobre acumulación de frío invernal mediante el modelo dinámico de Erez (SPK01).
* **Thinning (Crop Load Regulation and Thinning Advisory):** Representa el núcleo de valor primario (*Core Domain*), abarcando la toma de muestras de frutos cuajados a pie de árbol, la evaluación de representatividad estadística, la emisión de prescripciones técnicas de aclareo antes del endurecimiento del carozo y el spike de persistencia local offline-first con SQLite (SPK02).
* **Harvest (Harvest Settlement and Performance Reporting):** Comprende el asentamiento formal de fin de campaña (TS39) y la certificación criptográfica SHA-256 del expediente inmutable de parcela (TS40) para certificar el rendimiento productivo.
* **Shared (Shared Architecture \& Core Foundations):** Agrupa los fundamentos arquitecturales transversales en Spring Boot 3 / Java 21, incluyendo el controlador global de excepciones bajo RFC 7807, las convenciones de persistencia JPA y la documentación interactiva OpenAPI / Swagger UI.

A continuación, en la \autoref{tab:lacx-sprint-1} se expone la matriz de asignación de liderazgo y colaboración de ArcadiaDevs para el Sprint 1:

\begin{table}[H]
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 1} \label{tab:lacx-sprint-1}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\begin{tabular}{|p{4.2cm}|p{2.3cm}|c|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{Orchard} & \textbf{Telem.} & \textbf{Pheno.} & \textbf{Thin.} & \textbf{Harv.} & \textbf{Shared} \\ \hline
Paredes Maza, Victor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & C & C & C \\ \hline
Espada Lazo, Piero Anthony & espadita2510 & C & \textbf{L} & C & C & C & C & \textbf{L} \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & C & C & \textbf{L} & \textbf{L} & C & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & C & \textbf{L} & C & C & C & C \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & C & C & C & C & \textbf{L} & C \\ \hline
\end{tabular}
\caption*{\textit{Nota.} L = Leader (Líder responsable del aspecto); C = Collaborator (Colaborador técnico). Elaboración propia.}
\end{table}

#### Sprint Backlog 1
&nbsp;

#### Development Evidence for Sprint Review
&nbsp;

#### Testing Suite Evidence for Sprint Review 
&nbsp;

#### Execution Evidence for Sprint Review 
&nbsp;

#### Services Documentation Evidence for Sprint Review 
&nbsp;

#### Software Deployment Evidence for Sprint Review 
&nbsp;

#### Team Collaboration Insights during Sprint 
&nbsp;

\clearpage