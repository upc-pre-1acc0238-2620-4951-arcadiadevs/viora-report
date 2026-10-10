## Landing Page & Mobile Application Implementation 

En esta sección se consolida y evidencia el proceso sistemático de desarrollo, verificación, documentación y despliegue de los productos digitales que conforman la solución Viora: el portal web institucional (*Landing Page*), los servicios web transaccionales de backend (*viora-platform*) y la aplicación móvil nativa para Android (*viora-mobile-android*). A través de ciclos iterativos estructurados en Sprints, se documenta la evolución incremental del software desde su planificación ágil y codificación en control de versiones hasta su publicación en entornos de producción y validación funcional.

### Sprint 1

En este primer ciclo de desarrollo se registra y sustenta el avance integral de producto y el trabajo colaborativo del equipo ArcadiaDevs orientado al cumplimiento del primer incremento de software funcional. A continuación, se detallan los acuerdos del *Sprint Planning 1*, la asignación de responsabilidades y el *Sprint Backlog*, acompañados por las evidencias verificables de desarrollo en GitHub, la suite de pruebas de aceptación, la ejecución de flujos móviles clave, la documentación interactiva OpenAPI/Swagger de los servicios web, el despliegue en infraestructura cloud y las analíticas de colaboración del equipo.

#### Sprint Planning 1
&nbsp;

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma colaborativa Discord. El propósito central de esta reunión fue alinear la capacidad técnica del equipo con la estrategia de captación comercial, mitigación temprana de riesgos de ingeniería y validación agronómica en campo de Viora. Para este ciclo iterativo, el equipo estableció una velocidad estimada de 190 puntos de historia (*Story Points*) para abordar un compromiso de trabajo priorizado de 183 puntos de historia distribuidos en 68 ítems del Product Backlog.

Dicho alcance comprometido consolida la entrega equilibrada de los diferentes componentes del ecosistema: 14 puntos de historia en la presencia digital institucional y comercial (*Landing Page* completa con localización y tarifas en moneda nacional, US33 a US41), 6 puntos de historia en *spikes* de investigación y factibilidad técnica (SPK01 sobre el algoritmo dinámico de frío de Erez y SPK02 sobre persistencia móvil *offline-first* con SQLite), 69 puntos de historia en las 20 historias de usuario funcionales de las aplicaciones cliente móviles para el productor olivarero (delimitación georreferenciada de parcelas, monitoreo de frío y heladas, telemetría de sensores, muestreo guiado de cuajado y balance de aclareo), y 94 puntos de historia en 37 historias técnicas (*Technical Stories*) que comprenden la arquitectura base del backend (control global de excepciones bajo RFC 7807 y convenciones JPA) junto a la suite completa de los 33 servicios web RESTful desacoplados para la gestión integral de parcelas, telemetría, históricos fenológicos y liquidaciones de cosecha.

A continuación, en la \autoref{tab:sprint-planning-1} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación, la capacidad comprometida y el Sprint Goal formulado bajo el estándar de Scrum.org para garantizar que este primer incremento de software entregue valor tangible y medible tanto a los productores agrícolas como a las organizaciones olivareras.

\begin{center}
\small
\renewcommand{\arraystretch}{1.08}
\small
\setlength{\tabcolsep}{4pt}
\begin{longtable}{|p{4.2cm}|p{11.0cm}|}
\caption{Resumen de la sesión de planificación del Sprint 1 (Sprint Planning 1)} \label{tab:sprint-planning-1} \\
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

\textbf{Sprint \#} & Sprint 1 \\ \hline
\textbf{Sprint Planning Background} & Sesión de planificación virtual para definir los compromisos del primer incremento de software de Viora. \\ \hline
\textbf{Date} & 2026-09-21 \\ \hline
\textbf{Time} & 07:00 AM \\ \hline
\textbf{Location} & Discord (Virtual) \\ \hline
\textbf{Prepared By} & Trinidad León, Jahat Jassiel \\ \hline
\textbf{Attendees (to planning meeting)} & Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Victor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad León, Jahat Jassiel \\ \hline
\textbf{Sprint 0 Review Summary} & Conclusión de la conceptualización de producto, definición del Product Backlog priorizado y formalización de la línea base arquitectural DDD y SCM. \\ \hline
\textbf{Sprint 0 Retrospective Summary} \newline \textbf{Sprint Goal \& User Stories} & El equipo analizó el cumplimiento de los objetivos de conceptualización y las historias preliminares, determinando la necesidad crítica de resolver tempranamente los spikes técnicos de investigación y formalizar la suite integral de 33 endpoints de backend para asegurar la autonomía de construcción de las aplicaciones cliente. \\ \hline
\textbf{Sprint 1 Goal} & \textbf{Nuestro enfoque se orienta a} presentar de manera comercial y diferenciada la propuesta de valor y tarifas de Viora a visitantes y organizaciones olivareras, habilitar la digitalización parcelaria, consulta telemétrica y captura de datos agronómicos en campo sin conexión para el segmento de productores olivareros, e incrementar las capacidades de integración y desarrollo mediante la arquitectura base y la suite completa de 33 servicios web RESTful desacoplados para el equipo de aplicaciones cliente. \textbf{Creemos que esto entrega} mayor aceleración en la captación y conversión de clientes calificados interesados en los planes de suscripción, reducción del costo operativo de levantamiento de datos en predio y validación temprana de decisiones de aclareo frutal para los productores agrícolas, y celeridad de construcción técnica con contratos estables e inmutables para los desarrolladores de software cliente. \textbf{Esto se confirmará cuando} los visitantes del sitio web consulten las tarifas en moneda nacional (PEN) en no más de tres interacciones y accedan a los enlaces oficiales de descarga directa; los productores olivareros registren exitosamente una parcela georreferenciada con polígono válido, consulten series telemétricas con el estado operativo de nodos sensores, visualicen el Índice de Vecería ($BBI$) histórico con frío dinámico, y almacenen muestreos de cuajado locales desconectados en la aplicación móvil nativa registrando la confirmación de la labor de aclareo; y los desarrolladores cliente consuman y validen en Swagger UI la suite completa de 33 endpoints documentados con OpenAPI del backend desplegado en producción bajo códigos HTTP semánticos sin requerir intervención del equipo de backend \\ \hline
\textbf{Sprint 1 Velocity} & 190 \\ \hline
\textbf{Sum of Story Points} & 183 \\ \hline
\end{longtable}
\end{center}

#### Aspect Leaders and Collaborators
&nbsp;
 
&nbsp;

Para maximizar la eficiencia en la ejecución, garantizar la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 1, se definió la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna con precisión un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos funcionales y arquitecturales priorizados en esta primera iteración.

En el presente Sprint 1, los aspectos seleccionados comprenden los dominios de software y Bounded Contexts que concentran los 68 ítems de trabajo comprometidos (183 Story Points). Cabe precisar que, de los nueve Bounded Contexts que integran el diseño estratégico global del sistema Viora, cinco de ellos participan activamente en este primer ciclo iterativo (*Olive Orchard and Plot Management*, *Agroclimatic Telemetry and Sensor Monitoring*, *Phenology and Historical Bearing Analytics*, *Crop Load Regulation and Thinning Advisory* y *Harvest Settlement and Performance Reporting*), articulados junto a la presencia comercial de la *Landing Page* y los fundamentos arquitecturales de la plataforma *Shared*. Los cuatro contextos restantes se encuentran programados para los Sprints 2 y 3, operando durante esta fase mediante perfiles preconfigurados de desarrollo y emuladores de contexto.

A continuación, en la \autoref{tab:lacx-sprint-1} se expone la matriz de asignación de liderazgo y colaboración de ArcadiaDevs para el Sprint 1:

\begin{center}
\small
\renewcommand{\arraystretch}{1.08}
\setlength{\tabcolsep}{3pt}
\begin{longtable}{|p{2.5cm}|p{2.42cm}|c|c|c|c|c|c|c|}
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 1} \label{tab:lacx-sprint-1} \\
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{Orchard} & \textbf{Telem.} & \textbf{Pheno.} & \textbf{Thin.} & \textbf{Harv.} & \textbf{Shared} \\ \hline
\endfirsthead
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{Orchard} & \textbf{Telem.} & \textbf{Pheno.} & \textbf{Thin.} & \textbf{Harv.} & \textbf{Shared} \\ \hline
\endhead
\hline
\endfoot
\hline
\multicolumn{9}{l}{\parbox{14cm}{\vspace{0.1cm} \textit{Nota.} L = Leader (Líder responsable del aspecto); C = Collaborator (Colaborador técnico). Elaboración propia.}} \\
\endlastfoot
Espada Lazo, Piero Anthony & espadita2510 \newline pierodeveloper25 & C & \textbf{L} & C & C & C & C & \textbf{L} \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & C & C & C & C & \textbf{L} & C \\ \hline
Paredes Maza, Victor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & C & C & C \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & C & C & \textbf{L} & \textbf{L} & C & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & C & \textbf{L} & C & C & C & C \\ \hline
\end{longtable}
\end{center}

#### Sprint Backlog 1
&nbsp;

