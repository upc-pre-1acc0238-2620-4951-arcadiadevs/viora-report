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

En esta sección se presenta la evidencia de ejecución de los productos digitales implementados durante el Sprint 2. En la \textit{Landing Page} se incorporaron el canal de cotización del Plan Cooperativa y la primera versión de los videos About the Product y About the Team, incrustados desde YouTube. En la aplicación móvil del productor se incorporó el asistente agronómico en las principales pantallas: el inicio con el resumen del día, la alternancia, el plan de aclareo, las alertas, el clima, el frío invernal y la campaña cerrada. En cada una, el productor elige preguntas sobre sus datos y recibe respuestas con cifras reales, conserva un historial disponible sin conexión y recibe avisos claros ante errores o límites de uso. En la aplicación móvil del gestor técnico, desarrollada en Flutter, se completaron la bienvenida, el inicio con el semáforo del valle, el riesgo territorial por sector, la consulta de los lotes socios con su prescripción y expediente técnico, la proyección de acopio, la administración de socios, sectores y códigos de activación, las alertas y la preferencia de idioma. Las capturas de las principales vistas se complementan con un video que muestra la visualización y la navegación logradas.

\noindent \textbf{Landing Page:}

El Plan Cooperativa cuenta ahora con un canal propio de cotización. Desde la sección de planes, el menú y el pie de página se abre una ventana que invita a la cooperativa a indicar cuántos socios y hectáreas desea cubrir, y ofrece el contacto por WhatsApp y por correo para recibir una cotización a medida en soles (\autoref{fig:exec-landing-coop-quote-s2}). Con ello, el gestor técnico ya no es derivado a la descarga de la aplicación individual.

