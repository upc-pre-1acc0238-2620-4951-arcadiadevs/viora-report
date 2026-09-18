## Needfinding

En esta sección se sintetizan los hallazgos de campo y el análisis competitivo para estructurar las necesidades del usuario. A través de artefactos como User Personas, User Task Matrix, User Journey Maps, Empathy Maps, Big Picture Event Storming y Ubiquitous Language, se fundamentan las bases del diseño de Viora.

### User Personas

En la presente sección se elaboran dos fichas de User Persona, una por cada segmento objetivo definido en el capítulo anterior: productores olivareros de la macro-región sur y gestores técnicos de organizaciones olivareras. Estos arquetipos surgen de la síntesis entre las entrevistas a profundidad y el análisis competitivo, y condensan los rasgos que realmente hacen diferencia para el diseño: el criterio con el que hoy se decide la carga frutal, el nivel de alfabetización digital, la forma actual de registrar y proyectar información de campaña, la dependencia de la observación directa y las condiciones de conectividad bajo las que se trabaja en parcela. Cada ficha reúne los elementos básicos del arquetipo -perfil, contexto, objetivos, habilidades, frustraciones y comportamientos- para asegurar que Viora responda a necesidades reales y no a supuestos genéricos.

\newpage

El User Persona de Teodoro Mamani sintetiza el perfil del productor olivarero tradicional, detallando sus metas de estabilidad productiva, barreras tecnológicas y necesidades frente a la alternancia (ver \autoref{fig:user-persona-teodoro}).

\begin{figure}[H]
\caption{User Persona del segmento Productor Olivarero.} \label{fig:user-persona-teodoro}
\centering
\includegraphics[width=0.4\textwidth]{report/assets/needfinding/teodoro-mamani.png}
\caption*{\textit{Nota.} La ficha de Teodoro Mamani detalla el arquetipo del productor olivarero, integrando sus objetivos, habilidades, frustraciones y necesidades tecnológicas clave para el diseño de la plataforma Viora. Elaboración propia.}
\end{figure}

\clearpage

El User Persona de Rubén Ticona representa al gestor técnico, consolidando sus responsabilidades de acopio, supervisión agronómica y desafíos de coordinación entre parcelas dispersas (ver \autoref{fig:user-persona-ruben}).

\begin{figure}[H]
\caption{User Persona del segmento Gestor Técnico de Organización Olivarera.} \label{fig:user-persona-ruben}
\centering
\includegraphics[width=0.4\textwidth]{report/assets/needfinding/ruben-ticona.png}
\caption*{\textit{Nota.} La ficha de Rubén Ticona detalla el arquetipo del gestor técnico de organizaciones olivareras, integrando sus objetivos, habilidades, frustraciones y necesidades tecnológicas clave para el diseño de la plataforma Viora. Elaboración propia.}
\end{figure}

\clearpage

### User Task Matrix

En esta sección se presenta la User Task Matrix, que concentra las tareas actuales que los User Persona realizan para cumplir sus objetivos agronómicos y comerciales. Para este análisis se consideran dos segmentos: Teodoro Mamani, productor olivarero de la macro-región sur, y Rubén Ticona, gestor técnico de organizaciones olivareras.

En la \autoref{tab:user-task-matrix} se esquematizan las labores agrícolas y comerciales de ambos arquetipos, contrastando su nivel de criticidad y periodicidad habitual.

