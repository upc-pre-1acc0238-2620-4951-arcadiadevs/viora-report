### Sprint 2

En este segundo ciclo de desarrollo se registra y sustenta el avance del producto y el trabajo colaborativo del equipo ArcadiaDevs orientado a entregar el flujo completo de la solución Viora, dejando el Sprint 3 para las mejoras señaladas por los usuarios y la versión final del video About the Product. A continuación, se detallan los acuerdos del Sprint Planning 2, la asignación de responsabilidades y el Sprint Backlog, acompañados por las evidencias de desarrollo en GitHub, la suite de pruebas de aceptación, la ejecución de los flujos de las aplicaciones móviles, la documentación OpenAPI y Swagger de los servicios web, el despliegue en la nube de cada producto y las analíticas de colaboración del equipo.

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
\textbf{Sprint 2 Goal} & \textbf{Nuestro enfoque se orienta a} completar la experiencia integral de Viora, de modo que productores y gestores técnicos accedan de forma segura y en su idioma, que el productor active el servicio por cuenta propia o a través de su cooperativa conservando el control de su información, que las cooperativas incorporen a sus socios y supervisen el riesgo y el volumen productivo de su territorio, y que el productor comprenda sus recomendaciones a partir de sus propios datos. \textbf{Creemos que esto entrega} ingresos recurrentes y adopción institucional para el negocio, autonomía y confianza a los productores olivareros sobre el acceso al servicio y el uso de sus datos, mayor comprensión de sus decisiones agronómicas, y mayor anticipación a los gestores técnicos en la supervisión de campo y la planificación del acopio. \textbf{Esto se confirmará cuando} un productor nuevo cree su cuenta y active su acceso, pagando su plan o canjeando un código de su cooperativa, en una sola sesión y sin asistencia del equipo; cuando autorice o retire la compartición de sus datos; cuando reciba la explicación de una recomendación sustentada en sus propios datos; y cuando un gestor técnico habilitado invite a sus socios, supervise sus parcelas e identifique por sector el riesgo, la proyección de acopio y el expediente agronómico de cada parcela sin solicitar información adicional a los productores. \\ \hline
\textbf{Sprint 2 Velocity} & 250 \\ \hline
\textbf{Sum of Story Points} & 241 \\ \hline
\end{longtable}
\end{center}

\clearpage

#### Aspect Leaders and Collaborators
&nbsp;

Para mantener la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 2, se actualizó la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos del proyecto.

Los aspectos considerados comprenden los nueve Bounded Contexts del diseño estratégico de Viora, junto con la presencia comercial de la *Landing Page* (*Comm.*) y los módulos transversales de la plataforma *Assistant* y *Shared*. Por razones de espacio, la matriz se presenta dividida en dos partes, en la \autoref{tab:lacx-sprint-2-a} y la \autoref{tab:lacx-sprint-2-b}.

\begin{table}[H]
\caption{Matriz de liderazgo y colaboración (LACX) para el Sprint 2 (parte 1 de 2)} \label{tab:lacx-sprint-2-a}
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
\caption{Matriz de liderazgo y colaboración (LACX) para el Sprint 2 (parte 2 de 2)} \label{tab:lacx-sprint-2-b}
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

El objetivo central del Sprint Backlog 2 es descomponer operativamente los 97 ítems de trabajo comprometidos (241 Story Points), conformados por 25 Historias de Usuario (US), 70 Technical Stories (TS) y 2 Spikes de investigación técnica (SPK), en tareas técnicas atómicas, medibles y verificables. Dicha descomposición abarca la gestión de identidad y perfiles, la suscripción y los códigos de cooperativa, la supervisión territorial del gestor técnico, la asistencia agronómica y los servicios web complementarios del ecosistema, estructurados bajo Domain-Driven Design.