El objetivo central del Sprint Backlog 1 es descomponer operativamente los 68 ítems de trabajo comprometidos (183 Story Points), conformados por 29 Historias de Usuario (US), 37 Technical Stories (TS) y 2 Spikes de investigación técnica (SPK) en tareas técnicas atómicas, medibles y verificables. Dicha descomposición abarca la implementación de la presencia digital comercial de Viora (Landing Page con localización y tarifas transparentes en moneda nacional), los spikes exploratorios de formulación biofísica de frío dinámico y persistencia SQLite offline-first, los módulos de captura agronómica y muestreo móvil para el productor olivarero, y los fundamentos arquitecturales transversales junto a la suite completa de 33 servicios web RESTful desacoplados estructurados bajo Domain-Driven Design.

Para efectos de diagramación, síntesis documental y legibilidad dentro del presente informe, en la \autoref{tab:sprint-backlog-1} se expone de manera representativa exactamente una tarea técnica principal (\textit{Work-Item / Task}) por cada requerimiento comprometido (US, TS o SPK). El desglose granular del Sprint Backlog en su totalidad, compuesto por 147 tareas técnicas distribuidas a través de las columnas de flujo ágil \textit{Goal}, \textit{Stories}, \textit{To-Do}, \textit{In process}, \textit{To Review} y \textit{Done} se encuentra registrado y disponible en el tablero oficial de gestión ágil de ArcadiaDevs en Trello, accesible mediante el siguiente enlace: \url{https://tinyurl.com/1acc0238-sb1}.

\begin{figure}[H]
\caption{Vista General del Tablero del Sprint Backlog 1} \label{fig:sprint-backlog-1-trello}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/sprint-backlog/sb1.png}
\caption*{\textit{Nota.} Tablero de gestión ágil de ArcadiaDevs en Trello: \url{https://tinyurl.com/1acc0238-sb1}}
\end{figure}

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\centering\arraybackslash}p{0.045\textwidth}|>{\raggedright\arraybackslash}p{0.12\textwidth}|>{\centering\arraybackslash}p{0.045\textwidth}|>{\raggedright\arraybackslash}p{0.125\textwidth}|>{\raggedright\arraybackslash}p{0.305\textwidth}|>{\centering\arraybackslash}p{0.065\textwidth}|>{\raggedright\arraybackslash}p{0.085\textwidth}|>{\centering\arraybackslash}p{0.03\textwidth}|}
\caption{Descomposición de Ítems del Sprint Backlog 1 en Tareas de Trabajo (Work-Items)} \label{tab:sprint-backlog-1} \\
\hline
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 1} \\ \hline
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
\multicolumn{8}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Síntesis representativa de una tarea por requerimiento (US, TS y SPK). El Sprint Backlog completo con la totalidad de las 147 tareas técnicas desglosadas se encuentra disponible en el tablero de Trello: \url{https://tinyurl.com/1acc0238-sb1}. Elaboración propia.}} \\
\endlastfoot

% US33
US33 & Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar & TK01 & Maquetación de sección Hero, pilares de valor y CTA principal & Implementar sección Hero con encabezado 'Anticipa la Próxima Cosecha - Equilibra tu Olivar', badge dinámico de ventana de aclareo, botón CTA 'Descarga la app' y tarjetas de los tres pilares de valor (Carga frutal, Frío invernal, Plan de aclareo). & 1.0 & Paredes, Victor & Done \\ \hline
% US34
US34 & Exploración de beneficios y capacidades operativas para el productor olivarero & TK01 & Sección de segmento para Productores Olivareros e ilustración & Diseñar y maquetar módulo editorial para productores 'Un año sobra, el otro falta', incorporando retrato ilustrado, propuesta de lectura de frío, conteo por árbol y prescripción sin conexión. & 1.0 & Paredes, Victor & Done \\ \hline
% US35
US35 & Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias & TK01 & Sección de segmento para Gestores Técnicos y Cooperativas & Maquetar módulo de gestores técnicos 'No puedes estar en cada parcela', incorporando ilustración editorial, propuesta de supervisión cartográfica y sustitución de cuadernos y planillas Excel. & 1.0 & Paredes, Victor & Done \\ \hline
% US36
US36 & Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN) & TK01 & Maquetación de planes comerciales en Soles (PEN) y Código Cooperativa & Implementar sección 'Planes' con tres modalidades en Soles peruanos: Plan Productor (por ha), Plan Cooperativa (licencia colectiva a medida) y Canje de Código de Cooperativa (S/ 0 para el socio). & 1.0 & Paredes, Victor & Done \\ \hline
% US37
US37 & Reproducción del video promocional y demostrativo del producto (''About the Product'') & TK01 & Reproductor modal accesible para video 'About the Product' & Configurar reproductor modal de video promocional de producto ('Good Move') con controles de reproducción, cierre intuitivo y adaptación a dispositivos móviles y escritorio. & 0.6 & Paredes, Victor & Done \\ \hline
% US38
US38 & Reproducción del video institucional sobre el equipo y proceso de ingeniería (''About the Team'') & TK01 & Sección 'Nuestro equipo', ilustración de trofeo y fichas de integrantes & Maquetar sección institucional con título ''PERO SI ES SOLO UN PROYECTO'', ilustración del equipo con trofeo, ficha de los 5 integrantes con roles específicos y enlaces a perfiles de LinkedIn. & 0.6 & Paredes, Victor & Done \\ \hline
% US39
US39 & Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733) & TK01 & Maquetación y enlaces a Términos de Servicio en footer legal & Implementar acceso directo y vista de Términos de Servicio en la columna legal del footer, estipulando condiciones de uso, licenciamiento y exención de responsabilidad agronómica. & 0.5 & Paredes, Victor & Done \\ \hline
% US40
US40 & Redirección y acceso a la descarga oficial de la aplicación móvil & TK01 & Sección de descarga con render 3D móvil e insignias oficiales & Maquetar sección 'Menos vecería, más cosecha cada campaña' con mockup de teléfono móvil e insignias oficiales de descarga en Google Play Store y Apple App Store. & 0.5 & Paredes, Victor & Done \\ \hline
% US41
US41 & Selección de idioma y localización de contenidos en la Landing Page & TK01 & Catálogos de traducción bilingüe (ES/EN) y framework i18n & Estructurar diccionarios de internacionalización es.json y en.json con todas las cadenas del portal (hero, contexto de Tacna, segmentos, planes, equipo y footer legal). & 0.8 & Paredes, Victor & Done \\ \hline
% SPK01
SPK01 & Investigación y modelado dinámico de Erez para cálculo de frío en backend & TK01 & Revisión bibliográfica y formalización matemática del modelo de Erez & Documentar las ecuaciones diferenciales de dos etapas de Fishman, Erez y Couvillon (1987) para formación y fijación irreversible de porciones de frío en el olivo. & 1.0 & Santi, Fabrizio & Done \\ \hline
% SPK02
SPK02 & Investigación de persistencia local SQLite y protocolo offline-first & TK01 & Diseño de esquema relacional SQLite para capturas desconectadas & Definir tablas locales de parcelas, rondas de muestreo y registros de conteo por árbol con banderas de sincronización (SYNC\_PENDING, SYNCED) y marcas temporales UTC. & 1.0 & Santi, Fabrizio & Done \\ \hline
% TS31
TS31 & Manejo centralizado de excepciones y errores bajo estándar RFC 7807 & TK01 & Interceptor GlobalExceptionHandler en capa interfaces & Implementar RestControllerAdvice capturando excepciones y mapeando ProblemDetail RFC7807. & 0.5 & Espada, Piero & Done \\ \hline
% TS32
TS32 & Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial & TK01 & Estrategia física snake\_case en infraestructura & Configurar PhysicalNamingStrategy de Hibernate para tablas y columnas relacionales. & 0.5 & Espada, Piero & Done \\ \hline
% TS33
TS33 & Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0 & TK01 & Configurar OpenApiConfig en capa infraestructura & Definir bean OpenAPI 3.0 con metadatos y servidores. & 0.5 & Espada, Piero & Done \\ \hline
% TS34
TS34 & Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language & TK01 & Configurar AcceptHeaderLocaleResolver en capa infraestructura & Registrar resolvedor de locale por encabezado HTTP Accept-Language. & 0.5 & Paredes, Victor & Done \\ \hline
% TS11
TS11 & Creación y delimitación poligonal de parcelas georreferenciadas & TK01 & Agregado Plot en capa dominio & Modelar agregado Plot con PolygonCoordinates, variedad y marco plantación. & 0.9 & Espada, Piero & Done \\ \hline
% TS12
TS12 & Listado y sincronización incremental delta de parcelas & TK01 & Query GetPlotsDeltaSync en capa aplicación & Implementar consulta delta en PlotQueryService filtrando por updatedSince. & 0.8 & Espada, Piero & Done \\ \hline
% TS13
TS13 & Consulta detallada de información agronómica y espacial de parcela & TK01 & Query GetPlotByIdQuery en capa aplicación & Recuperar agregado Plot validando titularidad en PlotQueryServiceImpl. & 0.6 & Li, Diana & Done \\ \hline
% TS14
TS14 & Actualización y rectificación integral de parcela con bloqueo optimista & TK01 & Comando UpdatePlotCommand en capa aplicación & Ejecutar UpdatePlotCommand en PlotCommandService validando concurrencia If-Match. & 0.8 & Li, Diana & Done \\ \hline
% TS15
TS15 & Eliminación y baja lógica de parcela del inventario & TK01 & Comando RemovePlotCommand en capa aplicación & Procesar baja lógica en PlotCommandService mutando estado agregado. & 0.6 & Li, Diana & Done \\ \hline
% TS16
TS16 & Alta y vinculación de nodo sensor virtual a parcela & TK01 & Agregado IoTDevice y RegisterIoTDeviceCommand aplicación & Modelar IoTDevice en dominio y procesar comando vinculación. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS17
TS17 & Consulta de inventario de nodos virtuales vinculados a parcela & TK01 & Query GetIoTDevicesByPlotId en capa aplicación & Recuperar lista de agregados IoTDevice vinculados al PlotId. & 0.6 & Trinidad, Jahat & Done \\ \hline
% TS18
TS18 & Desvinculación de nodo virtual preservando trazabilidad histórica & TK01 & Comando DeactivateIoTDeviceCommand en capa aplicación & Desactivar agregado IoTDevice preservando series históricas en base. & 0.6 & Espada, Piero & Done \\ \hline
% TS19
TS19 & Consulta de series temporales de telemetría ambiental y de suelo & TK01 & Query GetTelemetrySeriesByPlotId en capa aplicación & Consultar serie temporal filtrando por fechas en TelemetryQueryService. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS20
TS20 & Consulta de pronóstico meteorológico geolocalizado a 7 días & TK01 & Query GetWeatherForecast en capa aplicación & Obtener pronóstico meteorológico semanal en WeatherForecastQueryService mediante cliente. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS21
TS21 & Asentamiento de cosecha anual por campaña para auditoría productiva & TK01 & Agregado HarvestRecord y RecordHarvestYieldCommand aplicación & Modelar HarvestRecord en dominio y procesar comando pesaje. & 0.8 & Paredes, Victor & Done \\ \hline
% TS22
TS22 & Consulta del historial plurianual de cosechas de la parcela & TK01 & Query GetHarvestRecordsByPlotId en capa aplicación & Recuperar colección de HarvestRecords ordenadas cronológicamente por campaña. & 0.6 & Paredes, Victor & Done \\ \hline
% TS23
TS23 & Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez & TK01 & Servicio BiennialBearingIndexCalculator en capa dominio & Programar cálculo matemático BBI Hoblyn sobre campañas históricas. & 1.0 & Santi, Fabrizio & Done \\ \hline
% TS24
TS24 & Registro y sincronización de muestreos guiados de cuajado en campo & TK01 & Agregado FieldSampling en capa dominio & Modelar FieldSampling con árboles evaluados e invariantes muestrales. & 0.9 & Santi, Fabrizio & Done \\ \hline
% TS25
TS25 & Consulta de representatividad estadística y estado de muestreo & TK01 & Query GetSamplingSummary en capa aplicación & Calcular representatividad muestral mínima n$\ge$5 en capa aplicación. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS26
TS26 & Consulta de prescripción técnica de aclareo y ventana fenológica & TK01 & Query GetActiveThinningPrescription en capa aplicación & Calcular recomendación de remoción frutal en ThinningAdvisorService. & 0.8 & Li, Diana & Done \\ \hline
% TS27
TS27 & Confirmación y registro de ejecución de labor de aclareo en campo & TK01 & Comando ConfirmThinningExecutionCommand en capa aplicación & Registrar ejecución real de raleo actualizando estado agregado. & 0.8 & Li, Diana & Done \\ \hline
% TS39
TS39 & Asentamiento formal y balance de liquidación de cosecha de fin de campaña & TK01 & Agregado HarvestSettlement y SettleCampaignHarvestCommand aplicación & Modelar liquidación en dominio y procesar pesaje oficial. & 0.9 & Li, Diana & Done \\ \hline
% TS40
TS40 & Certificación criptográfica colegiada del expediente agronómico inmutable & TK01 & Comando CertifyAgronomicDossierCommand en capa aplicación & Generar hash SHA-256 inmutable validando colegiatura CIP agrónomo. & 0.9 & Li, Diana & Done \\ \hline
% TS42
TS42 & Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela & TK01 & Comando CalibrateIoTDeviceCommand en capa aplicación & Aplicar factores de calibración en agregado IoTDevice verificando concurrencia. & 0.6 & Trinidad, Jahat & Done \\ \hline
% TS43
TS43 & Rectificación de pesaje de cosecha anual con bloqueo optimista & TK01 & Comando RectifyHarvestYieldCommand en capa aplicación & Ejecutar rectificación en HarvestRecord verificando versión concurrente If-Match. & 0.6 & Li, Diana & Done \\ \hline
% TS44
TS44 & Restauración de cuartel olivícola archivado & TK01 & Comando RestorePlotCommand en capa aplicación & Ejecutar RestorePlotCommand en PlotCommandService reactivando agregado Plot. & 0.6 & Espada, Piero & Done \\ \hline
% TS45
TS45 & Eliminación de registro erróneo de cosecha en histórico fenológico & TK01 & Comando RemoveHarvestRecordCommand en capa aplicación & Remover registro erróneo en repositorio HarvestRecordRepository verificando titularidad. & 0.6 & Santi, Fabrizio & Done \\ \hline
% TS46
TS46 & Consulta global de incidentes agroclimáticos con contadores y filtrado & TK01 & Query GetAgroclimaticIncidents en capa aplicación & Filtrar incidentes por severidad consolidando contadores en servicio. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS47
TS47 & Consulta de incidentes agroclimáticos asociados a un cuartel específico & TK01 & Filtrado por PlotId en IncidentQueryService & Recuperar incidentes agroclimáticos vinculados a una parcela específica. & 0.6 & Trinidad, Jahat & Done \\ \hline
% TS48
TS48 & Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación & TK01 & Query GetAgroclimaticIncidentById en capa aplicación & Recuperar agregado AgroclimaticIncident con pasos de mitigación asociados. & 0.8 & Trinidad, Jahat & Done \\ \hline
% TS49
TS49 & Postergación temporal de notificaciones de incidente agroclimático (Snooze) & TK01 & Comando PostponeIncident en capa aplicación & Procesar PostponeAgroclimaticIncidentCommand mutando fecha postergación en agregado. & 0.6 & Trinidad, Jahat & Done \\ \hline
% TS50
TS50 & Completado de paso de mitigación agronómica de incidente & TK01 & Comando CompleteMitigationStep en capa aplicación & Procesar CompleteMitigationStepCommand en dominio evaluando resolución del incidente. & 0.6 & Trinidad, Jahat & Done \\ \hline
% TS51
TS51 & Consulta de estado global de muestreos de cuarteles (Plot Picker) & TK01 & Query GetPlotSamplingStates en capa aplicación & Consolidar suficiencia muestral de predios en SamplingQueryServiceImpl. & 0.8 & Santi, Fabrizio & Done \\ \hline
% TS52
TS52 & Registro de fecha de plena floración observada en cuartel & TK01 & Comando RecordFullBloomCommand en capa aplicación & Procesar RecordFullBloomCommand calibrando ventana fenológica de raleo. & 0.8 & Santi, Fabrizio & Done \\ \hline
% TS53
TS53 & Consulta de eventos cronológicos y bitácora agronómica de raleo & TK01 & Query GetThinningEventsQuery en capa aplicación & Recuperar bitácora cronológica de raleo en ThinningQueryService. & 0.6 & Li, Diana & Done \\ \hline
% TS54
TS54 & Listado de liquidaciones oficiales de cosecha por cuartel & TK01 & Query GetHarvestSettlementsByPlotId en capa aplicación & Recuperar historial de liquidaciones de parcela en servicio. & 0.6 & Li, Diana & Done \\ \hline
% TS55
TS55 & Consulta detallada de liquidación de cosecha por campaña individual & TK01 & Query GetHarvestSettlementByCampaignYear en capa aplicación & Consultar liquidación anual calculando balance ARR en servicio. & 0.6 & Li, Diana & Done \\ \hline
% US09
US09 & Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial & TK01 & Pantallas P20 a P26 en presentación & Construir RegisterPlotScreen y componentes de pasos en Jetpack Compose. & 1.8 & Paredes, Victor & Done \\ \hline
% US10
US10 & Consulta y modificación de linderos y datos dendrométricos de parcela & TK01 & Pantallas P27 a P29 en presentación & Construir EditPlotScreen y AdjustOutlineScreen en Jetpack Compose. & 1.5 & Paredes, Victor & Done \\ \hline
% US11
US11 & Baja y remoción de parcela del inventario productivo & TK01 & Diálogos de baja P28 en presentación & Implementar confirmación de eliminación y archivado en PlotsScreen. & 1.0 & Paredes, Victor & Done \\ \hline
% US27
US27 & Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo & TK01 & Pantallas P60 y P61 en presentación & Construir semáforo de aclareo y cuenta regresiva en Compose. & 1.3 & Paredes, Victor & Done \\ \hline
% US26
US26 & Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña & TK01 & Tarjetas de carga P61 en presentación & Visualizar balance de carga frutal sostenible vs conteo real. & 1.2 & Paredes, Victor & Done \\ \hline
% US28
US28 & Registro y confirmación de ejecución de aclareo en campo & TK01 & Pantallas P62 y P63 en presentación & Construir formulario de labor ejecutada y confirmación en Compose. & 1.3 & Paredes, Victor & Done \\ \hline
% US18
US18 & Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela & TK01 & Pantallas T14 y T15 en presentación & Construir AlertsCenterScreen y MitigationChecklistCard con filtros en Compose. & 1.3 & Santi, Fabrizio & Done \\ \hline
% US24
US24 & Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline & TK01 & Pantallas P52 y P53 en presentación & Construir SamplingRoundScreen y RegisterTreeSampleScreen con teclado táctil. & 1.5 & Santi, Fabrizio & Done \\ \hline
% US25
US25 & Consulta de representatividad estadística e historial de árboles muestreados en campo & TK01 & Pantallas P50 y P54 en presentación & Diseñar SelectPlotSamplingScreen y SamplingCompleteScreen con barras de avance. & 1.4 & Santi, Fabrizio & Done \\ \hline
% US22
US22 & Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez & TK01 & Pantallas P80 y P81 en presentación & Construir indicador dinámico de porciones Erez en Jetpack Compose. & 1.1 & Espada, Piero & Done \\ \hline
% US23
US23 & Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS & TK01 & Alerta térmica P80 en presentación & Diseñar banner de riesgo floral por invierno cálido ENOS. & 1.1 & Espada, Piero & Done \\ \hline
% US19
US19 & Consulta de pronóstico meteorológico geolocalizado a 7 días & TK01 & Pantalla Clima P90 en presentación & Construir PlotClimateScreen y tira semanal de 7 días. & 1.3 & Espada, Piero & Done \\ \hline
% US13
US13 & Vinculación y alta de nodo sensor virtual a una parcela & TK01 & Hoja vinculación P86 en presentación & Diseñar formulario modal de alta de nodo sensor virtual. & 1.0 & Li, Diana & Done \\ \hline
% US14
US14 & Consulta de inventario y estado operativo de nodos sensores virtuales en parcela & TK01 & Pantalla Sensores P85 en presentación & Construir SensorsScreen con tarjetas de estado activo y pausa. & 0.8 & Li, Diana & Done \\ \hline
% US15
US15 & Configuración y calibración de nodo sensor virtual en parcela & TK01 & Pantalla ConfigureNodeScreen en presentación & Construir interfaz de ajuste de profundidad de sonda edáfica. & 1.0 & Li, Diana & Done \\ \hline
% US16
US16 & Desvinculación y baja de nodo sensor virtual de una parcela & TK01 & Diálogo desvinculación P88 en presentación & Implementar confirmación de desvinculación con aviso de retención histórica. & 0.8 & Li, Diana & Done \\ \hline
% US17
US17 & Monitoreo agroclimático y consulta de series temporales de suelo y microclima & TK01 & Pantallas P90 y P91 en presentación & Construir TelemetryDetailScreen y gráficas de humedad de suelo. & 1.5 & Li, Diana & Done \\ \hline
% US20
US20 & Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) & TK01 & Pantallas P40 y P41 en presentación & Construir HarvestHistoryScreen con medidor BBI y CampaignSheet emergente. & 1.3 & Trinidad, Jahat & Done \\ \hline
% US21
US21 & Modificación y rectificación de registros históricos de cosecha & TK01 & Diálogos de rectificación en presentación & Construir DeleteCampaignDialog y edición de kilos en CampaignSheet. & 0.8 & Trinidad, Jahat & Done \\ \hline
% US29
US29 & Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva & TK01 & Pantallas P71 y P73 en presentación & Construir SettleHarvestScreen y comprobante formal CampaignClosedScreen en Compose. & 1.3 & Trinidad, Jahat & Done \\ \hline
\end{longtable}
\end{center}

