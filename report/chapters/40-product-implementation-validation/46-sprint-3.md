### Sprint 3

<!-- TODO: introducción del Sprint 3: objetivo del ciclo y mejoras de la validación. -->

#### Sprint Planning 3
&nbsp;

En esta sección se detallan los acuerdos alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 3, realizada de manera virtual mediante Discord. Con el flujo completo de la solución entregado en el Sprint 2, el equipo decidió dedicar esta iteración a las mejoras identificadas en las evaluaciones heurísticas de las entrevistas de validación. En consecuencia, se comprometieron 63 puntos de historia distribuidos en 17 ítems del Product Backlog: 40 puntos en 10 historias de usuario y 23 puntos en 7 historias técnicas.

A continuación, en la \autoref{tab:sprint-planning-3} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación, la capacidad comprometida y el Sprint Goal formulado bajo el estándar de Scrum.org.

\begin{center}
\small
\renewcommand{\arraystretch}{1.25}
\begin{longtable}{|p{4.2cm}|p{10.8cm}|}
\caption{Resumen de la sesión de planificación del Sprint 3 (Sprint Planning 3)} \label{tab:sprint-planning-3} \\
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

\textbf{Sprint \#} & Sprint 3 \\ \hline
\textbf{Sprint Planning Background} & Sesión de planificación virtual para definir los compromisos del tercer incremento de software de Viora. \\ \hline
\textbf{Date} & 2026-11-13 \\ \hline
\textbf{Time} & 08:00 PM \\ \hline
\textbf{Location} & Discord (Virtual) \\ \hline
\textbf{Prepared By} & Trinidad León, Jahat Jassiel \\ \hline
\textbf{Attendees (to planning meeting)} & Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Víctor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad León, Jahat Jassiel \\ \hline
\textbf{Sprint 2 Review Summary} & El Sprint 2 cumplió su objetivo, al completarse los 97 ítems comprometidos (241 puntos de historia). Se incorporaron 70 endpoints a los servicios web, que suman 103 en producción, y quedaron publicadas y culminadas la aplicación Android del productor y la aplicación Flutter del gestor técnico, ambas distribuidas mediante Firebase App Distribution. \\ \hline
\textbf{Sprint 2 Retrospective Summary} & El equipo valoró haber completado el flujo de la solución con tiempo para validarlo con usuarios reales. Las evaluaciones heurísticas de las entrevistas de validación identificaron ajustes en ambas aplicaciones, por lo que acordó dedicar el Sprint 3 a corregirlos, actualizando primero las historias afectadas. \\ \hline
\textbf{Sprint 3 Goal} & \textbf{Nuestro enfoque se orienta a} que los datos de Viora reflejen el trabajo real del olivar, de modo que el productor delimite sus lotes aun sin señal de ubicación, registre el descarte de su cosecha y reciba sus alertas críticas fuera de la aplicación, y que el gestor técnico identifique de inmediato al socio de cada parcela y proyecte el acopio con la clasificación por calibre de su planta y un nivel de confianza explícito. \textbf{Creemos que esto entrega} mayor retención y disposición de pago de los productores, al sustentar su suscripción en datos fiables; mayor adopción institucional de las cooperativas, al alinear la proyección con la forma en que reciben la aceituna; y, para el equipo, un producto validado con usuarios reales y listo para su cierre. \textbf{Esto se confirmará cuando} un productor delimite su lote con la ubicación desactivada, registre los kilos de descarte de su campaña y reciba fuera de la aplicación una alerta crítica de helada, y cuando un gestor técnico ubique al socio de una parcela crítica, dicte sus códigos de activación sin errores y consulte la proyección de acopio por rangos de calibre junto con su nivel de confianza y el muestreo pendiente. \\ \hline
\textbf{Sprint 3 Velocity} & 70 \\ \hline
\textbf{Sum of Story Points} & 63 \\ \hline

\end{longtable}
\end{center}

#### Aspect Leaders and Collaborators
&nbsp;

Para mantener la coherencia arquitectural y la comunicación interna del equipo ArcadiaDevs durante el Sprint 3, se actualizó la matriz de liderazgo y colaboración o \textit{Leadership-and-Collaboration Matrix} (LACX). Esta matriz asigna un líder responsable (\textit{Leader}, L) y los colaboradores técnicos (\textit{Collaborator}, C) para cada aspecto del proyecto.

A diferencia del Sprint 2, en este ciclo solo se consideran los Bounded Contexts que reciben cambios a partir de las evaluaciones heurísticas: \textit{Subscription} (\textit{Subscr.}, códigos de activación), \textit{Orchard} (delimitación de lotes), \textit{Telemetry} (alertas críticas), \textit{Thinning} (muestreo de calibre), \textit{Harvest} (descarte de cosecha), \textit{Territory} (riesgo territorial, acopio y rangos de calibre) y \textit{Assistant} (resumen del día). Los demás aspectos, como la presencia comercial de la \textit{Landing Page} (\textit{Comm.}), \textit{IAM}, \textit{Profiles}, \textit{Phenology} y \textit{Shared}, no se intervienen en este sprint. La matriz se presenta en la \autoref{tab:lacx-sprint-3}.

\begin{table}[H]
\caption{Matriz de liderazgo y colaboración (LACX) para el Sprint 3} \label{tab:lacx-sprint-3}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\setlength{\tabcolsep}{3.5pt}
\begin{tabular}{|p{2.5cm}|p{2.62cm}|c|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Subscr.} & \textbf{Orchard} & \textbf{Telemetry} & \textbf{Thinning} & \textbf{Harvest} & \textbf{Territory} & \textbf{Assistant} \\ \hline
Espada Lazo, Piero Anthony & espadita2510 \newline pieroedeveloper25 & C & C & C & \textbf{L} & C & C & C \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & C & C & C & \textbf{L} & C & C \\ \hline
Paredes Maza, Víctor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & C & C & C \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & C & C & C & C & \textbf{L} & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & \textbf{L} & \textbf{L} & C & C & C & \textbf{L} \\ \hline
\end{tabular}
\caption*{\textit{Nota.} L = Leader (líder responsable del aspecto); C = Collaborator (colaborador técnico). Elaboración propia.}
\end{table}

\clearpage

#### Sprint Backlog 3
&nbsp;

El objetivo central del Sprint Backlog 3 es atender las mejoras identificadas en las evaluaciones heurísticas de las aplicaciones móviles durante las entrevistas de validación. Para ello, se comprometen 17 ítems de trabajo (63 Story Points), conformados por 10 Historias de Usuario (US) y 7 Technical Stories (TS) cuyos escenarios se actualizaron a partir de esas evaluaciones, entre ellas la nueva configuración de rangos de calibre de la cooperativa (US55 y TS108). Los ítems se descomponen en 20 tareas técnicas distribuidas entre la aplicación del productor, la aplicación del gestor técnico y los servicios web. Como la mayoría de estas tareas son correcciones y ajustes sobre funcionalidades ya implementadas, su tiempo estimado es menor que el de las tareas de los sprints anteriores.

En la \autoref{tab:sprint-backlog-3} se expone el detalle de las 20 tareas técnicas, con su estimación, responsable y estado. El Sprint Backlog, distribuido a través de las columnas de flujo ágil \textit{Goal}, \textit{Stories}, \textit{To-Do}, \textit{In process}, \textit{To Review} y \textit{Done}, se encuentra registrado y disponible en el tablero oficial de gestión ágil de ArcadiaDevs en Trello, accesible mediante el siguiente enlace: \url{https://tinyurl.com/1acc0238-sb3}.

\begin{figure}[H]
\caption{Vista general del tablero del Sprint Backlog 3} \label{fig:sprint-backlog-3-trello}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/sprint-backlog/sb3.png}
\caption*{\textit{Nota.} Tablero de gestión ágil de ArcadiaDevs en Trello: \url{https://tinyurl.com/1acc0238-sb3}}
\end{figure}


\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\centering\arraybackslash}p{0.05\textwidth}|>{\raggedright\arraybackslash}p{0.18\textwidth}|>{\centering\arraybackslash}p{0.045\textwidth}|>{\raggedright\arraybackslash}p{0.125\textwidth}|>{\raggedright\arraybackslash}p{0.27\textwidth}|>{\centering\arraybackslash}p{0.065\textwidth}|>{\raggedright\arraybackslash}p{0.085\textwidth}|>{\scriptsize\centering\arraybackslash}p{0.035\textwidth}|}
\caption{Descomposición de ítems del Sprint Backlog 3 en tareas de trabajo (work-items)} \label{tab:sprint-backlog-3} \\
\hline
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 3} \\ \hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Est.} \newline \textbf{(Hours)} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endfirsthead

\hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task (Continuación)}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Est.} \newline \textbf{(Hours)} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{8}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Detalle de las 20 tareas técnicas de los 17 ítems comprometidos. El Sprint Backlog completo se encuentra disponible en el tablero de Trello: \url{https://tinyurl.com/1acc0238-sb3}. Elaboración propia.}} \\
\endlastfoot

% US09
US09 & Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial & TK01 & Ubicación desactivada en Android & Detectar el servicio de ubicación apagado antes de marcar el lote y ofrecer el trazado manual. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US09
US09 & Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial & TK02 & Área trazada frente al área aproximada & Comparar el área del contorno con la indicada y advertir la diferencia antes de guardar. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US12
US12 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & TK01 & Socio productor en Riesgo territorial & Rotular el nombre y el código de socio en el detalle de la parcela y en las tarjetas. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US18
US18 & Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela & TK01 & Notificación de alertas críticas & Notificar fuera de la aplicación las alertas de helada y de severidad crítica. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US18
US18 & Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela & TK02 & Aviso tras posponer una alerta & Volver a notificar la alerta crítica cuando termina el tiempo pospuesto. & 0.5 & Trinidad, Jahat & Done \\ \hline
% US24
US24 & Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline & TK01 & Muestra de frutos en Android & Registrar de forma opcional la cantidad y el peso de los frutos de la ronda y enviar \texttt{fruitSample}. & 1.4 & Espada, Piero & Done \\ \hline
% US29
US29 & Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva & TK01 & Descarte en el registro de cosecha & Agregar los kilos de aceituna de descarte al registro y al balance de la campaña en Android. & 1.4 & Li, Diana & Done \\ \hline
% US31
US31 & Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica & TK01 & Leyenda del semáforo con íconos & Acompañar cada nivel del semáforo con un ícono y una etiqueta en Flutter. & 0.7 & Paredes, Victor & Done \\ \hline
% US32
US32 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa & TK01 & Calibre y confianza en Acopio & Mostrar el desglose por rangos de calibre y el nivel de confianza con el muestreo pendiente. & 1.4 & Santi, Fabrizio & Done \\ \hline
% US45
US45 & Emisión de códigos de patrocinio para socios con asignación de cupo de hectáreas y control de saldo & TK01 & Códigos en una sola línea & Presentar cada código emitido completo en una línea con tipografía de ancho fijo. & 0.5 & Paredes, Victor & Done \\ \hline
% US54
US54 & Resumen diario de prioridades del campo & TK01 & Nombre del lote en la ventana de aclareo & Nombrar el lote de la ventana de aclareo en el resumen del día del asistente. & 0.7 & Trinidad, Jahat & Done \\ \hline
% US54
US54 & Resumen diario de prioridades del campo & TK02 & Días de la ventana en Inicio & Contar el día actual en la ventana de aclareo igual que el resumen del día. & 0.5 & Trinidad, Jahat & Done \\ \hline
% US55
US55 & Configuración de rangos de calibre de la cooperativa & TK01 & Pantalla de rangos de calibre & Construir en Flutter la configuración de rangos con validación de superposición. & 1.4 & Paredes, Victor & Done \\ \hline
% TS24
TS24 & Registro y sincronización de muestreos guiados de cuajado en campo & TK01 & Muestra de frutos en el muestreo & Aceptar \texttt{fruitSample} en la ronda y calcular \texttt{fruitsPerKg} con su rango admisible. & 0.9 & Santi, Fabrizio & Done \\ \hline
% TS29
TS29 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & TK01 & Código de socio en parcelas socias & Incluir \texttt{memberCode} enmascarado en \url{/api/v1/member-plots}. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS30
TS30 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra & TK01 & Calibre y confianza en la proyección & Agregar \texttt{caliberBreakdown} y \texttt{confidenceLevel} con el muestreo pendiente. & 1.4 & Santi, Fabrizio & Done \\ \hline
% TS39
TS39 & Asentamiento formal y balance de liquidación de cosecha de fin de campaña & TK01 & Descarte en el asentamiento de cosecha & Incluir los kilos de descarte en la validación y el cálculo de la liquidación. & 0.9 & Li, Diana & Done \\ \hline
% TS55
TS55 & Consulta detallada de liquidación de cosecha por campaña individual & TK01 & Descarte en el detalle de liquidación & Exponer el peso de descarte en el detalle de la liquidación de la campaña. & 0.5 & Li, Diana & Done \\ \hline
% TS60
TS60 & Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura & TK01 & Código de socio en el detalle & Incluir \texttt{memberCode} en \url{/api/v1/member-plots/{id}}. & 0.5 & Paredes, Victor & Done \\ \hline
% TS108
TS108 & Consulta y actualización de rangos de calibre de la cooperativa & TK01 & Endpoint de rangos de calibre & Implementar \texttt{GET} y \texttt{PUT} de \url{/api/v1/caliber-ranges} por licencia. & 1.4 & Paredes, Victor & Done \\ \hline

\end{longtable}
\end{center}

#### Development Evidence for Sprint Review
&nbsp;

En esta sección se explican y presentan los avances técnicos alcanzados en la implementación con relación a los productos que integran la solución del ecosistema Viora según el alcance comprometido para el Sprint 3: los servicios web del backend (\textit{Web Services}), la aplicación móvil nativa Android para el productor olivarero y la aplicación móvil multiplataforma Flutter para el gestor técnico de cooperativa (\textit{Mobile Applications}). La \textit{Landing Page} no registra cambios en este ciclo, ya que quedó culminada en el Sprint 2.

A continuación, se resumen los principales avances consolidados en la implementación de cada producto durante este tercer ciclo de desarrollo:

* **Web Services (\texttt{viora-platform}):** Se incorporaron el código de socio en las parcelas socias y en su detalle, el registro opcional de una muestra de frutos con su calibre en frutos por kilo dentro de la ronda de muestreo, la configuración de rangos de calibre por licencia, el desglose de la proyección de acopio por calibre junto con su nivel de confianza graduado y el muestreo pendiente, el peso de la aceituna de descarte en la liquidación de cosecha y el nombre del lote en la tarjeta de ventana del resumen del día.
* **Mobile Applications (\texttt{viora-mobile-android}):** Se incorporaron la detección del servicio de ubicación desactivado antes de delimitar un lote, la comparación del área trazada con el área aproximada, la notificación de alertas agroclimáticas críticas fuera de la aplicación, el registro del descarte en la liquidación de cosecha, el conteo del día actual en la ventana de aclareo de Inicio, el ajuste de las fechas de las fases por lote y la explicación de los términos agronómicos donde aparecen.
* **Mobile Applications (\texttt{viora-mobile-flutter}):** Se incorporaron la presentación de cada código de activación en una sola línea, la identificación del socio productor en Riesgo territorial, la leyenda del semáforo con íconos, la pantalla de configuración de rangos de calibre y la proyección de acopio por calibre con su nivel de confianza.

Para sustentar de manera verificable la actividad de ingeniería de software y el flujo de trabajo colaborativo del equipo ArcadiaDevs, en la \autoref{tab:development-evidence-sprint-3} se presentan los commits significativos de cada repositorio vinculados con las tareas del Sprint Backlog 3. Cada producto se administra en su propio repositorio de GitHub bajo la raíz organizacional común \texttt{upc-pre-1acc0238-2620-4951-arcadiadevs/}, la cual se omite en la primera columna para favorecer la diagramación y legibilidad. Para cada repositorio se detallan la rama de origen, el identificador abreviado (\textit{Commit Id}), el mensaje principal (\textit{Commit Message}), la descripción técnica de los cambios (\textit{Commit Message Body}) y la fecha de asentamiento (\textit{Committed on Date}).

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de desarrollo para Sprint Review (commits por repositorio)} \label{tab:development-evidence-sprint-3} \\
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