\begin{table}[H]
\caption{User Task Matrix de los segmentos considerados.} \label{tab:user-task-matrix}
\centering
\small
\begin{tabular}{|p{5.6cm}|c|c|c|c|}
\hline
\multirow{2}{*}{\textbf{Tarea (Task)}} & \multicolumn{2}{c|}{\textbf{Teodoro Mamani}} & \multicolumn{2}{c|}{\textbf{Rubén Ticona}} \\ \cline{2-5}
& \textbf{Frecuencia} & \textbf{Importancia} & \textbf{Frecuencia} & \textbf{Importancia} \\ \hline
Monitoreo de variables climáticas y frío invernal & Alta & \textbf{Crítica} & Alta & \textbf{Crítica} \\ \hline
Inspección física de parcelas (plagas y nutrición) & Alta & \textbf{Alta} & Media & \textbf{Alta} \\ \hline
Planificación y aplicación de fertirriego & Media & \textbf{Alta} & Media & \textbf{Alta} \\ \hline
Programación y ejecución de poda y aclareo & Media & \textbf{Crítica} & Media & \textbf{Crítica} \\ \hline
Evaluación fenológica y proyección de cosecha & Media & \textbf{Crítica} & Alta & \textbf{Crítica} \\ \hline
Registro y análisis de trazabilidad agronómica & Baja & \textbf{Baja} & Alta & \textbf{Crítica} \\ \hline
Coordinación y homologación con socios & Baja & \textbf{Baja} & Alta & \textbf{Crítica} \\ \hline
Logística de cosecha escalonada & Media & \textbf{Alta} & Media & \textbf{Alta} \\ \hline
Comercialización, acopio y colocación en mercado & Alta & \textbf{Crítica} & Media & \textbf{Crítica} \\ \hline
\end{tabular}
\caption*{\textit{Nota.} Elaboración propia.}
\end{table}

La matriz muestra una coincidencia clara entre ambos perfiles en tareas determinantes del estado actual: el monitoreo de variables climáticas y acumulación de frío invernal, la programación de podas y regulación de carga, y la estimación de volumen de cosecha frente a la vecería, las cuales concentran una importancia crítica para la sostenibilidad del cultivo y la toma de decisiones. Asimismo, comparten la ejecución de inspecciones en campo y la logística de cosecha, indispensables para asegurar la calidad de la fruta tanto verde como negra.

En términos de apoyo para la ejecución, Teodoro Mamani requiere alertas agroclimáticas tempranas, orientación cuantitativa simple para decidir poda o aclareo y referencias claras para proyectar su ingreso de campaña sin depender exclusivamente de la memoria o la intuición; Rubén Ticona, en cambio, necesita información técnica consolidada, trazabilidad estandarizada por predio socio, registros históricos de campo y herramientas que le permitan proyectar volúmenes agregados de acopio y emitir recomendaciones técnicas con rapidez.

Las diferencias más marcadas aparecen en el foco de trabajo. Teodoro Mamani concentra mayor frecuencia e intensidad en la comercialización directa y compra a terceros para sostener su cartera comercial, así como en la inspección física diaria de su parcela familiar de 4 hectáreas, prescindiendo del registro documental formal. Rubén Ticona, por el contrario, asigna alta frecuencia y criticidad al registro y análisis de trazabilidad agronómica y a la coordinación y homologación de protocolos entre múltiples socios dispersos (aprox. 20 ha), reflejando una rutina orientada a la supervisión técnica, aseguramiento de calidad y cumplimiento de compromisos agroindustriales y de exportación.

### User Journey Mapping

En esta sección se presentan los User Journey Maps en su versión actual (*As-Is*) para los dos segmentos del proyecto: Teodoro Mamani (productor olivarero) y Rubén Ticona (gestor técnico de organizaciones olivareras). Estos mapas ilustran el recorrido integral de una campaña olivarera tradicional de principio a fin, abarcando desde las primeras evaluaciones climáticas en invierno y la preparación de insumos, hasta las labores de campo, la recolección escalonada y la comercialización final. Este análisis permite comprender cómo los usuarios interactúan hoy en día con su entorno mediante métodos empíricos, identificando las dificultades operativas y emocionales que experimentan antes de contar con una solución tecnológica especializada.

\clearpage

El recorrido de Teodoro Mamani detalla las fases críticas del ciclo agrícola tradicional, evidenciando las fricciones operativas y la incertidumbre ante la vecería (ver \autoref{fig:ujm-teodoro}).

\begin{figure}[H]
\caption{User Journey Map del segmento Productor Olivarero (Teodoro Mamani).} \label{fig:ujm-teodoro}
\centering
\includegraphics[width=0.9\textwidth]{report/assets/needfinding/ujm-teodoro.png}
\caption*{\textit{Nota.} Diagrama del User Journey Map (As-Is) para Teodoro Mamani, que describe las etapas de la campaña olivarera tradicional, sus dificultades cotidianas y las oportunidades de mejora identificadas en campo. Elaboración propia.}
\end{figure}