#### Development Evidence for Sprint Review
&nbsp;

En esta sección se explican y presentan los avances técnicos alcanzados en la implementación con relación a los productos que integran la solución del ecosistema Viora según el alcance comprometido para el Sprint 1: el portal institucional y comercial (\textit{Landing Page}), los servicios web y la base arquitectural del backend (\textit{Web Services}) y la aplicación móvil nativa (\textit{Mobile Applications}).

A continuación, se resumen los principales avances consolidados en la implementación de cada producto durante este primer ciclo de desarrollo:

* **Landing Page (\texttt{viora-landing-page}):** Se culminó la implementación integral y el despliegue continuo en producción a través de Vercel del sitio web comercial e institucional. Los avances comprenden la maquetación semántica y responsiva de la sección Hero con la propuesta de valor orientada a mitigar la vecería en el olivar tacneño, el bloque territorial contextual de La Yarada-Los Palos sustentado en datos de merma histórica, la exposición de los tres pilares agronómicos (regulación de carga frutal, cómputo de frío invernal y prescripción de aclareo), los módulos diferenciados de captación para productores y cooperativas agrarias, la calculadora interactiva de hectáreas con tarifas transparentes en moneda nacional (PEN), los reproductores modales accesibles para los videos demostrativo e institucional (''About the Product'' y ''About the Team''), el marco legal y de privacidad conforme a la Ley N° 29733 de Protección de Datos Personales, y el soporte bilingüe (español/inglés) con persistencia de selección.
* **Web Services (\texttt{viora-platform}):** Se estableció la arquitectura base orientada al dominio bajo Domain-Driven Design (DDD) táctico en Spring Boot y Java 21, incorporando el manejador global de excepciones bajo el estándar RFC 7807 (Problem Details), persistencia relacional JPA con mapeo espacial WGS84 para polígonos GeoJSON y documentación interactiva mediante OpenAPI 3.0 y Swagger UI. Sobre esta infraestructura se implementó la suite completa de 33 servicios web RESTful desacoplados, cubriendo la creación y sincronización incremental delta de parcelas olivareras, el inventario, estado operativo y calibración de offsets para nodos sensores IoT, la agregación temporal de telemetría agroclimática y pronósticos meteorológicos geolocalizados a 7 días, el registro retrospectivo de cosechas y el cálculo dinámico del Índice de Vecería ($BBI$) articulado al modelo biofísico de porciones de frío de Erez, la generación algorítmica de prescripciones técnicas de aclareo previa al endurecimiento del carozo, el registro de confirmaciones en campo y el balance formal de liquidación de campaña.

