### Sprint 3

En este tercer ciclo de desarrollo se registra y sustenta el avance del producto y el trabajo colaborativo del equipo ArcadiaDevs orientado a incorporar en la solución Viora las mejoras identificadas por productores olivareros y gestores técnicos durante las entrevistas de validación. Con el flujo completo entregado en el Sprint 2, esta iteración se centra en corregir los problemas de usabilidad señalados en las evaluaciones heurísticas de las aplicaciones móviles y en ajustar los servicios web que las respaldan. A continuación, se detallan los acuerdos del Sprint Planning 3, la asignación de responsabilidades y el Sprint Backlog, acompañados por las evidencias de desarrollo en GitHub, la suite de pruebas de aceptación, la ejecución de los flujos de las aplicaciones móviles, la documentación OpenAPI y Swagger de los servicios web, el despliegue en la nube de cada producto y las analíticas de colaboración del equipo.

#### Sprint Planning 3
&nbsp;

En esta sección se detallan los acuerdos alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 3, realizada de manera virtual mediante Discord. Con el flujo completo de la solución entregado en el Sprint 2, el equipo decidió dedicar esta iteración a las mejoras identificadas en las evaluaciones heurísticas de las entrevistas de validación. En consecuencia, se comprometieron 73 puntos de historia distribuidos en 19 ítems del Product Backlog: 50 puntos en 12 historias de usuario y 23 puntos en 7 historias técnicas.

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
\textbf{Sprint 3 Velocity} & 80 \\ \hline
\textbf{Sum of Story Points} & 73 \\ \hline

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

El objetivo central del Sprint Backlog 3 es atender las mejoras identificadas en las evaluaciones heurísticas de las aplicaciones móviles durante las entrevistas de validación. Para ello, se comprometen 19 ítems de trabajo (73 Story Points), conformados por 12 Historias de Usuario (US) y 7 Technical Stories (TS) cuyos escenarios se actualizaron a partir de esas evaluaciones, entre ellas la nueva configuración de rangos de calibre de la cooperativa (US55 y TS108). Los ítems se descomponen en 23 tareas técnicas distribuidas entre la aplicación del productor, la aplicación del gestor técnico y los servicios web. Como la mayoría de estas tareas son correcciones y ajustes sobre funcionalidades ya implementadas, su tiempo estimado es menor que el de las tareas de los sprints anteriores.

En la \autoref{tab:sprint-backlog-3} se expone el detalle de las 23 tareas técnicas, con su estimación, responsable y estado. El Sprint Backlog, distribuido a través de las columnas de flujo ágil \textit{Goal}, \textit{Stories}, \textit{To-Do}, \textit{In process}, \textit{To Review} y \textit{Done}, se encuentra registrado y disponible en el tablero oficial de gestión ágil de ArcadiaDevs en Trello, accesible mediante el siguiente enlace: \url{https://tinyurl.com/1acc0238-sb3}.

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
\multicolumn{8}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Detalle de las 23 tareas técnicas de los 19 ítems comprometidos. El Sprint Backlog completo se encuentra disponible en el tablero de Trello: \url{https://tinyurl.com/1acc0238-sb3}. Elaboración propia.}} \\
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
% US20
US20 & Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) & TK01 & Ayuda del índice de alternancia & Explicar en lenguaje de campo el índice de alternancia en el detalle del lote. & 0.5 & Trinidad, Jahat & Done \\ \hline
% US24
US24 & Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline & TK01 & Muestra de frutos en Android & Registrar de forma opcional la cantidad y el peso de los frutos de la ronda y enviar \texttt{fruitSample}. & 1.4 & Espada, Piero & Done \\ \hline
% US27
US27 & Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo & TK01 & Ajuste de fechas de las fases & Permitir corregir por lote la fecha de inicio de cada fase, conservando su orden. & 1.4 & Li, Diana & Done \\ \hline
% US27
US27 & Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo & TK02 & Ayuda del término aclareo & Explicar el término aclareo donde aparece, con su equivalente raleo. & 0.5 & Trinidad, Jahat & Done \\ \hline
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
viora-mobile-android & feature/\allowbreak{}phenological-\allowbreak{}calendar-\allowbreak{}customization & e7ade71 & feat(phenology): add producer phase date adjustments to the olive calendar &  & 19/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}agronomic-\allowbreak{}term-\allowbreak{}help & 97cd009 & feat(glossary): explain agronomic terms where they appear &  & 19/11/2026 \\ \hline
% viora-mobile-flutter
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & c7c2e77 & fix(codes): keep each issued code whole on one line &  & 23/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & d722316 & feat(risk): name the member of each plot and mark the legend levels with icons &  & 23/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & f4b4e6f & feat(intake): grade the forecast confidence and split it by caliber ranges &  & 23/11/2026 \\ \hline

\end{longtable}
\end{center}

#### Testing Suite Evidence for Sprint Review
&nbsp;