\clearpage

El mapa de viaje de Rubén Ticona refleja los cuellos de botella en la planificación del acopio y la coordinación técnica de campo (ver \autoref{fig:ujm-ruben}).

\begin{figure}[H]
\caption{User Journey Map del segmento Gestor Técnico de Organización Olivarera (Rubén Ticona).} \label{fig:ujm-ruben}
\centering
\includegraphics[width=0.9\textwidth]{report/assets/needfinding/ujm-ruben.png}
\caption*{\textit{Nota.} Diagrama del User Journey Map (As-Is) para Rubén Ticona, que describe las actividades de coordinación técnica, las fricciones en la estimación de acopio y las oportunidades de optimización en la gestión de socios. Elaboración propia.}
\end{figure}

\clearpage

### Empathy Mapping

En esta sección se presenta el espectro emocional, cognitivo y vivencial que define la realidad de los dos segmentos objetivo del proyecto: Teodoro Mamani, en representación del productor olivarero familiar, y Rubén Ticona, como gestor técnico de organizaciones olivareras. A través de esta caracterización, se exponen las percepciones cotidianas que tienen sobre su entorno productivo, sus círculos de influencia y los dilemas que enfrentan durante la campaña agrícola. Asimismo, se condensan sus puntos de dolor (Pains), marcados por la incertidumbre ante la vecería y las dificultades de planificación, y sus ganancias esperadas (Gains), enfocadas en la previsibilidad de cosecha, la estabilidad económica y la sostenibilidad del cultivo.

El mapa de empatía de Teodoro Mamani resume sus vivencias, preocupaciones por el clima y aspiraciones de rentabilidad frente al desgaste del olivar (ver \autoref{fig:em-teodoro}).

\begin{figure}[H]
\caption{Empathy Map del segmento Productor Olivarero - Teodoro Mamani.} \label{fig:em-teodoro}
\centering
\includegraphics[width=0.3\textwidth]{report/assets/needfinding/em-teodoro.png}
\caption*{\textit{Nota.} Síntesis del entorno, percepciones, conducta y aspiraciones de Teodoro Mamani en la gestión de su parcela familiar frente a la alternancia productiva. Elaboración propia.}
\end{figure}

El mapa de empatía de Rubén Ticona compendia la presión operativa, los riesgos de abastecimiento agroindustrial y sus metas de estandarización técnica (ver \autoref{fig:em-ruben}).

\begin{figure}[H]
\caption{Empathy Map del segmento Gestor Técnico de Organización Olivarera - Rubén Ticona.} \label{fig:em-ruben}
\centering
\includegraphics[width=0.3\textwidth]{report/assets/needfinding/em-ruben.png}
\caption*{\textit{Nota.} Síntesis de las responsabilidades técnicas, preocupaciones de acopio, barreras organizativas y metas de competitividad de Rubén Ticona en la articulación de la cartera olivarera. Elaboración propia.}
\end{figure}

\clearpage

### Big Picture Event Storming

El equipo aplicó Big Picture Event Storming para modelar el dominio de negocio bajo un enfoque "As-Is", descubriendo cómo los productores del sur y sus asesores técnicos afrontan actualmente la vecería. Este ejercicio permitió mapear las fricciones reales del ecosistema agrícola previo a cualquier intervención de software.

El taller comprendió seis fases guiadas por la convención cromática del método: naranja para Domain Events, naranja rotado a 45° para eventos con complejidad oculta, amarillo para actores, azul para sistemas externos, morado para Hotspots, verde para oportunidades y lila para políticas empíricas.

#### Fase 1: Exploración Caótica y Generación de Domain Events
&nbsp;

Bajo la dinámica inicial de "caos silencioso" y la consigna *Guess First*, el equipo formuló los eventos en inglés y tiempo pasado para validar cambios de estado reales. La exploración se inició a partir del evento disparador *OffYearYieldCollapsed*.

