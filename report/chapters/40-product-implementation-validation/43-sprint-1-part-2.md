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
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/01-hero.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

El carrusel de problemas recorre las situaciones que reconoce el productor (año \textit{off}, frío escaso, aclareo tardío y acopio incierto) y asocia cada una con el módulo de la aplicación que la atiende (\autoref{fig:exec-landing-pains-s1}).

\begin{figure}[H]
\caption{Carrusel de problemas y módulos de la aplicación.} \label{fig:exec-landing-pains-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/02-pain-points-carousel.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La propuesta de valor se presenta por separado para cada segmento objetivo: los productores olivareros (\autoref{fig:exec-landing-producers-s1}) y los gestores técnicos (\autoref{fig:exec-landing-managers-s1}).

\begin{figure}[H]
\caption{Propuesta de valor para productores olivareros.} \label{fig:exec-landing-producers-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/03-segment-producers.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Propuesta de valor para gestores técnicos.} \label{fig:exec-landing-managers-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/04-segment-technical-managers.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

La sección del Plan Productor muestra la tarifa referencial por hectárea, un simulador que calcula el total mensual según las hectáreas elegidas y los pasos para suscribirse (\autoref{fig:exec-landing-plan-s1}).

\begin{figure}[H]
\caption{Sección del Plan Productor con simulador de suscripción.} \label{fig:exec-landing-plan-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/05-producer-plan.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

Finalmente, la sección del equipo presenta a ArcadiaDevs y enlaza al video de presentación del equipo (\autoref{fig:exec-landing-team-s1}).

\begin{figure}[H]
\caption{Sección del equipo en la Landing Page.} \label{fig:exec-landing-team-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.425\textwidth]{report/assets/execution-evidence/sprint-1/landing-page/06-team.png}
\caption*{\textit{Nota.} Captura de la Landing Page desplegada. Elaboración propia.}
\end{figure}

\noindent \textbf{Aplicación móvil del productor:}

La pantalla de inicio resume el estado del campo para la campaña y el cuartel seleccionados: las parcelas pendientes de registrar su cosecha, el clima, las alertas activas, la humedad del suelo y la alternancia de producción de las últimas campañas (\autoref{fig:exec-app-home-s1}).

\begin{figure}[H]
\caption{Pantalla de inicio de la aplicación del productor.} \label{fig:exec-app-home-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/01-home.png}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/02-home-indicators.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

El listado de parcelas muestra las parcelas activas y archivadas con su variedad, superficie y número de árboles. El detalle de cada parcela muestra su delimitación sobre el mapa, su densidad de plantación y el acceso a su alternancia (\autoref{fig:exec-app-plots-s1}).

\begin{figure}[H]
\caption{Listado y detalle de parcelas.} \label{fig:exec-app-plots-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/03-plots-list.png}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/04-plot-detail.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

La vista de alternancia muestra el índice de vecería (BBI) de la parcela con su clasificación de severidad. El registro de cosecha permite ingresar los kilogramos de aceituna verde y negra de la campaña para cerrarla (\autoref{fig:exec-app-harvest-s1}).

\begin{figure}[H]
\caption{Índice de vecería y registro de cosecha.} \label{fig:exec-app-harvest-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/05-plot-alternation.png}
\hspace{1cm}
\includegraphics[width=0.15\textwidth]{report/assets/execution-evidence/sprint-1/mobile-app/06-harvest-registration.png}
\caption*{\textit{Nota.} Capturas de la aplicación móvil en ejecución. Elaboración propia.}
\end{figure}

\noindent \textbf{Video de navegación del producto:}

El video muestra la ejecución de las vistas y los flujos de navegación implementados durante el Sprint 1.

* **Título:** Product Navigation - Sprint 1
* **Entrega:** TB1 / Sprint 1
* **Formato:** MP4
* **Enlace de visualización (OneDrive):** \url{https://tinyurl.com/ef66ptm9}

\clearpage

#### Services Documentation Evidence for Sprint Review 
&nbsp;

En esta sección se presenta la relación de servicios web RESTful implementados y formalmente documentados bajo el estándar OpenAPI 3.0 para la plataforma agronómica \textbf{Viora} (\texttt{viora-platform}) durante el Sprint 1. El equipo de backend consolidó una arquitectura hexagonal desacoplada guiada por el dominio (Domain-Driven Design - DDD) sobre Java 21 LTS y Spring Boot 3, implementando contratos inmutables tipados estrictamente mediante Java 21 Records y Jakarta Validation (\texttt{@NotNull}, \texttt{@NotBlank}, \texttt{@Size}, \texttt{@PositiveOrZero}), estandarización centralizada de errores semánticos bajo la especificación RFC 7807 (\textit{Problem Details}) sin exponer trazas de infraestructura, control de concurrencia optimista con cabeceras HTTP \texttt{If-Match} / \texttt{ETag} (código \texttt{412 Precondition Failed}) para proteger entidades agronómicas críticas, y autodocumentación viva en Swagger UI con soporte para pruebas interactivas (\textit{Try it out}).

Durante este ciclo de desarrollo \textbf{se implementaron y documentaron un total de 33 endpoints RESTful} distribuidos en 5 Bounded Contexts y 11 controladores web. Con el propósito de brindar una visión rigurosa, en la \autoref{tab:services-documentation-endpoints-sprint-1} se presenta la matriz de los 12 endpoints más representativos del sistema cubriendo la totalidad de módulos operativos, encontrándose los 33 endpoints plenamente accesibles y operativos en la consola interactiva de Swagger UI.

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

\clearpage

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
    \item \textbf{Catastro y alta de predio (\texttt{POST /api/v1/plots}):} Ejecución de solicitud con geometría poligonal cerrada WGS84 sobre La Yarada-Los Palos (\autoref{fig:exec-swagger-create-plot-s1}). La consola Swagger UI confirmó la respuesta \texttt{201 Created}, serializando el objeto \texttt{PlotResource} con el cálculo de 1.25 ha de superficie y densidad de 286 árboles/ha.
    \item \textbf{Ingesta y representatividad muestral (\texttt{POST /api/v1/plots/\{plotId\}/samplings}):} Envío de un lote de 5 muestras georreferenciadas desde el cliente móvil (\autoref{fig:exec-swagger-submit-sampling-s1}). Swagger UI retornó \texttt{201 Created} validando la transición de \texttt{isRepresentative} a \texttt{true} y fijando el conteo de árboles faltantes en cero (\texttt{treesNeeded: 0}).
    \item \textbf{Protección de concurrencia optimista (\texttt{PUT /api/v1/plots/\{plotId\}}):} Simulación de colisión concurrente inyectando deliberadamente el valor desfasado \texttt{"999"} en la cabecera HTTP \texttt{If-Match} (\autoref{fig:exec-swagger-error-rfc7807-s1}). El motor interceptó la operación y respondió con el código estandarizado \texttt{412 Precondition Failed} bajo el esquema RFC 7807 (\textit{Problem Details}), garantizando que ningún registro sea sobrescrito por modificaciones desactualizadas.
\end{itemize}

\begin{figure}[H]
\caption{Ejecución interactiva y respuesta 201 Created para alta de predio en Swagger UI.} \label{fig:exec-swagger-create-plot-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-1/web-services/01-swagger-create-plot.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en entorno de desarrollo local. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Ingesta de muestreo de cuaje y validación de representatividad en Swagger UI.} \label{fig:exec-swagger-submit-sampling-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-1/web-services/02-swagger-submit-sampling.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en entorno de desarrollo local. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Manejo de concurrencia optimista y respuesta 412 Precondition Failed (RFC 7807) en Swagger UI.} \label{fig:exec-swagger-error-rfc7807-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.44\textwidth]{report/assets/execution-evidence/sprint-1/web-services/03-swagger-error-rfc7807.png}
\caption*{\textit{Nota.} Captura de la consola interactiva Swagger UI en entorno de desarrollo local. Elaboración propia.}
\end{figure}

Los resultados verificaron la correspondencia unívoca entre las anotaciones OpenAPI del backend y los tipos generados en el contrato JSON (\url{https://viora-platform.onrender.com/v3/api-docs}), asegurando interoperabilidad sin discrepancias de contrato.

\clearpage

\noindent \textbf{Repositorio oficial y trazabilidad de control de versiones:}

La suite completa de Web Services y su infraestructura de documentación OpenAPI residen en el repositorio oficial de GitHub:
\begin{itemize}\setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
    \item \textbf{URL del repositorio:} \url{https://github.com/upc-pre-1acc0238-2620-4951-arcadiadevs/viora-platform}
\end{itemize}

En la \autoref{tab:services-documentation-commits-sprint-1} se listan los commits verificados en el historial de control de versiones del repositorio \texttt{viora-platform}, asociados directamente con contratos, documentación OpenAPI y controladores REST del Sprint 1:

\begin{center}
\footnotesize
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{2.5pt}
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

\clearpage


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
\includegraphics[width=0.40\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/01-vercel-new-project.jpeg}
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
\includegraphics[width=0.75\textwidth]{report/assets/sprint-deployment/sprint-1/landing-page/04-vercel-production-deployment.jpeg}
\caption*{\textit{Nota.} Captura del resumen del proyecto en Vercel. Elaboración propia.}
\end{figure}

La calidad del código se valida antes de integrar mediante el flujo `ci.yml` de GitHub Actions (análisis estático con \textit{lint}, verificación de formato y compilación), que se ejecuta en cada \textit{pull request} hacia `develop` o `main` y en cada \textit{push} a `develop`. En este Sprint se publicaron las versiones 1.0.0 y 1.1.0 (26/09/2026), accesibles en \url{https://viora-landing-page-sable.vercel.app/}.

\clearpage

\noindent \textbf{Servicios web de backend (Render):}

La API RESTful `viora-platform` se despliega en Render como un servicio web (\textit{Web Service}) creado directamente desde el repositorio de GitHub de la organización. Render detectó el `Dockerfile` del proyecto y autocompletó la configuración con el entorno Docker. Dicho archivo es de dos etapas: la primera compila el proyecto con Maven y JDK 21 y la segunda ejecuta el `.jar` resultante sobre la imagen ligera `eclipse-temurin:21-jre-alpine`, con un usuario sin privilegios y el puerto tomado de la variable `PORT` que asigna Render.

En la \autoref{fig:deploy-render-config-s1} se muestran los parámetros del servicio: repositorio de origen `viora-platform`, nombre `viora-platform`, lenguaje Docker, rama `main`, región Ohio (US East) y una instancia gratuita de 0,1 CPU y 512 MB de RAM.

\begin{figure}[H]
\caption{Configuración del Web Service viora-platform en Render.} \label{fig:deploy-render-config-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/backend/01-render-web-service-configuration.jpeg}
\caption*{\textit{Nota.} Captura del panel de Render durante la creación del servicio. Elaboración propia.}
\end{figure}

La configuración sensible no se versiona: se carga como variables de entorno en el panel de Render (\autoref{fig:deploy-render-env-s1}), a saber `SPRING_DATASOURCE_URL`, `SPRING_DATASOURCE_DRIVER_CLASS_NAME`, `SPRING_DATASOURCE_USERNAME` y `SPRING_DATASOURCE_PASSWORD` para la conexión a la base de datos, `SPRING_JPA_HIBERNATE_DDL_AUTO` y `SPRING_JPA_SHOW_SQL` para el comportamiento de Hibernate, además de `CORS_ALLOWED_ORIGINS` y `PORT`. El panel oculta los valores, por lo que las credenciales no quedan expuestas en la evidencia.

\begin{figure}[H]
\caption{Variables de entorno del servicio en Render.} \label{fig:deploy-render-env-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/backend/02-render-environment-variables.jpeg}
\caption*{\textit{Nota.} Captura del panel de Render; los valores permanecen ocultos. Elaboración propia.}
\end{figure}

El despliegue es continuo (\autoref{fig:deploy-render-live-s1}): al integrarse en `main` el *pull request* #22 de la rama `hotfix/deploy`, Render lo activó automáticamente (*Auto-Deploy*) a partir del *commit* `9590e85`, construyó la imagen en 3 min 34 s y publicó el servicio con el estado *Deploy succeeded* y el mensaje *Your service is live*, el 1 de octubre de 2026 a las 18:17 (GMT-5).

\begin{figure}[H]
\caption{Despliegue exitoso de viora-platform en Render.} \label{fig:deploy-render-live-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/backend/03-render-deploy-live.jpeg}
\caption*{\textit{Nota.} Captura del historial de despliegues de Render. Elaboración propia.}
\end{figure}

Al ser un plan gratuito, Render suspende la instancia tras un periodo de inactividad y advierte que reactivarla puede retrasar las peticiones 50 segundos o más; en nuestras pruebas la primera petición posterior llegó a superar el minuto. Es una limitación asumida para el entorno académico. La documentación interactiva de la API (OpenAPI) se publica en \url{https://viora-platform.onrender.com/swagger-ui/index.html}.

\clearpage

\noindent \textbf{Base de datos en la nube (Filess.io):}

La base de datos relacional se aprovisionó en Filess.io como base de datos compartida (\textit{Shared Database}). En la \autoref{fig:deploy-filess-create-s1} se muestra la selección del motor PostgreSQL 15.6.0 entre las opciones del proveedor (PostgreSQL, MySQL, MariaDB y MongoDB), el nombre `viora` y la región automática.

\begin{figure}[H]
\caption{Creación de la base de datos PostgreSQL en Filess.io.} \label{fig:deploy-filess-create-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/database/01-filess-new-postgresql-database.jpeg}
\caption*{\textit{Nota.} Captura del asistente de Filess.io. Elaboración propia.}
\end{figure}

La \autoref{fig:deploy-filess-list-s1} confirma la instancia creada el 1 de octubre de 2026: `viora_thoughage` (nombre completo asignado por el proveedor), motor PostgreSQL, región Nürnberg (Alemania) y estado *Available*. Las credenciales de conexión se inyectan en Render mediante las variables `SPRING_DATASOURCE_*` y no forman parte del repositorio.

\begin{figure}[H]
\caption{Base de datos disponible en Filess.io.} \label{fig:deploy-filess-list-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/database/02-filess-database-available.jpeg}
\caption*{\textit{Nota.} Captura del listado de bases de datos compartidas de Filess.io. Elaboración propia.}
\end{figure}

\clearpage

\noindent \textbf{Aplicación móvil Android (Firebase App Distribution):}

El despliegue de la aplicación móvil se realiza con Firebase App Distribution, que permite instalar las versiones en dispositivos físicos de prueba, tal como exige el curso. Los pasos realizados durante el Sprint fueron los siguientes.

\noindent \textit{1. Proyecto en Firebase.} Se creó el proyecto `viora-app-kotlin` con la cuenta del líder del equipo, en el plan Spark (sin costo) (\autoref{fig:deploy-firebase-project-s1}).

\begin{figure}[H]
\caption{Proyecto viora-app-kotlin en la consola de Firebase.} \label{fig:deploy-firebase-project-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/application/01-firebase-project-overview.png}
\caption*{\textit{Nota.} Captura de la consola de Firebase del 7/10/2026. Elaboración propia.}
\end{figure}

\noindent \textit{2. Registro de la aplicación.} Se registró la aplicación Android con el nombre de paquete `pe.edu.upc.viora` (el `applicationId` del proyecto) y el alias *Viora Android*, lo que generó el identificador de aplicación `1:1085458528165:android:956ca686ddeaa2f2b95a4c` (\autoref{fig:deploy-firebase-app-s1}). Como App Distribution solo recibe el binario compilado, no fue necesario incorporar el SDK de Firebase ni el archivo `google-services.json` a la aplicación.

\begin{figure}[H]
\caption{Aplicación Android registrada en Firebase.} \label{fig:deploy-firebase-app-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/application/02-firebase-android-app-registered.png}
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
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/application/05-release-upload-notes.png}
\caption*{\textit{Nota.} Captura del paso final de la distribución en Firebase App Distribution. Elaboración propia.}
\end{figure}

\noindent \textit{6. Invitación a los verificadores.} Cada verificador recibe un correo de Firebase App Distribution con las instrucciones para empezar a probar: abrir el mensaje en el celular, aceptar la invitación con su cuenta de Google, habilitar la instalación desde orígenes desconocidos y descargar la aplicación (\autoref{fig:deploy-tester-email-s1}). La invitación tiene una vigencia de 30 días.

\begin{figure}[H]
\caption{Correo de invitación a probar la aplicación.} \label{fig:deploy-tester-email-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.30\textwidth]{report/assets/sprint-deployment/sprint-1/application/06-tester-invitation-email.png}
\caption*{\textit{Nota.} Correo enviado por Firebase App Distribution. Elaboración propia.}
\end{figure}

\noindent \textit{7. Seguimiento y validación en dispositivo físico.} La consola registra el estado de cada invitación (\autoref{fig:deploy-distribution-status-s1}): al momento de la captura, de 6 invitados, 3 habían aceptado la invitación y 2 habían descargado la aplicación, sin comentarios.

\begin{figure}[H]
\caption{Estado de la distribución de la versión 1.0.0 (10).} \label{fig:deploy-distribution-status-s1}
\vspace{0.25cm}
\centering
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/application/07-distribution-status.png}
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
\includegraphics[width=0.50\textwidth]{report/assets/sprint-deployment/sprint-1/application/08-github-actions-secrets.png}
\caption*{\textit{Nota.} Captura de la configuración de GitHub Actions del 7/10/2026; GitHub solo muestra los nombres, nunca los valores. Elaboración propia.}
\end{figure}

\clearpage

#### Team Collaboration Insights during Sprint 
&nbsp;

En esta sección se analizan las métricas de colaboración y la distribución de esfuerzo del equipo ArcadiaDevs a lo largo del Sprint 1, orientadas a la construcción de los entregables clave del ecosistema Viora: el portal web comercial, el servicio web transaccional y la aplicación móvil nativa. El desarrollo se ejecutó bajo la metodología GitFlow con ramas de características, ramas de integración y estabilización, utilizando la convención *Conventional Commits* para asegurar un historial transparente y auditable entre los 5 integrantes.

Para respaldar la trazabilidad del trabajo colaborativo en los repositorios de la organización en GitHub, a continuación se presentan los analíticos de contribución temporal y autoría de código (*Contributors*):

En el repositorio `viora-landing-page`, el flujo de trabajo se concentró de manera intensiva durante la primera semana del ciclo (semana del 21 de septiembre), correspondiente al diseño y maquetación de la propuesta comercial, la tabla de planes en moneda nacional y la optimización SEO (\autoref{fig:contributors-landing-page}).

\begin{figure}[H]
\caption{Vista de Contributors de GitHub - Landing Page.} \label{fig:contributors-landing-page}
\vspace{0.25cm}
\centering
\includegraphics[width=0.35\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-land.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-landing-page}. Elaboración propia.}
\end{figure}

Por su parte, el repositorio `viora-platform` exhibe una actividad técnica constante a lo largo de todo el sprint, alcanzando su punto culminante en la semana del 28 de septiembre, dedicado a la implementación de los 33 endpoints RESTful, el manejo de concurrencia optimista y la persistencia geoespacial (\autoref{fig:contributors-platform}).

\begin{figure}[H]
\caption{Vista de Contributors de GitHub - Platform.} \label{fig:contributors-platform}
\vspace{0.25cm}
\centering
\includegraphics[width=0.35\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-plat.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-platform}. Elaboración propia.}
\end{figure}

Finalmente, en el repositorio `viora-mobile-android` se observa un patrón de crecimiento continuo y acumulativo, iniciando con la estructura de arquitectura limpia y SQLite en septiembre y alcanzando un marcado pico superior (\autoref{fig:contributors-mobile-android}).

\begin{figure}[H]
\caption{Vista de Contributors de GitHub - Mobile-Android.} \label{fig:contributors-mobile-android}
\vspace{0.25cm}
\centering
\includegraphics[width=0.35\textwidth]{report/assets/sprint-team-collaboration/sprint-1/viora-mobile.png}
\caption*{\textit{Nota.} Analíticas de contribuciones en GitHub del repositorio \texttt{viora-mobile-android}. Elaboración propia.}
\end{figure}

\clearpage