\begin{figure}[H]
\caption{Ventana de cotización del Plan Cooperativa.} \label{fig:exec-landing-coop-quote-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-2/landing-page/01-cooperative-quote.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La sección de video presenta un reel construido a partir del video About the Product, que se reproduce en bucle como vista previa y abre el video completo al seleccionar «Ver reel» (\autoref{fig:exec-landing-reel-s2}).

\begin{figure}[H]
\caption{Sección del reel del producto en la Landing Page.} \label{fig:exec-landing-reel-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-2/landing-page/02-product-reel.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La primera versión del video About the Product se reproduce desde YouTube dentro de la Landing Page, con subtítulos disponibles (\autoref{fig:exec-landing-about-product-s2}). Esta versión se completará en el Sprint 3 con el segmento de entrevistas a gestores técnicos.

\begin{figure}[H]
\caption{Video About the Product incrustado en la Landing Page.} \label{fig:exec-landing-about-product-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-2/landing-page/03-about-the-product-video.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

De igual forma, la sección del equipo reproduce el video About the Team desde YouTube, con el resumen del proceso de trabajo y los testimonios de los integrantes (\autoref{fig:exec-landing-about-team-s2}).

\begin{figure}[H]
\caption{Video About the Team incrustado en la Landing Page.} \label{fig:exec-landing-about-team-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-2/landing-page/04-about-the-team-video.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

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

\noindent \textbf{Aplicación móvil del gestor técnico:}

Al abrir la aplicación por primera vez, la bienvenida presenta Viora como una herramienta para leer la vecería del valle y priorizar las visitas técnicas, con un recorrido dirigido a los gestores técnicos (\autoref{fig:exec-manager-welcome-s2}).

\begin{figure}[H]
\caption{Bienvenida de la aplicación del gestor técnico.} \label{fig:exec-manager-welcome-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/01-welcome.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/02-onboarding-managers.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La pantalla de inicio resume el estado del valle: el semáforo con las parcelas críticas, moderadas y óptimas, el sector que requiere visita y la licencia de la campaña con el acopio proyectado, las alertas de helada, las plazas ocupadas y las visitas sugeridas (\autoref{fig:exec-manager-home-s2}).

\begin{figure}[H]
\caption{Inicio del gestor técnico con el semáforo del valle y la licencia.} \label{fig:exec-manager-home-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/03-home.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/04-home-license.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El riesgo territorial puede consultarse sobre el mapa, con la posición del gestor y los sectores de su licencia, o como una lista de sectores ordenada por riesgo (\autoref{fig:exec-manager-risk-s2}).

\begin{figure}[H]
\caption{Riesgo territorial en mapa y en lista.} \label{fig:exec-manager-risk-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/05-territorial-risk-map.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/06-territorial-risk-list.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El detalle de un sector muestra su semáforo y las parcelas socias ordenadas por prioridad y cercanía. Desde allí, el gestor abre el lote de un socio en modo de solo lectura y consulta su carga frutal estimada frente al objetivo sostenible (\autoref{fig:exec-manager-sector-s2}).

\begin{figure}[H]
\caption{Detalle del sector y del lote socio.} \label{fig:exec-manager-sector-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/07-sector-detail.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/08-plot-detail.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En el mismo lote, el gestor revisa la prescripción de aclareo con su ventana de intervención y su estado, el índice de vecería como dato informativo y los accesos para llamar o escribir al socio. El expediente técnico provisional de la campaña puede descargarse en PDF o compartirse (\autoref{fig:exec-manager-record-s2}).

\begin{figure}[H]
\caption{Prescripción de aclareo y expediente técnico del lote.} \label{fig:exec-manager-record-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/09-thinning-prescription.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/10-technical-record.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La proyección de acopio estima las toneladas de aceituna verde y negra de la campaña a partir de las parcelas con muestreo, indica la cobertura alcanzada frente al umbral preliminar y desglosa el resultado por sector (\autoref{fig:exec-manager-harvest-s2}).

\begin{figure}[H]
\caption{Proyección de acopio de la campaña.} \label{fig:exec-manager-harvest-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/11-harvest-projection.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/12-harvest-projection-sectors.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La sección de socios muestra las plazas y hectáreas disponibles de la licencia y el listado de socios con búsqueda y filtros. El detalle de cada socio reúne sus datos de contacto, las hectáreas registradas, su código de vinculación y sus lotes (\autoref{fig:exec-manager-members-s2}).

\begin{figure}[H]
\caption{Socios de la licencia y detalle de un socio.} \label{fig:exec-manager-members-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/13-members.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/14-member-detail.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El gestor administra los sectores de su licencia, que puede añadir y renombrar, y los códigos de activación para invitar a nuevos socios, agrupados en códigos por canjear, canjeados y vencidos, con opciones para compartirlos o revocarlos (\autoref{fig:exec-manager-codes-s2}).

\begin{figure}[H]
\caption{Sectores y códigos de activación de la licencia.} \label{fig:exec-manager-codes-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/15-sectors.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/16-activation-codes.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Finalmente, la sección de alertas agrupa los avisos activos según su nivel y explica el cambio de estado de cada sector, mientras que la cuenta permite cambiar el idioma de la aplicación entre español e inglés, junto con el formato de números y fechas (\autoref{fig:exec-manager-alerts-s2}).

\begin{figure}[H]
\caption{Alertas activas y cambio de idioma.} \label{fig:exec-manager-alerts-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/17-alerts.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-2/mobile-app-manager/18-language.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 2.

* **Título:** Product Navigation - Sprint 2
* **Entrega:** Sprint 2
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \url{https://tinyurl.com/product-navigation-av-2}

\clearpage

#### Services Documentation Evidence for Sprint Review
&nbsp;

En esta sección se presenta la relación de servicios web RESTful implementados y documentados bajo el estándar OpenAPI 3.1 para la plataforma Viora (\texttt{viora-platform}) durante el Sprint 2. Sobre la arquitectura guiada por el dominio (Domain-Driven Design, DDD) consolidada en el Sprint 1, ahora sobre Java 21 LTS y Spring Boot 4, el equipo de backend incorporó los contextos de Identity and Access Management, Profiles, Subscription y Territory, junto con el módulo transversal del asistente. Se mantuvieron los contratos tipados con Java Records y Jakarta Validation, el manejo centralizado de errores bajo RFC 7807 (\textit{Problem Details}) con los campos adicionales \texttt{code} y \texttt{reason} para que los clientes móviles muestren mensajes localizados, la autenticación por token Bearer con roles de aplicación (productor y gestor), las cabeceras \texttt{Idempotency-Key} en operaciones de pago y canje, y la autodocumentación viva en Swagger UI con soporte para pruebas interactivas (\textit{Try it out}).

Durante este ciclo se incorporaron 70 endpoints RESTful a los 33 entregados en el Sprint 1, de modo que la API alcanza 103 endpoints organizados en 33 grupos de la documentación. En la \autoref{tab:services-documentation-endpoints-sprint-2} se presenta la matriz de los 15 endpoints más representativos del Sprint 2, cubriendo cada contexto incorporado; los 103 endpoints se encuentran accesibles y operativos en la consola interactiva de Swagger UI.

\noindent \textbf{Puntos de acceso a la documentación interactiva (Swagger UI / OpenAPI):}
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{Entorno desplegado en producción (Render Cloud):} \url{https://viora-platform.onrender.com/swagger-ui/index.html}
    \item \textbf{Entorno de desarrollo local:} \url{http://localhost:8080/swagger-ui/index.html}
    \item \textbf{Especificación OpenAPI en formato JSON:} \url{https://viora-platform.onrender.com/v3/api-docs}
\end{itemize}

\clearpage

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.12}
\setlength{\tabcolsep}{3pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.23\textwidth}|>{\centering\arraybackslash}p{0.07\textwidth}|>{\raggedright\arraybackslash}p{0.36\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.08\textwidth}|}
\caption{Matriz representativa de endpoints documentados con OpenAPI 3.1 en el Sprint 2} \label{tab:services-documentation-endpoints-sprint-2} \\
\hline
\textbf{Acción / caso de uso} & \textbf{Método} & \textbf{Endpoint (URL desplegada en producción)} & \textbf{Parámetros clave} & \textbf{Códigos HTTP} \\ \hline
\endfirsthead

\hline
\textbf{Acción / caso de uso} & \textbf{Método} & \textbf{Endpoint (URL desplegada en producción)} & \textbf{Parámetros clave} & \textbf{Códigos HTTP} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{5}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Selección representativa de endpoints sobre un total de 103 endpoints desplegados en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}) y localmente (\url{http://localhost:8080/swagger-ui/index.html}).}} \\
\endlastfoot

Registrar cuenta de usuario & POST & \url{https://viora-platform.onrender.com/api/v1/auth/sign-up} & Body: \texttt{SignUpResource} & 200 \\ \hline
Iniciar sesión con rol de aplicación & POST & \url{https://viora-platform.onrender.com/api/v1/auth/sign-in} & Body: \texttt{SignInResource} (\texttt{role}) & 200, 403 \\ \hline
Renovar token de acceso & POST & \url{https://viora-platform.onrender.com/api/v1/auth/refresh-tokens} & Body: \texttt{RefreshTokenResource} & 200 \\ \hline
Actualizar perfil parcialmente & PATCH & \url{https://viora-platform.onrender.com/api/v1/profiles/{userId}} & Path: \texttt{userId}, Body: \texttt{UpdateProfileResource} & 200 \\ \hline
Consultar catálogo de planes & GET & \url{https://viora-platform.onrender.com/api/v1/subscription-plans} & Sin parámetros & 200 \\ \hline
Consultar suscripción vigente & GET & \url{https://viora-platform.onrender.com/api/v1/subscriptions} & Sin parámetros & 200 \\ \hline
Iniciar pago de suscripción & POST & \url{https://viora-platform.onrender.com/api/v1/subscriptions/{id}/checkouts} & Path: \texttt{id}, Header: \texttt{Idempotency-Key} & 200 \\ \hline
Previsualizar código de cooperativa & POST & \url{https://viora-platform.onrender.com/api/v1/cooperative-code-previews} & Body: \texttt{PreviewCooperativeCodeResource} & 200, 400, 409, 429 \\ \hline
Canjear código de cooperativa & POST & \url{https://viora-platform.onrender.com/api/v1/cooperative-code-redemptions} & Body: \texttt{RedeemCooperativeCodeResource} & 201, 400, 409, 429 \\ \hline
Emitir códigos de invitación & POST & \url{https://viora-platform.onrender.com/api/v1/invitation-codes} & Body: \texttt{IssueInvitationCodesResource} & 201, 400, 403, 409 \\ \hline
Registrar sector de la cooperativa & POST & \url{https://viora-platform.onrender.com/api/v1/sector-zones} & Body: \texttt{SectorZoneNameResource} & 201, 400, 403, 409 \\ \hline
Consultar lotes de socios por ubicación & GET & \url{https://viora-platform.onrender.com/api/v1/member-plots} & Query: \texttt{latitude}, \texttt{longitude} & 200, 400, 403 \\ \hline
Consultar pronóstico de acopio & GET & \url{https://viora-platform.onrender.com/api/v1/intake-forecasts/{campaignYear}} & Path: \texttt{campaignYear} & 200, 400, 403, 404 \\ \hline
Listar preguntas del asistente & GET & \url{https://viora-platform.onrender.com/api/v1/assistant/questions} & Query: \texttt{screen}, \texttt{plotId} & 200, 400, 403, 404 \\ \hline
Consultar respuesta al asistente & POST & \url{https://viora-platform.onrender.com/api/v1/assistant/answers} & Body: \texttt{AskQuestionResource} & 200, 400, 403, 409 \\ \hline
\end{longtable}
\end{center}

\noindent \textbf{Especificación detallada de endpoints representativos del Sprint 2:}

A continuación se detallan 4 endpoints que reflejan las reglas de negocio y los patrones arquitectónicos incorporados en el Sprint 2:

\vspace{0.25cm}
\noindent \textbf{1. Listar preguntas del asistente por pantalla (\texttt{GET /api/v1/assistant/questions}):}

* **Propósito y reglas de negocio:** Devuelve el catálogo de preguntas cerradas de una pantalla de la aplicación en orden de visualización, con etiquetas localizadas según la cabecera `Accept-Language` (es/en) que incorporan las cifras reales del lote. Una pregunta sin datos suficientes se entrega deshabilitada con su `disabledReason`. Requiere un plan activo.
* **Parámetros de entrada:** Query `screen` (por ejemplo, `HOME`, `PLAN`, `ALERT`, `CLIMATE`) y Query `plotId` (UUID, obligatorio en todas las pantallas excepto `HOME`).
* **Ejemplo de respuesta en producción (\texttt{200 OK}):**

```json
// Respuesta (200 OK) para screen=HOME:
{
  "screen": "HOME", "plotId": null,
  "questions": [
    { "questionId": "home.week_plan", "label": "¿Qué hago esta semana?",
      "icon": "calendar", "enabled": true, "disabledReason": null },
    { "questionId": "home.campaign_vs_previous",
      "label": "¿Cómo va mi campaña frente a la anterior?",
      "icon": "history", "enabled": true, "disabledReason": null }
  ]
}
```

* **Explicación de la respuesta:** Para la pantalla de inicio el servicio no requiere lote (`plotId: null`), por lo que las preguntas se refieren al campo completo del productor; cada `questionId` es el que luego se envía a `POST /api/v1/assistant/answers` para obtener la respuesta.

\vspace{0.35cm}
\noindent \textbf{2. Consultar la suscripción vigente del productor (\texttt{GET /api/v1/subscriptions}):}

* **Propósito y reglas de negocio:** Devuelve la suscripción actual del productor autenticado, ya sea un plan individual pagado o un plan cooperativo patrocinado, junto con su cuota de hectáreas, su vigencia y si el derecho de uso se encuentra activo.
* **Parámetros de entrada:** Sin parámetros; el productor se identifica a partir del token Bearer.
* **Ejemplo de respuesta en producción (\texttt{200 OK}):**

```json
// Respuesta (200 OK):
{
  "id": "5f40677f-...", "mode": "PLAN_COOPERATIVO_PATROCINADO",
  "planCode": null, "status": "ACTIVE", "quotaHa": 512,
  "currency": null, "totalAmount": null,
  "startsAt": "2026-10-24T04:49:13Z", "endsAt": "2027-10-21T18:30:12Z",
  "entitlementActive": true, "cooperativeId": "854bd303-...",
  "paymentStatus": null
}
```

* **Explicación de la respuesta:** Al tratarse de un plan patrocinado por la cooperativa, los montos y el estado de pago son nulos, la cuota disponible es de 512 ha y `entitlementActive: true` habilita las funciones que exigen un plan activo, como el asistente.

\vspace{0.35cm}
\noindent \textbf{3. Registrar un sector de la cooperativa (\texttt{POST /api/v1/sector-zones}):}

* **Propósito y reglas de negocio:** Permite al gestor técnico agregar un sector a su licencia cooperativa; queda disponible de inmediato para todos los socios. Las tildes y las mayúsculas no generan un sector distinto, por lo que un nombre equivalente a uno existente es rechazado.
* **Parámetros de entrada:** Body `SectorZoneNameResource` (`name`: de 2 a 60 caracteres).
* **Ejemplo de solicitud y respuesta documentados en el contrato (\texttt{201 Created}):**

```json
// Petición (Request Body):
{ "name": "Cerro Blanco" }

// Respuesta (201 Created):
{ "id": "a1b2c3d4-...", "name": "Cerro Blanco", "plotCount": 0 }
```

* **Explicación de la respuesta:** El servicio asigna un identificador al sector y lo inicia sin lotes asociados; los lotes de los socios se vinculan después mediante `/api/v1/plot-sector-assignments`.

\vspace{0.35cm}
\noindent \textbf{4. Manejo de conflictos RFC 7807 al previsualizar un código (\texttt{POST /api/v1/cooperative-code-previews}):}

* **Propósito y reglas de negocio:** Muestra al productor la organización, el gestor, la cuota, el fin del plan, sus hectáreas registradas y la versión del texto de consentimiento antes de canjear un código de invitación, sin consumirlo. Un productor que ya cuenta con una suscripción activa no puede previsualizar ni canjear otro código.
* **Parámetros de entrada:** Body `PreviewCooperativeCodeResource` (`code`: código entregado por la cooperativa).
* **Ejemplo de respuesta en producción (\texttt{409 Conflict}):**

```json
// Respuesta (409 Conflict - RFC 7807 Problem Details):
{
  "detail": "Ya tienes una suscripción activa",
  "instance": "/api/v1/cooperative-code-previews", "status": 409,
  "title": "Conflict", "type": "https://api.viora.com/errors/subscription-conflict",
  "timestamp": "2026-11-10T17:34:20.281Z",
  "code": "SUBSCRIPTION_CONFLICT", "reason": "subscription.producer.already_active"
}
```

* **Explicación de la respuesta:** El manejador global de excepciones devuelve un objeto RFC 7807 con el mensaje localizado en `detail` y los campos `code` y `reason`, que permiten a la aplicación móvil mostrar el motivo exacto sin interpretar textos y sin alterar la suscripción vigente.

\vspace{0.35cm}
\noindent \textbf{Evidencias de interacción con la documentación interactiva (Swagger UI):}

Para comprobar la operatividad de los contratos, se ejecutaron pruebas en vivo sobre la consola interactiva Swagger UI desplegada en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}), autenticadas con el token de una cuenta de productor de demostración. Se priorizaron consultas y errores controlados para no alterar los datos de producción, y en cada captura se aprecia la URL de la solicitud.

Las pruebas cubrieron los siguientes flujos:

\begin{itemize}\setlength{\itemsep}{2pt}\setlength{\parskip}{0pt}
    \item \textbf{Catálogo del asistente (\texttt{GET /api/v1/assistant/questions}):} Consulta de las preguntas de la pantalla de inicio (\autoref{fig:exec-swagger-assistant-questions-s2}). Swagger UI confirmó la respuesta \texttt{200 OK} con las preguntas localizadas en español y habilitadas para el productor.
    \item \textbf{Suscripción vigente (\texttt{GET /api/v1/subscriptions}):} Consulta del plan del productor (\autoref{fig:exec-swagger-subscription-s2}). La respuesta \texttt{200 OK} devolvió un plan cooperativo patrocinado en estado \texttt{ACTIVE} con 512 ha de cuota.
    \item \textbf{Conflicto de negocio (\texttt{POST /api/v1/cooperative-code-previews}):} Envío de un código de invitación por parte de un productor con suscripción activa (\autoref{fig:exec-swagger-error-rfc7807-s2}). El servicio respondió \texttt{409 Conflict} bajo el esquema RFC 7807 con el código \texttt{SUBSCRIPTION\_CONFLICT}, sin consumir el código ni modificar la suscripción.
\end{itemize}

\begin{figure}[H]
\caption{Consulta de preguntas del asistente y respuesta 200 OK en Swagger UI.} \label{fig:exec-swagger-assistant-questions-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-2/web-services/01-swagger-assistant-questions.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Consulta de la suscripción vigente del productor en Swagger UI.} \label{fig:exec-swagger-subscription-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-2/web-services/02-swagger-subscription.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Conflicto de suscripción y respuesta 409 Conflict (RFC 7807) en Swagger UI.} \label{fig:exec-swagger-error-rfc7807-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-2/web-services/03-swagger-error-rfc7807.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

Los resultados verificaron la correspondencia entre las anotaciones OpenAPI del backend y el contrato JSON publicado (\url{https://viora-platform.onrender.com/v3/api-docs}), que los clientes Android y Flutter emplean como referencia para integrar los nuevos contextos.

\clearpage

\noindent \textbf{Repositorio oficial y trazabilidad de control de versiones:}

La suite completa de Web Services y su documentación OpenAPI residen en el repositorio oficial de GitHub:
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{URL del repositorio:} \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}
\end{itemize}

En la \autoref{tab:services-documentation-commits-sprint-2} se listan los commits verificados en el historial del repositorio \texttt{viora-platform}, asociados con controladores REST, contratos y documentación de la API del Sprint 2:

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.09\textwidth}|>{\raggedright\arraybackslash}p{0.26\textwidth}|>{\raggedright\arraybackslash}p{0.10\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|}
\caption{Evidencias de documentación de Web Services para Sprint Review (commits de viora-platform)} \label{tab:services-documentation-commits-sprint-2} \\
\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Commit Message Body} & \textbf{Committed on (Date)} \\ \hline
\endfirsthead

\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Commit Message Body} & \textbf{Committed on (Date)} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{6}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia a partir del historial de control de versiones Git del repositorio \texttt{viora-platform} en GitHub.}} \\
\endlastfoot

viora-platform & feature/iam-profiles & ca80e80 & feat(controllers): add auth controller, profile context facade and profile controller &  & 14/10/2026 \\ \hline
viora-platform & feature/profiles-ownership & c633ea0 & feat(controllers): add sign out siganture method and update patch profile &  & 19/10/2026 \\ \hline
viora-platform & feature/subscription-list-plans & f20939b & docs(subscription): document catalog configuration and endpoint scope &  & 21/10/2026 \\ \hline
viora-platform & feature/iam-demo-account-and-reset-page & aa40498 & docs(iam): document the reset page, the 401 rule and the demo account &  & 21/10/2026 \\ \hline
viora-platform & feature/assistant-template-answers & ea5d380 & docs(assistant): document the answer endpoints and their settings &  & 30/10/2026 \\ \hline
viora-platform & feature/assistant-spring-ai & 9ac3a19 & build(deps): add spring ai with the openai starter and keep the swagger annotations springdoc needs &  & 30/10/2026 \\ \hline
viora-platform & feature/iam-app-roles & 360cbf4 & feat(iam): add app roles to sign-in and restrict the producer api &  & 03/11/2026 \\ \hline
viora-platform & feature/subscription-data-consent & cc61b91 & feat(subscription): add cooperative code preview endpoint &  & 06/11/2026 \\ \hline
viora-platform & feature/territory-sector-zones & 92d748b & feat(territory): add sector zone and plot sector endpoints &  & 06/11/2026 \\ \hline
viora-platform & feature/require-consent-on-redemption & a50bb8f & docs: record mandatory consent on code redemption &  & 09/11/2026 \\ \hline
\end{longtable}
\end{center}

\clearpage

#### Software Deployment Evidence for Sprint Review
&nbsp;

En esta sección se resumen los procesos de despliegue (\textit{deployment}) realizados durante el Sprint 2 para los productos digitales de Viora: el Landing Page, los servicios web con su base de datos en la nube y las aplicaciones móviles en Android nativo y Flutter. A diferencia del Sprint 1, en el que se crearon las cuentas y se configuraron los recursos en cada proveedor, en este sprint el trabajo se centró en mantener el despliegue continuo de cada producto conforme se integraban los nuevos contextos, en habilitar el acceso de los clientes a las aplicaciones móviles mediante un vínculo de invitación y en incorporar la aplicación Flutter al mismo esquema de distribución. Con este sprint los servicios web, la base de datos y ambas aplicaciones móviles quedan publicados y culminados; el Landing Page se mantiene publicado y se culminará en el Sprint 3 con la segunda versión del video About the Product, que incorpora la entrevista al segmento de gestores. En la \autoref{tab:deployment-summary-sprint-2} se resume qué se desplegó, dónde y cómo; a continuación se detalla cada producto con sus evidencias.

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.14\textwidth}|>{\raggedright\arraybackslash}p{0.19\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|>{\raggedright\arraybackslash}p{0.27\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|}
\caption{Resumen de los despliegues del Sprint 2 por producto digital} \label{tab:deployment-summary-sprint-2} \\
\hline
\textbf{Producto} & \textbf{Repositorio} & \textbf{Plataforma} & \textbf{Mecanismo de despliegue} & \textbf{Estado} \\ \hline
\endfirsthead

\hline
\textbf{Producto} & \textbf{Repositorio} & \textbf{Plataforma} & \textbf{Mecanismo de despliegue} & \textbf{Estado} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{5}{l}{\parbox{15.5cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia a partir de las consolas de Vercel, Render, Filess.io, Firebase y GitHub.}} \\
\endlastfoot

Landing Page & \texttt{viora-landing-page} & Vercel & Integración con Git: cada \textit{push} a \texttt{main} publica producción & Publicado \\ \hline
Servicios web (API RESTful) & \texttt{viora-platform} & Render (\textit{Web Service} con Docker) & Despliegue automático desde la rama \texttt{main} & Publicado y culminado \\ \hline
Base de datos & No aplica & Filess.io (PostgreSQL) & Instancia del Sprint 1; conexión mediante variables de entorno en Render & Publicado y culminado \\ \hline
Aplicación móvil Android & \texttt{viora-mobile-android} & Firebase App Distribution & Despliegue continuo con GitHub Actions; APK \textit{release} firmado & Publicado y culminado \\ \hline
Aplicación móvil Flutter & \texttt{viora-mobile-flutter} & Firebase App Distribution & Despliegue continuo con GitHub Actions; APK \textit{release} firmado & Publicado y culminado \\ \hline
\end{longtable}
\end{center}

\clearpage

\noindent \textbf{Landing Page (Vercel):}

El Landing Page conserva el despliegue configurado en el Sprint 1: cada integración en la rama `main` genera un despliegue de producción en Vercel. En la \autoref{fig:deploy-vercel-prod-s2} se observa el despliegue vigente en estado \textit{Ready}, publicado desde la rama `main` y servido en el dominio `viora-landing-page-sable.vercel.app`. La rama `develop` cuenta además con un despliegue de vista previa (\textit{Preview}), que permite revisar los cambios antes de integrarlos en producción. El Landing Page se mantiene publicado; se culminará en el Sprint 3 con la publicación de la segunda versión del video About the Product, que incorpora la entrevista al segmento de gestores.

\begin{figure}[H]
\caption{Despliegue de producción del Landing Page en Vercel.} \label{fig:deploy-vercel-prod-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-2/landing-page/01-vercel-production-deployment.png}
\caption*{\textit{Nota.} Captura del panel de Vercel. Elaboración propia.}
\end{figure}

\noindent \textbf{Servicios web de backend (Render):}

La API RESTful `viora-platform` continúa desplegada en Render como \textit{Web Service} con Docker y despliegue automático desde la rama `main`. Durante el Sprint 2, cada integración en `main` de los contextos de Identity and Access Management, Profiles, Subscription, Territory y del módulo del asistente activó un nuevo despliegue sin intervención manual. La \autoref{fig:deploy-render-live-s2} muestra el servicio en estado \textit{Live} sobre la rama `main`, publicado en \url{https://viora-platform.onrender.com}, la misma URL desde la que se ejecutaron las pruebas de Swagger UI de la sección anterior. Con este sprint los servicios web quedan publicados y culminados.

\begin{figure}[H]
\caption{Servicio viora-platform en estado Live en Render.} \label{fig:deploy-render-live-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-2/backend/01-render-service-live.png}
\caption*{\textit{Nota.} Captura del panel de Render. Elaboración propia.}
\end{figure}

\noindent \textbf{Base de datos en la nube (Filess.io):}

La base de datos PostgreSQL aprovisionada en el Sprint 1 se mantuvo como única instancia de datos de la plataforma. La \autoref{fig:deploy-filess-s2} confirma que `viora_thoughage` sigue disponible (\textit{Available}) en la región Nürnberg. Las tablas de los contextos incorporados en este sprint se crean desde el backend al desplegarse, por lo que no fue necesario aprovisionar recursos adicionales. Con este sprint la base de datos queda publicada y culminada.

\begin{figure}[H]
\caption{Base de datos disponible en Filess.io.} \label{fig:deploy-filess-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-2/database/01-filess-database-available.png}
\caption*{\textit{Nota.} Captura del panel de Filess.io. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil Android (Firebase App Distribution):}

La aplicación Android mantiene el despliegue continuo con GitHub Actions configurado en el Sprint 1: el flujo `deploy-android.yml` se ejecuta al publicarse una versión, compila el APK \textit{release}, lo firma con el almacén de claves guardado como secreto del repositorio y lo distribuye en Firebase App Distribution a los grupos de verificadores, sin pasos manuales.

Como novedad del Sprint 2, se creó un vínculo de invitación asociado al grupo `viora-client-testers` (\autoref{fig:deploy-invitation-link-s2}). Con él, los clientes y participantes de las entrevistas pueden solicitar acceso a la versión distribuida más reciente sin que el equipo deba invitarlos uno por uno.

\begin{figure}[H]
\caption{Creación del vínculo de invitación para el grupo viora-client-testers.} \label{fig:deploy-invitation-link-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.60\textwidth]{report/assets/sprint-deployment/sprint-2/application/01-invitation-link-creation.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution. Elaboración propia.}
\end{figure}

Al abrir el vínculo, el verificador accede a la página de Firebase App Distribution de la aplicación Viora (paquete `pe.edu.upc.viora`), donde registra su correo para obtener acceso (\autoref{fig:deploy-invitation-page-s2}).

\begin{figure}[H]
\caption{Página de acceso a la aplicación mediante el vínculo de invitación.} \label{fig:deploy-invitation-page-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.60\textwidth]{report/assets/sprint-deployment/sprint-2/application/02-invitation-link-page.png}
\caption*{\textit{Nota.} Captura de la página pública del vínculo de invitación. Elaboración propia.}
\end{figure}

La \autoref{fig:deploy-releases-s2} muestra el historial de versiones en Firebase App Distribution. Cada versión corresponde a la integración de una rama de \textit{release} en `main` y fue distribuida automáticamente por el flujo de GitHub Actions a los seis verificadores registrados, que la aceptaron y descargaron para probarla en sus dispositivos.

\begin{figure}[H]
\caption{Historial de versiones de la aplicación Android en Firebase App Distribution.} \label{fig:deploy-releases-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-2/application/03-app-distribution-releases.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution; se ocultó el correo de contacto. Elaboración propia.}
\end{figure}

Con este sprint la aplicación Android queda publicada y culminada.

\noindent \textbf{Aplicación móvil Flutter (Firebase App Distribution):}

La aplicación Flutter sigue el mismo esquema de despliegue que la aplicación Android: al integrarse una rama de \textit{release} en `main`, un flujo de GitHub Actions compila el APK \textit{release}, lo firma con la clave de la aplicación y lo distribuye en Firebase App Distribution a los grupos de verificadores. Los datos sensibles que necesita el flujo se guardan como secretos del repositorio `viora-mobile-flutter`: el almacén de claves codificado en Base64 con su alias y contraseñas, la clave de la cuenta de servicio de Firebase y el token público de Mapbox (\autoref{fig:deploy-flutter-secrets-s2}). Sus valores no se exponen en el código ni en los registros del flujo.

\begin{figure}[H]
\caption{Secretos del repositorio viora-mobile-flutter utilizados por el flujo de despliegue.} \label{fig:deploy-flutter-secrets-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.70\textwidth]{report/assets/sprint-deployment/sprint-2/application/05-flutter-repository-secrets.png}
\caption*{\textit{Nota.} Captura de la configuración de GitHub Actions del repositorio. Elaboración propia.}
\end{figure}

En la consola de Firebase App Distribution, la aplicación Viora Gestor registra la versión distribuida por la cuenta de servicio de GitHub Actions, que figura como correo de contacto, y enviada a los seis verificadores registrados (\autoref{fig:deploy-flutter-console-s2}).

\begin{figure}[H]
\caption{Versión de la aplicación del gestor técnico en la consola de Firebase App Distribution.} \label{fig:deploy-flutter-console-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-2/application/06-flutter-app-distribution-console.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution. Elaboración propia.}
\end{figure}

Desde el dispositivo de un verificador, la aplicación del gestor técnico (paquete `pe.edu.upc.viora.gestor`) aparece en Firebase App Tester con la versión más reciente disponible para su descarga (\autoref{fig:deploy-flutter-s2}).

\begin{figure}[H]
\caption{Aplicación del gestor técnico disponible en Firebase App Distribution.} \label{fig:deploy-flutter-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.3\textwidth]{report/assets/sprint-deployment/sprint-2/application/04-flutter-app-distribution.png}
\caption*{\textit{Nota.} Captura de la aplicación Firebase App Tester en el dispositivo de un verificador. Elaboración propia.}
\end{figure}

Con este sprint la aplicación Flutter queda publicada y culminada.

\clearpage

#### Team Collaboration Insights during Sprint
&nbsp;

En esta sección se analizan las métricas de colaboración del equipo ArcadiaDevs durante el Sprint 2, iniciado el 13 de octubre, orientado a culminar el flujo completo del ecosistema Viora: los servicios web con los nuevos contextos, la aplicación móvil Android y la aplicación móvil Flutter, además del mantenimiento del Landing Page. El desarrollo continuó bajo GitFlow, con ramas de características integradas en `develop` y publicadas en `main` mediante ramas de \textit{release}, y con la convención Conventional Commits para mantener un historial trazable entre los integrantes.

Para respaldar la trazabilidad del trabajo colaborativo en los repositorios de la organización en GitHub, a continuación se presentan los analíticos de contribución temporal y autoría de código (\textit{Contributors}) de cada repositorio, con la ventana de análisis ubicada desde octubre.

En el repositorio `viora-platform` la actividad se mantuvo alta durante todo el sprint, con su punto más alto en la semana del 19 de octubre y un ritmo sostenido en las semanas del 26 de octubre y 2 de noviembre (\autoref{fig:contributors-platform-s2}). Este comportamiento corresponde a la incorporación progresiva de los contextos de Identity and Access Management, Profiles, Subscription y Territory, y del módulo del asistente.

\begin{figure}[H]
\caption{Vista de Contributors de GitHub del repositorio viora-platform.} \label{fig:contributors-platform-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/sprint-team-collaboration/sprint-2/viora-platform-contributors.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-platform}. Elaboración propia.}
\end{figure}

En el repositorio `viora-mobile-android` la actividad se concentró en la semana del 19 de octubre, la de mayor volumen del sprint, y continuó con menor intensidad hasta inicios de noviembre (\autoref{fig:contributors-mobile-android-s2}). Este ritmo acompaña la integración de la aplicación con los servicios web incorporados en el sprint.

\begin{figure}[H]
\caption{Vista de Contributors de GitHub del repositorio viora-mobile-android.} \label{fig:contributors-mobile-android-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/sprint-team-collaboration/sprint-2/viora-mobile-android-contributors.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-mobile-android}. Elaboración propia.}
\end{figure}

En el repositorio `viora-landing-page` la mayor parte del trabajo se realizó en el Sprint 1, por lo que durante el Sprint 2 solo se registran ajustes puntuales a inicios de noviembre (\autoref{fig:contributors-landing-page-s2}). Este comportamiento es coherente con su estado: el Landing Page se mantiene publicado y se culminará en el Sprint 3 con la segunda versión del video About the Product.

\begin{figure}[H]
\caption{Vista de Contributors de GitHub del repositorio viora-landing-page.} \label{fig:contributors-landing-page-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/sprint-team-collaboration/sprint-2/viora-landing-page-contributors.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-landing-page}. Elaboración propia.}
\end{figure}

En el repositorio `viora-mobile-flutter` la actividad comenzó a fines de octubre y creció hasta alcanzar su mayor volumen a inicios de noviembre (\autoref{fig:contributors-mobile-flutter-s2}). Este ritmo corresponde a la construcción de la aplicación del gestor técnico, que en este sprint se integró con los servicios web de operaciones cooperativas, riesgo territorial y acopio.

\begin{figure}[H]
\caption{Vista de Contributors de GitHub del repositorio viora-mobile-flutter.} \label{fig:contributors-mobile-flutter-s2}
\vspace{0.25cm}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/sprint-team-collaboration/sprint-2/viora-mobile-flutter-contributors.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-mobile-flutter}. Elaboración propia.}
\end{figure}

\clearpage