Para efectos de diagramación, síntesis documental y legibilidad dentro del presente informe, en la \autoref{tab:sprint-backlog-2} se expone de manera representativa exactamente una tarea técnica principal (\textit{Work-Item / Task}) por cada requerimiento comprometido (US, TS o SPK). El desglose granular del Sprint Backlog en su totalidad, compuesto por 204 tareas técnicas distribuidas a través de las columnas de flujo ágil \textit{Goal}, \textit{Stories}, \textit{To-Do}, \textit{In process}, \textit{To Review} y \textit{Done}, se encuentra registrado y disponible en el tablero oficial de gestión ágil de ArcadiaDevs en Trello, accesible mediante el siguiente enlace: \url{https://tinyurl.com/1acc0238-sb2}.

\begin{figure}[H]
\caption{Vista general del tablero del Sprint Backlog 2} \label{fig:sprint-backlog-2-trello}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/sprint-backlog/sb2.png}
\caption*{\textit{Nota.} Tablero de gestión ágil de ArcadiaDevs en Trello: \url{https://tinyurl.com/1acc0238-sb2}}
\end{figure}

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\centering\arraybackslash}p{0.05\textwidth}|>{\raggedright\arraybackslash}p{0.18\textwidth}|>{\centering\arraybackslash}p{0.045\textwidth}|>{\raggedright\arraybackslash}p{0.125\textwidth}|>{\raggedright\arraybackslash}p{0.27\textwidth}|>{\centering\arraybackslash}p{0.065\textwidth}|>{\raggedright\arraybackslash}p{0.085\textwidth}|>{\scriptsize\centering\arraybackslash}p{0.035\textwidth}|}
\caption{Descomposición de ítems del Sprint Backlog 2 en tareas de trabajo (work-items)} \label{tab:sprint-backlog-2} \\
\hline
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 2} \\ \hline
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
\multicolumn{8}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Síntesis representativa de una tarea por requerimiento (US, TS y SPK). El Sprint Backlog completo con la totalidad de las 204 tareas técnicas desglosadas se encuentra disponible en el tablero de Trello: \url{https://tinyurl.com/1acc0238-sb2}. Elaboración propia.}} \\
\endlastfoot

% SPK03
SPK03 & Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks & TK01 & Prototipo Checkout Pro en Sandbox & Validar preferencia y Checkout\allowbreak{}Service con credenciales de prueba. & 1.0 & Espada, Piero & Done \\ \hline
% TS06
TS06 & Generación de preferencia de checkout para suscripción de productor independiente & TK01 & Comando Create\allowbreak{}Subscription\allowbreak{}Command en aplicación & Ejecutar Create\allowbreak{}Subscription\allowbreak{}Command en Subscription\allowbreak{}Command\allowbreak{}Service creando suscripción pendiente de pago. & 0.9 & Espada, Piero & Done \\ \hline
% TS07
TS07 & Recepción y procesamiento de webhooks de notificación de pagos & TK01 & Autenticación Payment\allowbreak{}Notification\allowbreak{}Authenticator en infraestructura & Validar firma de la notificación de Mercado Pago. & 0.9 & Espada, Piero & Done \\ \hline
% TS08
TS08 & Generación de lote de códigos de activación para socios cooperativos con reserva de cuota & TK01 & Comando Issue\allowbreak{}Invitation\allowbreak{}Codes\allowbreak{}Command en aplicación & Ejecutar Issue\allowbreak{}Invitation\allowbreak{}Codes\allowbreak{}Command en Invitation\allowbreak{}Code\allowbreak{}Command\allowbreak{}Service reservando plazas y hectáreas. & 0.9 & Trinidad, Jahat & Done \\ \hline
% TS09
TS09 & Consulta y auditoría de inventario de lotes y códigos de activación de cooperativa & TK01 & Consulta Get\allowbreak{}Invitation\allowbreak{}Codes\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Invitation\allowbreak{}Codes\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Invitation\allowbreak{}Code\allowbreak{}Query\allowbreak{}Service filtrando códigos por estado. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS10
TS10 & Canje atómico de código de activación institucional con validación de cuota y consentimiento & TK01 & Comando Redeem\allowbreak{}Cooperative\allowbreak{}Code\allowbreak{}Command en aplicación & Ejecutar Redeem\allowbreak{}Cooperative\allowbreak{}Code\allowbreak{}Command en Cooperative\allowbreak{}Code\allowbreak{}Redemption\allowbreak{}Command\allowbreak{}Service validando cuota y consentimiento. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US06
US06 & Suscripción individual al Plan Productor mediante pasarela de pago digital & TK01 & Pantalla Producer\allowbreak{}Plan\allowbreak{}Screen en presentación & Integrar Producer\allowbreak{}Plan\allowbreak{}View\allowbreak{}Model e Individual\allowbreak{}Checkout\allowbreak{}View\allowbreak{}Model con planes. & 1.8 & Espada, Piero & Done \\ \hline
% US07
US07 & Activación de membresía corporativa de socio mediante canje de código de cooperativa & TK01 & Pantalla Redeem\allowbreak{}Code\allowbreak{}Screen en presentación & Capturar código y estados mediante Redeem\allowbreak{}Code\allowbreak{}View\allowbreak{}Model. & 1.4 & Trinidad, Jahat & Done \\ \hline
% US08
US08 & Administración de la cartera de socios productores y consulta de cuota corporativa & TK01 & Padrón Flutter en MembersPage & Integrar Members\allowbreak{}View\allowbreak{}Model con Get\allowbreak{}Members\allowbreak{}Use\allowbreak{}Case. & 1.4 & Paredes, Victor & Done \\ \hline
% US12
US12 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & TK01 & Mapa RiskPage en presentación & Integrar Risk\allowbreak{}Map\allowbreak{}View\allowbreak{}Model con parcelas y posición del gestor. & 1.8 & Paredes, Victor & Done \\ \hline
% TS28
TS28 & Consulta y exportación del expediente agronómico definitivo & TK01 & Agregado SealedDossier en dominio & Modelar expediente sellado con huella y documento almacenado. & 0.9 & Li, Diana & Done \\ \hline
% TS29
TS29 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & TK01 & Consulta Get\allowbreak{}Member\allowbreak{}Plots\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Member\allowbreak{}Plots\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Member\allowbreak{}Plot\allowbreak{}Query\allowbreak{}Service agregando riesgo de parcelas socias. & 0.9 & Santi, Fabrizio & Done \\ \hline
% TS30
TS30 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra & TK01 & Servicio Yield\allowbreak{}Aggregation\allowbreak{}Domain\allowbreak{}Service en dominio & Consolidar toneladas de parcelas estimables por aptitud comercial. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US01
US01 & Registro de cuenta de acceso y credenciales seguras con asignación de rol & TK01 & Registro Android con SignUpUseCase & Integrar IamScreen e IamViewModel con SignUpUseCase. & 1.4 & Li, Diana & Done \\ \hline
% US02
US02 & Inicio de sesión y autenticación persistente mediante tokens & TK01 & Sesión Android con SignInUseCase & Autenticar mediante SignInUseCase y persistir sesión en AuthRepository. & 1.4 & Li, Diana & Done \\ \hline
% US03
US03 & Consulta y actualización de datos de perfil y contacto & TK01 & Perfil Android en Edit\allowbreak{}Profile\allowbreak{}Screen & Consultar Observe\allowbreak{}Profile\allowbreak{}Use\allowbreak{}Case y actualizar mediante Update\allowbreak{}Profile\allowbreak{}Use\allowbreak{}Case. & 1.0 & Trinidad, Jahat & Done \\ \hline
% US04
US04 & Cambio seguro de contraseña de acceso & TK01 & Contraseña Android en Change\allowbreak{}Password\allowbreak{}Screen & Integrar Change\allowbreak{}Password\allowbreak{}View\allowbreak{}Model con Change\allowbreak{}Password\allowbreak{}Use\allowbreak{}Case. & 1.0 & Li, Diana & Done \\ \hline
% US05
US05 & Recuperación de contraseña olvidada mediante enlace por correo & TK01 & Recuperación Android de contraseña & Orquestar Request\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Use\allowbreak{}Case, Check\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Link\allowbreak{}Use\allowbreak{}Case y Reset\allowbreak{}Password\allowbreak{}Use\allowbreak{}Case. & 1.4 & Li, Diana & Done \\ \hline
% US43
US43 & Completado de perfil de usuario y contacto validado & TK01 & Perfil Android con Update\allowbreak{}Profile\allowbreak{}Use\allowbreak{}Case & Validar contacto desde Edit\allowbreak{}Profile\allowbreak{}View\allowbreak{}Model. & 1.4 & Trinidad, Jahat & Done \\ \hline
% US42
US42 & Configuración y cambio de idioma de la interfaz en la aplicación móvil & TK01 & Idioma Android en Language\allowbreak{}Bottom\allowbreak{}Sheet & Persistir AppLanguage y aplicar Accept\allowbreak{}Language\allowbreak{}Interceptor. & 1.0 & Li, Diana & Done \\ \hline
% TS01
TS01 & Registro de credenciales de cuenta de usuario y asignación de rol en IAM & TK01 & Comando Register\allowbreak{}User\allowbreak{}Account\allowbreak{}Command en aplicación & Ejecutar Register\allowbreak{}User\allowbreak{}Account\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service creando cuenta con rol. & 0.9 & Li, Diana & Done \\ \hline
% TS02
TS02 & Autenticación de usuarios y emisión de tokens de acceso con rol & TK01 & Comando Authenticate\allowbreak{}User\allowbreak{}Command en aplicación & Ejecutar Authenticate\allowbreak{}User\allowbreak{}Command en User\allowbreak{}Session\allowbreak{}Command\allowbreak{}Service validando credenciales y emitiendo tokens. & 0.9 & Li, Diana & Done \\ \hline
% TS03
TS03 & Renovación periódica de tokens de sesión mediante Refresh Token & TK01 & Comando Refresh\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en aplicación & Ejecutar Refresh\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en User\allowbreak{}Session\allowbreak{}Command\allowbreak{}Service renovando sesión con token. & 0.7 & Li, Diana & Done \\ \hline
% TS04
TS04 & Consulta de información de perfil del usuario autenticado & TK01 & Consulta Get\allowbreak{}Profile\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Profile\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en Profile\allowbreak{}Query\allowbreak{}Service leyendo perfil del usuario. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS05
TS05 & Actualización parcial de datos de perfil con validación telefónica & TK01 & Comando Update\allowbreak{}Contact\allowbreak{}Profile\allowbreak{}Command en aplicación & Ejecutar Update\allowbreak{}Contact\allowbreak{}Profile\allowbreak{}Command en Profile\allowbreak{}Command\allowbreak{}Service validando cambios parciales de teléfono. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS35
TS35 & Completado inicial de perfil de usuario con validación telefónica & TK01 & Comando Update\allowbreak{}Contact\allowbreak{}Profile\allowbreak{}Command en aplicación & Ejecutar Update\allowbreak{}Contact\allowbreak{}Profile\allowbreak{}Command en Profile\allowbreak{}Command\allowbreak{}Service normalizando teléfono por país. & 0.9 & Trinidad, Jahat & Done \\ \hline
% TS36
TS36 & Actualización de contraseña para sesión de usuario autenticado & TK01 & Comando Change\allowbreak{}User\allowbreak{}Password\allowbreak{}Command en aplicación & Ejecutar Change\allowbreak{}User\allowbreak{}Password\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service verificando contraseña actual. & 0.7 & Li, Diana & Done \\ \hline
% TS37
TS37 & Solicitud de código de restablecimiento de contraseña olvidada vía correo & TK01 & Comando Request\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Command en aplicación & Ejecutar Request\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service emitiendo token temporal. & 0.9 & Li, Diana & Done \\ \hline
% TS38
TS38 & Restablecimiento de contraseña mediante token temporal de un solo uso & TK01 & Comando Reset\allowbreak{}User\allowbreak{}Password\allowbreak{}Command en aplicación & Ejecutar Reset\allowbreak{}User\allowbreak{}Password\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service consumiendo token y actualizando contraseña. & 0.7 & Li, Diana & Done \\ \hline
% US44
US44 & Activación de licencia corporativa de supervisión mediante código maestro de un solo uso & TK01 & Pantalla License\allowbreak{}Activation\allowbreak{}Page en presentación & Capturar código maestro mediante License\allowbreak{}Activation\allowbreak{}View\allowbreak{}Model. & 1.4 & Paredes, Victor & Done \\ \hline
% TS56
TS56 & Consulta de la licencia institucional a cargo del gestor técnico & TK01 & Consulta Get\allowbreak{}All\allowbreak{}Cooperative\allowbreak{}Licenses\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}All\allowbreak{}Cooperative\allowbreak{}Licenses\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Cooperative\allowbreak{}License\allowbreak{}Query\allowbreak{}Service listando licencias del gestor. & 0.7 & Espada, Piero & Done \\ \hline
% TS57
TS57 & Consulta de balance de licencia institucional y cuota corporativa & TK01 & Consulta Get\allowbreak{}Cooperative\allowbreak{}License\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Cooperative\allowbreak{}License\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Cooperative\allowbreak{}License\allowbreak{}Query\allowbreak{}Service calculando balance de plazas. & 0.9 & Espada, Piero & Done \\ \hline
% TS58
TS58 & Consulta de padrón de socios productores agremiados & TK01 & Consulta Get\allowbreak{}Cooperative\allowbreak{}Members\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Cooperative\allowbreak{}Members\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Cooperative\allowbreak{}Member\allowbreak{}Query\allowbreak{}Service listando socios de licencia. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US45
US45 & Emisión de códigos de patrocinio para socios con asignación de cupo de hectáreas y control de saldo & TK01 & Pantalla CodesPage en presentación & Configurar lote mediante Issue\allowbreak{}Codes\allowbreak{}View\allowbreak{}Model. & 1.4 & Trinidad, Jahat & Done \\ \hline
% US46
US46 & Canje de código de membresía patrocinada con consentimiento informado de compartición de datos & TK01 & Vista previa con Preview\allowbreak{}Cooperative\allowbreak{}Code\allowbreak{}Use\allowbreak{}Case & Mostrar organización, cuota y consentimiento antes del canje. & 1.0 & Trinidad, Jahat & Done \\ \hline
% US47
US47 & Revocación de códigos de patrocinio no canjeados y restitución de saldo de licencia & TK01 & Pantalla Issued\allowbreak{}Codes\allowbreak{}Page en presentación & Listar códigos y acciones mediante CodesViewModel. & 1.0 & Trinidad, Jahat & Done \\ \hline
% TS41
TS41 & Revocación anticipada de código de activación cooperativo y restitución de cuota & TK01 & Comando Revoke\allowbreak{}Invitation\allowbreak{}Code\allowbreak{}Command en aplicación & Ejecutar Revoke\allowbreak{}Invitation\allowbreak{}Code\allowbreak{}Command en Invitation\allowbreak{}Code\allowbreak{}Command\allowbreak{}Service restituyendo plaza y hectáreas. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS64
TS64 & Canje de código maestro para activación del gestor técnico & TK01 & Comando Redeem\allowbreak{}Manager\allowbreak{}Code\allowbreak{}Command en aplicación & Ejecutar Redeem\allowbreak{}Manager\allowbreak{}Code\allowbreak{}Command en Manager\allowbreak{}Code\allowbreak{}Redemption\allowbreak{}Command\allowbreak{}Service asignando licencia al gestor. & 0.7 & Espada, Piero & Done \\ \hline
% TS59
TS59 & Consulta de sectores asignados a las parcelas socias & TK01 & Consulta Get\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Assignments\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Assignments\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}Query\allowbreak{}Service aplicando alcance gestor o socio. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US49
US49 & Gestión y asignación de sectores territoriales editables para agrupación y filtrado de lotes & TK01 & Gestión de sectores en Flutter & Consumir sector-zones para crear, renombrar y listar sectores. & 1.4 & Espada, Piero & Done \\ \hline
% TS60
TS60 & Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura & TK01 & Consulta Get\allowbreak{}Member\allowbreak{}Plot\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Member\allowbreak{}Plot\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Member\allowbreak{}Plot\allowbreak{}Query\allowbreak{}Service verificando socio que comparte. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US48
US48 & Desvinculación de supervisión agronómica y cese de compartición de datos de parcelas & TK01 & Retiro con Withdraw\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Use\allowbreak{}Case & Dejar de compartir datos desde Cooperative\allowbreak{}Membership\allowbreak{}Screen. & 1.4 & Espada, Piero & Done \\ \hline
% TS61
TS61 & Consulta y suscripción a alertas agroclimáticas y fitosanitarias territoriales internas & TK01 & Consulta Get\allowbreak{}Sector\allowbreak{}Alerts\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Sector\allowbreak{}Alerts\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Sector\allowbreak{}Alert\allowbreak{}Query\allowbreak{}Service leyendo alertas de sectores. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US31
US31 & Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica & TK01 & Detalle Sector\allowbreak{}Detail\allowbreak{}Page en presentación & Integrar Sector\allowbreak{}Detail\allowbreak{}View\allowbreak{}Model con semáforo por mayor gravedad. & 1.8 & Paredes, Victor & Done \\ \hline
% TS62
TS62 & Consulta del histórico de acopio por campaña & TK01 & Consulta Get\allowbreak{}Intake\allowbreak{}Forecasts\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Intake\allowbreak{}Forecasts\allowbreak{}By\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Intake\allowbreak{}Forecast\allowbreak{}Query\allowbreak{}Service sumando acopio por campaña. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS65
TS65 & Vista previa de código de invitación cooperativa & TK01 & Consulta Get\allowbreak{}Cooperative\allowbreak{}Code\allowbreak{}Preview\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Cooperative\allowbreak{}Code\allowbreak{}Preview\allowbreak{}Query en Cooperative\allowbreak{}Code\allowbreak{}Query\allowbreak{}Service evaluando código sin consumirlo. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US32
US32 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa & TK01 & Pantalla de acopio en Flutter & Presentar proyección agregada y cobertura muestral. & 1.8 & Paredes, Victor & Done \\ \hline
% TS63
TS63 & Generación de instantánea documental y metadatos de expediente agronómico provisional en campaña activa & TK01 & Consulta Get\allowbreak{}Provisional\allowbreak{}Dossier\allowbreak{}By\allowbreak{}Plot\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Provisional\allowbreak{}Dossier\allowbreak{}By\allowbreak{}Plot\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Member\allowbreak{}Plot\allowbreak{}Query\allowbreak{}Service compilando expediente provisional. & 0.9 & Santi, Fabrizio & Done \\ \hline
% US30
US30 & Generación y exportación del expediente agronómico de parcela & TK01 & Pantalla Agronomic\allowbreak{}Dossier\allowbreak{}Screen en presentación & Integrar Agronomic\allowbreak{}Dossier\allowbreak{}View\allowbreak{}Model con estados del expediente. & 1.8 & Li, Diana & Done \\ \hline
% SPK04
SPK04 & Investigación de Spring AI para respuestas validadas y de persistencia y tareas en segundo plano en Android & TK01 & Prototipo Spring AI con validación & Evaluar Spring\allowbreak{}Ai\allowbreak{}Answer\allowbreak{}Text\allowbreak{}Writer, Answer\allowbreak{}Text\allowbreak{}Validator y Model\allowbreak{}Circuit\allowbreak{}Breaker con Groq. & 1.0 & Trinidad, Jahat & Done \\ \hline
% TS66
TS66 & Consulta del catálogo de preguntas por contexto de consulta & TK01 & Consulta Get\allowbreak{}Question\allowbreak{}Catalog\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Question\allowbreak{}Catalog\allowbreak{}Query en Question\allowbreak{}Catalog\allowbreak{}Query\allowbreak{}Service filtrando preguntas por contexto. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US50
US50 & Consulta de preguntas disponibles según el contexto agronómico & TK01 & Hoja AssistantSheet en presentación & Mostrar preguntas por contexto mediante Assistant\allowbreak{}Sheet\allowbreak{}View\allowbreak{}Model. & 1.4 & Paredes, Victor & Done \\ \hline
% TS67
TS67 & Solicitud idempotente de respuesta del asistente & TK01 & Validador Answer\allowbreak{}Text\allowbreak{}Validator en dominio & Rechazar textos con cifras ausentes en los hechos. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US51
US51 & Obtención de respuesta sustentada en datos reales & TK01 & Respuesta Assistant\allowbreak{}Answer\allowbreak{}Views en presentación & Renderizar texto, indicadores, fuente y acciones de respuesta. & 1.8 & Paredes, Victor & Done \\ \hline
% TS68
TS68 & Consulta del historial de respuestas del asistente & TK01 & Consulta Get\allowbreak{}Answer\allowbreak{}History\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Answer\allowbreak{}History\allowbreak{}Query en Assistant\allowbreak{}Answer\allowbreak{}Query\allowbreak{}Service limitando historial a diez días. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS69
TS69 & Consulta de la última respuesta de un contexto de consulta & TK01 & Consulta Get\allowbreak{}Latest\allowbreak{}Answer\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Latest\allowbreak{}Answer\allowbreak{}Query en Assistant\allowbreak{}Answer\allowbreak{}Query\allowbreak{}Service recuperando última respuesta. & 0.7 & Trinidad, Jahat & Done \\ \hline
% TS70
TS70 & Consulta de una respuesta guardada del asistente & TK01 & Consulta Get\allowbreak{}Answer\allowbreak{}By\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Answer\allowbreak{}By\allowbreak{}Id\allowbreak{}Query en Assistant\allowbreak{}Answer\allowbreak{}Query\allowbreak{}Service calculando vigencia de respuesta. & 0.7 & Trinidad, Jahat & Done \\ \hline
% US52
US52 & Consulta del historial de respuestas recientes & TK01 & Historial Assistant\allowbreak{}Recent en presentación & Mostrar recientes mediante Observe\allowbreak{}Recent\allowbreak{}Answers\allowbreak{}Use\allowbreak{}Case. & 1.4 & Paredes, Victor & Done \\ \hline
% US53
US53 & Actualización de respuestas ante cambios en los datos & TK01 & Reapertura con Find\allowbreak{}Answer\allowbreak{}To\allowbreak{}Reopen\allowbreak{}Use\allowbreak{}Case & Recuperar última respuesta y aplicar Move\allowbreak{}On\allowbreak{}From\allowbreak{}Answer\allowbreak{}Use\allowbreak{}Case. & 1.4 & Paredes, Victor & Done \\ \hline
% TS71
TS71 & Consulta del resumen diario del asistente & TK01 & Comando Prepare\allowbreak{}Daily\allowbreak{}Summary\allowbreak{}Command en aplicación & Ejecutar Prepare\allowbreak{}Daily\allowbreak{}Summary\allowbreak{}Command en Daily\allowbreak{}Summary\allowbreak{}Command\allowbreak{}Service reutilizando resumen del día. & 0.9 & Trinidad, Jahat & Done \\ \hline
% US54
US54 & Resumen diario de prioridades del campo & TK01 & Tarjeta Home\allowbreak{}Assistant\allowbreak{}Card en presentación & Mostrar resumen mediante Daily\allowbreak{}Summary\allowbreak{}View\allowbreak{}Model y Load\allowbreak{}Daily\allowbreak{}Summary\allowbreak{}Use\allowbreak{}Case. & 1.4 & Paredes, Victor & Done \\ \hline
% TS72
TS72 & Cierre de sesión del usuario & TK01 & Comando Sign\allowbreak{}Out\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en aplicación & Ejecutar Sign\allowbreak{}Out\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en User\allowbreak{}Session\allowbreak{}Command\allowbreak{}Service cerrando sesión del token. & 0.5 & Li, Diana & Done \\ \hline
% TS73
TS73 & Eliminación definitiva de la cuenta & TK01 & Comando Delete\allowbreak{}User\allowbreak{}Account\allowbreak{}Command en aplicación & Ejecutar Delete\allowbreak{}User\allowbreak{}Account\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service verificando contraseña antes de eliminar. & 0.7 & Li, Diana & Done \\ \hline
% TS74
TS74 & Verificación del correo de la cuenta & TK01 & Comando Open\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en aplicación & Ejecutar Open\allowbreak{}User\allowbreak{}Session\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service validando código y activando cuenta. & 0.7 & Li, Diana & Done \\ \hline
% TS75
TS75 & Reenvío del código de verificación de correo & TK01 & Comando Resend\allowbreak{}Email\allowbreak{}Verification\allowbreak{}Command en aplicación & Ejecutar Resend\allowbreak{}Email\allowbreak{}Verification\allowbreak{}Command en User\allowbreak{}Account\allowbreak{}Command\allowbreak{}Service aplicando intervalo de reenvío. & 0.5 & Li, Diana & Done \\ \hline
% TS76
TS76 & Verificación de vigencia del enlace de restablecimiento de contraseña & TK01 & Consulta Check\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Token\allowbreak{}Query en aplicación & Ejecutar Check\allowbreak{}Password\allowbreak{}Reset\allowbreak{}Token\allowbreak{}Query en User\allowbreak{}Account\allowbreak{}Query\allowbreak{}Service validando enlace sin consumirlo. & 0.5 & Li, Diana & Done \\ \hline
% TS77
TS77 & Consulta de planes de suscripción individual & TK01 & Servicio Subscription\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Subscription\allowbreak{}Query\allowbreak{}Service listando planes individuales. & 0.5 & Espada, Piero & Done \\ \hline
% TS78
TS78 & Consulta de la suscripción actual del productor & TK01 & Servicio Subscription\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Subscription\allowbreak{}Query\allowbreak{}Service recuperando suscripción actual. & 0.5 & Espada, Piero & Done \\ \hline
% TS79
TS79 & Consulta de una suscripción del productor & TK01 & Servicio Subscription\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Subscription\allowbreak{}Query\allowbreak{}Service validando titularidad de suscripción. & 0.5 & Espada, Piero & Done \\ \hline
% TS80
TS80 & Preparación del pago de una suscripción & TK01 & Servicio Checkout\allowbreak{}Service en aplicación & Implementar Checkout\allowbreak{}Service preparando pago idempotente. & 0.9 & Espada, Piero & Done \\ \hline
% TS81
TS81 & Consulta de condiciones de ampliación del plan & TK01 & Servicio Quota\allowbreak{}Extension\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Quota\allowbreak{}Extension\allowbreak{}Query\allowbreak{}Service evaluando ampliación del plan. & 0.5 & Espada, Piero & Done \\ \hline
% TS82
TS82 & Solicitud de ampliación pagada del plan individual & TK01 & Comando Request\allowbreak{}Quota\allowbreak{}Extension\allowbreak{}Command en aplicación & Ejecutar Request\allowbreak{}Quota\allowbreak{}Extension\allowbreak{}Command en Quota\allowbreak{}Extension\allowbreak{}Command\allowbreak{}Service registrando ampliación pendiente de pago. & 0.9 & Espada, Piero & Done \\ \hline
% TS83
TS83 & Consulta de una ampliación del plan & TK01 & Servicio Quota\allowbreak{}Extension\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Quota\allowbreak{}Extension\allowbreak{}Query\allowbreak{}Service validando titularidad de ampliación. & 0.5 & Espada, Piero & Done \\ \hline
% TS84
TS84 & Preparación del pago de una ampliación & TK01 & Servicio Checkout\allowbreak{}Service en aplicación & Implementar Checkout\allowbreak{}Service preparando pago de ampliación. & 0.9 & Espada, Piero & Done \\ \hline
% TS85
TS85 & Canje de código de ampliación de hectáreas & TK01 & Comando Redeem\allowbreak{}Extension\allowbreak{}Code\allowbreak{}Command en aplicación & Ejecutar Redeem\allowbreak{}Extension\allowbreak{}Code\allowbreak{}Command en Quota\allowbreak{}Extension\allowbreak{}Command\allowbreak{}Service agregando hectáreas al plan. & 0.7 & Espada, Piero & Done \\ \hline
% TS86
TS86 & Desvinculación de socio de la licencia institucional & TK01 & Comando Release\allowbreak{}Cooperative\allowbreak{}Member\allowbreak{}Command en aplicación & Ejecutar Release\allowbreak{}Cooperative\allowbreak{}Member\allowbreak{}Command en Cooperative\allowbreak{}License\allowbreak{}Command\allowbreak{}Service aplicando periodo de gracia. & 0.7 & Espada, Piero & Done \\ \hline
% TS87
TS87 & Consulta de consentimientos de compartición de datos & TK01 & Consulta Get\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consents\allowbreak{}By\allowbreak{}Producer\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consents\allowbreak{}By\allowbreak{}Producer\allowbreak{}Id\allowbreak{}Query en Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Query\allowbreak{}Service listando consentimientos del productor. & 0.5 & Espada, Piero & Done \\ \hline
% TS88
TS88 & Consulta de un consentimiento de compartición de datos & TK01 & Consulta Get\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Producer\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Producer\allowbreak{}Id\allowbreak{}Query en Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Query\allowbreak{}Service validando titularidad del consentimiento. & 0.5 & Espada, Piero & Done \\ \hline
% TS89
TS89 & Retiro del consentimiento de compartición de datos & TK01 & Comando Withdraw\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Command en aplicación & Ejecutar Withdraw\allowbreak{}Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Command en Data\allowbreak{}Sharing\allowbreak{}Consent\allowbreak{}Command\allowbreak{}Service retirando acceso del gestor. & 0.7 & Espada, Piero & Done \\ \hline
% TS90
TS90 & Registro de nota de campo de una parcela & TK01 & Comando Record\allowbreak{}Field\allowbreak{}Note\allowbreak{}Command en aplicación & Ejecutar Record\allowbreak{}Field\allowbreak{}Note\allowbreak{}Command en Field\allowbreak{}Note\allowbreak{}Command\allowbreak{}Service evitando duplicados por identificador. & 0.7 & Li, Diana & Done \\ \hline
% TS91
TS91 & Consulta de notas de campo de una parcela & TK01 & Servicio Field\allowbreak{}Note\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Field\allowbreak{}Note\allowbreak{}Query\allowbreak{}Service ordenando notas por fecha. & 0.7 & Li, Diana & Done \\ \hline
% TS92
TS92 & Adjunto de fotografía a una nota de campo & TK01 & Comando Attach\allowbreak{}Field\allowbreak{}Note\allowbreak{}Photo\allowbreak{}Command en aplicación & Ejecutar Attach\allowbreak{}Field\allowbreak{}Note\allowbreak{}Photo\allowbreak{}Command en Field\allowbreak{}Note\allowbreak{}Command\allowbreak{}Service validando formato y tamaño. & 0.7 & Li, Diana & Done \\ \hline
% TS93
TS93 & Descarga de la fotografía de una nota de campo & TK01 & Servicio Field\allowbreak{}Note\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Field\allowbreak{}Note\allowbreak{}Query\allowbreak{}Service recuperando bytes de fotografía. & 0.5 & Espada, Piero & Done \\ \hline
% TS94
TS94 & Consulta de sectores territoriales de la licencia & TK01 & Consulta Get\allowbreak{}Sector\allowbreak{}Zones\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Sector\allowbreak{}Zones\allowbreak{}By\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en Sector\allowbreak{}Zone\allowbreak{}Query\allowbreak{}Service contando parcelas por sector. & 0.5 & Santi, Fabrizio & Done \\ \hline
% TS95
TS95 & Registro de sector territorial & TK01 & Comando Create\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}Command en aplicación & Ejecutar Create\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}Command en Sector\allowbreak{}Zone\allowbreak{}Command\allowbreak{}Service validando unicidad del nombre. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS96
TS96 & Consulta de un sector territorial & TK01 & Consulta Get\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en Sector\allowbreak{}Zone\allowbreak{}Query\allowbreak{}Service recuperando sector de licencia. & 0.5 & Santi, Fabrizio & Done \\ \hline
% TS97
TS97 & Renombrado de sector territorial & TK01 & Comando Rename\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}Command en aplicación & Ejecutar Rename\allowbreak{}Sector\allowbreak{}Zone\allowbreak{}Command en Sector\allowbreak{}Zone\allowbreak{}Command\allowbreak{}Service validando nombre único. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS98
TS98 & Consulta del sector de una parcela socia & TK01 & Consulta Get\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}By\allowbreak{}Plot\allowbreak{}Id\allowbreak{}And\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}By\allowbreak{}Plot\allowbreak{}Id\allowbreak{}And\allowbreak{}User\allowbreak{}Id\allowbreak{}Query en Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}Query\allowbreak{}Service verificando alcance del usuario. & 0.5 & Santi, Fabrizio & Done \\ \hline
% TS99
TS99 & Asignación de sector a una parcela & TK01 & Comando Assign\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Command en aplicación & Ejecutar Assign\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Command en Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}Command\allowbreak{}Service resolviendo sector por nombre. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS100
TS100 & Revisión de sector pendiente de confirmación & TK01 & Comando Resolve\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Command en aplicación & Ejecutar Resolve\allowbreak{}Plot\allowbreak{}Sector\allowbreak{}Command en Plot\allowbreak{}Sector\allowbreak{}Assignment\allowbreak{}Command\allowbreak{}Service aplicando decisión a parcelas coincidentes. & 0.7 & Santi, Fabrizio & Done \\ \hline
% TS101
TS101 & Sellado del expediente agronómico de una campaña liquidada & TK01 & Comando Seal\allowbreak{}Agronomic\allowbreak{}Dossier\allowbreak{}Command en aplicación & Ejecutar Seal\allowbreak{}Agronomic\allowbreak{}Dossier\allowbreak{}Command en Seal\allowbreak{}Agronomic\allowbreak{}Dossier\allowbreak{}Command\allowbreak{}Service almacenando documento con huella. & 0.9 & Li, Diana & Done \\ \hline
% TS102
TS102 & Consulta de expedientes sellados de una parcela & TK01 & Servicio Sealed\allowbreak{}Dossier\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Sealed\allowbreak{}Dossier\allowbreak{}Query\allowbreak{}Service ordenando expedientes por campaña. & 0.5 & Li, Diana & Done \\ \hline
% TS103
TS103 & Verificación de autenticidad de un expediente & TK01 & Servicio Sealed\allowbreak{}Dossier\allowbreak{}Query\allowbreak{}Service en aplicación & Implementar Sealed\allowbreak{}Dossier\allowbreak{}Query\allowbreak{}Service buscando expediente por huella. & 0.5 & Li, Diana & Done \\ \hline
% TS104
TS104 & Consulta de prescripciones de aclareo del productor & TK01 & Consulta Get\allowbreak{}Thinning\allowbreak{}Prescriptions\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Thinning\allowbreak{}Prescriptions\allowbreak{}Query en Get\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}Query\allowbreak{}Service leyendo prescripciones de parcelas activas. & 0.5 & Espada, Piero & Done \\ \hline
% TS105
TS105 & Consulta de una prescripción de aclareo & TK01 & Comando Evaluate\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}Command en aplicación & Ejecutar Evaluate\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}Command en Fruit\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}Command\allowbreak{}Service verificando titularidad de prescripción. & 0.5 & Espada, Piero & Done \\ \hline
% TS106
TS106 & Consulta de la ejecución registrada de un aclareo & TK01 & Consulta Get\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}By\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}By\allowbreak{}Id\allowbreak{}Query en Get\allowbreak{}Thinning\allowbreak{}Prescription\allowbreak{}Query\allowbreak{}Service leyendo balance de ejecución. & 0.5 & Espada, Piero & Done \\ \hline
% TS107
TS107 & Consulta del detalle de socio productor agremiado & TK01 & Consulta Get\allowbreak{}Cooperative\allowbreak{}Member\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en aplicación & Ejecutar Get\allowbreak{}Cooperative\allowbreak{}Member\allowbreak{}By\allowbreak{}Id\allowbreak{}And\allowbreak{}Manager\allowbreak{}Id\allowbreak{}Query en Cooperative\allowbreak{}Member\allowbreak{}Query\allowbreak{}Service verificando socio de licencia. & 0.5 & Santi, Fabrizio & Done \\ \hline
\end{longtable}
\end{center}

