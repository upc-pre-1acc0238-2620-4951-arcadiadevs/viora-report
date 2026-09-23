## Landing Page & Mobile Application Implementation 

### Sprint 1

#### Sprint Planning 1
&nbsp;

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma Discord. El propósito central de esta reunión fue alinear los esfuerzos técnicos con la estrategia de captación comercial y validación agronómica temprana de Viora, definiendo un compromiso de trabajo basado en una velocidad de 130 puntos de historia para abordar un alcance priorizado de 119 puntos de historia del Product Backlog (14 puntos en la Landing Page completa, 6 puntos en spikes de viabilidad técnica de campo, 33 puntos en historias de usuario de las aplicaciones cliente móviles del productor olivarero y 66 puntos en technical stories del backend fundacional y agronómico).

A continuación, en la \autoref{tab:sprint-planning-1} se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación y el Sprint Goal formulado bajo el estándar de Scrum.org para garantizar que este primer incremento de software entregue valor tangible a los productores y organizaciones olivareras.

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
\textbf{Sprint 0 Retrospective Summary} & El equipo identificó la necesidad de mitigar tempranamente la incertidumbre en algoritmos agroclimáticos y persistencia offline antes de abordar la lógica de negocio completa. \\ \hline
\textbf{Sprint 1 Goal} & \textbf{Nuestro enfoque se orienta a} presentar de manera comercial y diferenciada la propuesta de valor y tarifas de Viora a visitantes y organizaciones olivareras, habilitar la digitalización parcelaria, consulta telemétrica y captura de datos agronómicos en campo sin conexión para el segmento de productores olivareros, e incrementar las capacidades de integración y desarrollo mediante servicios web desacoplados para el equipo de aplicaciones cliente. \textbf{Creemos que esto entrega} mayor aceleración en la captación y conversión de clientes calificados interesados en los planes de suscripción, reducción del costo operativo de levantamiento de datos en predio y validación temprana de mercado para los productores agrícolas, y celeridad de construcción técnica con contratos estables para los desarrolladores de software. \textbf{Esto se confirmará cuando} los visitantes del sitio web consulten las tarifas en moneda nacional (PEN) en no más de tres interacciones y accedan a los enlaces de descarga directa, los productores olivareros registren exitosamente una parcela georreferenciada, consulten series telemétricas con el estado operativo de nodos sensores, visualicen el Índice de Vecería ($BBI$) histórico y almacenen muestreos de cuajado locales desconectados en la aplicación móvil nativa (Kotlin con Jetpack Compose y Room SQLite), y los desarrolladores clientes consuman los endpoints documentados con OpenAPI en Swagger UI cubriendo más del 70\% de los servicios web del backend fundacional y de gestión agronómica sin requerir intervención del equipo de base de datos. \\ \hline
\textbf{Sprint 1 Velocity} & 130 \\ \hline
\textbf{Sum of Story Points} & 119 \\ \hline
\end{longtable}
\end{center}

\clearpage

#### Aspect Leaders and Collaborators 
&nbsp;

Para maximizar la eficiencia en la ejecución, garantizar la coherencia arquitectural y optimizar la comunicación interna del equipo ArcadiaDevs a lo largo del Sprint 1, se definió la matriz de liderazgo y colaboración o *Leadership-and-Collaboration Matrix* (LACX). Esta matriz asigna con precisión un líder responsable (*Leader - L*) y los correspondientes colaboradores técnicos (*Collaborator - C*) para cada uno de los aspectos funcionales y arquitecturales priorizados en esta primera iteración.

En el presente Sprint 1, los aspectos seleccionados comprenden los dominios de software y Bounded Contexts que concentran los 45 ítems de trabajo comprometidos:

* **Communications (Landing Page):** Abarca la maquetación semántica, diseño visual responsivo, localización (i18n) y despliegue continuo en Vercel del sitio web comercial e institucional de Viora (`viora-landing-page`), asegurando la presentación de la propuesta de valor y captación de clientes.
* **Orchard (Olive Orchard and Plot Management):** Comprende el catastro y delimitación georreferenciada de predios olivareros mediante coordenadas GPS y polígonos GeoJSON, tipificación varietal (Criolla y Sevillana), densidad arbórea y rectificación de datos, articulando los contratos REST del backend y las vistas cartográficas cliente.
* **Telemetry (Agroclimatic Telemetry and Sensor Monitoring):** Involucra el ciclo de vida de nodos sensores virtuales a nivel de parcela, calibración y factores de corrección edafoclimática (TS42), consulta de series temporales agroclimáticas y consumo de pronósticos meteorológicos integrados al simulador IoT.
* **Phenology (Phenology and Historical Bearing Analytics):** Cubre la memoria histórica de cosechas plurianuales, rectificación de pesajes históricos (TS43), la formulación matemática del Índice de Vecería ($BBI$) y el spike de viabilidad técnica sobre acumulación de frío invernal mediante el modelo dinámico de Erez (SPK01).
* **Thinning (Crop Load Regulation and Thinning Advisory):** Representa el núcleo de valor primario (*Core Domain*), abarcando la toma de muestras de frutos cuajados a pie de árbol, la evaluación de representatividad estadística, la emisión de prescripciones técnicas de aclareo antes del endurecimiento del carozo y el spike de persistencia local offline-first con SQLite (SPK02).
* **Harvest (Harvest Settlement and Performance Reporting):** Comprende el asentamiento formal de fin de campaña (TS39) y la certificación criptográfica SHA-256 del expediente inmutable de parcela (TS40) para certificar el rendimiento productivo.
* **Shared (Shared Architecture \& Core Foundations):** Agrupa los fundamentos arquitecturales transversales en Spring Boot 3 / Java 21, incluyendo el controlador global de excepciones bajo RFC 7807, las convenciones de persistencia JPA y la documentación interactiva OpenAPI / Swagger UI.

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

