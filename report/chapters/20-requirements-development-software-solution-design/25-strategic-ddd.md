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

Los Domain Message Flows de Viora describen el intercambio de mensajes entre los actores, la aplicación móvil, los sistemas externos y los bounded contexts definidos durante el diseño estratégico. Mediante una representación de Domain Storytelling, cada diagrama presenta un escenario concreto e identifica el emisor, el receptor, el orden de los mensajes y la información significativa que transportan.

Los ocho escenarios seleccionados abarcan la regulación de carga frutal, la evaluación de la alternancia, el seguimiento agroclimático, la ejecución del raleo, el cierre de cosecha, la generación de dosieres y los procesos de suscripción y recuperación de acceso. Los comandos se representan mediante post-its celestes, los eventos mediante post-its naranjas y sus contenidos mediante notas amarillas. Cuando la aplicación móvil aparece en distintas posiciones, se representa el mismo sistema en diferentes momentos o sesiones del flujo.

A continuación, se presentan los escenarios que muestran colaboración entre bounded contexts:

\noindent \textbf{Escenario 1: Sincronizar el muestreo, prescribir el raleo y actualizar el riesgo y el acopio cooperativo.}

En este flujo se muestra la interacción entre los bounded contexts Crop Load Regulation and Thinning Advisory y Cooperative Operations and Territorial Intelligence cuando el productor sincroniza un lote de muestras mediante la aplicación móvil. El escenario considera un muestreo suficiente y representativo, una parcela cooperativa y una situación de sobrecarga dentro de la ventana de raleo. A partir de la información recibida, Viora emite la prescripción y actualiza la proyección de acopio y la matriz territorial de riesgo, comunicando los resultados al productor y al gestor técnico.

\begin{figure}[H]
\caption{Domain Message Flow 1: Sincronización de muestreo, prescripción de raleo y actualización cooperativa.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-1.png}
\caption*{\textit{Nota.} Colaboración entre Thinning y Territory a partir de una única solicitud de sincronización del productor. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 2: Registrar el histórico y ajustar la evaluación de carga y el raleo.}

En este flujo se muestra la colaboración entre los bounded contexts Phenology and Historical Bearing Analytics, Crop Load Regulation and Thinning Advisory y Cooperative Operations and Territorial Intelligence. El productor registra un histórico suficiente para evaluar el índice de vecería; este resultado permite reevaluar la carga sostenible utilizando el muestreo de la campaña actual, previamente disponible. Para el caso de sobrecarga y ventana de raleo vigente, Viora emite una prescripción y actualiza la matriz de riesgo cooperativo. La aplicación comunica al productor el índice y la recomendación, y al gestor técnico la evaluación territorial.

\begin{figure}[H]
\caption{Domain Message Flow 2: Registro histórico, evaluación de alternancia y ajuste del raleo.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-2.png}
\caption*{\textit{Nota.} Interacción entre Phenology, Thinning y Territory con histórico suficiente y muestreo actual previamente registrado. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 3: Incorporar telemetría y reajustar el potencial floral ante una anomalía invernal.}

En este flujo se muestra la interacción entre los bounded contexts Agroclimatic Telemetry and Sensor Monitoring y Phenology and Historical Bearing Analytics. El proceso comienza automáticamente con la incorporación de lecturas de un nodo virtual previamente vinculado y calibrado. Cuando se dispone de la serie necesaria, se solicita el cálculo de la acumulación diaria de frío. El escenario representa la detección de una anomalía térmica invernal y el posterior reajuste del potencial floral, cuyos resultados se comunican a la aplicación móvil para su seguimiento.

\begin{figure}[H]
\caption{Domain Message Flow 3: Ingesta de telemetría y reajuste del potencial floral.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-3.png}
\caption*{\textit{Nota.} Flujo automático entre Telemetry y Phenology para el caso de anomalía térmica invernal. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 4: Confirmar el raleo y actualizar la proyección de acopio cooperativo.}

En este flujo se muestra la colaboración entre los bounded contexts Crop Load Regulation and Thinning Advisory y Cooperative Operations and Territorial Intelligence. El productor confirma la ejecución de un raleo asociado a una prescripción existente, realizado dentro del plazo y en una parcela vinculada a una cooperativa. Tras registrar la ejecución, la política ReprojectCooperativeIntakeOnThinningExecution del contexto Thinning solicita actualizar la proyección mediante el comando existente ProjectCooperativeIntakeVolume. La aplicación comunica la confirmación al productor y la proyección actualizada al gestor técnico.

\begin{figure}[H]
\caption{Domain Message Flow 4: Confirmación del raleo y reajuste del acopio cooperativo.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-4.png}
\caption*{\textit{Nota.} La colaboración se define mediante la política de recálculo de acopio posterior a la confirmación del raleo, conservando los comandos y eventos existentes. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 5: Cerrar la cosecha, evaluar la estabilización y actualizar el acopio.}