* **Mobile Applications (\texttt{viora-mobile-android}):** Se construyó la primera versión operativa de la aplicación móvil nativa para dispositivos Android utilizando Kotlin y Jetpack Compose. Los avances abarcan la digitalización y catastro interactivo de parcelas sobre cartografía satelital integrando Mapbox Maps SDK y servicios de ubicación GPS, la captura guiada de rondas de muestreo de frutos cuajados a pie de árbol con almacenamiento local en SQLite mediante Room DB bajo enfoque *offline-first* para zonas rurales sin conectividad, la verificación reactiva de representatividad estadística muestral ($n \ge 5$), la consulta de prescripciones y registro de labores de aclareo, el monitoreo telemétrico en tiempo real de humedad edáfica a 30 y 60 cm junto a curvas térmicas, y el registro histórico de pesajes con medidor visual de alternancia fenológica.

Para sustentar de manera verificable la actividad de ingeniería de software y el flujo de trabajo colaborativo del equipo ArcadiaDevs, se elaboró una tabla que incluye para cada repositorio los commits representativos vinculados directamente con la implementación. Cada producto se administra bajo su respectivo repositorio de código fuente en GitHub compartiendo la raíz organizacional común \texttt{upc-pre-1acc0238-2620-4951-arcadiadevs/}, la cual ha sido omitida en la primera columna para favorecer la diagramación y legibilidad. Para cada repositorio se detallan la rama de origen, el identificador abreviado (Commit Id), el mensaje principal (\textit{Commit Message}), la descripción técnica de los cambios (\textit{Commit Message Body}) y la fecha de asentamiento (\textit{Committed on Date}). La estructura requerida se presenta a continuación en la \autoref{tab:development-evidence-sprint-1}:

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de Desarrollo para Sprint Review (Commits por Repositorio)} \label{tab:development-evidence-sprint-1} \\
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
viora-landing-page & main & ba66bb6 & Merge branch 'release/1.1.0' into main &  & 26/09/2026 \\ \hline
viora-landing-page & develop & c885682 & Merge branch 'feature/seo-meta' into develop. &  & 26/09/2026 \\ \hline
viora-landing-page & feature/seo-meta & 315ed5d & feat(seo): add canonical url, social cards, robots and sitemap &  & 26/09/2026 \\ \hline
viora-landing-page & main & 5540e99 & Merge branch 'release/1.0.0' into main &  & 26/09/2026 \\ \hline
viora-landing-page & develop & d58465a & Merge branch 'feature/deploy-polish' into develop. &  & 26/09/2026 \\ \hline
viora-landing-page & feature/deploy-polish & 267d1d4 & chore(sound): drop the brush kit from the theme, plans and notturno beds &  & 26/09/2026 \\ \hline

% viora-platform
viora-platform & main & 2471144 & Merge branch 'release/0.34.0' into main &  & 07/10/2026 \\ \hline
viora-platform & develop & d7a235a & Merge branch 'feature/virtual-node-hourly-telemetry' into develop. &  & 07/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & 5517488 & perf(shared): batch the lazy collections and the inserts &  & 07/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & 107a9d6 & fix(telemetry): draw one point per day in the incident weekly trend &  & 07/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & 6c33b15 & feat(telemetry): fill the virtual node hours with the observed weather &  & 07/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & e0e17ae & test(shared): keep the tests independent of the machine language &  & 07/10/2026 \\ \hline