Se identificaron 34 eventos que reflejan el manejo empírico y reactivo del cultivo, tales como *ClimaticAnomalyPerceived*, *ThinningWindowMissed*, *HarvestEstimatedByEye* y *CooperativeVolumeCommitmentBroken*. Cuatro de ellos (*AlternateBearingTriggered*, *CropWeakened*, *ProductionAffected* y *AdverseProgressNoted*) se rotaron a 45° por su nivel de abstracción.

En la \autoref{fig:bpes-fase-1} se muestran los eventos de dominio iniciales identificados sobre el ciclo productivo del olivo.

\begin{figure}[H]
\caption{Fase 1: Exploración no estructurada de eventos de dominio actuales.} \label{fig:bpes-fase-1}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-1.png}
\caption*{\textit{Nota.} Captura de la lluvia de ideas inicial sobre los eventos significativos del ciclo productivo del olivo. Elaboración propia.}
\end{figure}

#### Fase 2: Imponer la línea de tiempo
&nbsp;

Una vez superada la exploración caótica, se procedió a imponer una validación cronológica. Para lograr consistencia de izquierda a derecha sin forzar una secuencia irreal e ininterrumpida, se fijaron hitos temporales (*Temporal Milestones*) correspondientes al ciclo agrícola real: Letargo Invernal y Acumulación de Frío, Floración y Cuajado, Crecimiento del Fruto y Competencia Fuente-Sumidero, Búsqueda Reactiva de Asistencia Técnica, Cosecha del Año ON y Campaña Siguiente (Año OFF).

Bajo cada hito se estructuraron los eventos como "islas" independientes que solo utilizan flechas cuando existe una relación estricta de causa y efecto en el mundo físico (ej. *ThinningWindowMissed* → *AlternateBearingTriggered*). Al ordenar el tablero, la discusión permitió fusionar eventos duplicados, reduciendo el total de 34 a 33. Conforme a la recomendación de la guía sobre flujos alternos y concurrentes, el hito de Búsqueda Reactiva se representó mediante alineación vertical: la verificación de disponibilidad del asesor bifurca hacia una visita agendada o hacia una visita postergada, mientras un carril paralelo muestra la acumulación simultánea de solicitudes sobre el asesor técnico.

La decisión de modelado más relevante de esta fase fue extender la línea de tiempo más allá de una sola campaña. Dado que la vecería es un fenómeno bianual, el tablero se cierra con una flecha de retorno desde el hito del Año OFF hacia el hito inicial, evidenciando que el ciclo se autoperpetúa. Asimismo, los eventos climáticos (*ClimaticAnomalyPerceived*, *ChillHoursMissed*, *AgriculturalAlertReceived*) se posicionaron deliberadamente como islas de contexto, sin flecha causal hacia *AlternateBearingTriggered*: la única cadena que desemboca en la alternancia proviene de la regulación de carga frutal, coherente con el planteamiento del problema.

En la \autoref{fig:bpes-fase-2} se presenta la organización temporal de los eventos mediante hitos y el cierre del ciclo bianual de alternancia.

\begin{figure}[H]
\caption{Fase 2: Línea de tiempo estructurada mediante hitos temporales.} \label{fig:bpes-fase-2}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-2-vista-general.png}
\caption*{\textit{Nota.} Organización cronológica de los eventos reales mediante anclas temporales y cierre del ciclo bianual. Elaboración propia.}
\end{figure}

#### Fase 3: Integración de personas y sistemas externos
&nbsp;

En la fase de estructuración lógica, el equipo mapeó los roles humanos y las herramientas externas que intervienen activamente en el día a día. Se constató que los productores dependen netamente de mecanismos básicos e informales. Siguiendo la guía, no se asignó un actor a cada evento: basta con uno al inicio de cada cadena y uno adicional cuando cambia quién actúa.

**Personas (actores):**

- **Olive Farmer:** Productor perteneciente a una cooperativa. Depende de su experiencia y de la observación visual in situ.
- **Technical Advisor:** Asesor técnico o gestor de la organización olivícola. Sobreexigido de tiempo y sin datos de parcela para priorizar.
- **Neighbor:** Ejerce el rol de "soporte de campo" inexperto ante la demora del asesor.

**Sistemas externos:**