En este flujo se muestra la interacción entre los bounded contexts Harvest Settlement and Performance Reporting y Cooperative Operations and Territorial Intelligence. El productor registra el resultado final de una campaña cosechada, correspondiente a una parcela cooperativa y con histórico suficiente para comparar su evolución. El cierre permite evaluar la curva de estabilización productiva y aporta información a la proyección de acopio. La aplicación comunica al productor el cierre y la evaluación, mientras el gestor técnico recibe la proyección cooperativa actualizada.

\begin{figure}[H]
\caption{Domain Message Flow 5: Cierre de cosecha, evaluación de estabilización y actualización del acopio.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-5.png}
\caption*{\textit{Nota.} La evaluación de estabilización y la actualización cooperativa se derivan del cierre de campaña sin una segunda solicitud del productor. Elaboración propia.}
\end{figure}

\newpage

Adicionalmente, se presentan escenarios que muestran la colaboración de un bounded context con la aplicación móvil o con sistemas externos:

\noindent \textbf{Escenario 6: El productor o gestor solicita y obtiene el dosier agronómico.}

En este flujo se representa el proceso de generación de un dosier dentro del bounded context Harvest Settlement and Performance Reporting. El productor o gestor técnico solicita el documento para una parcela y un conjunto de campañas mediante la aplicación móvil. El contexto procesa la solicitud con la información disponible y comunica la generación del dosier, incluyendo una referencia al documento. El diagrama muestra la solicitud y su resultado; no detalla consultas a otros bounded contexts.

\begin{figure}[H]
\caption{Domain Message Flow 6: Solicitud y generación del dosier agronómico.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-6.png}
\caption*{\textit{Nota.} Interacción entre el productor o gestor técnico, la aplicación móvil y Harvest para solicitar y obtener el dosier. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 7: Procesar el pago aprobado y activar la suscripción.}

En este flujo se muestra la interacción del sistema externo Payment Gateway Service con el bounded context Subscription and Cooperative Membership. El escenario comienza cuando la pasarela comunica la confirmación de un pago correspondiente a una suscripción identificada. Una vez registrada la aprobación, la política Auto-Activation On Payment Approved activa la suscripción y la aplicación recibe los resultados para mostrar su estado. El diagrama representa el caso exitoso de confirmación y activación, sin incluir el proceso previo de compra.

\begin{figure}[H]
\caption{Domain Message Flow 7: Confirmación de pago y activación de la suscripción.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-7.png}
\caption*{\textit{Nota.} Flujo iniciado por la pasarela de pagos y procesado por Subscription para el caso de pago aprobado. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Escenario 8: El usuario solicita recuperar su contraseña y Viora comunica la solicitud al servicio de correo.}

En este flujo se muestra la interacción entre el usuario, la aplicación móvil, el bounded context Identity and Access Management y el sistema externo Transactional Mail Service. Para el caso de una cuenta existente, el usuario solicita recuperar su contraseña utilizando su correo electrónico. IAM registra la solicitud, comunica al servicio de correo la información necesaria para preparar el mensaje de recuperación y devuelve a la aplicación la confirmación de la solicitud. El escenario no incluye la confirmación de entrega del correo ni el posterior cambio de contraseña.

\begin{figure}[H]
\caption{Domain Message Flow 8: Solicitud de recuperación de contraseña y comunicación al servicio de correo.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/event-storming/dmf/scenery-8.png}
\caption*{\textit{Nota.} El mismo hecho de solicitud de recuperación se comunica al servicio de correo y a la aplicación con el contenido correspondiente a cada destinatario. Elaboración propia.}
\end{figure}

#### Bounded Context Canvases
&nbsp;

Para mejorar la organización del dominio y facilitar una comunicación consistente, se elaboraron los Bounded Context Canvases para cada subdominio de Viora. Estos canvases delimitan claramente las responsabilidades, establecen el lenguaje ubicuo y los modelos clave, y describen los puntos de integración y los flujos de mensajes entre contextos delimitados, ordenados de acuerdo a su importancia estratégica para el negocio (iniciando por los subdominios Core diferenciadores y concluyendo con los genéricos de plataforma). Los diagramas que siguen consolidan estas decisiones y sirven como guía para alinear la arquitectura, las interfaces y la evolución técnica del sistema.

\begin{figure}[H]
\caption{Bounded Context Canvas: Leyenda de Notación y Convenciones Visuales.}
\vspace{0.25cm}
\centering
\includegraphics[width=0.70\textwidth]{report/assets/bounded-context-canvases/00-legend.png}
\caption*{\textit{Nota.} Convención de colores para mensajes (comandos en azul, eventos en naranja, políticas en lila) y colaboradores (nubes para contextos internos, engranajes para sistemas externos). Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Crop Load Regulation and Thinning Advisory (Thinning):} Este bounded context evalúa la representatividad del muestreo a pie de árbol y emite prescripciones de porcentaje de aclareo frutal antes del endurecimiento del carozo. Su propósito es intervenir oportunamente para romper el ciclo biológico de la alternancia productiva.