El objetivo central del Sprint Backlog 1 es descomponer operativamente los 45 ítems de trabajo comprometidos (119 Story Points) en tareas técnicas atómicas y verificables. Dicha descomposición abarca la implementación de la presencia digital comercial de Viora (Landing Page con localización y tarifas en Soles), los spikes exploratorios de formulación biofísica de frío dinámico y persistencia SQLite offline-first, los módulos de captura agronómica móvil para el productor olivarero, y la base arquitectural y de microservicios RESTful estructurada bajo DDD táctico.

\begin{figure}[H]
\caption{Vista General del Tablero del Sprint Backlog 1} \label{fig:sprint-backlog-1-trello}
\centering
\includegraphics[width=0.85\textwidth]{report/assets/sprint-backlog/sb1.png}
\caption*{\textit{Nota.} Tablero de gestión ágil de ArcadiaDevs en Trello: \url{https://trello.com/b/sprint-1-viora-arcadiadevs}}
\end{figure}

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\begin{longtable}{|p{0.05\textwidth}|p{0.14\textwidth}|p{0.05\textwidth}|p{0.14\textwidth}|p{0.24\textwidth}|p{0.08\textwidth}|p{0.12\textwidth}|p{0.07\textwidth}|}
\caption{Descomposición de Ítems del Sprint Backlog 1 en Tareas de Trabajo (Work-Items)} \label{tab:sprint-backlog-1} \\
\hline
\multicolumn{2}{|l|}{	extbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 1} \\ \hline
\multicolumn{2}{|l|}{	extbf{User Story}} & \multicolumn{6}{l|}{	extbf{Work-Item / Task}} \\ \hline
	extbf{Id} & 	extbf{Title} & 	extbf{Id} & 	extbf{Title} & 	extbf{Description} & 	extbf{Estimation (Hours)} & 	extbf{Assigned To} & 	extbf{Status} \\ \hline
\endfirsthead

\hline
\multicolumn{2}{|l|}{	extbf{User Story}} & \multicolumn{6}{l|}{	extbf{Work-Item / Task (Continuación)}} \\ \hline
	extbf{Id} & 	extbf{Title} & 	extbf{Id} & 	extbf{Title} & 	extbf{Description} & 	extbf{Estimation (Hours)} & 	extbf{Assigned To} & 	extbf{Status} \\ \hline
\endhead

\hline
\endfoot

\hline
\multicolumn{8}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia a partir de la descomposición técnica del Sprint 1.}} \\
\endlastfoot

% US33
US33 & Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar & TK01 & Maquetación de sección Hero, pilares de valor y CTA principal & Implementar sección Hero con encabezado ''Anticipa la Próxima Cosecha - Equilibra tu Olivar'', badge dinámico de ventana de aclareo, botón CTA ''Descarga la app'' y tarjetas de los tres pilares de valor (Carga frutal, Frío invernal, Plan de aclareo). & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Componente de contexto regional de Tacna y métricas de vecería & Maquetar bloque territorial de Tacna destacando el 81\% de concentración olivarera, el 90\% de merma productiva histórica en 2024 y 1 de cada 2 campañas en año OFF junto a la crónica de La Yarada y Los Palos. & 0.8 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Slider interactivo de contraste de campañas y dolor agronómico & Construir componente interactivo de comparación ''¿Te suena alguno de estos años?'' con pestañas alternables de campaña ON vs campaña OFF y propuesta de anticipación de Viora. & 0.5 & Paredes, Victor & Done \\ \hline

% US34
US34 & Exploración de beneficios y capacidades operativas para el productor olivarero & TK01 & Sección de segmento para Productores Olivareros e ilustración & Diseñar y maquetar módulo editorial para productores ''Un año sobra, el otro falta'', incorporando retrato ilustrado, propuesta de lectura de frío, conteo por árbol y prescripción sin conexión. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Tarjeta interactiva ''Hecha para el campo'' y mockup de muestreo & Implementar tarjeta visual ''Hecha para el campo'' con mockup de la app móvil destacando el registro de muestreos a pie de árbol sin cobertura y sincronización diferida. & 0.8 & Paredes, Victor & Done \\ \hline

% US35
US35 & Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias & TK01 & Sección de segmento para Gestores Técnicos y Cooperativas & Maquetar módulo de gestores técnicos ''No puedes estar en cada parcela'', incorporando ilustración editorial, propuesta de supervisión cartográfica y sustitución de cuadernos y planillas Excel. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Mockup interactivo de Licencia Colectiva y proyección de acopio & Construir mockup visual del panel de licencia colectiva para cooperativas mostrando socios vinculados, hectáreas supervisadas, semáforo del territorio y proyección de acopio verde y negra. & 0.8 & Paredes, Victor & Done \\ \hline

