## Strategic-Level Domain-Driven Design

### EventStorming

Para la construcción del EventStorming, se coordinó la obtención de una primera versión integral del modelo de dominio de Viora a través de un proceso estructurado en 9 etapas consecutivas, transitando desde la exploración divergente hasta la delimitación formal de las fronteras transaccionales.

\noindent \textbf{Paso 1: Exploración y Descubrimiento de Domain Events}

Exploración abierta y divergente de todos los hechos inmutables significativos ocurridos en el ciclo agronómico, productivo y comercial del olivo.

\begin{figure}[H]
\caption{EventStorming - Paso 1: Exploración de Domain Events (Brainstorming).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/1-domain-events.jpg}
\caption*{\textit{Nota.} Dispersión inicial de 50 eventos de dominio capturados en post-its naranjas durante la sesión de brainstorming. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 2: Secuenciación y Definición de Timelines}

Ordenamiento cronológico continuo de los eventos de izquierda a derecha, estructurado en ocho líneas de tiempo concurrentes según las fases fenológicas y operativas del cultivo.

\begin{figure}[H]
\caption{EventStorming - Paso 2: Estructuración de Timelines del Dominio.}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/2-timeline.jpg}
\caption*{\textit{Nota.} Secuenciación temporal de los 50 eventos en 8 timelines interconectadas mediante dependencias causales. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 3: Identificación de Pain Points}

Señalización sistemática de las fricciones operativas, cuellos de botella, riesgos fisiológicos e incertidumbres críticas que enfrentan productores y gestores técnicos.

\begin{figure}[H]
\caption{EventStorming - Paso 3: Identificación de Pain Points (Vista general).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/3-pain-points.jpg}
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
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/4-pivotal-events.jpg}
\caption*{\textit{Nota.} Delimitación de los 10 pivotal events que actúan como umbrales divisores de fase en el ciclo productivo. Elaboración propia.}
\end{figure}

<br>

\noindent \textbf{Paso 5: Identificación de Commands y Actores}

Especificación de las intenciones de acción invocadas por usuarios clave (productores y asesores técnicos) que provocan cambios de estado en el sistema.

\begin{figure}[H]
\caption{EventStorming - Paso 5: Comandos y Actores (Vista general).}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/5-commands-actors.jpg}
\caption*{\textit{Nota.} Incorporación de los 31 comandos (post-its azules) y etiquetas de actores (post-its amarillos) sobre el flujo de eventos. Elaboración propia.}
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
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/6-policies.jpg}
\caption*{\textit{Nota.} Mapeo panorámico de las 14 políticas reactivas (post-its lila) que orquestan las sagas y la automatización agronómica. Elaboración propia.}
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
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/7-read-models.jpg}
\caption*{\textit{Nota.} Ubicación de los 14 read models (post-its verdes) que proporcionan el contexto informativo previo a la ejecución de comandos. Elaboración propia.}
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
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/8-external-systems.jpg}
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
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/9-aggregates.jpg}
\caption*{\textit{Nota.} Delimitación de los 9 agregados de dominio (post-its amarillos grandes) como guardianes de consistencia entre comandos y eventos. Elaboración propia.}
\end{figure}

#### Candidate Context Discovery
&nbsp;

[Bounded contexts discovery process]

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