\clearpage

#### Development Evidence for Sprint Review
&nbsp;

En esta sección se explican y presentan los avances técnicos alcanzados en la implementación con relación a los productos que integran la solución del ecosistema Viora según el alcance comprometido para el Sprint 2: el portal institucional y comercial (\textit{Landing Page}), los servicios web del backend (\textit{Web Services}), la aplicación móvil nativa Android para el productor olivarero y la aplicación móvil multiplataforma Flutter para el gestor técnico de cooperativa (\textit{Mobile Applications}).

A continuación, se resumen los principales avances consolidados en la implementación de cada producto durante este segundo ciclo de desarrollo:

* **Landing Page (\texttt{viora-landing-page}):** Se completó la actualización del sitio comercial e institucional, incorporando la cotización del Plan Cooperativa desde la sección de planes, el menú y el pie de página, los enlaces directos hacia las secciones de cooperativa y canje de códigos, y la actualización del marco legal con el contacto real y las salvaguardas vigentes.
* **Web Services (\texttt{viora-platform}):** Se completó la totalidad de los endpoints comprometidos para el Sprint 2, abarcando el ciclo completo de identidad y acceso (registro, verificación de correo, sesión, recuperación de contraseña y eliminación de cuenta), la gestión de perfiles, la suscripción individual con pago mediante Mercado Pago Checkout Pro y sus ampliaciones, las licencias y los códigos de cooperativa con consentimiento explícito de compartición de datos, las operaciones territoriales del gestor técnico (padrón de socios, parcelas socias, sectores, alertas sectoriales, proyección de acopio y expediente provisional), las notas de campo, el sellado y la verificación de expedientes agronómicos, y el asistente agronómico basado en Spring AI con validación de cifras y respuesta de respaldo.
* **Mobile Applications (\texttt{viora-mobile-android}):** Se completó la experiencia del productor olivarero para este incremento, integrando la suscripción y el pago del plan, el canje de códigos de cooperativa con consentimiento informado y su posterior retiro, la gestión de perfil y cuenta, la asignación de sectores a sus parcelas, el expediente agronómico y el asistente agronómico con preguntas por contexto, historial disponible sin conexión y resumen diario del campo.
* **Mobile Applications (\texttt{viora-mobile-flutter}):** Se completó la aplicación del gestor técnico de cooperativa, integrando el acceso y la gestión de cuenta, la activación de la licencia institucional, la emisión y revocación de códigos de invitación, el padrón de socios, el mapa de riesgo territorial con posicionamiento GPS y semáforo sectorial, la gestión de sectores, la proyección de acopio, el expediente provisional de parcelas socias y la desvinculación de socios.

