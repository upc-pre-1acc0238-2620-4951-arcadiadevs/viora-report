## Landing Page & Mobile Application Implementation 

### Sprint 1

#### Sprint Planning 1
&nbsp;

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma Discord. El propósito central de esta reunión fue alinear los esfuerzos técnicos con la estrategia de captación comercial y validación agronómica temprana de Viora, definiendo un compromiso de trabajo basado en una velocidad de 130 puntos de historia para abordar un alcance priorizado de 120 puntos de historia del Product Backlog (14 puntos en la Landing Page completa, 9 puntos en spikes de viabilidad técnica, 33 puntos en historias de usuario de las aplicaciones cliente y 64 puntos en technical stories del backend fundacional).

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
\textbf{Sprint 1 Goal} & \textbf{Nuestro enfoque se orienta a} presentar de manera transparente y diferenciada la propuesta de valor y planes de Viora a potenciales clientes, posibilitar la digitalización temprana de predios y captura de datos en campo sin conexión para productores olivareros, y proveer una suite robusta de servicios web desacoplados para el equipo de desarrollo de aplicaciones móviles. \textbf{Creemos que esto entrega} confianza técnica y comercial a los nuevos visitantes para decidir su suscripción con tarifas claras en moneda nacional (PEN), autonomía operativa inmediata a los agricultores para catastrar sus parcelas y muestrear cuajado a pie de árbol incluso sin cobertura de internet, y celeridad de integración a los desarrolladores clientes mediante contratos API estandarizados y simulaciones agroclimáticas funcionales. \textbf{Esto se confirmará cuando} los visitantes del sitio web consulten las tarifas y características del producto en no más de tres interacciones y accedan a los enlaces oficiales de descarga, los productores olivareros registren una parcela georreferenciada y almacenen muestreos locales desconectados en las aplicaciones móviles nativa (Kotlin) y multiplataforma (Flutter), y el equipo de aplicaciones cliente consuma satisfactoriamente los endpoints documentados con OpenAPI en Swagger UI cubriendo el 70\% del backend planificado sin intervención manual del equipo de base de datos. \\ \hline
\textbf{Sprint 1 Velocity} & 130 \\ \hline
\textbf{Sum of Story Points} & 120 \\ \hline
\end{tabular}
\caption*{\textit{Nota.} Elaboración propia.}
\end{table}

#### Aspect Leaders and Collaborators 
&nbsp;

Para maximizar la eficiencia en la ejecución, garantizar la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 1, se definió la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna con precisión un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos funcionales y arquitecturales priorizados en esta primera iteración.

En el presente Sprint 1, los aspectos seleccionados comprenden los dominios de software y Bounded Contexts que concentran los 45 ítems de trabajo comprometidos:

* **Communications (Landing Page):** Abarca la maquetación semántica, diseño visual responsivo, localización (i18n) y despliegue continuo en Vercel del sitio web comercial e institucional de Viora (`viora-landing-page`), asegurando la presentación de la propuesta de valor y captación de clientes.
* **Orchard (Olive Orchard and Plot Management):** Comprende el catastro y delimitación georreferenciada de predios olivareros mediante coordenadas GPS y polígonos GeoJSON, tipificación varietal (Criolla y Sevillana) y densidad arbórea, articulando los contratos REST del backend y las vistas cartográficas cliente.
* **Telemetry (Agroclimatic Telemetry and Sensor Monitoring):** Involucra el ciclo de vida de nodos sensores virtuales a nivel de parcela, consulta de series temporales agroclimáticas y consumo de pronósticos meteorológicos integrados al simulador IoT.
* **Phenology (Phenology and Historical Bearing Analytics):** Cubre la memoria histórica de cosechas plurianuales, la formulación matemática del Índice de Vecería ($BBI$) y el spike de viabilidad técnica sobre acumulación de frío invernal mediante el modelo dinámico de Erez (SPK01).
* **Thinning (Crop Load Regulation and Thinning Advisory):** Representa el núcleo de valor primario (*Core Domain*), abarcando la toma de muestras de frutos cuajados a pie de árbol, la evaluación de representatividad estadística, la emisión de prescripciones técnicas de aclareo antes del endurecimiento del carozo y el spike de persistencia local offline-first con SQLite (SPK02).
* **Subscription (Subscription and Cooperative Membership):** Comprende la gestión de códigos corporativos de activación gremial, el control del cupo de hectáreas autorizadas y la investigación preliminar de la pasarela de pagos con Mercado Pago Sandbox (SPK03).
* **Shared (Shared Architecture \& Core Foundations):** Agrupa los fundamentos arquitecturales transversales en Spring Boot 3 / Java 21, incluyendo el controlador global de excepciones bajo RFC 7807, las convenciones de persistencia JPA y la documentación interactiva OpenAPI / Swagger UI.

A continuación, en la \autoref{tab:lacx-sprint-1} se expone la matriz de asignación de liderazgo y colaboración de ArcadiaDevs para el Sprint 1:

\begin{table}[H]
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 1} \label{tab:lacx-sprint-1}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\begin{tabular}{|p{4.2cm}|p{2.3cm}|c|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{Orchard} & \textbf{Telem.} & \textbf{Pheno.} & \textbf{Thin.} & \textbf{Subsc.} & \textbf{Shared} \\ \hline
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