% viora-mobile-android
viora-mobile-android & main & d0858b5 & Merge branch 'release/0.18.0' into main & & 07/10/2026 \\ \hline
viora-mobile-android & feature/alerts-by-plot & a079210 & Merge branch 'feature/alerts-by-plot' into develop. & & 07/10/2026 \\ \hline
viora-mobile-android & feature/alerts-by-plot & 15ab544 & chore(release): set version to 0.18.0 & & 07/10/2026 \\ \hline
viora-mobile-android & feature/alerts-by-plot & 38b9521 & feat(alerts): filter the alerts center by plot & & 07/10/2026 \\ \hline
viora-mobile-android & feature/alerts-by-plot & de276eb & fix(alerts): keep the spaces around the conjunction of plot names &  & 07/10/2026 \\ \hline
viora-mobile-android & feature/alerts-by-plot & 91956e2 & fix(home): count and open the alerts of every plot &  & 07/10/2026 \\ \hline
\end{longtable}
\end{center}

#### Testing Suite Evidence for Sprint Review
&nbsp;
 
&nbsp;

En esta sección se documentan y sustentan las evidencias del aseguramiento de la calidad de software y las pruebas de aceptación automatizadas desarrolladas para el ecosistema Viora a lo largo del Sprint 1. Dichas pruebas se construyen bajo el enfoque de desarrollo guiado por comportamiento (\textit{Behavior-Driven Development} - BDD) empleando la sintaxis formal de Gherkin, y se gestionan a través del repositorio oficial de pruebas de aceptación bajo la organización en GitHub: \texttt{upc-pre-1acc0238-2620-4951-arcadiadevs}. De forma análoga a la sección previa de evidencias de desarrollo, y a fin de asegurar la homogeneidad visual y legibilidad de la matriz tabular, el prefijo de la organización es omitido, identificándose el componente directamente como \texttt{viora-acceptance-tests}.

Cabe resaltar que la suite completa comprende un total de 37 especificaciones de prueba de aceptación (\textit{feature files} de extensión \texttt{.feature}), las cuales modelan los criterios de aceptación de las historias de usuario e historias técnicas abordadas durante la iteración.

Con el propósito de exhibir la actividad continua de ingeniería de pruebas y el flujo de integración durante el sprint, a continuación se presentan 10 commits representativos registrados en la rama \texttt{develop} del repositorio \texttt{viora-acceptance-tests}. Para cada registro se especifica la rama de origen o integración, el identificador abreviado del commit (SHA-1), el mensaje principal (\textit{Commit Message}), la descripción técnica de los cambios (\textit{Commit Message Body}) y la fecha formal de asentamiento (\textit{Committed on Date}).

A continuación, en la \autoref{tab:testing-suite-evidence-sprint-1} se expone la matriz detallada de evidencias de la suite de pruebas para el Sprint Review:

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.15\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|>{\raggedright\arraybackslash}p{0.28\textwidth}|p{0.10\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Evidencias de la Suite de Pruebas para Sprint Review (Commits por Repositorio)} \label{tab:testing-suite-evidence-sprint-1} \\
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
viora-acceptance-tests & develop & ac0b834 & chore:merge feature/at45 into develop &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at45 & 6d8d4c0 & feat: add at45 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & develop & 89f9a82 & chore: merge at44 into develop &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at44 & 0da2b72 & feat: add at44 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & develop & 6482e24 & chore: merge at43 into develop &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at43 & f3307ef & feat: add at43 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at42 & d9c1740 & feat: add at42 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at40 & 404bcea & feat: add at40 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at39 & be225a1 & feat: add at39 acceptance test &  & 07/10/2026 \\ \hline
viora-acceptance-tests & feature/at34 & 4d93e85 & feat: add at34 acceptance test &  & 07/10/2026 \\ \hline
\end{longtable}
\end{center}

#### Execution Evidence for Sprint Review
&nbsp;

En esta sección se presenta la evidencia de ejecución de los productos digitales implementados durante el Sprint 1. En la \textit{Landing Page} se implementaron las secciones de presentación del producto, los problemas que Viora resuelve, la propuesta de valor por segmento objetivo, el Plan Productor con su simulador de suscripción y la presentación del equipo. En la aplicación móvil del productor se implementaron la pantalla de inicio con los indicadores del día, la gestión de parcelas con su delimitación sobre el mapa, la consulta del índice de vecería por parcela y el registro de la cosecha de la campaña. Las capturas de las principales vistas se complementan con un video que muestra la visualización y la navegación logradas.

\noindent \textbf{Landing Page:}

La sección inicial presenta la propuesta central del producto y el acceso a la descarga de la aplicación, complementada por el carrusel de problemáticas del productor olivarero (año \textit{off}, frío escaso, aclareo tardío y acopio incierto) y la sección orientada al perfil de productores (\autoref{fig:exec-landing-part1-s1}, paneles a, b y c).

\begin{figure}[H]
\caption{Vistas de Ejecución - Landing Page: Hero, Problemática y Segmento Productores.} \label{fig:exec-landing-part1-s1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/01-hero.png}
  \caption*{(a) Hero y propuesta de valor.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/02-pain-points-carousel.png}
  \caption*{(b) Carrusel de problemática.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/03-segment-producers.png}
  \caption*{(c) Segmento productores.}
\end{minipage}
\caption*{\textit{Nota.} Capturas del portal web comercial desplegado en Vercel. Elaboración propia.}
\end{figure}

Asimismo, se despliega la propuesta de valor para gestores técnicos de cooperativas y asociaciones (\autoref{fig:exec-landing-part2-s1}, panel a), la sección de planes comerciales y tarifas referenciales por hectárea en moneda nacional con su simulador (\autoref{fig:exec-landing-part2-s1}, panel b) y la sección institucional de presentación del equipo ArcadiaDevs (\autoref{fig:exec-landing-part2-s1}, panel c).

\begin{figure}[H]
\caption{Vistas de Ejecución - Landing Page: Segmento Gestores, Planes y Equipo.} \label{fig:exec-landing-part2-s1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/04-segment-technical-managers.png}
  \caption*{(a) Segmento gestores técnicos.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/05-producer-plan.png}
  \caption*{(b) Planes y tarifas (PEN).}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/landing-page/06-team.png}
  \caption*{(c) Equipo ArcadiaDevs.}
\end{minipage}
\caption*{\textit{Nota.} Capturas del portal web comercial desplegado en Vercel. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil del productor:}

La aplicación móvil nativa Viora implementa los flujos operacionales del productor olivarero: la pantalla de inicio y tablero con indicadores agroclimáticos inmediatos (\autoref{fig:exec-app-producer-s1}, paneles a y b), el listado de parcelas catastradas y la vista de detalle con delimitación cartográfica sobre mapa (\autoref{fig:exec-app-producer-s1}, paneles c y d), y el módulo de alternancia con Índice de Vecería ($BBI$) complementado por el registro formal de cosecha anual (\autoref{fig:exec-app-producer-s1}, paneles e y f).

\begin{figure}[H]
\caption{Vistas de Ejecución de la Aplicación Móvil Viora para Productores Olivícolas.} \label{fig:exec-app-producer-s1}
\centering
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/01-home.png}
  \caption*{(a) Inicio.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/02-home-indicators.png}
  \caption*{(b) Indicadores.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/03-plots-list.png}
  \caption*{(c) Parcelas.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/04-plot-detail.png}
  \caption*{(d) Detalle.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/05-plot-alternation.png}
  \caption*{(e) Vecería BBI.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.15\textwidth}
  \centering
  \includegraphics[width=\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/06-harvest-registration.png}
  \caption*{(f) Cosecha.}
\end{minipage}
\caption*{\textit{Nota.} Capturas de la aplicación móvil Android en ejecución física sincronizada con el backend. Elaboración propia.}
\end{figure}

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 1.

