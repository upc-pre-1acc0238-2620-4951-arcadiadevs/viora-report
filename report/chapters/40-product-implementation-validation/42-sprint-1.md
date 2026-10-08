## Landing Page & Mobile Application Implementation 

### Sprint 1

#### Sprint Planning 1
&nbsp;

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma colaborativa Discord. El propósito central de esta reunión fue alinear la capacidad técnica del equipo con la estrategia de captación comercial, mitigación temprana de riesgos de ingeniería y validación agronómica en campo de Viora. Para este ciclo iterativo, el equipo estableció una velocidad estimada de 190 puntos de historia (*Story Points*) para abordar un compromiso de trabajo priorizado de 183 puntos de historia distribuidos en 68 ítems del Product Backlog.

Dicho alcance comprometido consolida la entrega equilibrada de los diferentes componentes del ecosistema: 14 puntos de historia en la presencia digital institucional y comercial (*Landing Page* completa con localización y tarifas en moneda nacional, US33 a US41), 6 puntos de historia en *spikes* de investigación y factibilidad técnica (SPK01 sobre el algoritmo dinámico de frío de Erez y SPK02 sobre persistencia móvil *offline-first* con SQLite), 69 puntos de historia en las 20 historias de usuario funcionales de las aplicaciones cliente móviles para el productor olivarero (delimitación georreferenciada de parcelas, monitoreo de frío y heladas, telemetría de sensores, muestreo guiado de cuajado y balance de aclareo), y 94 puntos de historia en 37 historias técnicas (*Technical Stories*) que comprenden la arquitectura base del backend (control global de excepciones bajo RFC 7807 y convenciones JPA) junto a la suite completa de los 33 servicios web RESTful desacoplados para la gestión integral de parcelas, telemetría, históricos fenológicos y liquidaciones de cosecha.

A continuación, en la \autoref{tab:sprint-planning-1} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación, la capacidad comprometida y el Sprint Goal formulado bajo el estándar de Scrum.org para garantizar que este primer incremento de software entregue valor tangible y medible tanto a los productores agrícolas como a las organizaciones olivareras.

\begin{center}
\small
\renewcommand{\arraystretch}{1.25}
\begin{longtable}{|p{4.2cm}|p{10.8cm}|}
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

\clearpage

#### Aspect Leaders and Collaborators 
&nbsp;

Para maximizar la eficiencia en la ejecución, garantizar la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 1, se definió la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna con precisión un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos funcionales y arquitecturales priorizados en esta primera iteración.

En el presente Sprint 1, los aspectos seleccionados comprenden los dominios de software y Bounded Contexts que concentran los 68 ítems de trabajo comprometidos (183 Story Points). Cabe precisar que, de los nueve Bounded Contexts que integran el diseño estratégico global del sistema Viora, cinco de ellos participan activamente en este primer ciclo iterativo (*Olive Orchard and Plot Management*, *Agroclimatic Telemetry and Sensor Monitoring*, *Phenology and Historical Bearing Analytics*, *Crop Load Regulation and Thinning Advisory* y *Harvest Settlement and Performance Reporting*), articulados junto a la presencia comercial de la *Landing Page* y los fundamentos arquitecturales de la plataforma *Shared*. Los cuatro contextos restantes (*Identity and Access Management*, *User Profiles*, *Subscription and Cooperative Membership* y *Cooperative Operations and Territorial Intelligence*) se encuentran programados para los Sprints 2 y 3, operando durante esta fase mediante perfiles preconfigurados de desarrollo y emuladores de contexto.

* **Communications (Landing Page):** Abarca la maquetación semántica, diseño visual responsivo, localización, presentación de la propuesta de valor y tarifas transparentes en moneda nacional y despliegue continuo en Vercel del sitio web comercial e institucional (`viora-landing-page`), asegurando la captación temprana de productores y organizaciones olivareras.
* **Orchard (Olive Orchard and Plot Management):** Comprende el catastro y delimitación georreferenciada de predios olivareros mediante coordenadas GPS y polígonos GeoJSON, restauración de cuarteles archivados, tipificación varietal (Criolla y Sevillana), densidad arbórea y rectificación con control de concurrencia optimista, articulando los contratos REST del backend y las vistas cartográficas de la app móvil.
* **Telemetry (Agroclimatic Telemetry and Sensor Monitoring):** Involucra la administración del ciclo de vida de nodos sensores a nivel de parcela, calibración de offsets y factores de corrección edafoclimática, consulta y agregación temporal de lecturas agroclimáticas de humedad de suelo, temperatura ambiental y radiación, y sincronización de pronósticos meteorológicos geolocalizados a 7 días.
* **Phenology (Phenology and Historical Bearing Analytics):** Cubre la memoria histórica de cosechas plurianuales y rectificación de pesajes, la formulación matemática del Índice de Vecería ($BBI$), el *spike* de viabilidad técnica sobre acumulación de frío invernal mediante el modelo dinámico de Erez y las vistas móviles de seguimiento fenológico.
* **Thinning (Crop Load Regulation and Thinning Advisory):** Representa el núcleo de valor primario (*Core Domain*), abarcando la toma de muestras de frutos cuajados a pie de árbol, la evaluación de representatividad estadística, la emisión de prescripciones técnicas de aclareo antes del endurecimiento del carozo, el registro y confirmación de labores en campo y el *spike* de persistencia local *offline-first* con SQLite y Room.
* **Harvest (Harvest Settlement and Performance Reporting):** Comprende el asentamiento formal de fin de campaña y balances de estabilización productiva, consultas detalladas de liquidación por campaña y la certificación criptográfica SHA-256 del expediente inmutable de parcela para auditar el rendimiento productivo.
* **Shared (Shared Architecture \& Core Foundations):** Agrupa los fundamentos arquitecturales transversales en Spring Boot / Java 21, incluyendo el controlador global de excepciones bajo RFC 7807, las convenciones de persistencia JPA y tipado espacial, la documentación interactiva OpenAPI 3.0 / Swagger UI y la resolución de internacionalización mediante cabeceras `Accept-Language`.