- **Phone y WhatsApp:** Medios reactivos de ayuda inicial.
- **SENAMHI:** Fuente macro de clima y alertas, sin granularidad a nivel de parcela.
- **Field Notebook:** Cuaderno físico vulnerable y no analítico.
- **Cooperativa:** Organización que consolida el volumen comprometido de la campaña.
- **Acopiador:** Agente comercial que fija el precio de compra de la aceituna.

Un hallazgo relevante de esta fase fue la existencia de cinco eventos que no admiten actor alguno: *ShootGrowthStalled*, *OffYearYieldCollapsed* y los rombos *AlternateBearingTriggered*, *CropWeakened* y *ProductionAffected*. Se trata de respuestas fisiológicas del árbol frente a la carga que soporta, y su ausencia deliberada de actor evidencia visualmente que el productor queda fuera del circuito justamente donde se determina su cosecha.

En la \autoref{fig:bpes-fase-3-general} se vinculan los actores de campo y los sistemas externos con la secuencia operativa del cultivo.

\begin{figure}[H]
\caption{Fase 3: Línea de tiempo validada con external systems y personas (Vista general).} \label{fig:bpes-fase-3-general}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-3-vista-general.png}
\caption*{\textit{Nota.} Mapeo general que vincula a productores y asesores técnicos con sus flujos de trabajo físico. Elaboración propia.}
\end{figure}

La \autoref{fig:bpes-fase-3-detalle} especifica la posición de productores, asesores y herramientas de soporte a lo largo de la línea de tiempo.

\begin{figure}[H]
\caption{Fase 3: Detalle de integración de actores y sistemas externos.} \label{fig:bpes-fase-3-detalle}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/needfinding/fase-3-1.png}
\vspace{0.3cm}
\includegraphics[width=0.45\textwidth]{report/assets/needfinding/fase-3-2.png}
\caption*{\textit{Nota.} Acercamiento a la ubicación de actores (amarillo) y sistemas externos (azul) dentro del flujo. Elaboración propia.}
\end{figure}

#### Fase 4: Storytelling y narrativa reversa (verificación de solidez)
&nbsp;

Esta fase comprendió dos recorridos complementarios. En el primero, el equipo narró el tablero de izquierda a derecha para verificar que la historia se sostuviera sin saltos. Este recorrido expuso que *AgriculturalAlertReceived* permanece como una isla que no desemboca en ninguna acción, lo cual no constituye un error del modelo sino un hallazgo sobre la naturaleza no accionable de la información climática macro disponible hoy.

En el segundo recorrido, para evitar el sesgo de optimismo, el equipo transitó el tablero de derecha a izquierda partiendo del evento más alejado de su causa (*CooperativeVolumeCommitmentBroken*), cuestionando paso a paso qué eventos intermedios fueron omitidos. Esta técnica permitió descubrir flujo oculto, integrando cuatro nuevos eventos:

- *CarbohydrateReservesDepleted* (Agotamiento de las reservas del árbol tras el año de alta carga).
- *FloweringFailedNextSeason* (Floración insuficiente en la campaña siguiente).
- *HarvestLaborContracted* (Contratación de cuadrilla dimensionada sin estimación previa).
- *PreviousSeasonRecordsSearched* (Búsqueda infructuosa de los registros de la campaña anterior).

Los dos primeros resultaron especialmente relevantes porque constituyen el mecanismo fisiológico que explica el colapso del Año OFF, ausente hasta entonces del tablero. Con estas incorporaciones, el modelo alcanzó un total de 37 Domain Events.

A través de la narrativa reversa se validó la consistencia del flujo e incorporaron eventos fisiológicos clave (ver \autoref{fig:bpes-fase-4}).

\begin{figure}[H]
\caption{Fase 4: Narrativa reversa y descubrimiento de eventos perdidos.} \label{fig:bpes-fase-4}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-4-vista-general.png}
\caption*{\textit{Nota.} Tablero tras la aplicación de ambos recorridos narrativos para descubrir flujos ocultos. Elaboración propia.}
\end{figure}

#### Fase 5: Puntos calientes, oportunidades y políticas
&nbsp;

Durante esta fase, el equipo identificó y categorizó en el tablero los vacíos de valor presentes en cada evento crítico.