* **Título:** Product Navigation - Sprint 1
* **Entrega:** TB1 / Sprint 1
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \url{https://tinyurl.com/ef66ptm9}

#### Services Documentation Evidence for Sprint Review
&nbsp;
 
&nbsp;

En esta sección se presenta la relación de servicios web RESTful implementados y formalmente documentados bajo el estándar OpenAPI 3.0 para la plataforma agronómica \textbf{Viora} (\texttt{viora-platform}) durante el Sprint 1. El equipo de backend consolidó una arquitectura hexagonal desacoplada guiada por el dominio (Domain-Driven Design - DDD) sobre Java 21 LTS y Spring Boot 3, implementando contratos inmutables tipados estrictamente mediante Java 21 Records y Jakarta Validation (\texttt{@NotNull}, \texttt{@NotBlank}, \texttt{@Size}, \texttt{@PositiveOrZero}), estandarización centralizada de errores semánticos bajo la especificación RFC 7807 (\textit{Problem Details}) sin exponer trazas de infraestructura, control de concurrencia optimista con cabeceras HTTP \texttt{If-Match} / \texttt{ETag} (código \texttt{412 Precondition Failed}) para proteger entidades agronómicas críticas, y autodocumentación viva en Swagger UI con soporte para pruebas interactivas (\textit{Try it out}).

Durante este ciclo de desarrollo \textbf{se implementaron y documentaron un total de 33 endpoints RESTful} distribuidos en 5 Bounded Contexts y 11 controladores web. Con el propósito de brindar una visión rigurosa, en la \autoref{tab:services-documentation-endpoints-sprint-1} se presenta la matriz de los 12 endpoints más representativos del sistema cubriendo la totalidad de módulos operativos, encontrándose los 33 endpoints plenamente accesibles y operativos en la consola interactiva de Swagger UI.

\noindent \textbf{Puntos de acceso a la documentación interactiva (Swagger UI / OpenAPI):}
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{Entorno desplegado en producción (Render Cloud):} \url{https://viora-platform.onrender.com/swagger-ui/index.html}
    \item \textbf{Entorno de desarrollo local:} \url{http://localhost:8080/swagger-ui/index.html}
    \item \textbf{Especificación OpenAPI en formato JSON:} \url{https://viora-platform.onrender.com/v3/api-docs}
\end{itemize}

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.04}
\footnotesize
\setlength{\tabcolsep}{2.2pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.23\textwidth}|>{\centering\arraybackslash}p{0.07\textwidth}|>{\raggedright\arraybackslash}p{0.36\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.08\textwidth}|}
\caption{Matriz representativa de endpoints documentados con OpenAPI 3.0} \label{tab:services-documentation-endpoints-sprint-1} \\
\hline
\textbf{Acción / caso de uso} & \textbf{Método} & \textbf{Endpoint (URL desplegada en producción)} & \textbf{Parámetros clave} & \textbf{Códigos HTTP} \\ \hline
\endfirsthead

\hline
\textbf{Acción / caso de uso} & \textbf{Método} & \textbf{Endpoint (URL desplegada en producción)} & \textbf{Parámetros clave} & \textbf{Códigos HTTP} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{5}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Selección representativa de endpoints sobre un total de 33 servicios desplegados en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}) y localmente (\url{http://localhost:8080/swagger-ui/index.html}).}} \\
\endlastfoot

Delimitar y registrar cuartel & POST & \url{https://viora-platform.onrender.com/api/v1/plots} & Body: \texttt{CreatePlotResource} & 201, 400, 409 \\ \hline
Listar cuarteles o sync delta & GET & \url{https://viora-platform.onrender.com/api/v1/plots} & Query: \texttt{updatedSince}, \texttt{status} & 200, 400 \\ \hline
Actualizar cuartel con bloqueo & PUT & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}} & Path: \texttt{plotId}, Header: \texttt{If-Match} & 200, 400, 412 \\ \hline
Consultar métricas (BBI/Erez) & GET & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/metrics} & Path: \texttt{plotId}, Query: \texttt{metricName} & 200, 400 \\ \hline
Registrar pesaje de cosecha anual & POST & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/harvest-records} & Path: \texttt{plotId}, Body: \texttt{RecordHarvestYield} & 201, 400 \\ \hline
Listar incidentes agroclimáticos & GET & \url{https://viora-platform.onrender.com/api/v1/agroclimatic-incidents} & Query: \texttt{plotId}, \texttt{status}, \texttt{severity} & 200 \\ \hline
Registrar y enlazar nodo sensor IoT & POST & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/iot-devices} & Path: \texttt{plotId}, Body: \texttt{RegisterIoTDevice} & 201, 409 \\ \hline
Consultar telemetría ambiental & GET & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/telemetries} & Path: \texttt{plotId}, Query: \texttt{startDate}, \texttt{endDate} & 200, 400 \\ \hline
Ingerir lote de muestreo de frutos & POST & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/samplings} & Path: \texttt{plotId}, Body: \texttt{SubmitSamplingResource} & 201, 400 \\ \hline
Registrar plena floración (raleo) & PUT & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/thinning-prescriptions/full-bloom} & Path: \texttt{plotId}, Body: \texttt{RecordFullBloom} & 200, 400 \\ \hline
Liquidar cosecha con balanza & POST & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/harvest-settlements} & Path: \texttt{plotId}, Body: \texttt{SettleHarvestResource} & 201, 400 \\ \hline
Certificar informe agronómico & POST & \url{https://viora-platform.onrender.com/api/v1/plots/\{plotId\}/certifications} & Path: \texttt{plotId}, Body: \texttt{CertifyDossier} & 201, 422 \\ \hline
\end{longtable}
\end{center}

\noindent \textbf{Especificación detallada de endpoints representativos del Sprint 1:}

A continuación se detallan los 4 endpoints que encapsulan las reglas biofísicas y los patrones arquitectónicos nucleares del backend:

\vspace{0.25cm}
\noindent \textbf{1. Delimitar y registrar cuartel olivícola (\texttt{POST /api/v1/plots}):}

* **Propósito y reglas de negocio:** Recibe la cartografía del cuartel en GeoJSON sobre proyección WGS84, valida el polígono cerrado, calcula el área superficial en hectáreas y deriva la densidad dendrométrica mediante el marco de plantación $\frac{10000}{\text{rowSpacing} \times \text{treeSpacing}}$.
* **Parámetros de entrada:** Body `CreatePlotResource` (`name`: 3--100 caracteres, `variety`: variedad permitida, `polygonGeoJson`: GeoJSON válido, `rowSpacingM` y `treeSpacingM` $> 0$).
* **Ejemplo de solicitud y respuesta (\texttt{201 Created}):**

```json
// Petición (Request Body):
{
  "name": "Cuartel San Jeronimo - Tacna", "variety": "CRIOLLA",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],...]]}",
  "rowSpacingM": 7.0, "treeSpacingM": 5.0
}

// Respuesta (201 Created):
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6", "name": "Cuartel San Jeronimo - Tacna",
  "variety": "CRIOLLA", "areaHa": 1.25, "treeDensity": 286,
  "rowSpacingM": 7.0, "treeSpacingM": 5.0, "status": "ACTIVE", "revision": 0
}
```

* **Explicación de la respuesta:** El servicio asigna un UUID universal, confirma el área calculada de 1.25 ha, deriva una densidad de 286 árboles/ha e inicializa el control de concurrencia optimista en `revision: 0`.

\vspace{0.35cm}
\noindent \textbf{2. Ingesta de lote de muestreo de frutos cuajados (\texttt{POST /api/v1/plots/\{plotId\}/samplings}):}

* **Propósito y reglas de negocio:** Sincroniza observaciones de campo capturadas en modo desconectado (*offline-first*). Evalúa en el servidor si el lote cumple con el umbral de representatividad estadística ($n \ge 5$ árboles muestreados) para habilitar el algoritmo de raleo.
* **Parámetros de entrada:** Path `plotId` (UUID), Body `SubmitSamplingResource` (`clientBatchId`, `campaignYear: 2026`, arreglo `samples` con conteo de brotes y frutos cuajados).
* **Ejemplo de respuesta (\texttt{201 Created}):**

```json
// Respuesta (201 Created):
{
  "clientBatchId": "c9e8a7b6-1234-4567-89ab-cdef01234567", "campaignYear": 2026,
  "isRepresentative": true, "treesNeeded": 0, "sampledTreesCount": 5,
  "meanFruitsPerShoot": 8.76, "submittedAt": "2026-10-06T14:30:00Z"
}
```

* **Explicación de la respuesta:** Al consolidar 5 árboles muestreados, activa `isRepresentative: true`, reduce `treesNeeded` a 0 y computa una carga media observada de 8.76 frutos por brote.

\noindent \textbf{3. Registro de plena floración y prescripción de raleo (\texttt{PUT .../thinning-prescriptions/full-bloom}):}

* **Propósito y reglas de negocio:** Asienta la fecha fenológica en que se observó el 80\% de flores abiertas en el cuartel. Dispara de forma síncrona el cálculo del Índice de Vecería ($BBI$), las porciones de frío acumuladas según el modelo dinámico de Erez y deriva el porcentaje de frutos a aclarear junto con la ventana óptima de labor.
* **Parámetros de entrada:** Path `plotId` (UUID), Body `RecordFullBloomResource` (`campaignYear: 2026`, `observedOn: "2026-10-01"`).
* **Ejemplo de respuesta (\texttt{200 OK}):**

```json
// Respuesta (200 OK):
{
  "campaignYear": 2026, "status": "PRESCRIBED", "targetLoadFruitsPerTree": 12500,
  "percentageToRemove": 28.5, "windowOpensOn": "2026-10-15",
  "windowClosesOn": "2026-11-20", "blockers": []
}
```

* **Explicación de la respuesta:** El sistema prescribe remover el 28.5\% del cuaje excesivo dentro de una ventana de 36 días naturales previa al endurecimiento del carozo, mitigando la inhibición floral del año subsiguiente.

\vspace{0.35cm}
\noindent \textbf{4. Concurrencia optimista y manejo de errores RFC 7807 (\texttt{PUT /api/v1/plots/\{plotId\}}):}

* **Propósito y reglas de negocio:** Actualiza el marco o variedad validando la cabecera HTTP `If-Match` contra la versión persistida. Ante versiones desfasadas, rechaza la mutación sin sobrescribir datos.
* **Parámetros de entrada:** Path `plotId` (UUID), Header `If-Match: "999"` (versión desfasada deliberada), Body `UpdatePlotResource`.
* **Ejemplo de respuesta (\texttt{412 Precondition Failed}):**

```json
// Respuesta (412 Precondition Failed - RFC 7807 Problem Details):
{
  "type": "about:blank", "title": "Precondition Failed", "status": 412,
  "detail": "The plot revision has changed. Please reload.",
  "instance": "/api/v1/plots/3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```

* **Explicación de la respuesta:** El `GlobalExceptionHandler` intercepta la colisión emitiendo un objeto RFC 7807 (`ProblemDetail`), instruyendo al cliente móvil la necesidad de reconciliar su copia local sin corromper el estado persistido.

\vspace{0.35cm}
\noindent \textbf{Evidencias de interacción con la documentación interactiva (Swagger UI):}

Para comprobar la operatividad de los contratos y la consistencia de los esquemas OpenAPI 3.0, se ejecutaron pruebas de interacción en vivo sobre la consola interactiva Swagger UI desplegada en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}) y en entorno local (\url{http://localhost:8080/swagger-ui/index.html}), empleando datos agronómicos de muestra situados en La Yarada-Los Palos (Tacna).

Las pruebas de integración y validación cubrieron los siguientes flujos nucleares:

\begin{itemize}\setlength{\itemsep}{2pt}\setlength{\parskip}{0pt}
    \item \textbf{Catastro y alta de predio (\texttt{POST /api/v1/plots}):} Ejecución de solicitud con geometría poligonal cerrada WGS84 sobre La Yarada-Los Palos (\autoref{fig:exec-swagger-s1}, panel a). La consola Swagger UI confirmó la respuesta \texttt{201 Created}, serializando el objeto \texttt{PlotResource} con el cálculo de 1.25 ha de superficie y densidad de 286 árboles/ha.
    \item \textbf{Ingesta y representatividad muestral (\texttt{POST /api/v1/plots/\{plotId\}/samplings}):} Envío de un lote de 5 muestras georreferenciadas desde el cliente móvil (\autoref{fig:exec-swagger-s1}, panel b). Swagger UI retornó \texttt{201 Created} validando la transición de \texttt{isRepresentative} a \texttt{true} y fijando el conteo de árboles faltantes en cero (\texttt{treesNeeded: 0}).
    \item \textbf{Protección de concurrencia optimista (\texttt{PUT /api/v1/plots/\{plotId\}}):} Simulación de colisión concurrente inyectando deliberadamente el valor desfasado \texttt{"999"} en la cabecera HTTP \texttt{If-Match} (\autoref{fig:exec-swagger-s1}, panel c). El motor interceptó la operación y respondió con el código estandarizado \texttt{412 Precondition Failed} bajo el esquema RFC 7807 (\textit{Problem Details}), garantizando que ningún registro sea sobrescrito por modificaciones desactualizadas.
\end{itemize}

\begin{figure}[H]
\caption{Evidencias de Interacción y Validación en Swagger UI (OpenAPI 3.0).} \label{fig:exec-swagger-s1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/web-services/01-swagger-create-plot.png}
  \caption*{(a) Alta de predio (201).}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/web-services/02-swagger-submit-sampling.png}
  \caption*{(b) Ingesta muestral (201).}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.20\textheight,keepaspectratio]{report/assets/execution-evidence/sprint-1/web-services/03-swagger-error-rfc7807.png}
  \caption*{(c) Concurrencia (412 RFC 7807).}
