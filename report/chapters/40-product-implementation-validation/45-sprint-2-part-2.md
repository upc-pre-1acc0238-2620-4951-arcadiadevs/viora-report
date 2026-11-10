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

#### Services Documentation Evidence for Sprint Review
&nbsp;

#### Software Deployment Evidence for Sprint Review
&nbsp;

#### Team Collaboration Insights during Sprint
&nbsp;

\clearpage