\begin{figure}[H]
\caption{Bounded Context Canvas: Crop Load Regulation and Thinning Advisory (Thinning).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/01-thining.png}
\caption*{\textit{Nota.} Canvas de diseño para el Core Domain primario de regulación de carga frutal y aclareo. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Phenology and Historical Bearing Analytics (Phenology):} Este bounded context gestiona la memoria histórica de cosechas, computa el índice $BBI$ de vecería y acumula porciones dinámicas de frío invernal. Su propósito es prever patrones de alternancia (años ON/OFF) y anticipar brotaciones heterogéneas.

\begin{figure}[H]
\caption{Bounded Context Canvas: Phenology and Historical Bearing Analytics (Phenology).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/02-phenology.png}
\caption*{\textit{Nota.} Canvas de diseño para el Core Domain de inteligencia bioclimática, vecería e índice BBI. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Harvest Settlement and Performance Reporting (Harvest):} Este bounded context asienta la liquidación de kilos cosechados, computa la curva interanual de estabilización y compila el expediente técnico oficial en PDF. Su propósito es certificar el rendimiento anual y validar la mitigación lograda.

\begin{figure}[H]
\caption{Bounded Context Canvas: Harvest Settlement and Performance Reporting (Harvest).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/03-harvest.png}
\caption*{\textit{Nota.} Canvas de diseño para el Core Domain de cierre de campaña y dossier agronómico certificado. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Olive Orchard and Plot Management (Orchard):} Este bounded context gestiona el catastro georreferenciado de cuarteles mediante polígonos GeoJSON, tipifica variedades de olivo y calcula la densidad arbórea. Su propósito es establecer la base espacial y agronómica del olivar.

\begin{figure}[H]
\caption{Bounded Context Canvas: Olive Orchard and Plot Management (Orchard).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/04-orchard.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio de soporte de catastro predial y dendrometría. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Agroclimatic Telemetry and Sensor Monitoring (Telemetry):} Este bounded context ingesta series horarias de humedad edáfica a 30 y 60 cm y pronósticos a 7 días, emitiendo alertas ante estrés hídrico o choques térmicos. Su propósito es vigilar continuamente las condiciones edafoclimáticas del suelo.

\begin{figure}[H]
\caption{Bounded Context Canvas: Agroclimatic Telemetry and Sensor Monitoring (Telemetry).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/05-agroclimatic.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio de soporte de telemetría y sensores edafoclimáticos. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Cooperative Operations and Territorial Intelligence (Territory):} Este bounded context administra el padrón de socios, emite lotes de códigos corporativos, centraliza el semáforo de riesgo por valles y proyecta el volumen de acopio colectivo. Su propósito es brindar inteligencia sectorial a la cooperativa.

\begin{figure}[H]
\caption{Bounded Context Canvas: Cooperative Operations and Territorial Intelligence (Territory).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/06-cooperative.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio de soporte de inteligencia territorial y gremial. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{User Profiles (Profiles):} Este bounded context administra la identidad civil y canales de contacto del productor, normalizando números telefónicos bajo la norma internacional E.164. Su propósito es centralizar la representación de la persona física y facilitar la asistencia técnica.

\begin{figure}[H]
\caption{Bounded Context Canvas: User Profiles (Profiles).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/07-profiles.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio de soporte de perfiles de usuario y contacto E.164. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Subscription and Cooperative Membership (Subscription):} Este bounded context gestiona pagos al Plan Productor y el canje de códigos de patrocinio, fiscalizando la cuota de hectáreas catastrables. Su propósito es asegurar la monetización del servicio SaaS y controlar el acceso predial.

\begin{figure}[H]
\caption{Bounded Context Canvas: Subscription and Cooperative Membership (Subscription).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/08-subscription.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio genérico de suscripción SaaS y membresías. Elaboración propia.}
\end{figure}

\newpage

\noindent \textbf{Identity and Access Management (IAM):} Este bounded context gestiona la autenticación de usuarios, asignación de roles, emisión de tokens de sesión y recuperación segura de credenciales. Su propósito es garantizar acceso controlado y seguridad perimetral en la plataforma.

\begin{figure}[H]
\caption{Bounded Context Canvas: Identity and Access Management (IAM).}
\vspace{0.25cm}
\centering
\includegraphics[width=0.95\textwidth]{report/assets/bounded-context-canvases/09-iam.png}
\caption*{\textit{Nota.} Canvas de diseño para el subdominio genérico de seguridad, credenciales y tokens. Elaboración propia.}
\end{figure}

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