En esta sección se documentan y sustentan las evidencias del aseguramiento de la calidad de software y las pruebas de aceptación automatizadas desarrolladas para el ecosistema Viora a lo largo del Sprint 3. Dichas pruebas se construyen bajo el enfoque de desarrollo guiado por comportamiento (\textit{Behavior-Driven Development}, BDD) empleando la sintaxis formal de Gherkin, y se gestionan a través del repositorio oficial de pruebas de aceptación bajo la organización en GitHub: \texttt{upc-pre-1acc0238-2620-4951-arcadiadevs}. De forma análoga a la sección previa de evidencias de desarrollo, el prefijo de la organización es omitido, identificándose el componente directamente como \texttt{viora-acceptance-tests}.

Durante esta iteración, la suite se amplió a un total de 108 especificaciones de prueba de aceptación (\textit{feature files} de extensión \texttt{.feature}), una por cada historia técnica del Product Backlog. Para ello, se incorporó la especificación nueva de TS108 (rangos de calibre de la cooperativa) y se actualizaron 6 especificaciones existentes (TS24, TS29, TS30, TS39, TS55 y TS60) con los escenarios derivados de las evaluaciones heurísticas, de modo que la suite se mantenga alineada con los criterios de aceptación vigentes. La versión resultante de la suite se publicó en la rama \texttt{main} con la etiqueta \texttt{2.0.0} y la release TB2.

Con el propósito de exhibir la actividad de ingeniería de pruebas durante el sprint, a continuación se presentan los 7 commits registrados en el repositorio \texttt{viora-acceptance-tests}. Para cada registro se especifica la rama de origen, el identificador abreviado del commit (SHA-1), el mensaje principal (\textit{Commit Message}), la descripción técnica de los cambios (\textit{Commit Message Body}) y la fecha formal de asentamiento (\textit{Committed on Date}).

A continuación, en la \autoref{tab:testing-suite-evidence-sprint-3} se expone la matriz detallada de evidencias de la suite de pruebas para el Sprint Review:

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

% viora-acceptance-tests
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 454a21a & feat: add at108 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 8e0b6f8 & feat: update at60 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 0573c02 & feat: update at55 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 39e0f01 & feat: update at39 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & d4e859c & feat: update at30 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 187c5fa & feat: update at29 acceptance test &  & 23/11/2026 \\ \hline
viora-acceptance-tests & feature/\allowbreak{}sprint-\allowbreak{}3-\allowbreak{}acceptance-\allowbreak{}tests & 8cfd9d2 & feat: update at24 acceptance test &  & 23/11/2026 \\ \hline

\end{longtable}
\end{center}

#### Execution Evidence for Sprint Review
&nbsp;

En esta sección se presenta la evidencia de ejecución de los productos digitales mejorados durante el Sprint 3, a partir de los hallazgos de las evaluaciones heurísticas. En la aplicación móvil del productor se incorporaron la detección de la ubicación desactivada, la comparación del área trazada, las alertas críticas fuera de la aplicación, el registro del descarte de cosecha, el ajuste de las fechas de las fases, la explicación de los términos agronómicos y la coherencia de la información de Inicio. En la aplicación móvil del gestor técnico se incorporaron la identificación del socio productor, la leyenda del semáforo con íconos, la proyección de acopio con nivel de confianza y desglose por calibre, la configuración de rangos de calibre y la presentación legible de los códigos de activación. Las capturas de las principales vistas se complementan con un video que muestra la visualización y la navegación logradas.


\noindent \textbf{Aplicación móvil del productor:}

Al registrar un lote, la aplicación detecta si la ubicación del dispositivo está desactivada y lo indica en la opción «Caminar el contorno». Al elegirla, un diálogo ofrece activar la ubicación o dibujar el lote directamente en el mapa (\autoref{fig:exec-app-location-s3}).