\end{minipage}
\caption*{\textit{Nota.} Capturas de la consola interactiva Swagger UI ejecutando pruebas de integración en entorno local y de producción. Elaboración propia.}
\end{figure}

Los resultados verificaron la correspondencia unívoca entre las anotaciones OpenAPI del backend y los tipos generados en el contrato JSON (\url{https://viora-platform.onrender.com/v3/api-docs}), asegurando interoperabilidad sin discrepancias de contrato.

\noindent \textbf{Repositorio oficial y trazabilidad de control de versiones:}

La suite completa de Web Services y su infraestructura de documentación OpenAPI residen en el repositorio oficial de GitHub:
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{URL del repositorio:} \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}
\end{itemize}

En la \autoref{tab:services-documentation-commits-sprint-1} se listan los commits verificados en el historial de control de versiones del repositorio \texttt{viora-platform}, asociados directamente con contratos, documentación OpenAPI y controladores REST del Sprint 1:

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.04}
\footnotesize
\setlength{\tabcolsep}{2.2pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.09\textwidth}|>{\raggedright\arraybackslash}p{0.26\textwidth}|>{\raggedright\arraybackslash}p{0.10\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|}
\caption{Evidencias de documentación de Web Services para Sprint Review (commits de viora-platform)} \label{tab:services-documentation-commits-sprint-1} \\
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

viora-platform & feature/orchard-plot-controller & 138bff8 & feat(orchard): add documentation for plot controller and resources &  & 24/09/2026 \\ \hline
viora-platform & hotfix/open-api & 22ad2d4 & fix(swagger): add relative server url for render deployment &  & 01/10/2026 \\ \hline
viora-platform & hotfix/open-api & 001179d & Merge pull request \#23 from hotfix/open-api & fix(swagger): add relative server url for render deployment & 01/10/2026 \\ \hline
viora-platform & feature/settlement-settle-campaign-harvest & 88a9bf2 & feat(settlement): expose harvest settlement endpoint with localized messages &  & 02/10/2026 \\ \hline
viora-platform & feature/plot-restore & 23814aa & docs(api): document the plot restore endpoint &  & 03/10/2026 \\ \hline
viora-platform & feature/phenology-chill-metric-extras & 9afdbb7 & fix(phenology): align openapi schema example and mock test key to thresholdTarget &  & 03/10/2026 \\ \hline
viora-platform & feature/telemitry-agroclimatic-incidents & da10a40 & feat(controllers): add agroclimatic indicent controller, resources and assemblers &  & 03/10/2026 \\ \hline
viora-platform & feature/thinning-window-opens-on & 932dc56 & docs(thinning): record the prescription inputs and contract &  & 04/10/2026 \\ \hline
viora-platform & feature/thining-logbook & 20aaaad & feat(controllers): add controller, sampling covereage evaluator, sampling resources and their assemblers &  & 05/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & 353341e & fix(shared): answer 404 for paths that no endpoint serves &  & 07/10/2026 \\ \hline
\end{longtable}
\end{center}

#### Software Deployment Evidence for Sprint Review
&nbsp;

En esta sección se resumen los procesos de despliegue (\textit{deployment}) realizados durante el Sprint 1 para los productos digitales de Viora: el portal comercial (\textit{Landing Page}), los servicios web con su base de datos en la nube y la aplicación móvil nativa para Android. Las actividades comprendieron la creación de cuentas y proyectos en los proveedores cloud, la configuración de los recursos de cada plataforma, la preparación del proyecto móvil para firmar y distribuir sus versiones y la automatización de ese despliegue mediante GitHub Actions. En la \autoref{tab:deployment-summary-sprint-1} se resume qué se desplegó, dónde y cómo; a continuación se detalla cada producto con sus evidencias.

\begin{center}
\small
\renewcommand{\arraystretch}{1.08}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.14\textwidth}|>{\raggedright\arraybackslash}p{0.19\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|>{\raggedright\arraybackslash}p{0.27\textwidth}|>{\raggedright\arraybackslash}p{0.17\textwidth}|}
\caption{Resumen de los Despliegues del Sprint 1 por Producto Digital} \label{tab:deployment-summary-sprint-1} \\
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

Landing Page & \texttt{viora-landing-page} & Vercel & Integración con Git: cada \textit{push} a \texttt{main} publica producción & Publicado (versión 1.1.0) \\ \hline
Servicios web (API RESTful) & \texttt{viora-platform} & Render (\textit{Web Service} con Docker) & Despliegue automático desde la rama \texttt{main} & Publicado \\ \hline
Base de datos & No aplica & Filess.io (PostgreSQL 15.6) & Provisión desde el panel del proveedor; conexión mediante variables de entorno en Render & Disponible \\ \hline
Aplicación móvil Android & \texttt{viora-mobile-android} & Firebase App Distribution & APK \textit{release} firmado; distribución manual de la 1.0.0 y flujo de GitHub Actions disponible desde la \textit{release} 1.0.1 & Versión 1.0.0 (10) distribuida a 6 verificadores \\ \hline
\end{longtable}
\end{center}

\noindent \textbf{Landing Page (Vercel):}

El repositorio `viora-landing-page` se conectó a Vercel importándolo desde GitHub con el preset de aplicación Vite (\autoref{fig:deploy-vercel-s1}, panel a). En la configuración se definió `main` como rama de producción para despliegues automáticos (\autoref{fig:deploy-vercel-s1}, panel b), permitiendo además la creación manual de despliegues a partir de commits (\autoref{fig:deploy-vercel-s1}, panel c) hasta consolidar el entorno de producción activo en estado \textit{Ready} (\autoref{fig:deploy-vercel-s1}, panel d).

\begin{figure}[H]
\caption{Proceso de Despliegue Continuo de la Landing Page en Vercel.} \label{fig:deploy-vercel-s1}
\centering
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/landing-page/01-vercel-new-project.jpeg}
  \caption*{(a) Importación del proyecto en Vercel.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/landing-page/02-vercel-production-branch.jpeg}
  \caption*{(b) Configuración de rama de producción.}
\end{minipage}
\vspace{0.2cm}
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/landing-page/03-vercel-create-deployment.jpeg}
  \caption*{(c) Despliegue manual de release.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/landing-page/04-vercel-production-deployment.jpeg}
  \caption*{(d) Despliegue activo en producción.}
\end{minipage}
\caption*{\textit{Nota.} Configuración de entornos y despliegues del portal comercial en Vercel. Elaboración propia.}
\end{figure}