**Hotspots (Morado, Riesgos y Fricciones):**

- **Hotspot 1 (Unmeasured Crop Load):** La carga frutal, única variable bajo control directo del productor, no se cuantifica en el ciclo. Anclado en *ThinningWindowMissed*.
- **Hotspot 2 (Lack of History):** El registro manual impide comparar campañas consecutivas, imposibilitando detectar el patrón de alternancia. Anclado en *HarvestDataWrittenInNotebook*.
- **Hotspot 3 (Reactive Advisory):** El asesor técnico asiste fuera de la ventana fenológica oportuna, limitando la intervención. Anclado en *VisitDelayed*.
- **Hotspot 4 (Campaign Uncertainty):** El productor carece de información histórica propia, impidiéndole anticipar el comportamiento productivo. Anclado en *PreviousSeasonRecordsSearched*.
- **Hotspot 5 (Income Volatility):** La variabilidad económica derivada de la alternancia es asumida por la unidad productiva. Anclado en *CropSoldAtLowerMargin*.

El equipo descartó el clima como Hotspot, ya que actúa como factor disparador ambiental y no como causa raíz gobernable.

**Oportunidades (Verde):**

- Alerta temprana de la ventana de aclareo, calculada según el estado fenológico de la parcela.
- Registro digital estandarizado de carga y peso de cosecha por parcela.
- Estimación automática del Biennial Bearing Index (BBI), basada en el histórico acumulado.
- Priorización programada de visitas técnicas, sustentada en datos reales de campo.

**Políticas empíricas (Lila):**

- "*Si el año anterior fue de alta carga, se asume que este será bajo y no se invierte en poda ni fertilización*".

En la \autoref{fig:bpes-fase-5-general} se categorizan visualmente los puntos calientes, oportunidades y políticas empíricas identificadas en el modelo.

\begin{figure}[H]
\caption{Fase 5: Mapeo de puntos calientes, oportunidades y políticas (Vista general).} \label{fig:bpes-fase-5-general}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-5-vista-general.png}
\caption*{\textit{Nota.} Categorización visual de los riesgos (morado), oportunidades (verde) y políticas (lila). Elaboración propia.}
\end{figure}

La \autoref{fig:bpes-fase-5-detalle} expone las fricciones agronómicas y comerciales donde se manifiesta el mayor estrés en la toma de decisiones.

\begin{figure}[H]
\caption{Fase 5: Detalle de fricciones agronómicas y comerciales.} \label{fig:bpes-fase-5-detalle}
\centering
\includegraphics[width=0.45\textwidth]{report/assets/needfinding/fase-5-1.png}
\vspace{0.3cm}
\includegraphics[width=0.45\textwidth]{report/assets/needfinding/fase-5-2.png}
\caption*{\textit{Nota.} Acercamiento a los Hotspots identificados en las islas temporales críticas. Elaboración propia.}
\end{figure}

#### Fase 6: Definición del MVP (votación)
&nbsp;

A diferencia de proyectos tradicionales, donde se priorizan funciones de software, el equipo empleó votos de dirección mediante flechas azules sobre las hipótesis de negocio con mayor incertidumbre. El criterio directriz consistió en identificar aquellas asunciones que, de invalidarse, comprometerían por completo la viabilidad del producto.

La mayor concentración de votos correspondió a *Unmeasured Crop Load*, hipótesis angular que asume la disposición del agricultor a registrar la carga frutal de manera continua. Este factor constituye el mayor riesgo, pues requiere un cambio de hábito operativo sin el cual resultaría inviable emitir alertas o calcular el BBI. En segundo orden se priorizó *Lack of History*, hipótesis orientada a la utilidad del registro multianual para la toma de decisiones, asumiendo el riesgo inherente a un beneficio diferido en el tiempo.

Los restantes Hotspots no recibieron votos en esta instancia: *Reactive Advisory* corresponde a una optimización logística posterior, *Campaign Uncertainty* deriva de los dos primeros riesgos y *Income Volatility* responde a la fijación de precios en el mercado abierto, aspecto ajeno al producto.

