### Sprint 2

#### Sprint Planning 2
&nbsp;

En esta sección se detallan los acuerdos alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 2, realizada de manera virtual mediante Discord. A partir de los resultados del Sprint 1, el equipo decidió concentrar en esta iteración la entrega del flujo completo de la solución y reservar el Sprint 3 para revisiones y oportunidades de mejora. En consecuencia, se comprometieron 241 puntos de historia distribuidos en 97 ítems del Product Backlog: 82 puntos en 25 historias de usuario, 153 puntos en 70 historias técnicas y 6 puntos en dos *spikes* de investigación.

A continuación, en la \autoref{tab:sprint-planning-2} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación, la capacidad comprometida y el Sprint Goal formulado bajo el estándar de Scrum.org.

\begin{center}
\small
\renewcommand{\arraystretch}{1.25}
\begin{longtable}{|p{4.2cm}|p{10.8cm}|}
\caption{Resumen de la sesión de planificación del Sprint 2 (Sprint Planning 2)} \label{tab:sprint-planning-2} \\
\hline
\textbf{Aspecto / Parámetro} & \textbf{Detalle del compromiso de planificación} \\ \hline
\endfirsthead

\hline
\textbf{Aspecto / Parámetro} & \textbf{Detalle del compromiso de planificación} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{2}{l}{\parbox{15cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia.}} \\
\endlastfoot

\textbf{Sprint \#} & Sprint 2 \\ \hline
\textbf{Sprint Planning Background} & Sesión de planificación virtual para definir los compromisos del segundo incremento de software de Viora. \\ \hline
\textbf{Date} & 2026-10-13 \\ \hline
\textbf{Time} & 10:00 AM \\ \hline
\textbf{Location} & Discord (Virtual) \\ \hline
\textbf{Prepared By} & Trinidad León, Jahat Jassiel \\ \hline
\textbf{Attendees (to planning meeting)} & Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Victor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad León, Jahat Jassiel \\ \hline
\textbf{Sprint 1 Review Summary} & El Sprint 1 superó las expectativas del equipo, al completarse los 68 ítems comprometidos (183 puntos de historia). Se dejaron en producción la Landing Page y los 33 endpoints iniciales de los servicios web, y se construyó la primera versión de la aplicación Android para el productor, con registro de datos en campo sin conexión. \\ \hline
\textbf{Sprint 1 Retrospective Summary} & El equipo coincidió en que el avance fue mejor de lo esperado. Al contar con más tiempo disponible, concluyó que era conveniente completar todo el flujo de la solución en el Sprint 2 y dejar el Sprint 3 únicamente para revisiones y oportunidades de mejora. \\ \hline
\textbf{Sprint 2 Goal} & \textbf{Nuestro enfoque se orienta a} completar la experiencia integral de Viora, de modo que productores y gestores técnicos accedan de forma segura y en su idioma, que el productor active el servicio por cuenta propia o a través de su cooperativa conservando el control de su información, y que las cooperativas incorporen a sus socios y supervisen el riesgo y el volumen productivo de su territorio. \textbf{Creemos que esto entrega} ingresos recurrentes y adopción institucional para el negocio, autonomía y confianza a los productores olivareros sobre el acceso al servicio y el uso de sus datos, y mayor anticipación a los gestores técnicos en la supervisión de campo y la planificación del acopio. \textbf{Esto se confirmará cuando} un productor nuevo cree su cuenta y active su acceso, pagando su plan o canjeando un código de su cooperativa, en una sola sesión y sin asistencia del equipo; cuando autorice o retire la compartición de sus datos y cambie de cooperativa sin perder su historial; y cuando un gestor técnico habilitado invite a sus socios, supervise sus parcelas e identifique por sector el riesgo, la proyección de acopio y el expediente agronómico de cada parcela sin solicitar información adicional a los productores. \\ \hline
\textbf{Sprint 2 Velocity} & 190 \\ \hline
\textbf{Sum of Story Points} & 241 \\ \hline
\end{longtable}
\end{center}

\clearpage

#### Aspect Leaders and Collaborators
&nbsp;

Para mantener la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 2, se actualizó la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos del proyecto.

Los aspectos considerados comprenden los nueve Bounded Contexts del diseño estratégico de Viora, junto con la presencia comercial de la *Landing Page* (*Comm.*), el módulo *Assistant* y los fundamentos arquitecturales de la plataforma (*Shared*). Por razones de espacio, la matriz se presenta dividida en dos partes, en la \autoref{tab:lacx-sprint-2-a} y la \autoref{tab:lacx-sprint-2-b}.

\begin{table}[H]
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 2 (parte 1 de 2)} \label{tab:lacx-sprint-2-a}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\setlength{\tabcolsep}{3.5pt}
\begin{tabular}{|p{2.5cm}|p{2.62cm}|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{IAM} & \textbf{Profiles} & \textbf{Subscription} & \textbf{Orchard} & \textbf{Telemetry} \\ \hline
Espada Lazo, Piero Anthony & espadita2510 \newline pierodeveloper25 & C & C & C & \textbf{L} & C & C \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & C & C & C & C & \textbf{L} \\ \hline
Paredes Maza, Victor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & \textbf{L} & C \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & \textbf{L} & C & C & C & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & C & \textbf{L} & C & C & C \\ \hline
\end{tabular}
\caption*{\textit{Nota.} L = Leader (Líder responsable del aspecto); C = Collaborator (Colaborador técnico). Elaboración propia.}
\end{table}

\begin{table}[H]
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 2 (parte 2 de 2)} \label{tab:lacx-sprint-2-b}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\setlength{\tabcolsep}{3.5pt}
\begin{tabular}{|p{2.5cm}|p{2.62cm}|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Phenology} & \textbf{Thinning} & \textbf{Harvest} & \textbf{Territory} & \textbf{Assistant} & \textbf{Shared} \\ \hline
Espada Lazo, Piero Anthony & espadita2510 \newline pierodeveloper25 & C & C & C & C & C & \textbf{L} \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & \textbf{L} & \textbf{L} & C & C & C \\ \hline
Paredes Maza, Victor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & \textbf{L} & C \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & C & C & \textbf{L} & C & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & C & C & C & C & C \\ \hline
\end{tabular}
\caption*{\textit{Nota.} L = Leader (Líder responsable del aspecto); C = Collaborator (Colaborador técnico). Elaboración propia.}
\end{table}

\clearpage

#### Sprint Backlog 2
&nbsp;

#### Development Evidence for Sprint Review
&nbsp;