La calidad del código se valida antes de integrar mediante el flujo `ci.yml` de GitHub Actions (análisis estático con \textit{lint}, verificación de formato y compilación). En este Sprint se publicaron las versiones 1.0.0 y 1.1.0, accesibles públicamente en \url{https://viora-landing-page-sable.vercel.app/}.

\noindent \textbf{Servicios web de backend (Render):}

La API RESTful `viora-platform` se despliega en Render como un servicio web Docker de dos etapas sobre Java 21 LTS y Spring Boot 3. En la \autoref{fig:deploy-render-s1} se expone la configuración del servicio (panel a), las variables de entorno para la conexión segura con PostgreSQL en Filess.io (panel b) y la confirmación del despliegue en producción con estado \textit{Live} tras la integración continua desde `main` (panel c).

\begin{figure}[H]
\caption{Configuración y Despliegue del Backend viora-platform en Render Cloud.} \label{fig:deploy-render-s1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/backend/01-render-web-service-configuration.jpeg}
  \caption*{(a) Configuración del servicio.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/backend/02-render-environment-variables.jpeg}
  \caption*{(b) Variables de entorno.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/backend/03-render-deploy-live.jpeg}
  \caption*{(c) Despliegue exitoso (Live).}
\end{minipage}
\caption*{\textit{Nota.} Paneles de configuración, variables y estado del servicio RESTful en Render Cloud. Elaboración propia.}
\end{figure}

Al ser un plan gratuito, Render suspende la instancia tras inactividad y la reactiva ante nuevas peticiones. La documentación interactiva de la API (OpenAPI) se encuentra disponible en \url{https://viora-platform.onrender.com/swagger-ui/index.html}.

\noindent \textbf{Base de datos en la nube (Filess.io):}

La base de datos relacional PostgreSQL 15.6 se aprovisionó en Filess.io como base de datos compartida (\autoref{fig:deploy-filess-s1}, panel a), registrando la instancia `viora_thoughage` en estado \textit{Available} en la región de Nürnberg (\autoref{fig:deploy-filess-s1}, panel b), cuyas credenciales se gestionan mediante variables de entorno en Render.

\begin{figure}[H]
\caption{Aprovisionamiento y Estado de la Base de Datos PostgreSQL en Filess.io.} \label{fig:deploy-filess-s1}
\centering
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/database/01-filess-new-postgresql-database.jpeg}
  \caption*{(a) Creación de base de datos PostgreSQL.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/database/02-filess-database-available.jpeg}
  \caption*{(b) Instancia activa y disponible.}
\end{minipage}
\caption*{\textit{Nota.} Provisión y consola de administración de PostgreSQL en Filess.io. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil Android (Firebase App Distribution):}

El despliegue de la aplicación móvil se gestiona mediante Firebase App Distribution, permitiendo la instalación en dispositivos físicos de prueba:

\begin{itemize}\setlength{\itemsep}{2pt}\setlength{\parskip}{0pt}
    \item \textbf{Proyecto y registro Android:} Se aprovisionó el proyecto \texttt{viora-app-kotlin} en Firebase (\autoref{fig:deploy-firebase-setup-s1}, panel a) y se registró la app con paquete \texttt{pe.edu.upc.viora} (\autoref{fig:deploy-firebase-setup-s1}, panel b).
    \item \textbf{Grupos de verificadores y compilación release:} Se definieron los grupos \texttt{arcadiadevs-internal} y \texttt{viora-client-testers} (\autoref{fig:deploy-firebase-setup-s1}, panel c), compilando y firmando el binario \texttt{app-release.apk} mediante almacén PKCS12 de 4096 bits (\autoref{fig:deploy-firebase-setup-s1}, panel d).
\end{itemize}

\begin{figure}[H]
\caption{Configuración del Proyecto y Registro de Aplicación en Firebase.} \label{fig:deploy-firebase-setup-s1}
\centering
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/01-firebase-project-overview.png}
  \caption*{(a) Proyecto viora-app-kotlin.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/02-firebase-android-app-registered.png}
  \caption*{(b) Aplicación Android registrada.}
\end{minipage}
\vspace{0.2cm}
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/03-app-distribution-tester-groups.png}
  \caption*{(c) Grupos de verificadores.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.17\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/04-signed-release-apk.png}
  \caption*{(d) Binario release firmado.}
\end{minipage}
\caption*{\textit{Nota.} Configuración de infraestructura y artefactos en Firebase App Distribution. Elaboración propia.}
\end{figure}

El binario compilado fue cargado y distribuido a los verificadores internos (\autoref{fig:deploy-firebase-distrib-s1}, panel a), despachando las invitaciones automáticas por correo electrónico (\autoref{fig:deploy-firebase-distrib-s1}, panel b) y monitoreando en tiempo real las descargas e instalaciones activas (\autoref{fig:deploy-firebase-distrib-s1}, panel c).

\begin{figure}[H]
\caption{Distribución y Seguimiento de Instalaciones en Dispositivos Móviles.} \label{fig:deploy-firebase-distrib-s1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/05-release-upload-notes.png}
  \caption*{(a) Carga de versión 1.0.0.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/06-tester-invitation-email.png}
  \caption*{(b) Correo de invitación.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/07-distribution-status.png}
  \caption*{(c) Estado de invitaciones.}
\end{minipage}
\caption*{\textit{Nota.} Proceso de distribución y métricas de instalación en Firebase App Distribution. Elaboración propia.}
\end{figure}

La \autoref{fig:deploy-device-install-s1} documenta la instalación en un dispositivo físico: aviso de Play Protect, verificación de seguridad del sistema y ejecución de la aplicación sincronizada.

\begin{figure}[H]
\caption{Instalación y ejecución de la versión 1.0.0 en un teléfono Android físico.} \label{fig:deploy-device-install-s1}
\centering
\includegraphics[width=0.28\textwidth]{report/assets/sprint-deployment/sprint-1/application/09-device-play-protect.jpeg}\hspace{0.02\textwidth}\includegraphics[width=0.28\textwidth]{report/assets/sprint-deployment/sprint-1/application/10-device-security-check.jpeg}\hspace{0.02\textwidth}\includegraphics[width=0.28\textwidth]{report/assets/sprint-deployment/sprint-1/application/11-device-app-running.jpeg}
\caption*{\textit{Nota.} De izquierda a derecha: aviso de Google Play Protect, verificación de seguridad del teléfono y la aplicación en ejecución. Elaboración propia.}
\end{figure}

Para automatizar este flujo se construyó el pipeline `.github/workflows/deploy-android.yml`, configurando en el repositorio los secretos requeridos (\autoref{fig:deploy-github-secrets-s1}).

\begin{figure}[H]
\caption{Secretos del repositorio viora-mobile-android para el pipeline de despliegue.} \label{fig:deploy-github-secrets-s1}
\centering
\includegraphics[width=0.58\textwidth,height=0.22\textheight,keepaspectratio]{report/assets/sprint-deployment/sprint-1/application/08-github-actions-secrets.png}
\caption*{\textit{Nota.} Captura de la configuración de GitHub Actions; los valores permanecen cifrados. Elaboración propia.}
\end{figure}

#### Team Collaboration Insights during Sprint
&nbsp;

En esta sección se analizan las métricas de colaboración y la distribución de esfuerzo del equipo ArcadiaDevs a lo largo del Sprint 1, orientadas a la construcción de los entregables clave del ecosistema Viora: el portal web comercial, el servicio web transaccional y la aplicación móvil nativa. El desarrollo se ejecutó bajo la metodología GitFlow con ramas de características, ramas de integración y estabilización, utilizando la convención *Conventional Commits* para asegurar un historial transparente y auditable entre los 5 integrantes.

Para respaldar la trazabilidad del trabajo colaborativo en los repositorios de la organización en GitHub, a continuación se presentan los analíticos consolidados de contribución temporal y autoría de código (\textit{Contributors}) en la \autoref{fig:contributors-sprint-1}.

En el repositorio \texttt{viora-landing-page}, el flujo de trabajo se concentró intensivamente durante la primera semana del ciclo (semana del 21 de septiembre), correspondiente al diseño y maquetación comercial (\autoref{fig:contributors-sprint-1}, panel a). En \texttt{viora-platform}, la actividad técnica fue constante a lo largo de todo el ciclo, alcanzando su pico en la semana del 28 de septiembre para la implementación de los 33 endpoints RESTful y persistencia (\autoref{fig:contributors-sprint-1}, panel b). Finalmente, en \texttt{viora-mobile-android} se observa un crecimiento acumulativo constante iniciando con la base SQLite y arquitectura limpia (\autoref{fig:contributors-sprint-1}, panel c).

\begin{figure}[H]
\caption{Analíticas de Contribución de Código en GitHub por Repositorio (Sprint 1).} \label{fig:contributors-sprint-1}
\centering
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-1/viora-land.png}
  \caption*{(a) viora-landing-page.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-1/viora-plat.png}
  \caption*{(b) viora-platform.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.31\textwidth}
  \centering
  \includegraphics[width=\textwidth,height=0.18\textheight,keepaspectratio]{report/assets/sprint-team-collaboration/sprint-1/viora-mobile.png}
  \caption*{(c) viora-mobile-android.}
\end{minipage}
\caption*{\textit{Nota.} Analíticas de commits y líneas modificadas por integrante en GitHub Insights. Elaboración propia.}
\end{figure}