La priorización estratégica de hipótesis de riesgo orientó la selección del alcance esencial del producto (ver \autoref{fig:bpes-fase-6}).

\begin{figure}[H]
\caption{Fase 6: Votación de riesgos e hipótesis del MVP.} \label{fig:bpes-fase-6}
\centering
\includegraphics[width=0.65\textwidth]{report/assets/needfinding/fase-6-vista-general.png}
\caption*{\textit{Nota.} Distribución final de los votos del equipo sobre las áreas de mayor fricción. Elaboración propia.}
\end{figure}

Como resultado de este taller de visualización del "As-Is", el equipo logró transformar suposiciones vagas en un mapa de fricciones reales y estructuradas. El tablero final consolida 37 Domain Events distribuidos en seis hitos temporales, tres actores, seis sistemas externos, cinco Hotspots, cuatro oportunidades y una política empírica, con el ciclo bianual explícitamente cerrado. De esta manera se delimitan los focos de acción primarios que Viora buscará resolver: la cuantificación de la carga frutal y la construcción de un histórico productivo por parcela.

\clearpage

### Ubiquitous Language

- **Alternate bearing (vecería o alternancia productiva)**: Fenómeno fisiológico del olivo caracterizado por la sucesión de una campaña de alta producción y una de cosecha escasa o nula. Su causa directa es la sobrecarga frutal de la campaña de alta producción, que agota las reservas del árbol e inhibe la inducción floral de la siguiente; la variabilidad térmica actúa como disparador y amplificador del ciclo, no como su origen.
- **Biennial Bearing Index / BBI (índice de alternancia productiva)**: Indicador que cuantifica la magnitud de la alternancia de una parcela comparando los rendimientos de campañas consecutivas. Sus valores se aproximan a cero en un olivar estable y a uno en un olivar fuertemente alternante.
- **Carbohydrate reserves (reservas de carbohidratos)**: Sustancias de reserva acumuladas en madera y raíz que sostienen la floración de la campaña siguiente. Se agotan cuando el árbol soporta una carga frutal excesiva, lo que constituye el mecanismo fisiológico que enlaza el año de alta producción con el año de colapso.
- **Chill portions / chill hours (porciones de frío / horas de frío)**: Medida agronómica que cuantifica la acumulación de frío invernal nocturno que la planta requiere para lograr una adecuada inducción floral y un cuajado efectivo.
- **Crop load (carga frutal)**: Cantidad de fruto que soporta un árbol en una campaña, valorada en relación con su estructura vegetativa. Constituye la única variable del ciclo que el productor puede regular directamente, mediante aclareo y poda.
- **El Niño-Southern Oscillation / ENSO (fenómeno ENOS)**: Evento climático anómalo que incrementa las temperaturas invernales en la zona agrícola y reduce la acumulación de frío. Su efecto sobre la alternancia es amplificador y sincronizador a escala regional, dado que afecta simultáneamente a todos los fundos del valle.
- **Floral induction (inducción floral)**: Proceso invernal mediante el cual las yemas del olivo quedan determinadas como florales. Requiere acumulación de frío suficiente y resulta inhibido por la presencia de fruto en el árbol durante el período crítico.
- **Foliar analysis N-K (análisis foliar de nitrógeno y potasio)**: Análisis de laboratorio sobre muestras de hoja que permite dimensionar la reposición nutricional necesaria tras una campaña de alta carga, cuando la extracción del fruto ha descompensado al árbol.
- **Fruit set (cuajado)**: Etapa fenológica en la cual la flor se transforma exitosamente en fruto. La proporción de flores que cuajan determina la carga inicial de la campaña y, por tanto, la magnitud de la intervención requerida.
- **Fruit thinning (aclareo)**: Práctica de eliminación manual o química de una parte de los frutos cuajados, ejecutada para reducir la carga del árbol y preservar sus reservas. Es la intervención más directa sobre la alternancia productiva.
- **Leaf-to-fruit ratio (relación hoja:fruto)**: Proporción entre la superficie foliar disponible y el número de frutos que sostiene el árbol. Determina si la planta puede alimentar su carga sin comprometer las reservas destinadas a la campaña siguiente.
- **Midday stem water potential / SWP (potencial hídrico del tallo al mediodía)**: Indicador del estado hídrico real de la planta, medido con cámara de presión en el momento de máxima demanda evaporativa. Permite ajustar el riego a la carga que el árbol soporta.
- **Olive yield (rendimiento del olivar)**: Volumen y calibre de la cosecha obtenida en una campaña, cuyo destino comercial se divide principalmente entre aceituna de mesa y extracción de aceite.
- **ON year / OFF year (año ON / año OFF)**: Denominación de las dos fases del ciclo de alternancia. El año ON corresponde a la campaña de alta carga y el año OFF a la campaña de producción deprimida que le sucede.
- **Phenology (fenología)**: Estudio de las etapas de desarrollo del ciclo natural del cultivo a lo largo del año. Delimita las ventanas en las que cada intervención agronómica resulta efectiva.
- **Source-sink relationship (relación fuente-sumidero)**: Dinámica de competencia por los fotoasimilados entre la hoja, que los produce, y el fruto y el brote, que los consumen. Cuando la carga es excesiva, el fruto prevalece sobre el crecimiento vegetativo y compromete la estructura productiva del año siguiente.
- **Tipping pruning (poda de despunte)**: Intervención sobre el extremo de las ramas destinada a renovar la madera productiva y equilibrar la relación entre estructura vegetativa y carga frutal.
- **Water stress (estrés hídrico)**: Condición fisiológica adversa provocada por deficiencia de agua, que reduce la capacidad del árbol para sostener su carga y acelera el agotamiento de reservas.