% US36
US36 & Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN) & TK01 & Maquetación de planes comerciales en Soles (PEN) y Código Cooperativa & Implementar sección ''Planes'' con tres modalidades en Soles peruanos: Plan Productor (por ha), Plan Cooperativa (licencia colectiva a medida) y Canje de Código de Cooperativa (S/ 0 para el socio). & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Calculadora interactiva de hectáreas y pasarela Mercado Pago & Construir componente interactivo de estimación tarifaria donde el productor ajusta sus hectáreas (+ / -) calculando la cuota en tiempo real con integración simulada de Mercado Pago. & 0.7 & Paredes, Victor & Done \\ \hline

% US37
US37 & Reproducción del video promocional y demostrativo del producto (''About the Product'') & TK01 & Reproductor modal accesible para video ''About the Product'' & Configurar reproductor modal de video promocional de producto (''Good Move'') con controles de reproducción, cierre intuitivo y adaptación a dispositivos móviles y escritorio. & 0.6 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Miniatura estilizada de video y disparador de reproducción & Diseñar miniatura gráfica del video demostrativo con botón flotante interactivo de reproducción integrado armónicamente en el flujo de la Landing Page. & 0.4 & Paredes, Victor & Done \\ \hline

% US38
US38 & Reproducción del video institucional sobre el equipo y proceso de ingeniería (''About the Team'') & TK01 & Sección ''Nuestro equipo'', ilustración de trofeo y fichas de integrantes & Maquetar sección institucional con título ''PERO SI ES SOLO UN PROYECTO'', ilustración del equipo con trofeo, ficha de los 5 integrantes con roles específicos y enlaces a perfiles de LinkedIn. & 0.6 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Modal de video institucional ''About the Team'' y Misión/Visión & Implementar modal de video para la cápsula audiovisual del equipo de desarrollo e integrar el bloque de Misión y Visión institucional de ArcadiaDevs y Viora. & 0.4 & Paredes, Victor & Done \\ \hline

% US39
US39 & Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733) & TK01 & Maquetación y enlaces a Términos de Servicio en footer legal & Implementar acceso directo y vista de Términos de Servicio en la columna legal del footer, estipulando condiciones de uso, licenciamiento y exención de responsabilidad agronómica. & 0.5 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Vista de Política de Privacidad y Protección de Datos (Ley N° 29733) & Redactar e integrar página formal de Política de Privacidad conforme a la Ley N° 29733 del Perú, accesible desde el menú legal del pie de página. & 0.5 & Paredes, Victor & Done \\ \hline

% US40
US40 & Redirección y acceso a la descarga oficial de la aplicación móvil & TK01 & Sección de descarga con render 3D móvil e insignias oficiales & Maquetar sección ''Menos vecería, más cosecha cada campaña'' con mockup de teléfono móvil e insignias oficiales de descarga en Google Play Store y Apple App Store. & 0.5 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Banner de conversión pre-footer y código QR de descarga rápida & Implementar banner inferior de llamada a la acción ''Empieza a medir tu próxima campaña'' con botones oficiales y código QR para instalación inmediata en huerto o ferias. & 0.5 & Paredes, Victor & Done \\ \hline

% US41
US41 & Selección de idioma y localización de contenidos en la Landing Page & TK01 & Catálogos de traducción bilingüe (ES/EN) y framework i18n & Estructurar diccionarios de internacionalización es.json y en.json con todas las cadenas del portal (hero, contexto de Tacna, segmentos, planes, equipo y footer legal). & 0.8 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Selector interactivo de idioma ES/EN en header y footer & Construir componente selector de idioma (ES / EN) en la barra de navegación y pie de página con cambio reactivo de idioma y persistencia en almacenamiento local. & 0.7 & Paredes, Victor & Done \\ \hline

% SPK01
SPK01 & Investigación y modelado dinámico de Erez para cálculo de frío en backend & TK01 & Revisión bibliográfica y formalización matemática del modelo de Erez & Documentar las ecuaciones diferenciales de dos etapas de Fishman, Erez y Couvillon (1987) para formación y fijación irreversible de porciones de frío en el olivo. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Prototipo computacional en Java de simulación de porciones de frío & Implementar un algoritmo de cálculo iterativo en Java alimentado con series térmicas horarias sintéticas y validar los factores de destrucción por calor (>24°C). & 1.2 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Informe de viabilidad y benchmarking con datos térmicos de Tacna & Elaborar informe técnico comparando tiempos de cómputo sobre datasets meteorológicos locales de La Yarada-Los Palos y documentar recomendaciones para TS23. & 0.8 & Santi, Fabrizio & Done \\ \hline

% SPK02
SPK02 & Investigación de persistencia local SQLite y protocolo offline-first & TK01 & Diseño de esquema relacional SQLite para capturas desconectadas & Definir tablas locales de parcelas, rondas de muestreo y registros de conteo por árbol con banderas de sincronización (SYNC\_PENDING, SYNCED) y marcas temporales UTC. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Prototipo de inserción local offline con Room DB en Android & Implementar capa de acceso a datos con Room DAOs para registrar observaciones de cuajado sin conexión y comprobar la reactividad con StateFlow. & 1.2 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Verificación de sincronización idempotente hacia backend REST & Simular recuperación de señal de red móvil y envío por lotes con claves de idempotencia UUID para garantizar ausencia de registros duplicados en el servidor. & 0.8 & Santi, Fabrizio & Done \\ \hline