A continuación, en la \autoref{tab:lacx-sprint-1} se expone la matriz de asignación de liderazgo y colaboración de ArcadiaDevs para el Sprint 1:

\begin{table}[H]
\caption{Matriz de Liderazgo y Colaboración (LACX) para el Sprint 1} \label{tab:lacx-sprint-1}
\centering
\small
\renewcommand{\arraystretch}{1.25}
\begin{tabular}{|p{2.5cm}|p{2.42cm}|c|c|c|c|c|c|c|}
\hline
\textbf{Team Member} & \textbf{GitHub User} & \textbf{Comm.} & \textbf{Orchard} & \textbf{Telem.} & \textbf{Pheno.} & \textbf{Thin.} & \textbf{Harv.} & \textbf{Shared} \\ \hline
Espada Lazo, Piero Anthony & espadita2510 \newline pierodeveloper25 & C & \textbf{L} & C & C & C & C & \textbf{L} \\ \hline
Li Gayoso, Diana Carolina & peruvianMiau & C & C & C & C & C & \textbf{L} & C \\ \hline
Paredes Maza, Victor Juan de Dios & DaronCameloft & \textbf{L} & C & C & C & C & C & C \\ \hline
Santi Guerrero, Fabrizio Alonso & Santi2007939 & C & C & C & \textbf{L} & \textbf{L} & C & C \\ \hline
Trinidad León, Jahat Jassiel & trinity-bytes & C & C & \textbf{L} & C & C & C & C \\ \hline
\end{tabular}
\caption*{\textit{Nota.} L = Leader (Líder responsable del aspecto); C = Collaborator (Colaborador técnico). Elaboración propia.}
\end{table}

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

La sección inicial presenta la propuesta central del producto, anticipar la próxima cosecha frente a la vecería, junto con la llamada a la acción para descargar la aplicación (\autoref{fig:exec-landing-hero-s1}).