% viora-platform
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & e61ea77 & feat(territory): name the member code of each member plot &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & 820b672 & feat(thinning): weigh fruits in a sampling round to know their caliber &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & e19175a & feat(territory): keep the caliber ranges of each license &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & 7429f07 & feat(territory): split the intake by caliber and grade its confidence &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}harvest-\allowbreak{}discard-\allowbreak{}field & 477e4d9 & feat(harvest): include discarded olives in campaign settlement calculations &  & 19/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}daily-\allowbreak{}summary-\allowbreak{}window-\allowbreak{}plot & 1e7c36f & feat(assistant): name the plot of the window card in a field summary &  & 19/11/2026 \\ \hline
% viora-mobile-android
viora-mobile-android & feature/\allowbreak{}gps-\allowbreak{}disabled-\allowbreak{}detection & e96c464 & feat(plots): detect a disabled location service before marking a plot &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}plot-\allowbreak{}area-\allowbreak{}validation & a3dcba6 & feat(plots): compare the traced area with the approximate area &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}critical-\allowbreak{}alert-\allowbreak{}notifications & a5a3fde & feat(alerts): notify critical agroclimatic alerts outside the app &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}critical-\allowbreak{}alert-\allowbreak{}notifications & e03a57a & fix(alerts): notify a critical alert again once its snooze ends &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}harvest-\allowbreak{}discard-\allowbreak{}olive-\allowbreak{}field & b88d24a & feat(harvest): track discarded olives in settlements &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}home-\allowbreak{}window-\allowbreak{}days & 3fd9bbc & fix(home): count today in the thinning window like the daily summary &  & 19/11/2026 \\ \hline
% viora-mobile-flutter
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & c7c2e77 & fix(codes): keep each issued code whole on one line &  & 23/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & d722316 & feat(risk): name the member of each plot and mark the legend levels with icons &  & 23/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & f4b4e6f & feat(intake): grade the forecast confidence and split it by caliber ranges &  & 23/11/2026 \\ \hline