% US09
US09 & Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial & TK01 & Formulario de datos agronómicos iniciales de parcela & Crear pantalla en Jetpack Compose para ingresar nombre del predio, variedad de olivo (Criolla, Sevillana), marco de plantación (calles x plantas) y año de siembra. & 1.2 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Captura de coordenadas GPS de vértices en campo & Integrar Android Location Services (FusedLocationProviderClient) para capturar puntos georreferenciados a pie de lote con verificación de precisión (<5m). & 1.5 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Trazado manual y visualización sobre mapa satelital & Integrar Mapbox SDK en Android para permitir dibujar polígonos perimétricos manualmente tocando la pantalla satelital ante baja señal GPS. & 1.5 & Espada, Piero & Done \\ \cline{3-8}
& & TK04 & Validación de cierre poligonal y cálculo de densidad arbórea & Implementar validación geométrica local (mínimo 3 vértices cerrados) y computar en pantalla el área en hectáreas y árboles estimados por hectárea. & 0.8 & Espada, Piero & Done \\ \hline

% US10
US10 & Consulta y modificación de linderos y datos dendrométricos de parcela & TK01 & Pantalla de ficha técnica y resumen dendrométrico de predio & Implementar vista de detalle de parcela en Compose mostrando polígono sobre mapa, área, marco de plantación, variedad y árboles estimados. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Flujo de edición de vértices poligonales y parámetros de lote & Habilitar modo de edición para arrastrar marcadores perimétricos en el mapa o actualizar variedad y marco de espaciamiento dendrométrico. & 1.2 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Sincronización de modificaciones con API y persistencia en Room & Conectar cambios con el endpoint PUT /api/v1/plots/{plotId} y actualizar la base de datos local SQLite manteniendo coherencia offline. & 0.8 & Espada, Piero & Done \\ \hline

% US17
US17 & Monitoreo agroclimático y consulta de series temporales de suelo y microclima & TK01 & Dashboard de telemetría y estado actual de microclima y suelo & Construir panel con indicadores en tiempo real de temperatura ambiental, humedad relativa y humedad volumétrica de suelo a 30 y 60 cm. & 1.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Gráficas de tendencias históricas de series temporales & Integrar librería de visualización en Jetpack Compose para renderizar curvas de evolución térmica e hídrica en rangos de 24 horas y 7 días. & 1.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Tarjetas de pronóstico meteorológico y alertas de estrés & Implementar vista del pronóstico meteorológico a 7 días y badges de alerta temprana ante olas de calor (>35°C) o heladas (<0°C). & 1.0 & Trinidad, Jahat & Done \\ \hline

% US20
US20 & Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) & TK01 & Formulario de ingreso de cosechas plurianuales & Diseñar interfaz para registrar año agrícola, kilogramos cosechados de aceituna, destino (mesa/aceite) y observaciones agronómicas de la campaña. & 1.2 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Cálculo visual del Índice BBI y categorización de severidad & Implementar componente de indicador gráfico tipo velocímetro que muestre el BBI calculado (0 a 1) y clasifique la alternancia (Baja, Moderada, Severa). & 1.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Historial plurianual de pesajes registrados en la parcela & Crear lista de campañas históricas con tarjeta resumen por año, promedio interanual y variación porcentual entre temporadas sucesivas. & 1.0 & Santi, Fabrizio & Done \\ \hline

% US21
US21 & Modificación y rectificación de registros históricos de cosecha & TK01 & Cuadro de diálogo de rectificación de pesaje de campaña & Implementar modal de edición para ingresar pesaje rectificado y motivo de corrección según boleta formal de báscula de almazara. & 0.8 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Acción de eliminación de registro erróneo con confirmación & Añadir botón de eliminación con diálogo de confirmación y recálculo automático de la serie histórica y el índice BBI. & 0.7 & Santi, Fabrizio & Done \\ \hline

% US24
US24 & Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline & TK01 & Interfaz de captura rápida de conteo a pie de árbol & Diseñar interfaz ergonómica de conteo en Compose con botones incrementales de un toque para frutos por inflorescencia y brotes de muestra. & 1.5 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Almacenamiento local desconectado en base de datos Room SQLite & Persistir conteos de forma inmediata en SQLite local asegurando cero pérdida de datos durante rondas en áreas sin señal de telefonía rural. & 1.2 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Gestor de sincronización en segundo plano con WorkManager & Configurar tarea asíncrona de Android WorkManager con restricción Connected para transmitir lotes pendientes hacia la API al recuperar red. & 1.3 & Li, Diana & Done \\ \hline

% US25
US25 & Consulta de representatividad estadística e historial de árboles muestreados en campo & TK01 & Barra de progreso y verificación de muestra mínima & Implementar barra de progreso visual que indique la cantidad de árboles muestreados y resalte si se alcanzó el umbral mínimo estadístico (n >= 5). & 0.8 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Listado detallado de árboles evaluados en la ronda actual & Crear vista de listado con el identificador de cada árbol, número de frutos contados, media de cuajado y marca temporal del registro. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Tarjeta resumen de la prescripción técnica de aclareo generada & Presentar tarjeta con el porcentaje de desfrute recomendado, calibre proyectado a cosecha y fecha límite antes del endurecimiento del carozo. & 1.0 & Santi, Fabrizio & Done \\ \hline