Para sustentar de manera verificable la actividad de ingeniería de software y el flujo de trabajo colaborativo del equipo ArcadiaDevs, en la \autoref{tab:development-evidence-sprint-2} se presentan los commits significativos de cada repositorio vinculados con la implementación del Sprint 2.

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de desarrollo para Sprint Review (commits por repositorio)} \label{tab:development-evidence-sprint-2} \\
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

% viora-landing-page
viora-landing-page & feature/\allowbreak{}quote-\allowbreak{}contact & ed04e7c & fix(contact): keep the shadows of the menu cards on tall screens &  & 07/11/2026 \\ \hline
viora-landing-page & feature/\allowbreak{}quote-\allowbreak{}contact & 85b08f8 & fix(contact): keep the quote card of the menu to two lines &  & 07/11/2026 \\ \hline
viora-landing-page & feature/\allowbreak{}quote-\allowbreak{}contact & 9b520cc & fix(legal): name the real contact and the safeguards in force &  & 07/11/2026 \\ \hline
viora-landing-page & feature/\allowbreak{}quote-\allowbreak{}contact & fa5c0a1 & fix(links): point the cooperative and code links at their sections &  & 07/11/2026 \\ \hline
viora-landing-page & feature/\allowbreak{}quote-\allowbreak{}contact & 0b59d81 & feat(contact): open the cooperative quote from the plans, the menu and the footer &  & 07/11/2026 \\ \hline
% viora-platform
viora-platform & feature/\allowbreak{}require-\allowbreak{}consent-\allowbreak{}on-\allowbreak{}redemption & a50bb8f & docs: record mandatory consent on code redemption &  & 09/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}require-\allowbreak{}consent-\allowbreak{}on-\allowbreak{}redemption & 14b83c5 & feat(subscription): require consent text version on cooperative code redemption &  & 09/11/2026 \\ \hline
viora-platform & fix/\allowbreak{}jvm-\allowbreak{}memory-\allowbreak{}limits & 17c8bc4 & fix: cap jvm memory to fit the 512mb container &  & 09/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}territory-\allowbreak{}intake-\allowbreak{}renewal-\allowbreak{}exit & 44669b9 & feat(territory): add intake forecasts &  & 07/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}territory-\allowbreak{}intake-\allowbreak{}renewal-\allowbreak{}exit & a253272 & feat(settlement): expose settled harvests to other contexts &  & 07/11/2026 \\ \hline
viora-platform & feature/\allowbreak{}territory-\allowbreak{}intake-\allowbreak{}renewal-\allowbreak{}exit & b843b6b & feat(thinning): expose the yield outlook to other contexts &  & 07/11/2026 \\ \hline
% viora-mobile-android
viora-mobile-android & feature/\allowbreak{}producer-\allowbreak{}consent-\allowbreak{}flow & 38a6dc8 & feat(subscription): let the producer stop sharing their data from my plan &  & 07/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}producer-\allowbreak{}consent-\allowbreak{}flow & 4e6f2b8 & feat(subscription): ask the producer to accept sharing their data before redeeming a code &  & 07/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}session-\allowbreak{}refresh-\allowbreak{}resilience & e979131 & fix(session): pause the renewals for a few seconds after a passing failure &  & 03/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}session-\allowbreak{}refresh-\allowbreak{}resilience & b354d55 & fix(session): end the session only when the server refuses the refresh token &  & 03/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}logbook-\allowbreak{}records-\allowbreak{}and-\allowbreak{}greeting & 74064c7 & fix(logbook): open samplings, thinnings and notes from their rows &  & 03/11/2026 \\ \hline
viora-mobile-android & feature/\allowbreak{}logbook-\allowbreak{}records-\allowbreak{}and-\allowbreak{}greeting & f0c4633 & fix(header): greet by name and open the account from plan and logbook &  & 03/11/2026 \\ \hline
% viora-mobile-flutter
viora-mobile-flutter & feature/\allowbreak{}territorial-\allowbreak{}risk-\allowbreak{}map & 89247e7 & feat(cooperative-operations): add the territorial risk screens &  & 08/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}territorial-\allowbreak{}risk-\allowbreak{}map & ca68b12 & feat(cooperative-operations): read the member plots and the location of the manager &  & 08/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}territorial-\allowbreak{}risk-\allowbreak{}map & 09d2a63 & feat(core): add the icons and the fade height of the risk screens &  & 08/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}territorial-\allowbreak{}risk-\allowbreak{}map & 9558c55 & chore(build): add mapbox, geolocator and the location permission &  & 08/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}members-\allowbreak{}and-\allowbreak{}codes & 809d193 & feat(cooperative-operations): add the members and codes screens &  & 07/11/2026 \\ \hline
viora-mobile-flutter & feature/\allowbreak{}members-\allowbreak{}and-\allowbreak{}codes & 24db7f1 & feat(cooperative-operations): read the roster and handle the invitation codes &  & 07/11/2026 \\ \hline
\end{longtable}
\end{center}