\begin{figure}[H]
\caption{Detección de la ubicación desactivada en el registro del lote.} \label{fig:exec-app-location-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/03-location-off-detected.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/04-enable-location-dialog.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Durante el trazado, el mapa muestra una escala y compara el área trazada con el área declarada del lote. Si ambas no coinciden, la aplicación solicita una confirmación antes de guardar el contorno (\autoref{fig:exec-app-area-s3}).

\begin{figure}[H]
\caption{Comparación del área trazada con el área declarada.} \label{fig:exec-app-area-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/08-traced-vs-declared-area.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/09-area-mismatch-confirmation.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En Mi cuenta, el productor activa la preferencia «Alertas críticas» para recibir avisos fuera de la aplicación. Cuando se genera una alerta crítica, llega una notificación de alta prioridad aun con la aplicación cerrada y, al tocarla, se abre el detalle de la alerta (\autoref{fig:exec-app-critical-alerts-s3}).

\begin{figure}[H]
\caption{Alertas críticas recibidas fuera de la aplicación.} \label{fig:exec-app-critical-alerts-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/12-critical-alerts-preference.jpg}
\hspace{0.75cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/13-critical-alert-notification.jpg}
\hspace{0.75cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/14-alert-detail-from-notification.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El registro de cosecha incorpora un campo opcional para la aceituna de descarte, que se suma al total cosechado del lote (\autoref{fig:exec-app-harvest-s3}).

\begin{figure}[H]
\caption{Registro de cosecha con la aceituna de descarte.} \label{fig:exec-app-harvest-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/07-harvest-discard-olives.jpg}
\caption*{\textit{Nota.} Captura de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El calendario fenológico del lote permite al productor ajustar la fecha de inicio de cada fase según lo observado en su campo, mediante un selector de fecha (\autoref{fig:exec-app-phenology-s3}).

\begin{figure}[H]
\caption{Calendario fenológico con el ajuste del inicio de fase.} \label{fig:exec-app-phenology-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/01-phenology-calendar.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/02-phase-start-adjustment.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Los términos agronómicos cuentan con una ayuda «¿Qué significa?» que los explica en lenguaje sencillo, como el aclareo en Inicio y el índice de alternancia en el detalle del lote (\autoref{fig:exec-app-terms-s3}).

\begin{figure}[H]
\caption{Ayuda de los términos agronómicos.} \label{fig:exec-app-terms-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/05-thinning-term-help.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/06-alternation-index-help.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Finalmente, la tarjeta principal de Inicio y el «Resumen de hoy» presentan información coherente: ambos indican los días que faltan para la ventana de aclareo, y el resumen nombra el lote al que se refiere sin repetir el texto (\autoref{fig:exec-app-home-s3}).

\begin{figure}[H]
\caption{Inicio con la ventana de aclareo y el resumen de hoy coherentes.} \label{fig:exec-app-home-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/10-home-thinning-window.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-producer/11-daily-summary-plot.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil del gestor técnico:}

En Inicio, la leyenda del semáforo del valle acompaña cada nivel con un ícono y su etiqueta, y las visitas sugeridas identifican al socio productor con su nombre y código de socio (\autoref{fig:exec-manager-home-s3}).

\begin{figure}[H]
\caption{Inicio con la leyenda del semáforo y el socio en las visitas sugeridas.} \label{fig:exec-manager-home-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/01-home-legend.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/02-home-suggested-visits.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

En Riesgo territorial, cuando no se dispone de la ubicación del gestor, el mapa muestra todo el valle y permite elegir el sector. La vista de lista repite la leyenda con íconos para cada nivel (\autoref{fig:exec-manager-risk-s3}).

\begin{figure}[H]
\caption{Riesgo territorial sin ubicación y lista con la leyenda del semáforo.} \label{fig:exec-manager-risk-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/03-territorial-risk-map.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/04-territorial-risk-list.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El detalle del sector ordena las parcelas por prioridad y rotula al socio con su código. Al abrir una parcela, el encabezado identifica al socio productor antes de la carga frutal y la prescripción (\autoref{fig:exec-manager-member-s3}).

\begin{figure}[H]
\caption{Detalle del sector y parcela con el socio productor identificado.} \label{fig:exec-manager-member-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/05-sector-detail.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/06-member-plot.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La proyección de acopio muestra su nivel de confianza y la cobertura de muestreo, e indica cuántas parcelas y hectáreas faltan muestrear para alcanzar una confianza alta (\autoref{fig:exec-manager-intake-s3}).

\begin{figure}[H]
\caption{Proyección de acopio con nivel de confianza y cobertura de muestreo.} \label{fig:exec-manager-intake-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/07-intake-projection.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/08-intake-coverage.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La proyección se desglosa por los rangos de calibre de la planta. Mientras la cooperativa no los configura, la pantalla de rangos explica que la proyección se muestra solo por aceituna verde y negra (\autoref{fig:exec-manager-caliber-s3}).

\begin{figure}[H]
\caption{Desglose por calibre y configuración de rangos sin registrar.} \label{fig:exec-manager-caliber-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/09-intake-caliber.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/10-caliber-ranges-empty.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Al registrar los rangos, el gestor ingresa los límites en frutos por kilo con un teclado numérico, y la aplicación señala el rango incompleto antes de guardar (\autoref{fig:exec-manager-ranges-s3}).

\begin{figure}[H]
\caption{Edición de rangos de calibre y validación de un rango incompleto.} \label{fig:exec-manager-ranges-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/11-caliber-ranges-edit.jpg}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/12-caliber-ranges-error.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

Finalmente, los códigos de activación emitidos se muestran completos en una sola línea, con las opciones para compartirlos o revocarlos (\autoref{fig:exec-manager-codes-s3}).

\begin{figure}[H]
\caption{Códigos de activación presentados en una sola línea.} \label{fig:exec-manager-codes-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-3/mobile-app-manager/13-activation-codes.jpg}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}


\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 3.

* **Título:** Product Navigation - Sprint 3
* **Entrega:** Sprint 3
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \textit{Enlace pendiente}

\clearpage

#### Services Documentation Evidence for Sprint Review
&nbsp;

En esta sección se presenta la relación de servicios web RESTful incorporados o modificados y documentados bajo el estándar OpenAPI 3.1 para la plataforma Viora (\texttt{viora-platform}) durante el Sprint 3. Sobre la arquitectura guiada por el dominio (Domain-Driven Design, DDD) de los sprints anteriores, el equipo de backend ajustó los contratos de los contextos Territory, Thinning y Harvest para atender los hallazgos de las evaluaciones heurísticas: la identificación del socio de cada parcela, la muestra de frutos con su calibre, los rangos de calibre de la cooperativa, la proyección de acopio por calibre con nivel de confianza y el peso de la aceituna de descarte en la liquidación de cosecha. Las decisiones de diseño de estos cambios se registraron en el ADR-010 del repositorio.

Durante este ciclo se incorporaron 2 endpoints, los de consulta y reemplazo de rangos de calibre, y se ampliaron los contratos de 6 endpoints existentes, de modo que la API alcanza 105 endpoints organizados en 34 grupos de la documentación. En la \autoref{tab:services-documentation-endpoints-sprint-3} se presenta la matriz de los 8 endpoints del Sprint 3; los 105 endpoints se encuentran accesibles y documentados en Swagger UI.

\noindent \textbf{Puntos de acceso a la documentación interactiva (Swagger UI / OpenAPI):}
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{Entorno desplegado en producción (Render Cloud):} \url{https://viora-platform.onrender.com/swagger-ui/index.html}
    \item \textbf{Entorno de desarrollo local:} \url{http://localhost:8080/swagger-ui/index.html}
    \item \textbf{Especificación OpenAPI en formato JSON:} \url{https://viora-platform.onrender.com/v3/api-docs}
\end{itemize}

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
\multicolumn{5}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Selección representativa de endpoints sobre un total de 105 endpoints desplegados en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}) y localmente (\url{http://localhost:8080/swagger-ui/index.html}).}} \\
\endlastfoot

Consultar rangos de calibre & GET & \url{https://viora-platform.onrender.com/api/v1/caliber-ranges} & Sin parámetros & 200, 401, 403 \\ \hline
Reemplazar rangos de calibre & PUT & \url{https://viora-platform.onrender.com/api/v1/caliber-ranges} & Body: \texttt{ReplaceCaliberRangesResource} & 200, 400, 401, 403 \\ \hline
Listar parcelas socias con código de socio & GET & \url{https://viora-platform.onrender.com/api/v1/member-plots} & Query: \texttt{latitude}, \texttt{longitude} & 200, 400, 401, 403 \\ \hline
Consultar parcela socia & GET & \url{https://viora-platform.onrender.com/api/v1/member-plots/{id}} & Path: \texttt{id} & 200, 401, 403, 404 \\ \hline
Registrar muestreo con muestra de frutos & POST & \url{https://viora-platform.onrender.com/api/v1/plots/{plotId}/samplings} & Path: \texttt{plotId}; Body: \texttt{SubmitSamplingResource} & 201, 400, 404, 409 \\ \hline
Consultar proyección de acopio por calibre & GET & \url{https://viora-platform.onrender.com/api/v1/intake-forecasts/{campaignYear}} & Path: \texttt{campaignYear} & 200, 400, 401, 403, 404 \\ \hline
Liquidar cosecha con descarte & POST & \url{https://viora-platform.onrender.com/api/v1/plots/{plotId}/harvest-settlements} & Path: \texttt{plotId}; Header: \texttt{Idempotency-Key}; Body: \texttt{SettleHarvestResource} & 200, 201, 400, 403, 404, 409, 422 \\ \hline
Consultar liquidación de una campaña & GET & \url{https://viora-platform.onrender.com/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}} & Path: \texttt{plotId}, \texttt{campaignYear} & 200, 400, 403, 404 \\ \hline

\end{longtable}
\end{center}

\noindent \textbf{Especificación detallada de endpoints representativos del Sprint 3:}

A continuación se detallan 4 endpoints que reflejan las reglas de negocio incorporadas en el Sprint 3. Los ejemplos 2 y 4 corresponden a respuestas obtenidas en producción, y los ejemplos 1 y 3 se construyen a partir de los esquemas documentados en el contrato OpenAPI:

\vspace{0.25cm}
\noindent \textbf{1. Reemplazar los rangos de calibre de la licencia (\texttt{PUT /\allowbreak{}api/\allowbreak{}v1/\allowbreak{}caliber-ranges}):}

* **Propósito y reglas de negocio:** Permite al gestor técnico definir los rangos de calibre en frutos por kilo con los que su planta clasifica la aceituna. Los rangos van del fruto más grande al más pequeño, son consecutivos, sin superposiciones ni huecos, se ubican dentro de la escala comercial de 60 a 2000 frutos por kilo y son 20 como máximo. Una lista vacía elimina la configuración.
* **Parámetros de entrada:** Body `ReplaceCaliberRangesResource` (`ranges`: lista de `minFruitsPerKg` y `maxFruitsPerKg`).
* **Ejemplo de solicitud y respuesta (\texttt{200 OK}):**

```json
// Solicitud:
{ "ranges": [
    { "minFruitsPerKg": 140, "maxFruitsPerKg": 180 },
    { "minFruitsPerKg": 181, "maxFruitsPerKg": 220 },
    { "minFruitsPerKg": 221, "maxFruitsPerKg": 260 } ] }
// Respuesta (200 OK): la lista de rangos registrada
[ { "minFruitsPerKg": 140, "maxFruitsPerKg": 180 },
  { "minFruitsPerKg": 181, "maxFruitsPerKg": 220 },
  { "minFruitsPerKg": 221, "maxFruitsPerKg": 260 } ]
```

* **Explicación de la respuesta:** El servicio reemplaza por completo la configuración de la licencia y devuelve los rangos vigentes; desde ese momento, la proyección de acopio se desglosa con esos rangos.

\vspace{0.35cm}
\noindent \textbf{2. Consultar la proyección de acopio por calibre (\texttt{GET /\allowbreak{}api/\allowbreak{}v1/\allowbreak{}intake-forecasts/\allowbreak{}\{campaignYear\}}):}

* **Propósito y reglas de negocio:** Devuelve la proyección agregada de la campaña con su desglose por rango de calibre y un nivel de confianza graduado. La confianza se calcula con la menor de dos coberturas, la de parcelas muestreadas y la de hectáreas muestreadas, frente a umbrales configurables de 50\% y 80\%.
* **Parámetros de entrada:** Path `campaignYear` (año de la campaña).
* **Ejemplo de respuesta en producción (\texttt{200 OK}, campos incorporados en el Sprint 3):**

```json
{
  "campaignYear": 2026, "status": "SUFFICIENT", "coveragePercent": 50,
  "confidenceLevel": "MEDIUM", "pendingPlots": 1, "pendingHectares": 1,
  "caliberBreakdown": [
    { "minFruitsPerKg": 140, "maxFruitsPerKg": 180, "tons": 0,
      "greenTons": 0, "blackTons": 0, "unclassifiedTons": 0 } ],
  "unsizedTons": 20, "outOfRangeTons": 0
}
```

* **Explicación de la respuesta:** `caliberBreakdown` reparte las toneladas de cada parcela estimable en el rango de su calibre; `unsizedTons` agrupa las parcelas sin calibre y `outOfRangeTons` las que quedan fuera de todos los rangos. `pendingPlots` y `pendingHectares` indican cuánto falta muestrear para el siguiente nivel, y `status` y `coveragePercent` se mantienen por compatibilidad con los clientes existentes. En la campaña consultada, las 20 toneladas proyectadas figuran como `unsizedTons` porque la parcela estimable aún no registra una muestra de frutos con calibre.

\vspace{0.35cm}
\noindent \textbf{3. Liquidar la cosecha con aceituna de descarte (\texttt{POST /\allowbreak{}api/\allowbreak{}v1/\allowbreak{}plots/\allowbreak{}\{plotId\}/\allowbreak{}harvest-settlements}):}

* **Propósito y reglas de negocio:** Registra la liquidación formal de la campaña de una parcela. Desde el Sprint 3 acepta el campo opcional `discardOlivesKg`, que se suma al total de cosecha y se conserva en el desglose; si no se informa, se considera cero. Un valor negativo se rechaza con 400.
* **Parámetros de entrada:** Path `plotId`, Header opcional `Idempotency-Key` y Body `SettleHarvestResource` (`campaignYear`, `greenOlivesKg`, `blackOlivesKg`, `discardOlivesKg`, `commercialFruitsPerKg`, entre otros).
* **Ejemplo de solicitud y respuesta (\texttt{201 Created}):**

```json
// Solicitud:
{ "campaignYear": 2025, "greenOlivesKg": 4200.0,
  "blackOlivesKg": 8100.0, "discardOlivesKg": 300.0 }
// Respuesta (201 Created), campos principales:
{ "campaignYear": 2025, "greenOlivesKg": 4200.0, "blackOlivesKg": 8100.0,
  "discardOlivesKg": 300.0, "totalYieldKg": 12600.0, "status": "SETTLED" }
```

* **Explicación de la respuesta:** El total de cosecha (`totalYieldKg`) incluye el descarte, mientras que el desglose conserva por separado la aceituna verde, la negra y la de descarte.

\vspace{0.35cm}
\noindent \textbf{4. Manejo de errores RFC 7807 en los rangos de calibre (\texttt{PUT /\allowbreak{}api/\allowbreak{}v1/\allowbreak{}caliber-ranges}):}

* **Propósito y reglas de negocio:** Cuando un rango está incompleto, fuera de escala, invertido, superpuesto o deja un hueco, el servicio rechaza la solicitud y conserva la configuración vigente.
* **Parámetros de entrada:** Body `ReplaceCaliberRangesResource` con un rango en conflicto, por ejemplo 140 a 200 seguido de 180 a 260.
* **Ejemplo de respuesta en producción (\texttt{400 Bad Request}):**

```json
{
  "detail": "Un rango de calibre se superpone con el anterior",
  "instance": "/api/v1/caliber-ranges", "status": 400,
  "title": "Bad Request",
  "type": "https://api.viora.com/errors/validation-error",
  "code": "VALIDATION_ERROR",
  "reason": "territory.caliber_range.overlapping", "rangeIndex": 1
}
```

* **Explicación de la respuesta:** El manejador global de excepciones devuelve un objeto RFC 7807 con el mensaje localizado en `detail`, la clave del conflicto en `reason` y la posición del rango en `rangeIndex`, desde 0, para que la aplicación del gestor señale el rango que debe corregirse.

\noindent \textbf{Evidencias de interacción con la documentación interactiva (Swagger UI):}

Para comprobar la operatividad de los contratos, se ejecutaron pruebas en vivo sobre la consola interactiva Swagger UI desplegada en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}), autenticadas con el token de una cuenta de gestor técnico de demostración. Se priorizaron consultas y errores controlados para no alterar los datos de producción, y en cada captura se aprecia la URL de la solicitud.

Las pruebas cubrieron los siguientes flujos:

\begin{itemize}\setlength{\itemsep}{2pt}\setlength{\parskip}{0pt}
    \item \textbf{Rangos de calibre (\texttt{GET /api/v1/caliber-ranges}):} Consulta de la configuración de la licencia (\autoref{fig:exec-swagger-caliber-ranges-s3}). Swagger UI confirmó la respuesta \texttt{200 OK} con el rango registrado de 140 a 180 frutos por kilo.
    \item \textbf{Proyección de acopio (\texttt{GET /api/v1/intake-forecasts/2026}):} Consulta de la campaña 2026 (\autoref{fig:exec-swagger-intake-s3}). La respuesta \texttt{200 OK} devolvió el nivel de confianza \texttt{MEDIUM}, el muestreo pendiente y el desglose por calibre.
    \item \textbf{Rango superpuesto (\texttt{PUT /api/v1/caliber-ranges}):} Envío de dos rangos superpuestos, de 140 a 200 y de 180 a 260 frutos por kilo (\autoref{fig:exec-swagger-error-rfc7807-s3}). El servicio respondió \texttt{400 Bad Request} bajo el esquema RFC 7807 con \texttt{reason} y \texttt{rangeIndex}, y una nueva consulta confirmó que la configuración vigente no cambió.
\end{itemize}

\begin{figure}[H]
\caption{Consulta de los rangos de calibre y respuesta 200 OK en Swagger UI.} \label{fig:exec-swagger-caliber-ranges-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-3/web-services/01-caliber-ranges-200.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Proyección de acopio con nivel de confianza y desglose por calibre en Swagger UI.} \label{fig:exec-swagger-intake-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-3/web-services/02-intake-forecast-200.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Rango de calibre superpuesto y respuesta 400 Bad Request (RFC 7807) en Swagger UI.} \label{fig:exec-swagger-error-rfc7807-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-3/web-services/03-caliber-ranges-400.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en el entorno de producción (Render). Elaboración propia.}
\end{figure}

Los resultados verificaron la correspondencia entre las anotaciones OpenAPI del backend y el contrato JSON publicado (\url{https://viora-platform.onrender.com/v3/api-docs}), que la aplicación Flutter del gestor técnico emplea como referencia para integrar los nuevos campos.

\clearpage

\noindent \textbf{Repositorio oficial y trazabilidad de control de versiones:}

La suite completa de Web Services y su documentación OpenAPI residen en el repositorio oficial de GitHub:
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{URL del repositorio:} \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}
\end{itemize}

En la \autoref{tab:services-documentation-commits-sprint-3} se listan los commits verificados en el historial del repositorio \texttt{viora-platform}, asociados con controladores REST, contratos y documentación de la API del Sprint 3:

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

viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & e61ea77 & feat(territory): name the member code of each member plot &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & 820b672 & feat(thinning): weigh fruits in a sampling round to know their caliber &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & e19175a & feat(territory): keep the caliber ranges of each license &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & 7429f07 & feat(territory): split the intake by caliber and grade its confidence &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}manager-\allowbreak{}heuristics-\allowbreak{}fixes & 2c74737 & docs: record the heuristic evaluation changes &  & 22/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}harvest-\allowbreak{}discard-\allowbreak{}field & 7c6bf25 & feat(harvest): add discard olives weight field to settlement resources &  & 19/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}harvest-\allowbreak{}discard-\allowbreak{}field & 3ac005f & feat(harvest): include discard olives weight in settlement validation and calculations &  & 19/11/2026 \\ \hline

\end{longtable}
\end{center}

\clearpage

#### Software Deployment Evidence for Sprint Review
&nbsp;

En esta sección se resumen los procesos de despliegue (\textit{deployment}) realizados durante el Sprint 3 para los productos digitales de Viora. Como los productos quedaron publicados y culminados en el Sprint 2, en este ciclo el trabajo se centró en publicar las mejoras derivadas de las evaluaciones heurísticas mediante los mismos mecanismos de despliegue continuo: los servicios web en Render y las aplicaciones móviles Android y Flutter en Firebase App Distribution. El Landing Page no requirió cambios y la base de datos se mantuvo en la misma instancia. En la \autoref{tab:deployment-summary-sprint-3} se resume qué se desplegó, dónde y cómo; a continuación se detallan los servicios web, la base de datos y las aplicaciones móviles con sus evidencias.

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

Landing Page & \texttt{viora-landing-page} & Vercel & Sin cambios en el Sprint 3; se mantiene la integración con Git & Publicado y culminado \\ \hline
Servicios web (API RESTful) & \texttt{viora-platform} & Render (\textit{Web Service} con Docker) & Despliegue automático desde la rama \texttt{main} con los contratos actualizados & Publicado y culminado \\ \hline
Base de datos & No aplica & Filess.io (PostgreSQL) & Las tablas de rangos de calibre y las nuevas columnas se crean al desplegar los servicios web & Publicado y culminado \\ \hline
Aplicación móvil Android & \texttt{viora-mobile-android} & Firebase App Distribution & Despliegue continuo con GitHub Actions; APK \textit{release} firmado & Publicado y culminado \\ \hline
Aplicación móvil Flutter & \texttt{viora-mobile-flutter} & Firebase App Distribution & Despliegue continuo con GitHub Actions; APK \textit{release} firmado & Publicado y culminado \\ \hline

\end{longtable}
\end{center}

\noindent \textbf{Servicios web de backend (Render):}

La API RESTful `viora-platform` continúa desplegada en Render como \textit{Web Service} con Docker y despliegue automático desde la rama `main`. Durante el Sprint 3, cada integración de una rama de \textit{release} en `main` activó un nuevo despliegue sin intervención manual (\textit{Auto-Deploy}), con lo que se publicaron los ajustes de contratos y los nuevos endpoints de rangos de calibre derivados de las evaluaciones heurísticas. La \autoref{fig:deploy-render-s3} muestra el historial de despliegues automáticos y el servicio en estado \textit{Live} sobre la rama `main`.

\begin{figure}[H]
\caption{Despliegues automáticos del servicio viora-platform en Render.} \label{fig:deploy-render-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-deployment/sprint-3/backend/01-render-auto-deploys.png}
\caption*{\textit{Nota.} Captura del panel de Render. Elaboración propia.}
\end{figure}

La documentación de la API se mantiene disponible en el entorno de producción mediante Swagger UI, publicada en \url{https://viora-platform.onrender.com/swagger-ui/index.html}, desde donde se ejecutaron las pruebas de la sección Services Documentation Evidence (\autoref{fig:deploy-swagger-s3}).

\begin{figure}[H]
\caption{Documentación de Viora Agronomic Platform API en Swagger UI de producción.} \label{fig:deploy-swagger-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-3/backend/02-swagger-production.png}
\caption*{\textit{Nota.} Captura de Swagger UI del servicio desplegado en Render. Elaboración propia.}
\end{figure}

\noindent \textbf{Base de datos en la nube (Filess.io):}

La base de datos PostgreSQL aprovisionada en el Sprint 1 se mantuvo como única instancia de datos de la plataforma. La \autoref{fig:deploy-filess-s3} confirma que `viora_thoughage` sigue activa (\textit{Active}) con PostgreSQL 15 en la región Nürnberg. Las tablas de rangos de calibre y las nuevas columnas incorporadas en este sprint se crean desde el backend al desplegarse, por lo que no fue necesario aprovisionar recursos adicionales.

\begin{figure}[H]
\caption{Base de datos activa en Filess.io.} \label{fig:deploy-filess-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-deployment/sprint-3/database/01-filess-database-active.png}
\caption*{\textit{Nota.} Captura del panel de Filess.io. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil Android (Firebase App Distribution):}

La aplicación del productor mantiene el despliegue continuo configurado en los sprints anteriores: al integrarse una rama de \textit{release} en `main`, el flujo de GitHub Actions compila y firma el APK \textit{release} y lo distribuye a los grupos de verificadores. En la \autoref{fig:deploy-android-tester-s3} se observa, desde el dispositivo de un verificador, la versión que incorpora las mejoras del Sprint 3 publicada como la más reciente y disponible para su descarga.

\begin{figure}[H]
\caption{Versión más reciente de la aplicación del productor en Firebase App Tester.} \label{fig:deploy-android-tester-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.22\textwidth]{report/assets/sprint-deployment/sprint-3/application/02-android-app-tester-releases.png}
\caption*{\textit{Nota.} Captura de la aplicación Firebase App Tester en el dispositivo de un verificador; se ocultó el correo de contacto. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil Flutter (Firebase App Distribution):}

La aplicación del gestor técnico sigue el mismo esquema. En la consola de Firebase App Distribution, la aplicación Viora Gestor registra las versiones distribuidas durante el sprint, cada una enviada a los verificadores invitados, con el seguimiento de cuántos la aceptaron y descargaron (\autoref{fig:deploy-flutter-versions-s3}).

\begin{figure}[H]
\caption{Versiones de la aplicación del gestor técnico en la consola de Firebase App Distribution.} \label{fig:deploy-flutter-versions-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-3/application/04-flutter-app-distribution-versions.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution; se ocultó el correo de contacto. Elaboración propia.}
\end{figure}

Desde el dispositivo de un verificador, la aplicación del gestor técnico (paquete `pe.edu.upc.viora.gestor`) muestra la versión más reciente disponible para su descarga (\autoref{fig:deploy-flutter-tester-s3}).

\begin{figure}[H]
\caption{Versión más reciente de la aplicación del gestor técnico en Firebase App Tester.} \label{fig:deploy-flutter-tester-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.22\textwidth]{report/assets/sprint-deployment/sprint-3/application/01-flutter-app-tester-releases.png}
\caption*{\textit{Nota.} Captura de la aplicación Firebase App Tester en el dispositivo de un verificador; se ocultó el correo de contacto. Elaboración propia.}
\end{figure}

Como novedad del Sprint 3, la aplicación del gestor técnico cuenta con sus propios vínculos de invitación asociados al grupo `viora-client-testers` (\autoref{fig:deploy-flutter-links-s3}). Este grupo reúne a los verificadores externos, entre ellos los participantes de las entrevistas de validación, de modo que acceden a la versión vigente sin una invitación individual (\autoref{fig:deploy-client-testers-s3}).

\begin{figure}[H]
\caption{Vínculos de invitación de la aplicación del gestor técnico.} \label{fig:deploy-flutter-links-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-deployment/sprint-3/application/05-flutter-invitation-links.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Grupo de verificadores viora-client-testers en Firebase App Distribution.} \label{fig:deploy-client-testers-s3}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-3/application/03-client-testers-group.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution; se ocultaron los nombres y correos de los verificadores. Elaboración propia.}
\end{figure}

Con este sprint, los servicios web, la base de datos y ambas aplicaciones móviles mantienen su estado de publicados y culminados, ahora con las mejoras derivadas de la validación con usuarios.

#### Team Collaboration Insights during Sprint
&nbsp;

En esta sección se analizan las métricas de colaboración del equipo ArcadiaDevs durante el Sprint 3, iniciado el 13 de noviembre, orientado a incorporar en los servicios web y en las aplicaciones móviles las mejoras identificadas en las evaluaciones heurísticas. El desarrollo continuó bajo GitFlow, con ramas de características integradas en `develop` y publicadas en `main` mediante ramas de \textit{release}, y con la convención Conventional Commits para mantener un historial trazable entre los integrantes. Como el Landing Page quedó culminado en el Sprint 2, su repositorio no registra actividad en este ciclo.

Para respaldar la trazabilidad del trabajo colaborativo en los repositorios de la organización en GitHub, a continuación se presentan los analíticos de contribución temporal y autoría de código (\textit{Contributors}) de cada repositorio con cambios, con la ventana de análisis de los últimos tres meses.

En el repositorio `viora-platform` la actividad del Sprint 3 es menor que la de los sprints anteriores y se distribuye en las semanas del 9, 16 y 23 de noviembre (\autoref{fig:contributors-s3}, panel a). Este comportamiento corresponde a ajustes puntuales sobre contextos ya implementados: el descarte en la liquidación de cosecha, el nombre del lote en el resumen del día, y el código de socio, el calibre del muestreo y los rangos de calibre de la proyección de acopio.

En el repositorio `viora-mobile-android` la actividad del Sprint 3 se concentra en las semanas del 16 y del 23 de noviembre (\autoref{fig:contributors-s3}, panel b), en las que se integraron las mejoras de la aplicación del productor: la detección de la ubicación desactivada, la comparación de áreas, las alertas críticas fuera de la aplicación, el descarte de cosecha, el ajuste de las fechas de las fases y la ayuda de términos agronómicos.

En el repositorio `viora-mobile-flutter` la mayor parte del trabajo se realizó en el Sprint 2, por lo que durante el Sprint 3 solo se registra actividad en la semana del 23 de noviembre (\autoref{fig:contributors-s3}, panel c). Este ritmo es coherente con el alcance del ciclo, que se limitó a las correcciones de la aplicación del gestor técnico identificadas en su evaluación heurística.

\begin{figure}[H]
\caption{Vistas de Contributors de GitHub de los repositorios con cambios en el Sprint 3.} \label{fig:contributors-s3}
\vspace{0.25cm}
\centering
\begin{minipage}[t]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.38\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-3/viora-platform-contributors.png}
\par\vspace{0.1cm}{\small (a) viora-platform}
\end{minipage}
\hfill
\begin{minipage}[t]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.38\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-3/viora-mobile-android-contributors.png}
\par\vspace{0.1cm}{\small (b) viora-mobile-android}
\end{minipage}
\hfill
\begin{minipage}[t]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.38\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-3/viora-mobile-flutter-contributors.png}
\par\vspace{0.1cm}{\small (c) viora-mobile-flutter}
\end{minipage}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub, con la ventana de los últimos tres meses. Elaboración propia.}
\end{figure}


\clearpage