% US13
US13 & Vinculación y alta de nodo sensor virtual a una parcela & TK01 & Formulario de alta y configuración de nodo sensor virtual & Implementar pantalla en Jetpack Compose para seleccionar tipo de nodo (Estación Microclimática o Sonda de Suelo), nombre y profundidad (30/60 cm). & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Integración con API de creación y manejo de respuestas & Conectar el formulario con POST /api/v1/plots/{plotId}/iot-devices gestionando códigos 201 Created y 409 Conflict por nombres duplicados. & 1.0 & Trinidad, Jahat & Done \\ \hline

% US14
US14 & Consulta de inventario y estado operativo de nodos sensores virtuales en parcela & TK01 & Listado visual de dispositivos vinculados a la parcela & Diseñar vista en Compose mostrando tarjetas de cada sensor con indicador de estado (Activo/Inactivo), tipo, última lectura y opción de desvincular. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Confirmación y ejecución de desvinculación de sensor & Integrar diálogo de confirmación para desvincular nodos invocando DELETE /api/v1/plots/{plotId}/iot-devices/{deviceId} y actualizando la lista. & 0.6 & Trinidad, Jahat & Done \\ \hline

% TS31
TS31 & Manejo centralizado de excepciones y errores bajo estándar RFC 7807 & TK01 & Implementar GlobalExceptionHandler con @RestControllerAdvice & Crear GlobalExceptionHandler en la capa de interfaces para interceptar MethodArgumentNotValidException, ResourceNotFoundException y BusinessRuleException. & 0.4 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Estructurar ProblemDetail estándar según RFC 7807 & Asegurar que todas las respuestas de error incluyan type, title, status, detail, instance y timestamp, sanitizando cualquier traza interna de servidor. & 0.3 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Pruebas de integración de captura global de excepciones & Construir pruebas MockMvc que verifiquen respuestas 400 Bad Request, 404 Not Found y 500 Internal Server Error formateadas bajo Problem Details. & 0.3 & Espada, Piero & Done \\ \hline

% TS32
TS32 & Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial & TK01 & Configurar SnakeCasePhysicalNamingStrategy en JPA / Hibernate & Establecer la estrategia física de nomenclatura en Spring Data JPA para mapear automáticamente entidades a nombres de tablas y columnas snake\_case en PostgreSQL. & 0.3 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Configurar conversores JPA para tipos poligonales GeoJSON WGS84 & Implementar AttributeConverter para transformar objetos de dominio PolygonCoordinates a tipos espaciales o representaciones JSONB consistentes. & 0.4 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Verificación de esquemas generados y tipos de datos & Ejecutar pruebas unitarias de persistencia comprobando precisión decimal (BigDecimal) e índices en claves foráneas. & 0.3 & Espada, Piero & Done \\ \hline

% TS33
TS33 & Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0 & TK01 & Configuración de dependencia springdoc-openapi-starter-webmvc-ui & Incorporar la librería SpringDoc OpenAPI en pom.xml y configurar rutas de Swagger UI (/swagger-ui.html) y especificación OpenAPI (/v3/api-docs). & 0.3 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Definición de metadatos de API, licencias y servidores & Configurar bean OpenAPI con título, versión 1.0.0, descripción de la plataforma agronómica Viora, contacto de ingeniería y servidores locales y de producción. & 0.3 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Verificación de esquemas de Resources y DTOs & Validar que los endpoints expuestos muestren esquemas de entrada y salida completos con tipos, descripciones y ejemplos en Swagger UI. & 0.4 & Espada, Piero & Done \\ \hline

% TS34
TS34 & Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language & TK01 & Configuración de AcceptHeaderLocaleResolver en Spring WebMvc & Registrar AcceptHeaderLocaleResolver con idioma por defecto español (Locale.forLanguageTag('es')) y soporte para inglés ('en'). & 0.3 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Creación de archivos messages.properties y messages\_en.properties & Definir catálogos de mensajes en resources para errores de dominio, validaciones de argumentos y descripciones de estado. & 0.4 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Integración con MessageSource en GlobalExceptionHandler & Conectar la resolución de mensajes en ProblemDetail usando MessageSource.getMessage con LocaleContextHolder. & 0.3 & Paredes, Victor & Done \\ \hline

% TS11
TS11 & Creación y delimitación poligonal de parcelas georreferenciadas & TK01 & Definir Value Objects espaciales GeoPoint y PolygonCoordinates & Definir GeoPoint (-90 a 90 latitud, -180 a 180 longitud) y PolygonCoordinates en la capa de dominio, validando lista no vacía, mínimo 3 puntos y cierre perimétrico. & 0.6 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Definir Plot Aggregate Root con invariantes agronómicas & Definir Plot con PlotId, UserId, PlotName, PolygonCoordinates, Variety, TreeSpacing, PlantingYear y Status, calculando superficie en hectáreas y árboles estimados. & 0.8 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Definir interfaz PlotRepository e implementación JPA & Crear PlotRepository en el dominio y JpaPlotRepositoryAdapter en infraestructura con consultas findById, save, existsByNameAndUserId y findAllByUserId. & 0.9 & Espada, Piero & Done \\ \cline{3-8}
& & TK04 & Crear CreatePlotCommand y PlotCommandService & Implementar caso de uso de creación en la capa de aplicación con validación de polígono, unicidad de nombre por usuario y persistencia transaccional. & 0.7 & Espada, Piero & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST POST /api/v1/plots & Crear PlotsController con POST /api/v1/plots retornando 201 Created con PlotResource o 400 Bad Request ante polígonos no cerrados. & 0.6 & Espada, Piero & Done \\ \hline