\end{longtable}
\end{center}

#### Testing Suite Evidence for Sprint Review
&nbsp;

<!-- TODO: resumen de la suite de pruebas de aceptación del Sprint 3. -->

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de la suite de pruebas para Sprint Review (commits por repositorio)} \label{tab:testing-suite-evidence-sprint-3} \\
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

<!-- TODO: filas de la tabla. -->

\end{longtable}
\end{center}

#### Execution Evidence for Sprint Review
&nbsp;

<!-- TODO: resumen de las vistas implementadas en el Sprint 3. -->


\noindent \textbf{Aplicación móvil del productor:}

<!-- TODO: figuras de la aplicación Android. -->

\noindent \textbf{Aplicación móvil del gestor técnico:}

<!-- TODO: figuras de la aplicación Flutter. -->

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 3.

* **Título:** Product Navigation - Sprint 3
* **Entrega:** Sprint 3
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \textit{Enlace pendiente}

\clearpage

#### Services Documentation Evidence for Sprint Review
&nbsp;

<!-- TODO: resumen de los endpoints incorporados o modificados en el Sprint 3. -->

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.12}
\setlength{\tabcolsep}{3pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.23\textwidth}|>{\centering\arraybackslash}p{0.07\textwidth}|>{\raggedright\arraybackslash}p{0.36\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.08\textwidth}|}
\caption{Matriz representativa de endpoints documentados con OpenAPI 3.1 en el Sprint 3} \label{tab:services-documentation-endpoints-sprint-3} \\
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

<!-- TODO: filas de la tabla. -->

\end{longtable}
\end{center}

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.09\textwidth}|>{\raggedright\arraybackslash}p{0.26\textwidth}|>{\raggedright\arraybackslash}p{0.10\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|}
\caption{Evidencias de documentación de Web Services para Sprint Review (commits de viora-platform)} \label{tab:services-documentation-commits-sprint-3} \\
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

<!-- TODO: filas de la tabla. -->

\end{longtable}
\end{center}

#### Software Deployment Evidence for Sprint Review
&nbsp;

<!-- TODO: resumen de los despliegues del Sprint 3. -->

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.14\textwidth}|>{\raggedright\arraybackslash}p{0.19\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|>{\raggedright\arraybackslash}p{0.27\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|}
\caption{Resumen de los despliegues del Sprint 3 por producto digital} \label{tab:deployment-summary-sprint-3} \\
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

<!-- TODO: filas de la tabla. -->

\end{longtable}
\end{center}

#### Team Collaboration Insights during Sprint
&nbsp;

<!-- TODO: análisis de Contributors de cada repositorio, sin nombrar integrantes. -->

\clearpage
