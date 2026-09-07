## Strategic-Level Domain-Driven Design

### EventStorming

Para la construcción del EventStorming, se coordinó la obtención de una primera versión integral del modelo de dominio de Viora a través de un proceso estructurado en 9 etapas consecutivas, transitando desde la exploración divergente hasta la delimitación formal de las fronteras transaccionales.

\noindent \textbf{Paso 1: Exploración y Descubrimiento de Domain Events}

Exploración abierta y divergente de todos los hechos inmutables significativos ocurridos en el ciclo agronómico, productivo y comercial del olivo.

\begin{figure}[H]
\caption{EventStorming - Paso 1: Exploración de Domain Events (Brainstorming).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/1-domain-events.jpg}
\caption*{\textit{Nota.} Dispersión inicial de 51 eventos de dominio capturados en post-its naranjas durante la sesión de brainstorming. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 2: Secuenciación y Definición de Timelines}

Ordenamiento cronológico continuo de los eventos de izquierda a derecha, estructurado en ocho líneas de tiempo concurrentes según las fases fenológicas y operativas del cultivo.

\begin{figure}[H]
\caption{EventStorming - Paso 2: Estructuración de Timelines del Dominio.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/2-timeline.jpg}
\caption*{\textit{Nota.} Secuenciación temporal de los 51 eventos en 8 timelines interconectadas mediante dependencias causales. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 3: Identificación de Pain Points}

Señalización sistemática de las fricciones operativas, cuellos de botella, riesgos fisiológicos e incertidumbres críticas que enfrentan productores y gestores técnicos.

