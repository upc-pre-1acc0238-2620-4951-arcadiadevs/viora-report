#### Testing Suite Evidence for Sprint Review
&nbsp;

En esta sección se documentan y sustentan las evidencias del aseguramiento de la calidad de software y las pruebas de aceptación automatizadas desarrolladas para el ecosistema Viora a lo largo del Sprint 2. Dichas pruebas se construyen bajo el enfoque de desarrollo guiado por comportamiento (\textit{Behavior-Driven Development} - BDD) empleando la sintaxis formal de Gherkin, y se gestionan a través del repositorio oficial de pruebas de aceptación bajo la organización en GitHub: \texttt{upc-pre-1acc0238-2620-4951-arcadiadevs}. De forma análoga a la sección previa de evidencias de desarrollo, el prefijo de la organización es omitido, identificándose el componente directamente como \texttt{viora-acceptance-tests}.

Cabe resaltar que, durante esta iteración, la suite se amplió a un total de 107 especificaciones de prueba de aceptación (\textit{feature files} de extensión \texttt{.feature}), una por cada historia técnica del Product Backlog. Para ello, se incorporaron 53 especificaciones nuevas y se actualizaron 29 existentes, con el fin de alinearlas con los criterios de aceptación y los endpoints vigentes de los servicios web.

Con el propósito de exhibir la actividad de ingeniería de pruebas durante el sprint, a continuación se presentan 10 commits significativos registrados en el repositorio \texttt{viora-acceptance-tests}. Para cada registro se especifica la rama de origen, el identificador abreviado del commit (SHA-1), el mensaje principal (\textit{Commit Message}), la descripción técnica de los cambios (\textit{Commit Message Body}) y la fecha formal de asentamiento (\textit{Committed on Date}).

A continuación, en la \autoref{tab:testing-suite-evidence-sprint-2} se expone la matriz detallada de evidencias de la suite de pruebas para el Sprint Review:

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de la suite de pruebas para Sprint Review (commits por repositorio)} \label{tab:testing-suite-evidence-sprint-2} \\
\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Commit Message Body} & \textbf{Committed on (Date)} \\ \hline
\endfirsthead

\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Commit Message Body} & \textbf{Committed on (Date)} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{6}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia a partir del historial de control de versiones Git de ArcadiaDevs en GitHub.}} \\
\endlastfoot

% viora-acceptance-tests
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 2e530bc & fix: translate scenario comments to english &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 57eb283 & feat: add at107 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & fc85a03 & feat: add at101 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 1bc52be & feat: add at95 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & b0e2201 & feat: add at90 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & eed7e9c & feat: add at86 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 6e16aba & feat: add at67 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 13cc683 & feat: add at66 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 2017e8c & fix: update at29 acceptance test &  & 10/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}2-\allowbreak{}acceptance-\allowbreak{}tests & 934fd6e & feat: add at01 acceptance test &  & 10/11/2026 \\ \hline
\end{longtable}
\end{center}

#### Execution Evidence for Sprint Review
&nbsp;

En esta sección se presenta la evidencia de ejecución de los productos digitales implementados durante el Sprint 2. En la aplicación móvil del productor se incorporó el asistente agronómico en las principales pantallas: el inicio con el resumen del día, la alternancia, el plan de aclareo, las alertas, el clima, el frío invernal y la campaña cerrada. En cada una, el productor elige preguntas sobre sus datos y recibe respuestas con cifras reales, conserva un historial disponible sin conexión y recibe avisos claros ante errores o límites de uso. Las capturas de las principales vistas se complementan con un video que muestra la visualización y la navegación logradas.

<!-- PENDIENTE: bloque de evidencias de la Landing Page. -->

\noindent \textbf{Aplicación móvil del productor:}

La pantalla de inicio incorpora el resumen del día del asistente. En su versión breve ocupa una línea y, al expandirse, explica la ventana de aclareo, la temperatura máxima de la semana y las alertas activas mediante tres indicadores (\autoref{fig:exec-app-summary-s2}).