- **Campaign (campaña)**: Ciclo productivo anual completo del olivar, comprendido desde el letargo invernal hasta la cosecha y la comercialización. Constituye la unidad temporal sobre la que se comparan rendimientos y se calcula la alternancia.
- **Olive producer (productor olivícola)**: Persona a cargo del manejo agronómico de uno o más fundos, perteneciente a una cooperativa o asociación. Toma las decisiones de aclareo, poda y riego que determinan la carga frutal.
- **Technical advisor (asesor técnico)**: Profesional o gestor vinculado a una organización olivícola, sea cooperativa, asociación o agroindustria, responsable de acompañar técnicamente a varios productores y de consolidar la proyección productiva de la organización.
- **Cooperative (cooperativa)**: Organización que agrupa a los productores, consolida el volumen de la campaña y negocia su colocación comercial. La alternancia individual de sus asociados se traduce en volatilidad del volumen agregado.
- **Field notebook (cuaderno de campo)**: Registro físico donde el productor anota de manera manual las labores y resultados de la campaña. Es vulnerable a la pérdida y no permite comparación entre campañas.
- **Plot traceability (trazabilidad de la parcela)**: Registro acumulativo y consultable del manejo de un fundo, incluyendo fechas de poda, intensidad de aclareo, riego y rendimiento obtenido. Constituye la base sobre la que se calcula el comportamiento alternante de la parcela.
- **Harvest record (registro de cosecha)**: Anotación del peso y calibre efectivamente obtenidos en una parcela al cierre de la campaña. Es el insumo mínimo indispensable para el cálculo del Biennial Bearing Index.
- **Thinning window (ventana de aclareo)**: Rango fenológico acotado, posterior al cuajado, dentro del cual la reducción de carga resulta efectiva para preservar las reservas del árbol. Fuera de esa ventana la intervención pierde eficacia sobre la campaña siguiente.
- **Volume commitment (compromiso de volumen)**: Cantidad de producto que un productor u organización se compromete a entregar en una campaña. Su incumplimiento traslada el efecto de la alternancia desde la parcela hacia la cadena comercial.
- **Regional oversupply (sobreoferta regional)**: Situación en la que la mayoría de los fundos de una zona coinciden en año ON, elevando la oferta simultáneamente y deprimiendo el precio justo cuando el volumen disponible es mayor.
- **Viora Ecosystem (Ecosistema Viora)**: Entorno digital donde productores olivícolas y asesores técnicos de una misma organización registran, consultan y comparan información de carga y rendimiento por parcela, con el fin de anticipar y atenuar la alternancia productiva.

\clearpage