\begin{figure}[H]
\caption{EventStorming - Paso 3: Identificación de Pain Points (Vista general).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/3-pain-points.jpg}
\caption*{\textit{Nota.} Distribución panorámica de los 24 pain points identificados a lo largo de las timelines del sistema. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 3: Identificación de Pain Points (Primera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/3-pain-points-1.jpg}
\caption*{\textit{Nota.} Detalle del tablero de pain points: primera división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 3: Identificación de Pain Points (Segunda división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/3-pain-points-2.jpg}
\caption*{\textit{Nota.} Detalle del tablero de pain points: segunda división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 3: Identificación de Pain Points (Tercera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/3-pain-points-3.jpg}
\caption*{\textit{Nota.} Detalle del tablero de pain points: tercera división. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 4: Identificación de Pivotal Events}

Determinación de los hitos agronómicos y de negocio de no retorno que marcan la culminación de una etapa y desbloquean la transición hacia la siguiente fase operativa.

\begin{figure}[H]
\caption{EventStorming - Paso 4: Identificación de Pivotal Events.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/4-pivotal-events.jpg}
\caption*{\textit{Nota.} Delimitación de los 11 pivotal events que actúan como umbrales divisores de fase en el ciclo productivo. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 5: Identificación de Commands y Actores}

Especificación de las intenciones de acción invocadas por usuarios clave (productores y asesores técnicos) que provocan cambios de estado en el sistema.

\begin{figure}[H]
\caption{EventStorming - Paso 5: Comandos y Actores (Vista general).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/5-commands-actors.jpg}
\caption*{\textit{Nota.} Incorporación de los 32 comandos (post-its azules) y etiquetas de actores (post-its amarillos) sobre el flujo de eventos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 5: Comandos y Actores (Primera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/5-commands-actors-1.jpg}
\caption*{\textit{Nota.} Detalle del tablero de comandos y actores: primera división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 5: Comandos y Actores (Segunda división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/5-commands-actors-2.jpg}
\caption*{\textit{Nota.} Detalle del tablero de comandos y actores: segunda división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 5: Comandos y Actores (Tercera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/5-commands-actors-3.jpg}
\caption*{\textit{Nota.} Detalle del tablero de comandos y actores: tercera división. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 6: Definición de Policies}

Modelado de las reglas reactivas de negocio que ejecutan comandos de forma autónoma ante la ocurrencia de eventos de dominio bajo condiciones específicas.

\begin{figure}[H]
\caption{EventStorming - Paso 6: Políticas Reactivas (Vista general).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/6-policies.jpg}
\caption*{\textit{Nota.} Mapeo panorámico de las 15 políticas reactivas (post-its lila) que orquestan las sagas y la automatización agronómica. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 6: Políticas Reactivas (Primera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/6-policies-1.jpg}
\caption*{\textit{Nota.} Detalle del tablero de políticas reactivas: primera división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 6: Políticas Reactivas (Segunda división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/6-policies-2.jpg}
\caption*{\textit{Nota.} Detalle del tablero de políticas reactivas: segunda división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 6: Políticas Reactivas (Tercera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/6-policies-3.jpg}
\caption*{\textit{Nota.} Detalle del tablero de políticas reactivas: tercera división. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 7: Identificación de Read Models}

Definición de las proyecciones de información y pantallas consolidadas que los usuarios consultan para evaluar el estado del lote y tomar decisiones operativas.

\begin{figure}[H]
\caption{EventStorming - Paso 7: Read Models (Vista general).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/7-read-models.jpg}
\caption*{\textit{Nota.} Ubicación de los 15 read models (post-its verdes) que proporcionan el contexto informativo previo a la ejecución de comandos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 7: Read Models (Primera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/7-read-models-1.jpg}
\caption*{\textit{Nota.} Detalle del tablero de read models: primera división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 7: Read Models (Segunda división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/7-read-models-2.jpg}
\caption*{\textit{Nota.} Detalle del tablero de read models: segunda división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 7: Read Models (Tercera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/7-read-models-3.jpg}
\caption*{\textit{Nota.} Detalle del tablero de read models: tercera división. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 8: Identificación de Sistemas Externos}

Delimitación de las plataformas de terceros y servicios auxiliares fuera de la frontera de Viora con los que el ecosistema intercambia datos o delega transacciones.

\begin{figure}[H]
\caption{EventStorming - Paso 8: Sistemas Externos (Vista general).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/8-external-systems.jpg}
\caption*{\textit{Nota.} Integración de los 4 sistemas externos (post-its rosa): Mercado Pago Checkout Pro, Mapbox GIS, SENAMHI Weather API y SendGrid Mail Service. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 8: Sistemas Externos (Primera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/8-external-systems-1.jpg}
\caption*{\textit{Nota.} Detalle del tablero de sistemas externos: primera división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 8: Sistemas Externos (Segunda división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/8-external-systems-2.jpg}
\caption*{\textit{Nota.} Detalle del tablero de sistemas externos: segunda división. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{EventStorming - Paso 8: Sistemas Externos (Tercera división).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/8-external-systems-3.jpg}
\caption*{\textit{Nota.} Detalle del tablero de sistemas externos: tercera división. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 9: Definición de Aggregates}

Encapsulamiento de entidades y objetos de valor en unidades transaccionales atómicas responsables de salvaguardar las invariantes del negocio en cada subdominio.

\begin{figure}[H]
\caption{EventStorming - Paso 9: Agregados de Dominio.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/9-aggregates.jpg}
\caption*{\textit{Nota.} Delimitación de los 10 agregados de dominio (post-its amarillos grandes) como guardianes de consistencia entre comandos y eventos. Elaboración propia.}
\end{figure}

#### Candidate Context Discovery
&nbsp;

A partir del modelo de EventStorming realizado en Miro, se llevó a cabo una sesión de \textit{Candidate Context Discovery} para identificar y formalizar los bounded contexts de la solución Viora. Se utilizó principalmente la técnica estratégica \textit{look-for-pivotal-events} durante la sesión.

Primero, se buscaron eventos clave que indiquen cambios de estado e hitos irreversibles entre diferentes partes del proceso del negocio:

\begin{figure}[H]
\caption{Candidate Context Discovery - Paso 1: Búsqueda de Pivotal Events.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/1-pivot.jpg}
\caption*{\textit{Nota.} Identificación de los pivotal events que marcan puntos de inflexión y cambios de fase cualitativos en el ciclo de vida del olivar y la plataforma. Elaboración propia.}
\end{figure}

<br>

Luego, se agruparon los eventos de acuerdo a los principales cambios de contexto y cohesión funcional:

\begin{figure}[H]
\caption{Candidate Context Discovery - Paso 2: Agrupación de eventos por afinidad funcional.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/2-groups.jpg}
\caption*{\textit{Nota.} Formación de clústeres preliminares de eventos alrededor de los eventos pivote según la naturaleza de sus responsabilidades de negocio. Elaboración propia.}
\end{figure}

<br>

Se trazaron fronteras alrededor de los grupos identificados, estableciendo los límites iniciales de los bounded contexts:

\begin{figure}[H]
\caption{Candidate Context Discovery - Paso 3: Trazado de fronteras de contextos iniciales.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/3-boundaries.jpg}
\caption*{\textit{Nota.} Delimitación de las fronteras semánticas iniciales que aíslan los modelos conceptuales y la consistencia transaccional. Elaboración propia.}
\end{figure}

<br>

Finalmente, se seleccionaron nombres ubicuos para los bounded contexts, dando como resultado la definición formal de 9 bounded contexts y la versión final del EventStorming:

\begin{figure}[H]
\caption{Candidate Context Discovery - Paso 4: Definición final de los 9 Bounded Contexts.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/4-bc.jpg}
\caption*{\textit{Nota.} Mural general del EventStorming con los 9 bounded contexts delimitados y nombrados según el lenguaje ubicuo del dominio olivarero. Elaboración propia.}
\end{figure}

<br>

A continuación, se explica en qué consiste cada uno de los 9 bounded contexts identificados para el ecosistema Viora:

\newpage

\noindent \textbf{Identity and Access Management (IAM):} También llamado "IAM", este bounded context genérico contiene el proceso de autenticación segura, inicio de sesión persistente, renovación de sesiones, recuperación de credenciales mediante tokens efímeros y asignación de privilegios de acceso según el rol.

\begin{figure}[H]
\caption{Bounded Context: Identity and Access Management (IAM).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/1-iam.jpg}
\caption*{\textit{Nota.} Elementos de dominio, agregados y flujos pertenecientes al bounded context de IAM. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{User Profiles:} También llamado "Profiles", este bounded context de soporte contiene el proceso de registro y formalización de la identidad personal del agricultor, administración de nombres completos, país de residencia y validación estricta de números telefónicos de contacto bajo la norma internacional E.164.

\begin{figure}[H]
\caption{Bounded Context: User Profiles (Profiles).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/2-up.jpg}
\caption*{\textit{Nota.} Elementos de dominio y agregado Profile para la gestión de identidad humana y canales de contacto. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Subscription and Cooperative Membership:} También llamado "Subscription", este bounded context genérico contiene el proceso de suscripción comercial al Plan Productor mediante pasarela de pagos digital (Mercado Pago Checkout Pro) en Soles (PEN), canje de códigos corporativos patrocinados por cooperativas y fiscalización del cupo de hectáreas catastradas autorizadas.

\begin{figure}[H]
\caption{Bounded Context: Subscription and Cooperative Membership (Subscription).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/3-scm.jpg}
\caption*{\textit{Nota.} Elementos de dominio para la monetización SaaS, pasarela de pagos y gestión de membresías. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Olive Orchard and Plot Management:} También llamado "Orchard", este bounded context de soporte contiene el proceso de delimitación georreferenciada de predios y cuarteles olivareros mediante polígonos cerrados GeoJSON, cálculo de cabida neta en hectáreas, tipificación de variedades cultivadas (Criolla o Sevillana) y cómputo de la densidad arbórea por hectárea.

\begin{figure}[H]
\caption{Bounded Context: Olive Orchard and Plot Management (Orchard).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/4-oopm.jpg}
\caption*{\textit{Nota.} Elementos de dominio para el catastro predial y la estructuración dendrométrica. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Agroclimatic Telemetry and Sensor Monitoring:} También llamado "Telemetry", este bounded context de soporte contiene el proceso de vinculación y calibración de dispositivos sensores edáficos virtuales (sondas a 30 y 60 cm), ingesta continua de lecturas horarias de humedad radicular y microclima, integración de pronósticos a 7 días y activación automática de alertas ante estrés hídrico y choques térmicos en floración.

\begin{figure}[H]
\caption{Bounded Context: Agroclimatic Telemetry and Sensor Monitoring (Telemetry).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/5-atsm.jpg}
\caption*{\textit{Nota.} Elementos de dominio para la sensometría edáfica, series temporales y vigilancia climática. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Phenology and Historical Bearing Analytics:} También llamado "Phenology", este bounded context del core agronómico contiene el proceso de registro de memorias plurianuales de cosecha, cálculo oficial del Índice de Vecería ($BBI$ de Hoblyn et al., 1936) y cómputo de Porciones de Frío invernales (Modelo de Erez) para detectar anomalías térmicas por efecto ENOS y reajustar el potencial de floración.

\begin{figure}[H]
\caption{Bounded Context: Phenology and Historical Bearing Analytics (Phenology).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/6-phba.jpg}
\caption*{\textit{Nota.} Elementos de dominio para la memoria productiva de vecería y el cómputo bioclimático de frío de Erez. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Crop Load Regulation and Thinning Advisory:} También llamado "Thinning", este bounded context representa el núcleo de valor primario (\textit{Core Domain}) de Viora y contiene el proceso de muestreo a pie de árbol de frutos cuajados, evaluación de representatividad estadística, determinación de carga admisible sostenible, emisión de prescripciones de aclareo frutal, monitoreo de la ventana límite previa al endurecimiento del carozo y auditoría de la labor ejecutada.

\begin{figure}[H]
\caption{Bounded Context: Crop Load Regulation and Thinning Advisory (Thinning).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/7-clrta.jpg}
\caption*{\textit{Nota.} Elementos del Core Domain primario para la regulación de carga frutal y mitigación de la alternancia. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Harvest Settlement and Performance Reporting:} También llamado "Harvest", este bounded context contiene el proceso de asentamiento definitivo de la cosecha anual (kilos de aceituna verde y negra recolectados), evaluación de la curva interanual de estabilización productiva y generación del expediente técnico agronómico oficial certificado en PDF.

\begin{figure}[H]
\caption{Bounded Context: Harvest Settlement and Performance Reporting (Harvest).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/8-hspr.jpg}
\caption*{\textit{Nota.} Elementos de dominio para el cierre de campaña, curvas de estabilización y generación de expedientes técnicos. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Cooperative Operations and Territorial Intelligence:} También llamado "Territory", este bounded context de soporte contiene el proceso de administración gremial del padrón de socios olivicultores, emisión y control de lotes de códigos corporativos, supervisión del semáforo territorial de riesgo fenológico y cálculo de proyecciones tempranas de volumen de acopio colectivo.

\begin{figure}[H]
\caption{Bounded Context: Cooperative Operations and Territorial Intelligence (Territory).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/event-storming/ccd/bc/9-coti.jpg}
\caption*{\textit{Nota.} Elementos de dominio para la inteligencia territorial, supervisión sectorial y estimaciones de acopio gremial. Elaboración propia.}
\end{figure}

#### Domain Message Flows Modeling
&nbsp;

[Domain Storytelling modeling]

#### Bounded Context Canvases
&nbsp;

[Canvases for each Bounded Context]

### Context Mapping
[Context Map diagram and explanation of patterns like Anti-corruption Layer, Shared Kernel, etc.]

### Software Architecture
[C4 Model architecture diagrams]

#### Software Architecture Context Level Diagrams
&nbsp;

[Context Level Diagram]

#### Software Architecture Container Level Diagrams
&nbsp;

[Container Level Diagram]

#### Software Architecture Deployment Diagrams
&nbsp;

[Deployment Diagram]