\begin{figure}[H]
\caption{Inicio con el resumen del día del asistente.} \label{fig:exec-app-summary-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/01-home.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/02-daily-summary.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Desde «Pregúntale a Viora», el productor elige un lote o todo su campo y una de las preguntas disponibles. La respuesta combina una explicación breve, dos indicadores y la fuente de los datos utilizados (\autoref{fig:exec-app-ask-s2}).

\begin{figure}[H]
\caption{Preguntas del asistente y respuesta sobre la semana.} \label{fig:exec-app-ask-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/03-assistant-questions.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/04-assistant-answer-week.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Mientras se prepara la respuesta, la hoja muestra un estado de espera. Al terminar, presenta la explicación con las cifras reales del lote, como su índice de vecería y sus campañas registradas (\autoref{fig:exec-app-answer-s2}).

\begin{figure}[H]
\caption{Espera y respuesta sobre el índice de vecería.} \label{fig:exec-app-answer-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/06-assistant-thinking.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/07-assistant-answer-alternation.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La pestaña «Recientes» conserva las últimas 10 respuestas durante 10 días e indica si siguen al día. Sin conexión, el historial permanece disponible y la aplicación informa que preguntar requiere internet (\autoref{fig:exec-app-recent-s2}).

\begin{figure}[H]
\caption{Historial de respuestas y consulta sin conexión.} \label{fig:exec-app-recent-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/05-assistant-recent.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/12-assistant-offline.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En el plan de aclareo, el asistente explica la prescripción de la campaña, por ejemplo por qué se recomienda retirar el 9 % de los frutos para alcanzar la carga objetivo (\autoref{fig:exec-app-plan-s2}).

\begin{figure}[H]
\caption{Plan de aclareo y respuesta sobre la prescripción.} \label{fig:exec-app-plan-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/08-thinning-plan.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/09-assistant-answer-plan.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En una alerta de golpe de calor, el asistente explica qué hacer ante la alerta y cuántos pasos de mitigación se completaron (\autoref{fig:exec-app-alert-s2}).

\begin{figure}[H]
\caption{Alerta agroclimática y respuesta del asistente.} \label{fig:exec-app-alert-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/10-heat-alert.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/11-assistant-answer-alert.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En el clima del lote, las preguntas que no pueden responderse aparecen deshabilitadas con su motivo, por ejemplo cuando el lote no cuenta con una sonda de humedad real (\autoref{fig:exec-app-climate-s2}).

\begin{figure}[H]
\caption{Clima del lote y preguntas disponibles.} \label{fig:exec-app-climate-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/13-plot-climate.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/14-assistant-questions-climate.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En el frío invernal, el asistente responde sobre las porciones de frío acumuladas. Cuando se supera el límite de preguntas, la aplicación indica cuándo puede volver a intentarse (\autoref{fig:exec-app-chill-s2}).

\begin{figure}[H]
\caption{Frío invernal y límite de uso del asistente.} \label{fig:exec-app-chill-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/15-winter-chill.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/16-assistant-usage-limit.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Al cerrar la campaña, el comprobante de liquidación ofrece preguntas sobre sus resultados. Si las preguntas no pueden cargarse, la hoja permite reintentar (\autoref{fig:exec-app-campaign-s2}).

\begin{figure}[H]
\caption{Campaña cerrada y reintento de carga de preguntas.} \label{fig:exec-app-campaign-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/17-campaign-closed.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-producer/18-assistant-retry.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

<!-- PENDIENTE: bloque de evidencias de la aplicación móvil del gestor técnico (Flutter). -->

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 2.

* **Título:** Product Navigation - Sprint 2
* **Entrega:** Sprint 2
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \textit{Enlace pendiente}

\clearpage

#### Services Documentation Evidence for Sprint Review
&nbsp;

#### Software Deployment Evidence for Sprint Review
&nbsp;

#### Team Collaboration Insights during Sprint
&nbsp;

\clearpage