% TS12
TS12 & Listado y sincronización incremental delta de parcelas & TK01 & Crear GetPlotsByUserIdQuery con soporte de filtro updatedSince & Definir Query en la capa de aplicación recibiendo userId y parámetro opcional updatedSince de tipo Instant para sincronizaciones delta. & 0.5 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Implementar consulta optimizada en PlotQueryService & Implementar método en PlotQueryService que filtre parcelas activas modificadas después de la marca temporal provista o retorne el listado íntegro. & 0.6 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots & Añadir endpoint GET /api/v1/plots en PlotsController retornando 200 OK con colección de PlotResource y cabecera de timestamp del servidor. & 0.5 & Espada, Piero & Done \\ \hline

% TS13
TS13 & Consulta detallada de información agronómica y espacial de parcela & TK01 & Crear GetPlotByIdQuery en la capa de aplicación & Definir Query con plotId y userId autenticado asegurando validación de titularidad en el acceso a datos. & 0.4 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar consulta de detalle en PlotQueryService & Recuperar el agregado Plot verificando pertenencia al usuario y mapear a PlotDetailResource con linderos, superficie y conteos consolidados. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId} & Configurar endpoint en PlotsController retornando 200 OK con PlotDetailResource o 404 Not Found si no existe el identificador. & 0.4 & Li, Diana & Done \\ \hline

% TS14
TS14 & Actualización y rectificación integral de parcela con bloqueo optimista & TK01 & Crear UpdatePlotCommand con control de versión optimista & Definir Command con plotId, name, polygonCoordinates, variety, treeSpacing y version para prevenir sobreescrituras concurrentes. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar actualización de lote en PlotCommandService & Recuperar agregado, invocar método de mutación del dominio con recálculo de área, verificar @Version y persistir en base de datos. & 0.6 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST PUT /api/v1/plots/{plotId} & Añadir endpoint en PlotsController retornando 200 OK con PlotResource actualizado o 409 Conflict ante colisiones de versión concurrente. & 0.5 & Li, Diana & Done \\ \hline

% TS15
TS15 & Eliminación y baja lógica de parcela del inventario & TK01 & Crear DeletePlotCommand y política de baja lógica & Definir DeletePlotCommand y aplicar regla de desactivación lógica (status=INACTIVE) para preservar trazabilidad de mediciones históricas. & 0.4 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar baja lógica en PlotCommandService & Validar titularidad, marcar predio como inactivo en el agregado Plot y persistir estado actualizado mediante PlotRepository. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST DELETE /api/v1/plots/{plotId} & Configurar endpoint DELETE en PlotsController retornando 204 No Content o 404 Not Found si el predio no existe. & 0.4 & Li, Diana & Done \\ \hline

% TS16
TS16 & Alta y vinculación de nodo sensor virtual a parcela & TK01 & Definir VirtualSensorNode Aggregate Root e invariantes de sonda & Definir agregado VirtualSensorNode con NodeId, PlotId, Name, SensorType (MICROCLIMATE, SOIL\_PROBE), DepthCm (30, 60) y NodeStatus. & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Definir SensorNodeRepository e implementación JPA & Crear repositorio en el dominio con findById, save, existsByNameAndPlotId y findAllByPlotId, mapeando a virtual\_sensor\_nodes. & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Crear CreateSensorNodeCommand y SensorNodeCommandService & Implementar servicio de comando para validar existencia de parcela, unicidad del nombre en el lote y creación del nodo en estado ACTIVE. & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST POST /api/v1/plots/{plotId}/iot-devices & Crear endpoint en SensorNodesController retornando 201 Created con IotDeviceResource o 409 Conflict si el nombre ya está en uso. & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS17
TS17 & Consulta de inventario de nodos virtuales vinculados a parcela & TK01 & Crear GetSensorNodesByPlotIdQuery en capa de aplicación & Definir Query con plotId validando titularidad y estado activo de la parcela antes de consultar el inventario sensorial. & 0.4 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar consulta en SensorNodeQueryService con última lectura & Recuperar nodos de la parcela asociando a cada uno la última lectura registrada de temperatura o humedad disponible. & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/iot-devices & Configurar endpoint en SensorNodesController retornando 200 OK con colección de IotDeviceResource y estado de transmisión. & 0.4 & Trinidad, Jahat & Done \\ \hline

% TS18
TS18 & Desvinculación de nodo virtual preservando trazabilidad histórica & TK01 & Crear DeactivateSensorNodeCommand & Definir Command con plotId y deviceId para aplicar la transición de estado a DECOMMISSIONED en el agregado VirtualSensorNode. & 0.4 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Implementar desvinculación lógica en SensorNodeCommandService & Validar relación entre nodo y parcela, marcar sensor como retirado conservando las tablas de series temporales intactas. & 0.5 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST DELETE /api/v1/plots/{plotId}/iot-devices/{deviceId} & Añadir endpoint DELETE en SensorNodesController retornando 204 No Content tras la desvinculación exitosa del sensor. & 0.4 & Espada, Piero & Done \\ \hline