\begin{figure}[H]
\caption{Sección inicial de la Landing Page de Viora.} \label{fig:exec-landing-hero-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/01-hero.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

El carrusel de problemas recorre las situaciones que reconoce el productor (año \textit{off}, frío escaso, aclareo tardío y acopio incierto) y asocia cada una con el módulo de la aplicación que la atiende (\autoref{fig:exec-landing-pains-s1}).

\begin{figure}[H]
\caption{Carrusel de problemas y módulos de la aplicación.} \label{fig:exec-landing-pains-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/02-pain-points-carousel.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La propuesta de valor se presenta por separado para cada segmento objetivo: los productores olivareros (\autoref{fig:exec-landing-producers-s1}) y los gestores técnicos (\autoref{fig:exec-landing-managers-s1}).

\begin{figure}[H]
\caption{Propuesta de valor para productores olivareros.} \label{fig:exec-landing-producers-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/03-segment-producers.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Propuesta de valor para gestores técnicos.} \label{fig:exec-landing-managers-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/04-segment-technical-managers.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La sección del Plan Productor muestra la tarifa referencial por hectárea, un simulador que calcula el total mensual según las hectáreas elegidas y los pasos para suscribirse (\autoref{fig:exec-landing-plan-s1}).

\begin{figure}[H]
\caption{Sección del Plan Productor con simulador de suscripción.} \label{fig:exec-landing-plan-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/05-producer-plan.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

Finalmente, la sección del equipo presenta a ArcadiaDevs y enlaza al video de presentación del equipo (\autoref{fig:exec-landing-team-s1}).

\begin{figure}[H]
\caption{Sección del equipo en la Landing Page.} \label{fig:exec-landing-team-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/06-team.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil del productor:}

La pantalla de inicio resume el estado del campo para la campaña y el cuartel seleccionados: las parcelas pendientes de registrar su cosecha, el clima, las alertas activas, la humedad del suelo y la alternancia de producción de las últimas campañas (\autoref{fig:exec-app-home-s1}).

\begin{figure}[H]
\caption{Pantalla de inicio de la aplicación del productor.} \label{fig:exec-app-home-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/01-home.png}
\hspace{1cm}
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/02-home-indicators.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El listado de parcelas muestra las parcelas activas y archivadas con su variedad, superficie y número de árboles. El detalle de cada parcela muestra su delimitación sobre el mapa, su densidad de plantación y el acceso a su alternancia (\autoref{fig:exec-app-plots-s1}).

\begin{figure}[H]
\caption{Listado y detalle de parcelas.} \label{fig:exec-app-plots-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/03-plots-list.png}
\hspace{1cm}
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/04-plot-detail.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La vista de alternancia muestra el índice de vecería (BBI) de la parcela con su clasificación de severidad. El registro de cosecha permite ingresar los kilogramos de aceituna verde y negra de la campaña para cerrarla (\autoref{fig:exec-app-harvest-s1}).

\begin{figure}[H]
\caption{Índice de vecería y registro de cosecha.} \label{fig:exec-app-harvest-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/05-plot-alternation.png}
\hspace{1cm}
\includegraphics[width=0.30\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/06-harvest-registration.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 1.

* **Título:** Product Navigation - Sprint 1
* **Entrega:** TB1 / Sprint 1
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \url{https://tinyurl.com/ef66ptm9}

\newpage

#### Services Documentation Evidence for Sprint Review 
&nbsp;

En esta sección se presenta la relación de servicios web RESTful implementados y formalmente documentados bajo el estándar OpenAPI 3.0 para la plataforma agronómica \textbf{Viora} (\texttt{viora-platform}) durante el Sprint 1. El equipo de backend consolidó una arquitectura hexagonal desacoplada guiada por el dominio (Domain-Driven Design - DDD) sobre Java 21 LTS y Spring Boot 3, implementando contratos inmutables tipados estrictamente mediante Java 21 Records y Jakarta Validation (\texttt{@NotNull}, \texttt{@NotBlank}, \texttt{@Size}, \texttt{@PositiveOrZero}), estandarización centralizada de errores semánticos bajo la especificación RFC 7807 (\textit{Problem Details}) sin exponer trazas de infraestructura, control de concurrencia optimista con cabeceras HTTP \texttt{If-Match} / \texttt{ETag} (código \texttt{412 Precondition Failed}) para proteger entidades agronómicas críticas, y autodocumentación viva en Swagger UI con soporte para pruebas interactivas (\textit{Try it out}).

Durante este ciclo de desarrollo \textbf{se implementaron y documentaron un total de 33 endpoints RESTful} distribuidos en 5 Bounded Contexts y 11 controladores web. Con el propósito de brindar una visión rigurosa, en la \autoref{tab:services-documentation-endpoints-sprint-1} se presenta la matriz de los 12 endpoints más representativos del sistema cubriendo la totalidad de módulos operativos, encontrándose los 33 endpoints plenamente accesibles y operativos en la consola interactiva de Swagger UI.

\noindent \textbf{Puntos de Acceso a la Documentación Interactiva (Swagger UI / OpenAPI):}
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{Entorno Desplegado en Producción (Render Cloud):} \url{https://viora-platform.onrender.com/swagger-ui/index.html}
    \item \textbf{Entorno de Desarrollo Local:} \url{http://localhost:8080/swagger-ui/index.html}
    \item \textbf{Especificación OpenAPI JSON:} \url{https://viora-platform.onrender.com/v3/api-docs}
\end{itemize}

\newpage

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.12}
\setlength{\tabcolsep}{3pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.23\textwidth}|>{\centering\arraybackslash}p{0.07\textwidth}|>{\raggedright\arraybackslash}p{0.36\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.08\textwidth}|}
\caption{Matriz Representativa de Endpoints Documentados con OpenAPI 3.0} \label{tab:services-documentation-endpoints-sprint-1} \\
\hline
\textbf{Acción / Caso de Uso} & \textbf{Método} & \textbf{Endpoint (URL Desplegada en Producción)} & \textbf{Parámetros Clave} & \textbf{Códigos HTTP} \\ \hline
\endfirsthead

\hline
\textbf{Acción / Caso de Uso} & \textbf{Método} & \textbf{Endpoint (URL Desplegada en Producción)} & \textbf{Parámetros Clave} & \textbf{Códigos HTTP} \\ \hline
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

\newpage

\noindent \textbf{Especificación Detallada de Endpoints Representativos del Sprint 1:}

A continuación se detallan los 4 endpoints que encapsulan las reglas biofísicas y los patrones arquitectónicos nucleares del backend:

\vspace{0.25cm}
\noindent \textbf{1. Delimitar y Registrar Cuartel Olivícola (\texttt{POST /api/v1/plots}):}

* **Propósito y Reglas de Negocio:** Recibe la cartografía del cuartel en GeoJSON sobre proyección WGS84, valida el polígono cerrado, calcula el área superficial en hectáreas y deriva la densidad dendrométrica mediante el marco de plantación $\frac{10000}{\text{rowSpacing} \times \text{treeSpacing}}$.
* **Parámetros de Entrada:** Body `CreatePlotResource` (`name`: 3--100 caracteres, `variety`: variedad permitida, `polygonGeoJson`: GeoJSON válido, `rowSpacingM` y `treeSpacingM` $> 0$).
* **Ejemplo de Solicitud y Respuesta (`201 Created`):**

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

* **Explicación del Response:** El servicio asigna un UUID universal, confirma el área calculada de 1.25 ha, deriva una densidad de 286 árboles/ha e inicializa el control de concurrencia optimista en `revision: 0`.

\vspace{0.35cm}
\noindent \textbf{2. Ingesta de Lote de Muestreo de Frutos Cuajados (\texttt{POST /api/v1/plots/\{plotId\}/samplings}):}

* **Propósito y Reglas de Negocio:** Sincroniza observaciones de campo capturadas en modo desconectado (*offline-first*). Evalúa en el servidor si el lote cumple con el umbral de representatividad estadística ($n \ge 5$ árboles muestreados) para habilitar el algoritmo de raleo.
* **Parámetros de Entrada:** Path `plotId` (UUID), Body `SubmitSamplingResource` (`clientBatchId`, `campaignYear: 2026`, arreglo `samples` con conteo de brotes y frutos cuajados).
* **Ejemplo de Respuesta (`201 Created`):**

```json
// Respuesta (201 Created):
{
  "clientBatchId": "c9e8a7b6-1234-4567-89ab-cdef01234567", "campaignYear": 2026,
  "isRepresentative": true, "treesNeeded": 0, "sampledTreesCount": 5,
  "meanFruitsPerShoot": 8.76, "submittedAt": "2026-10-06T14:30:00Z"
}
```

* **Explicación del Response:** Al consolidar 5 árboles muestreados, activa `isRepresentative: true`, reduce `treesNeeded` a 0 y computa una carga media observada de 8.76 frutos por brote.

\newpage

\noindent \textbf{3. Registro de Plena Floración y Prescripción de Raleo (\texttt{PUT .../thinning-prescriptions/full-bloom}):}

* **Propósito y Reglas de Negocio:** Asienta la fecha fenológica en que se observó el 80\% de flores abiertas en el cuartel. Dispara de forma síncrona el cálculo del Índice de Vecería ($BBI$), las porciones de frío acumuladas según el modelo dinámico de Erez y deriva el porcentaje de frutos a aclarear junto con la ventana óptima de labor.
* **Parámetros de Entrada:** Path `plotId` (UUID), Body `RecordFullBloomResource` (`campaignYear: 2026`, `observedOn: "2026-10-01"`).
* **Ejemplo de Respuesta (`200 OK`):**

```json
// Respuesta (200 OK):
{
  "campaignYear": 2026, "status": "PRESCRIBED", "targetLoadFruitsPerTree": 12500,
  "percentageToRemove": 28.5, "windowOpensOn": "2026-10-15",
  "windowClosesOn": "2026-11-20", "blockers": []
}
```

* **Explicación del Response:** El sistema prescribe remover el 28.5\% del cuaje excesivo dentro de una ventana de 36 días naturales previa al endurecimiento del carozo, mitigando la inhibición floral del año subsiguiente.

\vspace{0.35cm}
\noindent \textbf{4. Concurrencia Optimista y Manejo de Errores RFC 7807 (\texttt{PUT /api/v1/plots/\{plotId\}}):}

* **Propósito y Reglas de Negocio:** Actualiza el marco o variedad validando la cabecera HTTP `If-Match` contra la versión persistida. Ante versiones desfasadas, rechaza la mutación sin sobrescribir datos.
* **Parámetros de Entrada:** Path `plotId` (UUID), Header `If-Match: "999"` (versión desfasada deliberada), Body `UpdatePlotResource`.
* **Ejemplo de Respuesta (`412 Precondition Failed`):**

```json
// Respuesta (412 Precondition Failed - RFC 7807 Problem Details):
{
  "type": "about:blank", "title": "Precondition Failed", "status": 412,
  "detail": "The plot revision has changed. Please reload.",
  "instance": "/api/v1/plots/3fa85f64-5717-4562-b3fc-2c963f66afa6"
}
```

* **Explicación del Response:** El `GlobalExceptionHandler` intercepta la colisión emitiendo un objeto RFC 7807 (`ProblemDetail`), instruyendo al cliente móvil la necesidad de reconciliar su copia local sin corromper el estado persistido.

\vspace{0.35cm}
\noindent \textbf{Evidencias de Interacción con la Documentación Interactiva (Swagger UI):}

Para comprobar la operatividad de los contratos y la consistencia de los esquemas OpenAPI 3.0, se ejecutaron pruebas de interacción en vivo sobre la consola interactiva Swagger UI desplegada en Render (\url{https://viora-platform.onrender.com/swagger-ui/index.html}) y en entorno local (\url{http://localhost:8080/swagger-ui/index.html}), empleando datos agronómicos de muestra situados en La Yarada-Los Palos (Tacna).

Las pruebas de integración y validación cubrieron los siguientes flujos nucleares:

\begin{itemize}\setlength{\itemsep}{2pt}\setlength{\parskip}{0pt}
    \item \textbf{Catastro y Alta de Predio (\texttt{POST /api/v1/plots}):} Ejecución de solicitud con geometría poligonal cerrada WGS84 sobre La Yarada-Los Palos. La consola Swagger UI confirmó la respuesta \texttt{201 Created}, serializando el objeto \texttt{PlotResource} con el cálculo de 1.25 ha de superficie y densidad de 286 árboles/ha.
    \item \textbf{Ingesta y Representatividad Muestral (\texttt{POST /api/v1/plots/\{plotId\}/samplings}):} Envío de un lote de 5 muestras georreferenciadas desde el cliente móvil. Swagger UI retornó \texttt{201 Created} validando la transición de \texttt{isRepresentative} a \texttt{true} y fijando el conteo de árboles faltantes en cero (\texttt{treesNeeded: 0}).
    \item \textbf{Protección de Concurrencia Optimista (\texttt{PUT /api/v1/plots/\{plotId\}}):} Simulación de colisión concurrente inyectando deliberadamente el valor desfasado \texttt{"999"} en la cabecera HTTP \texttt{If-Match}. El motor interceptó la operación y respondió con el código estandarizado \texttt{412 Precondition Failed} bajo el esquema RFC 7807 (\textit{Problem Details}), garantizando que ningún registro sea sobrescrito por modificaciones desactualizadas.
\end{itemize}

Los resultados verificaron la correspondencia unívoca entre las anotaciones OpenAPI del backend y los tipos generados en el contrato JSON (\url{https://viora-platform.onrender.com/v3/api-docs}), asegurando interoperabilidad sin discrepancias de contrato.

\newpage

\noindent \textbf{Repositorio Oficial y Trazabilidad de Control de Versiones:}

La suite completa de Web Services y su infraestructura de documentación OpenAPI residen en el repositorio oficial de GitHub:
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{URL del Repositorio:} \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}
\end{itemize}

En la \autoref{tab:services-documentation-commits-sprint-1} se listan los commits verificados en el historial de control de versiones del repositorio \texttt{viora-platform}, asociados directamente con contratos, documentación OpenAPI y controladores REST del Sprint 1:

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{2.5pt}
\begin{longtable}{|>{\raggedright\arraybackslash}p{0.16\textwidth}|>{\raggedright\arraybackslash}p{0.21\textwidth}|>{\centering\arraybackslash}p{0.09\textwidth}|>{\raggedright\arraybackslash}p{0.26\textwidth}|>{\raggedright\arraybackslash}p{0.10\textwidth}|>{\centering\arraybackslash}p{0.12\textwidth}|}
\caption{Evidencias de Documentación de Web Services para Sprint Review (Commits de viora-platform)} \label{tab:services-documentation-commits-sprint-1} \\
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

viora-platform & hotfix/open-api & 22ad2d4 & fix(swagger): add relative server url for render deployment &  & 01/10/2026 \\ \hline
viora-platform & hotfix/open-api & 001179d & Merge pull request \#23 from hotfix/open-api & fix(swagger): add relative server url for render deployment & 01/10/2026 \\ \hline
viora-platform & feature/orchard-plot-controller & 138bff8 & feat(orchard): add documentation for plot controller and resources &  & 25/09/2026 \\ \hline
viora-platform & feature/plot-restore & 23814aa & docs(api): document the plot restore endpoint &  & 03/10/2026 \\ \hline
viora-platform & feature/phenology-chill-metric-extras & 9afdbb7 & fix(phenology): align openapi schema example and mock test key to thresholdTarget &  & 03/10/2026 \\ \hline
viora-platform & feature/thinning-window-opens-on & 932dc56 & docs(thinning): record the prescription inputs and contract &  & 04/10/2026 \\ \hline
viora-platform & feature/telemitry-agroclimatic-incidents & da10a40 & feat(controllers): add agroclimatic indicent controller, resources and assemblers &  & 04/10/2026 \\ \hline
viora-platform & feature/thining-logbook & 20aaaad & feat(controllers): add controller, sampling covereage evaluator, sampling resources and their assemblers &  & 05/10/2026 \\ \hline
viora-platform & feature/settlement-settle-campaign-harvest & 88a9bf2 & feat(settlement): expose harvest settlement endpoint with localized messages &  & 02/10/2026 \\ \hline
viora-platform & feature/virtual-node-hourly-telemetry & 353341e & fix(shared): answer 404 for paths that no endpoint serves &  & 07/10/2026 \\ \hline
\end{longtable}
\end{center}

\newpage


#### Software Deployment Evidence for Sprint Review 
&nbsp;

En esta sección se resumen los procesos de despliegue (\textit{deployment}) realizados durante el Sprint 1 para los productos digitales de Viora: el portal comercial (\textit{Landing Page}), los servicios web con su base de datos en la nube y la aplicación móvil nativa para Android. Las actividades comprendieron la creación de cuentas y proyectos en los proveedores cloud, la configuración de los recursos de cada plataforma, la preparación del proyecto móvil para firmar y distribuir sus versiones y la automatización de ese despliegue mediante GitHub Actions. En la \autoref{tab:deployment-summary-sprint-1} se resume qué se desplegó, dónde y cómo; a continuación se detalla cada producto con sus evidencias.

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
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

El repositorio `viora-landing-page` se conectó a Vercel importándolo desde GitHub en el espacio del líder del equipo (plan \textit{Hobby}), con el \textit{preset} de aplicación Vite y la raíz del repositorio como directorio de trabajo (\autoref{fig:deploy-vercel-new-s1}). Además, el archivo `vercel.json` declara el \textit{framework} (Vite).

\begin{figure}[H]
\caption{Creación del proyecto viora-landing-page en Vercel.} \label{fig:deploy-vercel-new-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/01-vercel-new-project.jpeg}
\caption*{\textit{Nota.} Captura del asistente de importación de Vercel. Elaboración propia.}
\end{figure}

En la configuración del entorno de producción se definió `main` como rama de producción: cada \textit{commit} publicado en esa rama genera un despliegue de producción y Vercel asigna automáticamente el dominio público (\autoref{fig:deploy-vercel-branch-s1}). Las demás ramas generan vistas previas (\textit{previews}), sin requerir credenciales adicionales en GitHub.

\begin{figure}[H]
\caption{Rama de producción del proyecto en Vercel.} \label{fig:deploy-vercel-branch-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/02-vercel-production-branch.jpeg}
\caption*{\textit{Nota.} Captura de la configuración de entornos de Vercel (\textit{Branch Tracking}). Elaboración propia.}
\end{figure}

Vercel permite además crear un despliegue de producción de forma manual a partir de una rama o de un \textit{commit}, como el `5540e99` (\textit{Merge branch 'release/1.0.0' into main}) de la \autoref{fig:deploy-vercel-manual-s1}.

\begin{figure}[H]
\caption{Creación manual de un despliegue de producción en Vercel.} \label{fig:deploy-vercel-manual-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/03-vercel-create-deployment.jpeg}
\caption*{\textit{Nota.} Captura del cuadro \textit{Create Deployment} de Vercel. Elaboración propia.}
\end{figure}

El resultado es el despliegue de producción de la \autoref{fig:deploy-vercel-prod-s1}: estado \textit{Ready}, rama `main`, \textit{commit} `ba66bb6` (\textit{Merge branch 'release/1.1.0' into main}) y dominio `viora-landing-page-sable.vercel.app`.

\begin{figure}[H]
\caption{Despliegue de producción del Landing Page en Vercel.} \label{fig:deploy-vercel-prod-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/04-vercel-production-deployment.jpeg}
\caption*{\textit{Nota.} Captura del resumen del proyecto en Vercel. Elaboración propia.}
\end{figure}

La calidad del código se valida antes de integrar mediante el flujo `ci.yml` de GitHub Actions (análisis estático con \textit{lint}, verificación de formato y compilación), que se ejecuta en cada \textit{pull request} hacia `develop` o `main` y en cada \textit{push} a `develop`. En este Sprint se publicaron las versiones 1.0.0 y 1.1.0 (26/09/2026), accesibles en \url{https://viora-landing-page-sable.vercel.app/}.

\noindent \textbf{Servicios web de backend (Render):}

La API RESTful `viora-platform` se despliega en Render como un servicio web (\textit{Web Service}) creado directamente desde el repositorio de GitHub de la organización. Render detectó el `Dockerfile` del proyecto y autocompletó la configuración con el entorno Docker. Dicho archivo es de dos etapas: la primera compila el proyecto con Maven y JDK 21 y la segunda ejecuta el `.jar` resultante sobre la imagen ligera `eclipse-temurin:21-jre-alpine`, con un usuario sin privilegios y el puerto tomado de la variable `PORT` que asigna Render.

En la \autoref{fig:deploy-render-config-s1} se muestran los parámetros del servicio: repositorio de origen `viora-platform`, nombre `viora-platform`, lenguaje Docker, rama `main`, región Ohio (US East) y una instancia gratuita de 0,1 CPU y 512 MB de RAM.

\begin{figure}[H]
\caption{Configuración del Web Service viora-platform en Render.} \label{fig:deploy-render-config-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/backend/01-render-web-service-configuration.jpeg}
\caption*{\textit{Nota.} Captura del panel de Render durante la creación del servicio. Elaboración propia.}
\end{figure}

La configuración sensible no se versiona: se carga como variables de entorno en el panel de Render (\autoref{fig:deploy-render-env-s1}), a saber `SPRING_DATASOURCE_URL`, `SPRING_DATASOURCE_DRIVER_CLASS_NAME`, `SPRING_DATASOURCE_USERNAME` y `SPRING_DATASOURCE_PASSWORD` para la conexión a la base de datos, `SPRING_JPA_HIBERNATE_DDL_AUTO` y `SPRING_JPA_SHOW_SQL` para el comportamiento de Hibernate, además de `CORS_ALLOWED_ORIGINS` y `PORT`. El panel oculta los valores, por lo que las credenciales no quedan expuestas en la evidencia.

\begin{figure}[H]
\caption{Variables de entorno del servicio en Render.} \label{fig:deploy-render-env-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/backend/02-render-environment-variables.jpeg}
\caption*{\textit{Nota.} Captura del panel de Render; los valores permanecen ocultos. Elaboración propia.}
\end{figure}

El despliegue es continuo (\autoref{fig:deploy-render-live-s1}): al integrarse en `main` el *pull request* #22 de la rama `hotfix/deploy`, Render lo activó automáticamente (*Auto-Deploy*) a partir del *commit* `9590e85`, construyó la imagen en 3 min 34 s y publicó el servicio con el estado *Deploy succeeded* y el mensaje *Your service is live*, el 1 de octubre de 2026 a las 18:17 (GMT-5).

\begin{figure}[H]
\caption{Despliegue exitoso de viora-platform en Render.} \label{fig:deploy-render-live-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/backend/03-render-deploy-live.jpeg}
\caption*{\textit{Nota.} Captura del historial de despliegues de Render. Elaboración propia.}
\end{figure}

Al ser un plan gratuito, Render suspende la instancia tras un periodo de inactividad y advierte que reactivarla puede retrasar las peticiones 50 segundos o más; en nuestras pruebas la primera petición posterior llegó a superar el minuto. Es una limitación asumida para el entorno académico. La documentación interactiva de la API (OpenAPI) se publica en \url{https://viora-platform.onrender.com/swagger-ui/index.html}.

\noindent \textbf{Base de datos en la nube (Filess.io):}

La base de datos relacional se aprovisionó en Filess.io como base de datos compartida (\textit{Shared Database}). En la \autoref{fig:deploy-filess-create-s1} se muestra la selección del motor PostgreSQL 15.6.0 entre las opciones del proveedor (PostgreSQL, MySQL, MariaDB y MongoDB), el nombre `viora` y la región automática.

\begin{figure}[H]
\caption{Creación de la base de datos PostgreSQL en Filess.io.} \label{fig:deploy-filess-create-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/database/01-filess-new-postgresql-database.jpeg}
\caption*{\textit{Nota.} Captura del asistente de Filess.io. Elaboración propia.}
\end{figure}

La \autoref{fig:deploy-filess-list-s1} confirma la instancia creada el 1 de octubre de 2026: `viora_thoughage` (nombre completo asignado por el proveedor), motor PostgreSQL, región Nürnberg (Alemania) y estado *Available*. Las credenciales de conexión se inyectan en Render mediante las variables `SPRING_DATASOURCE_*` y no forman parte del repositorio.

\begin{figure}[H]
\caption{Base de datos disponible en Filess.io.} \label{fig:deploy-filess-list-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.90\textwidth]{report/assets/sprint-deployment/sprint-1/database/02-filess-database-available.jpeg}
\caption*{\textit{Nota.} Captura del listado de bases de datos compartidas de Filess.io. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil Android (Firebase App Distribution):}

El despliegue de la aplicación móvil se realiza con Firebase App Distribution, que permite instalar las versiones en dispositivos físicos de prueba, tal como exige el curso. Los pasos realizados durante el Sprint fueron los siguientes.

\noindent \textit{1. Proyecto en Firebase.} Se creó el proyecto `viora-app-kotlin` con la cuenta del líder del equipo, en el plan Spark (sin costo) (\autoref{fig:deploy-firebase-project-s1}).

\begin{figure}[H]
\caption{Proyecto viora-app-kotlin en la consola de Firebase.} \label{fig:deploy-firebase-project-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/01-firebase-project-overview.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{2. Registro de la aplicación.} Se registró la aplicación Android con el nombre de paquete `pe.edu.upc.viora` (el `applicationId` del proyecto) y el alias *Viora Android*, lo que generó el identificador de aplicación `1:1085458528165:android:956ca686ddeaa2f2b95a4c` (\autoref{fig:deploy-firebase-app-s1}). Como App Distribution solo recibe el binario compilado, no fue necesario incorporar el SDK de Firebase ni el archivo `google-services.json` a la aplicación.

\begin{figure}[H]
\caption{Aplicación Android registrada en Firebase.} \label{fig:deploy-firebase-app-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/02-firebase-android-app-registered.png}
\caption*{\textit{Nota.} Captura de la configuración del proyecto en Firebase del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{3. Grupos de verificadores.} En App Distribution se crearon los grupos `arcadiadevs-internal`, con las cuentas institucionales del equipo (cinco al crearlo), y `viora-client-testers`, aún sin integrantes y destinado a los productores y gestores que participarán en la validación (\autoref{fig:deploy-firebase-groups-s1}).

\begin{figure}[H]
\caption{Grupos de verificadores en Firebase App Distribution.} \label{fig:deploy-firebase-groups-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/03-app-distribution-tester-groups.png}
\caption*{\textit{Nota.} Captura de la pestaña «Verificadores y grupos» del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{4. Compilación y firma de la versión release.} Se generó con `keytool` un almacén de claves PKCS12 (RSA de 4096 bits, alias `viora`), que se conserva fuera del repositorio, y se configuró Gradle para firmar con él la variante `release` (el detalle se documenta en la sección \textit{Software Deployment Configuration}). La compilación `assembleRelease` produjo el archivo `app-release.apk` de la versión 1.0.0 (código de versión 10), de unos 115 MB, cuya firma se verificó con `apksigner` antes de distribuirlo (\autoref{fig:deploy-release-apk-s1}).

\begin{figure}[H]
\caption{APK de la variante release generado por Gradle.} \label{fig:deploy-release-apk-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.80\textwidth]{report/assets/sprint-deployment/sprint-1/application/04-signed-release-apk.png}
\caption*{\textit{Nota.} Captura de la carpeta de salida de la compilación (\texttt{app/build/outputs/apk/release}) del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{5. Carga y distribución.} El APK se subió a App Distribution y se distribuyó al grupo `arcadiadevs-internal` (seis verificadores: cinco cuentas institucionales y una cuenta personal del líder del equipo) con las notas de versión «Viora 1.0.0 — versión estable del Sprint 1» (\autoref{fig:deploy-release-upload-s1}). Firebase registra la versión `1.0.0 (10)` el 7 de octubre de 2026 a las 16:54 (UTC-5).

\begin{figure}[H]
\caption{Carga de la versión 1.0.0 (10) y distribución a seis verificadores.} \label{fig:deploy-release-upload-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/05-release-upload-notes.png}
\caption*{\textit{Nota.} Captura del paso final de la distribución en Firebase App Distribution. Elaboración propia.}
\end{figure}

\noindent \textit{6. Invitación a los verificadores.} Cada verificador recibe un correo de Firebase App Distribution con las instrucciones para empezar a probar: abrir el mensaje en el celular, aceptar la invitación con su cuenta de Google, habilitar la instalación desde orígenes desconocidos y descargar la aplicación (\autoref{fig:deploy-tester-email-s1}). La invitación tiene una vigencia de 30 días.

\begin{figure}[H]
\caption{Correo de invitación a probar la aplicación.} \label{fig:deploy-tester-email-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/sprint-deployment/sprint-1/application/06-tester-invitation-email.png}
\caption*{\textit{Nota.} Correo enviado por Firebase App Distribution. Elaboración propia.}
\end{figure}

\noindent \textit{7. Seguimiento y validación en dispositivo físico.} La consola registra el estado de cada invitación (\autoref{fig:deploy-distribution-status-s1}): al momento de la captura, de 6 invitados, 3 habían aceptado la invitación y 2 habían descargado la aplicación, sin comentarios.

\begin{figure}[H]
\caption{Estado de la distribución de la versión 1.0.0 (10).} \label{fig:deploy-distribution-status-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/07-distribution-status.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase App Distribution del 7/10/2026. Elaboración propia.}
\end{figure}

La \autoref{fig:deploy-device-install-s1} documenta la instalación en un teléfono Xiaomi a través del enlace del correo. Como la aplicación no se distribuye por Google Play, Play Protect advierte que no conoce al desarrollador y ofrece continuar con «Instalar de todas formas», un comportamiento esperado en las distribuciones de prueba; después, el análisis de seguridad del teléfono no detecta riesgos en la versión 1.0.0 (114,9 MB) y la aplicación abre y muestra el Inicio sincronizado con el backend.

\begin{figure}[H]
\caption{Instalación y ejecución de la versión 1.0.0 en un teléfono Android físico.} \label{fig:deploy-device-install-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.30\textwidth]{report/assets/sprint-deployment/sprint-1/application/09-device-play-protect.jpeg}\hspace{0.02\textwidth}\includegraphics[width=0.30\textwidth]{report/assets/sprint-deployment/sprint-1/application/10-device-security-check.jpeg}\hspace{0.02\textwidth}\includegraphics[width=0.30\textwidth]{report/assets/sprint-deployment/sprint-1/application/11-device-app-running.jpeg}
\caption*{\textit{Nota.} De izquierda a derecha: aviso de Google Play Protect, verificación de seguridad del teléfono y la aplicación en ejecución. Capturas de un teléfono Xiaomi del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{8. Automatización con GitHub Actions.} Para no repetir estos pasos a mano, se creó el flujo `.github/workflows/deploy-android.yml` (\textit{commits} `a9e824b` y `b084879` de la rama `feature/android-deploy-pipeline`, integrada en `develop` en `321ed92` y publicada en `main` con la \textit{release} 1.0.1 en `c862b3b`). El flujo se activa al publicar una etiqueta de versión `X.Y.Z` o de forma manual; verifica que la etiqueta coincida con la versión de la aplicación, ejecuta las pruebas unitarias, reconstruye el almacén de claves desde un secreto, compila y firma el APK, comprueba la firma y lo distribuye al grupo `arcadiadevs-internal`. Para ello se configuraron en el repositorio los secretos que muestra la \autoref{fig:deploy-github-secrets-s1} (almacén de claves en Base64, alias y contraseñas, cuenta de servicio de Firebase y token público de Mapbox) y la variable `FIREBASE_APP_ID`. El detalle de cada paso se describe en la sección \textit{Software Deployment Configuration}.

\begin{figure}[H]
\caption{Secretos del repositorio viora-mobile-android para el pipeline de despliegue.} \label{fig:deploy-github-secrets-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/application/08-github-actions-secrets.png}
\caption*{\textit{Nota.} Captura de la configuración de GitHub Actions del 7/10/2026; GitHub solo muestra los nombres, nunca los valores. Elaboración propia.}
\end{figure}

#### Team Collaboration Insights during Sprint 
&nbsp;

En esta sección se detallan las actividades de implementación y despliegue llevadas a cabo durante el Sprint 1, orientadas a la construcción de los entregables clave del ecosistema Viora: el servicio web backend (viora-platform en Java/Spring Boot), la aplicación móvil nativa para Android (viora-mobile-android en Kotlin) y el sitio web estático (Landing Page en HTML5/CSS3/JS).
El proceso de desarrollo se ejecutó de manera ágil y estructurada bajo el flujo de trabajo GitFlow y la convención de Conventional Commits, garantizando una participación técnica activa de los 5 integrantes del equipo. 
Para respaldar la trazabilidad del trabajo colaborativo en los repositorios de la organización (viora-platform, viora-mobile-android y viora-landing-page), a continuación se presentan las evidencias extraídas de los analíticos de GitHub (Pulse y Contributors). Estas métricas ilustran el flujo continuo de integración, el registro estructurado de commits y la revisión y validación de múltiples Pull Requests orientadas al cumplimiento de los primeros componentes y servicios de la solución. 

\begin{figure}[H]
\caption{Vista de Contributors de Github - Landing Page.} \label{fig:contributors-landing-page}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-land.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista de Contributors de Github - Platform.} \label{fig:contributors-platform}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-plat.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista de Contributors de Github - Mobile-Android.} \label{fig:contributors-mobile-android}
\vspace{0.25cm}
\centering
\includegraphics[width=0.55\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-mobile.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\clearpage