% TS19
TS19 & Consulta de series temporales de telemetría ambiental y de suelo & TK01 & Definir TelemetrySeries Aggregate Root y HourlyTelemetryReading Entity & Definir agregado TelemetrySeries con lecturas horarias de temperatura ambiente, humedad relativa, radiación solar y humedad de suelo. & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Crear GetTelemetrySeriesQuery y TelemetryQueryService & Implementar consulta filtrada por plotId, rango temporal (startDate, endDate) y resolución horaria optimizada con índices PostgreSQL. & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/telemetry & Crear endpoint en TelemetryController retornando 200 OK con TelemetrySeriesResource conteniendo arreglos de lecturas ordenadas cronológicamente. & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS20
TS20 & Consulta de pronóstico meteorológico geolocalizado a 7 días & TK01 & Implementar cliente de pronóstico meteorológico externo & Crear WeatherForecastClient con RestClient de Spring para consultar pronósticos meteorológicos basados en latitud/longitud centroide de la parcela. & 0.7 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar caché en WeatherQueryService y mapeo de riesgos & Almacenar en caché el pronóstico diario a 7 días y evaluar condiciones de riesgo agronómico (temperaturas extremas o ráfagas). & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/weather-forecast & Crear endpoint en WeatherController retornando 200 OK con WeatherForecastResource estructurado por días con temperatura máxima, mínima y lluvia. & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS21
TS21 & Asentamiento de cosecha anual por campaña para auditoría productiva & TK01 & Definir entidad HistoricalHarvestEntry en ChillAccumulationTracker & Definir HistoricalHarvestEntry con RecordId, CampaignYear, YieldKg, OliveType y DateRecorded, aplicando invariante de pesaje estrictamente positivo. & 0.6 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Crear RecordHarvestCommand y HarvestCommandService & Implementar registro de cosecha con validación de año no duplicado por predio y persistencia mediante HarvestRecordRepository. & 0.6 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST POST /api/v1/plots/{plotId}/harvest-records & Añadir endpoint en HarvestRecordsController retornando 201 Created con HarvestRecordResource o 409 Conflict si la campaña ya fue asentada. & 0.5 & Paredes, Victor & Done \\ \hline

% TS22
TS22 & Consulta del historial plurianual de cosechas de la parcela & TK01 & Crear GetHarvestHistoryByPlotIdQuery en capa de aplicación & Definir Query recibiendo plotId y ordenando registros cronológicamente de forma ascendente para análisis plurianual. & 0.4 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Implementar consulta en HarvestQueryService con métricas agregadas & Recuperar serie histórica calculando rendimiento promedio interanual por hectárea y desviación respecto a la media zonal. & 0.5 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/harvest-records & Configurar endpoint GET en HarvestRecordsController retornando 200 OK con colección ordenada de HarvestRecordResource. & 0.4 & Paredes, Victor & Done \\ \hline

% TS23
TS23 & Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez & TK01 & Implementar servicio de dominio BiennialBearingIndexCalculator & Programar la fórmula de Hoblyn: BBI = sum(|Y\_t - Y\_{t-1}| / (Y\_t + Y\_{t-1})) / (n - 1), validando un mínimo de n >= 2 campañas históricas. & 0.8 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar cálculo del modelo dinámico de Erez en ChillService & Integrar el motor validado en SPK01 en ChillAccumulationTracker para computar porciones de frío a partir de telemetría horaria real del lote. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Crear PhenologicalMetricsResource y assemblers correspondientes & Estructurar DTO de respuesta con bbiScore, bearingSeverity, accumulatedChillPortions, chillSatisfactionPercentage y riskAlert. & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST GET /api/v1/plots/{plotId}/phenological-metrics & Añadir endpoint en PhenologyController retornando 200 OK con PhenologicalMetricsResource calculado dinámicamente. & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS24
TS24 & Registro y sincronización de muestreos guiados de cuajado en campo & TK01 & Definir SamplingRound y TreeSamplingRecord en dominio & Modelar entidades SamplingRound y TreeSamplingRecord con treeTag, fruitCount, shootCount, sampleTimestamp y syncId para idempotencia. & 0.8 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar SyncSamplingRoundCommand e ingestor transaccional & Crear servicio de comando para procesar el lote de árboles muestreados verificando unicidad de syncId y calculando medias de frutos por brote. & 0.8 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST POST /api/v1/plots/{plotId}/samplings & Crear endpoint en SamplingsController retornando 201 Created con SamplingRoundResource y resumen de árboles procesados. & 0.6 & Santi, Fabrizio & Done \\ \hline

% TS25
TS25 & Consulta de representatividad estadística y estado de muestreo & TK01 & Implementar evaluador de representatividad muestral (n >= 5) & Programar lógica de validación estadística que verifique número de árboles evaluados (mínimo 5) y coeficiente de variación de cuajado. & 0.6 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Crear SamplingStatusResource con detalles de avance & Definir DTO con treesSampledCount, minimumRequired, isRepresentative, meanFruitSet y pendingTreesSuggestion. & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/sampling-status & Añadir endpoint GET en SamplingsController retornando 200 OK con SamplingStatusResource para alimentar la barra de progreso cliente. & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS26
TS26 & Consulta de prescripción técnica de aclareo y ventana fenológica & TK01 & Definir FruitThinningPrescription Aggregate Root en dominio & Definir agregado con PrescriptionId, PlotId, RecommendedRemovalPercentage, TargetFruitPerShoot, DeadlineDate y Status (ISSUED, EXECUTED). & 0.6 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar ThinningAdvisorService con cálculo de ventana fenológica & Calcular porcentaje de raleo según variedad (Criolla/Sevillana) y establecer fecha límite antes de la esclerificación del endocarpo. & 0.7 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST GET /api/v1/plots/{plotId}/thinning-prescriptions/current & Configurar endpoint en ThinningPrescriptionsController retornando 200 OK con ThinningPrescriptionResource o 404 si aún no se ha emitido. & 0.5 & Li, Diana & Done \\ \hline

% TS27
TS27 & Confirmación y registro de ejecución de labor de aclareo en campo & TK01 & Crear ConfirmThinningExecutionCommand en capa de aplicación & Definir Command con prescriptionId, executionDate, actualRemovalPercentage y notes validando que la fecha no sea posterior a la actual. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar transición de estado en FruitThinningPrescription & Actualizar el agregado a estado EXECUTED registrando la confirmación y emitiendo evento de dominio ThinningExecutedEvent. & 0.6 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST POST /api/v1/thinning-prescriptions/{id}/confirmations & Crear endpoint en ThinningPrescriptionsController retornando 200 OK con recurso actualizado o 400 ante confirmaciones fuera de plazo. & 0.5 & Li, Diana & Done \\ \hline

% TS39
TS39 & Asentamiento formal y balance de liquidación de cosecha de fin de campaña & TK01 & Definir HarvestSettlement Entity y AgronomicReport Aggregate Root & Modelar HarvestSettlement con settlementId, plotId, greenOliveKg, blackOliveKg, totalYieldKg y settlementDate asegurando consistencia de cierre. & 0.7 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar CreateHarvestSettlementCommand y servicio de balance & Calcular desviación respecto al objetivo proyectado por el raleo y congelar las métricas de la campaña anual en el informe agronómico. & 0.8 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST POST /api/v1/plots/{plotId}/harvest-settlements & Crear endpoint en HarvestSettlementsController retornando 201 Created con HarvestSettlementResource o 400 Bad Request ante pesajes inconsistentes. & 0.5 & Li, Diana & Done \\ \hline

% TS40
TS40 & Certificación criptográfica colegiada del expediente agronómico inmutable & TK01 & Implementar generador de hash criptográfico SHA-256 inmutable & Construir servicio criptográfico en infraestructura para concatenar y firmar digitalmente con SHA-256 el expediente completo de liquidación y muestreo. & 0.7 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Crear CertifyAgronomicReportCommand con número de colegiatura CIP & Validar rúbrica profesional del ingeniero agrónomo, asociar número de colegiatura válido y sellar el estado del reporte como CERTIFIED. & 0.8 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST POST /api/v1/plots/{plotId}/certification & Configurar endpoint en CertificationController retornando 200 OK con AuditCertificateResource conteniendo el hash SHA-256 inmutable. & 0.5 & Li, Diana & Done \\ \hline

% TS42
TS42 & Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela & TK01 & Definir Value Object CalibrationFactors e invariantes físicas & Crear CalibrationFactors con temperatureOffset (-10 a 10 °C), humidityOffset y soilCorrectionFactor (0.5 a 2.0) en la capa de dominio. & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Crear CalibrateSensorNodeCommand y método de ajuste en agregado & Implementar comando de calibración en SensorNodeCommandService aplicando los factores de ajuste al nodo activo y persistiendo notas técnicas. & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST PUT /api/v1/plots/{plotId}/iot-devices/{deviceId} & Añadir endpoint de calibración en SensorNodesController retornando 200 OK con DeviceResource calibrado o 400 ante offsets fuera de rango. & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS43
TS43 & Rectificación de pesaje y baja de registro erróneo de cosecha en histórico fenológico & TK01 & Crear RectifyHarvestRecordCommand y recálculo reactivo & Definir Command con plotId, recordId, rectifiedYieldKg y reason, validando titularidad y disparando el recálculo automático del índice BBI. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar eliminación física de registro erróneo de campaña & Implementar DeleteHarvestRecordCommand eliminando el registro erróneo y recalculando la serie histórica de cosechas de la parcela. & 0.5 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoints REST PUT y DELETE en HarvestRecordsController & Configurar PUT /api/v1/plots/{plotId}/harvest-records/{recordId} (200 OK) y DELETE (204 No Content) con control de errores 404. & 0.5 & Li, Diana & Done \\ \hline
\end{longtable}
\end{center}

#### Development Evidence for Sprint Review
&nbsp;

#### Testing Suite Evidence for Sprint Review 
&nbsp;

#### Execution Evidence for Sprint Review 
&nbsp;

#### Services Documentation Evidence for Sprint Review 
&nbsp;

#### Software Deployment Evidence for Sprint Review 
&nbsp;

#### Team Collaboration Insights during Sprint 
&nbsp;

\clearpage