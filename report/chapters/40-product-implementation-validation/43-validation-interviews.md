## Validation Interviews

El proceso de validación cualitativa constituye una fase medular dentro del ciclo de desarrollo de Viora, permitiendo contrastar las hipótesis de diseño y valor agronómico formuladas durante las fases iniciales del proyecto frente a la experiencia real de los usuarios finales en campo. Tras el despliegue del portal público de aterrizaje (*Landing Page*), el equipo de ArcadiaDevs condujo una serie de sesiones de interacción guiada con actores clave del sector olivícola en la macro-región sur del Perú. 

El propósito central de estas sesiones radicó en evaluar de manera directa la claridad comunicacional del producto digital, la idoneidad técnica de los módulos explicativos sobre la vecería y el monitoreo fenológico, la transparencia de la estructura de planes comerciales (Plan Productor y Plan Cooperativa), la viabilidad operativa del modo sin conexión a internet y la percepción de utilidad para la toma anticipada de decisiones en el olivar. Los hallazgos recolectados nutren tanto la iteración de la interfaz web como la especificación de requerimientos de las aplicaciones móviles nativas y multiplataforma del ecosistema.

### Diseño de Entrevistas

Para asegurar que las sesiones de evaluación recopilaran evidencia cualitativa rigurosa y comparable, se elaboró un instrumento metodológico semiestructurado basado en el diseño de preguntas de investigación del proyecto. El protocolo delimita los flujos de navegación requeridos, los escenarios de interacción y las métricas de percepción para los dos segmentos objetivo del ecosistema: productores olivareros independientes (representados por el arquetipo de Teodoro Mamani) y gestores técnicos de organizaciones agrícolas (arquetipo de Rubén Ticona).

Las sesiones se diseñaron para recorrer de manera secuencial los siguientes componentes del portal de aterrizaje:
1. **Identificación de la propuesta de valor (Sección Principal / *Hero Section*):** Evaluación de la primera impresión, comprensión del propósito de la plataforma a partir de la narrativa y el video explicativo institucional, e interpretación de los títulos y llamados a la acción (*Call to Action*).
2. **Comprensión del problema agronómico (Módulo de Alternancia Productiva y Vecería):** Validación de la pertinencia técnica con la que se aborda la alternancia de cosecha en el sur del Perú y la representatividad de las estadísticas territoriales de mermas de producción (hasta un 90\% en campañas críticas por eventos climáticos).
3. **Módulos técnicos especializados (Carga Frutal, Frío Invernal y Ventana de Aclareo):** Medición de la claridad y valor percibido de las herramientas analíticas para estimar kilos por árbol, contabilizar porciones de frío acumuladas y determinar la fecha oportuna de aclareo manual antes del endurecimiento del hueso de la aceituna.
4. **Propuesta comercial y condiciones de acceso (Planes y Tarifas):** Evaluación de la transparencia de las tarifas por hectárea del Plan Productor (S/ 55 por hectárea al mes) y del modelo de licencias institucionales para cooperativas con emisión de códigos de activación para los socios.
5. **Respaldo operativo y confianza técnica (Arquitectura *Offline-First* y Descargos Legales):** Medición del alivio generado por la capacidad de registrar muestras de campo sin señal móvil y verificación de la formalidad transmitida por los términos legales y descargos técnicos.

A continuación, se detalla la estructura formal de las guías de entrevista aplicadas a cada segmento.

#### Segmento 1: Productores olivareros independientes

\noindent \textbf{Objetivo:} Determinar si el productor comprende con inmediatez que Viora es un asistente digital agronómico diseñado específicamente para mitigar la vecería en el olivo, evaluar su reacción ante el modelo de suscripción mensual por hectárea y medir la tranquilidad que le confiere el soporte de trabajo en campo sin conectividad a internet.

\noindent \textbf{1. Datos generales y perfil del predio}
* ¿Cuál es su nombre completo y edad?
* ¿En qué distrito, valle o sector reside y mantiene sus parcelas de olivo?
* ¿Cuál es su ocupación principal y cuántos años de experiencia tiene en el sector olivícola?
* ¿Cuántas hectáreas de cultivo de olivo administra actualmente?
* ¿Qué variedades de olivo cultiva predominantemente en su predio y qué porcentaje destina a aceituna de mesa frente a aceite?

\noindent \textbf{2. Interacción y evaluación del portal de aterrizaje}
* Al observar la portada inicial, ¿qué entiende que ofrece Viora y qué mensaje le transmite?
* ¿Qué problema agronómico considera que resuelve la plataforma presentada?
* La explicación sobre el ciclo de la vecería y la alternancia de cosecha, ¿coincide con las dificultades que experimenta en su olivar?
* ¿La información presentada sobre los módulos de carga frutal, frío invernal y aclareo le parece clara y fácil de entender?
* Las métricas territoriales presentadas sobre la producción y mermas en Tacna y Arequipa, ¿le resultan representativas de la realidad local?
* Al revisar las condiciones y costos del Plan Productor, ¿la información sobre la suscripción mensual le parece transparente y comprensible?
* ¿Qué beneficio o elemento visual de la página le llamó más la atención?
* ¿Hay algún término, sección o explicación que le haya generado dudas o confusión?
* ¿Considera que una herramienta con las características descritas aportaría valor al manejo de su parcela? ¿Por qué?

\noindent \textbf{3. Preguntas de cierre y evaluación de valor}
* En una escala del 1 al 5, ¿qué tan útil considera la propuesta de Viora para la gestión del olivo?
* ¿Considera que contar con estimaciones de carga y recomendaciones de intervención le permitiría tomar decisiones con mayor anticipación?
* Frente a la posibilidad de reducir las pérdidas de una campaña baja, ¿considera razonable el modelo de acceso propuesto? ¿Estaría dispuesto a pagar por la suscripción?
* ¿Tiene algún comentario o sugerencia para mejorar la información presentada en el sitio web?

\vspace{0.4cm}

#### Segmento 2: Gestores técnicos y administradores de cooperativas

\noindent \textbf{Objetivo:} Evaluar si el portal comunica con suficiente solvencia técnica el respaldo metodológico del sistema, verificar la claridad del Plan Cooperativa basado en códigos de activación para los agricultores asociados y ponderar el interés de adopción institucional para coordinar la logística de acopio en planta.

\noindent \textbf{1. Datos generales y ámbito organizacional}
* ¿Cuál es su nombre completo y edad?
* ¿En qué distrito, institución o cooperativa agraria labora actualmente?
* ¿Cuál es su profesión o cargo dentro de la organización?
* ¿Cuántos años de experiencia tiene en la asistencia técnica y supervisión de olivares?
* ¿Cuántos productores asociados o hectáreas supervisa de forma agregada durante una campaña agrícola?

\noindent \textbf{2. Interacción y evaluación del portal de aterrizaje}
* Al revisar la plataforma, ¿cómo percibe la propuesta orientada a organizaciones bajo la premisa de supervisión de parcelas dispersas?
* ¿La distinción entre las necesidades del productor individual y las herramientas para cooperativas le resulta clara y pertinente?
* La información técnica mostrada sobre seguimiento de frío invernal y monitoreo fenológico, ¿responde a los criterios que utiliza en la supervisión de campo?
* ¿La explicación del Plan Cooperativa y el sistema de activación para socios le parece comprensible y viable para una organización agrícola?
* ¿El contenido presentado le transmite el respaldo técnico y metodológico necesario para evaluar una adopción institucional?
* ¿Qué funcionalidad o ventaja presentada considera de mayor impacto para la gestión técnica de una cooperativa?
* ¿Identificó algún aspecto de la información que considere ambiguo o que requiera mayor detalle técnico?
* ¿Considera que la plataforma facilitaría la articulación entre el equipo técnico y los productores asociados? ¿Por qué?

\noindent \textbf{3. Preguntas de cierre y evaluación institucional}
* En una escala del 1 al 5, ¿qué tan pertinente considera la solución de Viora para la coordinación técnica y comercial en cooperativas?
* ¿Considera que contar con datos de campo estandarizados mejoraría la precisión en las estimaciones de acopio de aceituna verde y negra?
* ¿Estaría dispuesto a recomendar la evaluación de esta plataforma a los directivos o miembros de su organización?
* ¿Qué recomendaciones o consideraciones adicionales sugeriría para fortalecer la propuesta del sitio web?

\newpage

### Registro de Entrevistas

En concordancia con los acuerdos metodológicos establecidos para el hito TB1 y la autorización del docente del curso respecto a la representatividad muestral en zonas agrícolas dispersas, se presenta el registro de cuatro sesiones de validación cualitativa (dos correspondientes al Segmento 1 de productores independientes y dos correspondientes al Segmento 2 de gestores técnicos). 

Cada ficha detalla los datos demográficos y agronómicos del participante, el intervalo temporal y duración total de la sesión, el enlace directo a la grabación audiovisual alojada en la nube institucional, un resumen descriptivo minucioso de la interacción y la evidencia gráfica mediante captura de pantalla de la sesión.

\vspace{0.3cm}

\noindent \begin{tabular}{p{0.15\textwidth} p{0.30\textwidth} p{0.15\textwidth} p{0.30\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#1} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Alexandra Rosas & \textbf{Edad} & 50 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.75\textwidth}}{La Yarada-Los Palos, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.75\textwidth}}{Productora Olivarera y Comercializadora Familiar} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.75\textwidth}}{Portal Web de Aterrizaje (*Landing Page* pública de Viora)} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.75\textwidth}}{00:00 - 15:42 (Duración total: 15m 42s)} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.75\textwidth}}{\url{https://drive.google.com/file/d/1YdGs-sLZ7yFHdX7-yLVJfA6CAFasJ2jl/view?usp=sharing}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Productora de 50 años con más de 10 años de experiencia agrícola en La Yarada-Los Palos, a cargo de 3 hectáreas tecnificadas con riego por goteo dedicadas a aceituna Criolla de Tacna (80\% aceituna de mesa en salmuera y 20\% para aceite). Al interactuar con el portal, manifestó una comprensión inmediata del producto, identificándolo como un asistente para el cuidado árbol por árbol frente a las pérdidas por vecería. Indicó que la descripción de las oscilaciones productivas refleja con fidelidad su realidad (caídas de 14,000 kg/ha en años favorables a menos de 4,500 kg/ha en campañas afectadas por El Niño). Destacó positivamente la claridad del módulo de aclareo como una "ventana de oportunidad" con límites temporales antes del endurecimiento del hueso, lo cual elimina la incertidumbre en campo. Respecto al Plan Productor, calificó la tarifa de S/ 55 por hectárea al mes como plenamente accesible y transparente, indicando que una mala poda genera pérdidas diez veces mayores que el costo anual de la suscripción. Resaltó de manera sobresaliente la tarjeta de funcionamiento *offline*, manifestando que poder registrar muestras sin señal en la parcela otorga una enorme tranquilidad. Evaluó la propuesta con una puntuación perfecta de 5/5. Como aspecto a optimizar, observó que al abrir el enlace la página cargó inicialmente en idioma inglés, requiriendo activar manualmente el selector a español, y recomendó incorporar un acceso directo a WhatsApp para asistencia rápida.} \\ 
[10pt] 
\multicolumn{4}{c}{\includegraphics[width=0.78\textwidth,keepaspectratio]{report/assets/interviews/validation/interview-val-alexandra-rosas.png}} \\ 
\hline 
\end{tabular}

\newpage

\noindent \begin{tabular}{p{0.15\textwidth} p{0.30\textwidth} p{0.15\textwidth} p{0.30\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#2} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Cristóbal Benito Barrientos Carpio & \textbf{Edad} & 51 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.75\textwidth}}{Valle de Yauca, Provincia de Caravelí, Arequipa} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.75\textwidth}}{Productor Olivarero y Acopiador Local} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.75\textwidth}}{Portal Web de Aterrizaje (*Landing Page* pública de Viora)} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.75\textwidth}}{00:00 - 21:56 (Duración total: 21m 56s)} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.75\textwidth}}{\url{https://drive.google.com/file/d/1M5mrosRm8S33ltpig7E29coU3aJfMj6b/view?usp=sharing}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Productor con 10 años de dedicación exclusiva al olivar en el Valle de Yauca, administrando 2 hectáreas propias en producción continua y complementando su acopio con compras a vecinos del sector para mantener el suministro comercial anual. Al revisar el portal web, identificó de inmediato que la herramienta busca prevenir el impacto de las alteraciones climáticas y la falta de floración sobre la cosecha, señalando la tensión que vive el productor en los meses previos a la brotación cuando el invierno no es lo suficientemente frío. Validó de forma contundente que la vecería golpea tanto a los olivares de Tacna como a los de Yauca con idéntica severidad (con mermas que alcanzan hasta un 90\% en años anómalos). Consideró que los módulos de frío invernal y balance de carga son fáciles de comprender y transmiten un enfoque constructivo centrado en salvar la producción. En cuanto al aspecto comercial, estimó que el costo del Plan Productor es claro y transparente. Otorgó una calificación de 4/5 a la plataforma, fundamentando que toda tecnología nueva demanda un proceso de verificación en campo. Explicó que su disposición de pago se consolidará conforme compruebe los resultados o reciba recomendaciones de productores colegas de confianza, sugiriendo añadir testimonios reales de agricultores para facilitar la adopción entre los perfiles más tradicionales.} \\ 
[10pt] 
\multicolumn{4}{c}{\includegraphics[width=0.78\textwidth,keepaspectratio]{report/assets/interviews/validation/interview-val-cristobal.png}} \\ 
\hline 
\end{tabular}

\newpage

\noindent \begin{tabular}{p{0.15\textwidth} p{0.30\textwidth} p{0.15\textwidth} p{0.30\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#3} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Ing. Daniel Estrada & \textbf{Edad} & 44 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.75\textwidth}}{La Yarada Los Palos / Magollo, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.75\textwidth}}{Ingeniero Agrónomo - Jefe Técnico de Cooperativa Agraria} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.75\textwidth}}{Portal Web de Aterrizaje (*Landing Page* pública de Viora)} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.75\textwidth}}{00:00 - 18:24 (Duración total: 18m 24s)} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.75\textwidth}}{\url{https://drive.google.com/file/d/1I1he7soNdJCK7qBCZZuk2u2iJhrcPLnP/view?usp=sharing}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Ingeniero Agrónomo con 18 años de trayectoria en el manejo técnico del olivo en el sur del país, responsable de la supervisión técnica de 68 socios agricultores que agrupan 420 hectáreas en los sectores de La Yarada y Magollo. Durante la interacción, valoró positivamente la centralización de datos ante la dispersión geográfica de los predios, enfatizando que un gestor técnico requiere visibilidad agregada para programar el llenado de las pozas de salmuera y evitar la denominada "ceguera logística", donde las proyecciones visuales tradicionales acarrean desviaciones de hasta un 40\%. Calificó el sistema de activación de cuentas del Plan Cooperativa (mediante emisión de códigos institucionales sin cobro directo al socio) como una solución sobresaliente que remueve la principal fricción administrativa. Señaló que el monitoreo de frío entre mayo y agosto refleja rigurosidad agronómica real y que los descargos legales brindan respaldo formal ante un consejo de administración. Calificó la utilidad global con un 5/5, comprometiéndose a presentar la plataforma en la próxima asamblea directiva para una prueba piloto. Como sugerencia de mejora de la interfaz, propuso añadir un botón directo para solicitar demostraciones guiadas a nivel gerencial y una sección de preguntas frecuentes sobre la capacitación a socios con bajo dominio tecnológico.} \\ 
[10pt] 
\multicolumn{4}{c}{\includegraphics[width=0.78\textwidth,keepaspectratio]{report/assets/interviews/validation/interview-val-daniel-estrada.png}} \\ 
\hline 
\end{tabular}

\newpage

\noindent \begin{tabular}{p{0.15\textwidth} p{0.30\textwidth} p{0.15\textwidth} p{0.30\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#4} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Ing. Maribel Vargas & \textbf{Edad} & 40 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.75\textwidth}}{La Yarada Los Palos, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.75\textwidth}}{Ingeniera Agrónoma - Responsable Técnica y de Acopio} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.75\textwidth}}{Portal Web de Aterrizaje (*Landing Page* pública de Viora)} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.75\textwidth}}{00:00 - 16:15 (Duración total: 16m 15s)} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.75\textwidth}}{\url{https://drive.google.com/file/d/1tudQISIpac8UbhCWzg6_PFoG0cL57Pv2/view?usp=sharing}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Ingeniera Agrónoma colegiada con 15 años de ejercicio profesional en sanidad, riego tecnificado y fisiología del olivar en Tacna, a cargo del seguimiento de 35 socios productores que representan 150 hectáreas bajo riego por goteo en La Yarada Los Palos. Evaluó como un acierto prioritario la diferenciación visual entre el entorno operativo del agricultor y el panel analítico de la cooperativa. Resaltó con énfasis pedagógico el valor de la alerta sobre la ventana de aclareo previa al endurecimiento del hueso de la aceituna, señalando que representa una de las mayores dificultades en campo, ya que muchos agricultores retrasan la poda o el raleo por apego al fruto, comprometiendo no solo el calibre comercial de la cosecha actual sino la inducción de yemas florales del año venidero. Confirmó que la plataforma facilitará la articulación técnica al proporcionar un sustento objetivo respaldado en datos. Asignó una calificación de 4.8/5 a la propuesta, indicando que la inversión institucional se justifica al evitar penalidades por incumplimiento en los contratos de acopio. Como oportunidad de mejora, sugirió incorporar la posibilidad de exportar los consolidados de estimación a formatos descargables estándar (hojas de cálculo o reportes imprimibles) para su análisis en comisiones comerciales, así como exhibir capturas directas de la interfaz de muestreo en campo dentro de la web.} \\ 
[10pt] 
\multicolumn{4}{c}{\includegraphics[width=0.78\textwidth,keepaspectratio]{report/assets/interviews/validation/interview-val-maribel-vargas.png}} \\ 
\hline 
\end{tabular}

\newpage

### Evaluaciones según heurísticas

Con el objetivo de complementar las impresiones cualitativas directas de los participantes y someter el portal de aterrizaje a un análisis de ingeniería de interacción formal, se ejecutó una evaluación heurística de experiencia de usuario (*User Experience*). Para este proceso se adoptó rigurosamente la metodología estipulada en el Anexo E del marco de evaluación académica, la cual integra tres marcos normativos consolidados:
1. **Heurísticas de Usabilidad de Nielsen:** Evaluación de los principios de diseño de interfaces de Jakob Nielsen, tales como la correspondencia con el mundo real, la prevención de errores, la flexibilidad de uso y el reconocimiento frente al recuerdo.
2. **Principios de Diseño Inclusivo (*Inclusive Design Principles*):** Análisis de accesibilidad y adaptación perceptual, velando por ofrecer alternativas comparables, considerar el contexto de uso rural y brindar control y elección sobre la información al usuario.
3. **Heurísticas de Arquitectura de la Información (*Information Architecture*):** Inspección de la capacidad de localización (*Findability*), claridad taxonómica y transparencia en las vías de contacto comercial.

A partir del análisis de las grabaciones y de los puntos de fricción reportados por los evaluadores en campo, se identificaron cuatro hallazgos heurísticos, clasificados en una escala de severidad que oscila entre 1 (problema superficial) y 4 (catastrófico o bloqueante).

En la \autoref{tab:heuristic-summary} se presenta la matriz consolidadora de los hallazgos identificados en el portal web de Viora.

\vspace{0.3cm}

\renewcommand{\arraystretch}{1.3}
\begin{longtable}{c p{6.8cm} c p{5.5cm}}
\caption{Matriz resumen de hallazgos en la evaluación heurística de UX de la Landing Page.} \label{tab:heuristic-summary} \\
\hline
\textbf{\#} & \textbf{Problema identificado} & \textbf{Severidad (1--4)} & \textbf{Heurística / Principio violado} \\ \hline
\endfirsthead
\hline
\textbf{\#} & \textbf{Problema identificado} & \textbf{Severidad (1--4)} & \textbf{Heurística / Principio violado} \\ \hline
\endhead
\hline
\endfoot
\hline
\multicolumn{4}{l}{\parbox{15.5cm}{\vspace{0.12cm} \textit{Nota.} Escala de severidad según Anexo E (1: Superficial, 2: Menor, 3: Mayor, 4: Catastrófico). Evaluación realizada sobre la versión desplegada en producción. Elaboración propia.}} \\
\endlastfoot
1 & Carga inicial predeterminada en inglés sin detección automática del idioma regional del navegador. & 2 & Usabilidad: Flexibilidad y eficiencia de uso / Diseño Inclusivo: Considerar el contexto. \\ \hline
2 & Ausencia de un canal de comunicación directa inmediata (enlace a WhatsApp o soporte rápido) en la barra de navegación o pie de página. & 2 & Usabilidad: Reconocimiento antes que recuerdo / Arquitectura de Información: Is it Findable? \\ \hline
3 & Carencia de un botón o formulario específico para solicitar demostración comercial o cotización institucional en el Plan Cooperativa. & 2 & Arquitectura de Información: Is it Clear? / Usabilidad: Coincidencia entre el sistema y el mundo real. \\ \hline
4 & Ausencia de una opción visible para previsualizar capturas del módulo móvil o exportar consolidados de acopio a formatos descargables (Excel / PDF). & 1 & Diseño Inclusivo: Brindar elección / Usabilidad: Flexibilidad y control del usuario. \\ \hline
\end{longtable}

\vspace{0.3cm}

A continuación, se desarrollan las fichas analíticas correspondientes a cada problema identificado, explicitando el principio vulnerado, la descripción del obstáculo experimentado por el usuario y la recomendación técnica de diseño y desarrollo orientada a optimizar la solución.

\vspace{0.4cm}

\noindent \textbf{Problema \#1: Carga inicial en idioma inglés sin detección regional automática}
\begin{itemize}
  \item \textbf{Severidad:} 2 (Problema menor de usabilidad con impacto directo en la primera impresión de usuarios agrícolas tradicionales).
  \item \textbf{Heurística violada:} Usabilidad: Flexibilidad y eficiencia de uso / Diseño Inclusivo: Considerar el contexto (*Consider situation*).
  \item \textbf{Descripción del problema:} Durante la sesión de validación con productores (observado puntualmente en la interacción de Alexandra Rosas), el portal cargó de manera predeterminada en inglés al abrirse desde dispositivos con configuraciones del sistema no homogeneizadas. Aunque la interfaz cuenta con un selector de idiomas funcional en la cabecera, este comportamiento inicial provocó un desconcierto momentáneo en el agricultor, generándole la falsa impresión de que la plataforma era extranjera o de compleja operación.
  \item \textbf{Recomendación de ingeniería de UI/UX:} Implementar un algoritmo de detección lingüística del lado del cliente (`navigator.language` / `navigator.languages`) y encabezados HTTP `Accept-Language`, configurando el español (`es-PE` / `es`) como idioma por defecto incondicional para accesos geolocalizados en el Perú. Asimismo, se debe incrementar el contraste visual y tamaño táctil del selector de idioma en la barra de navegación superior.
\end{itemize}

\vspace{0.4cm}

\noindent \textbf{Problema \#2: Ausencia de canal directo de mensajería rápida para asistencia técnica}
\begin{itemize}
  \item \textbf{Severidad:} 2 (Problema menor de usabilidad que restringe la conversión y asistencia en campo).
  \item \textbf{Heurística violada:} Usabilidad: Reconocimiento antes que recuerdo (*Recognition rather than recall*) / Arquitectura de la Información: *Is it Findable?*
  \item \textbf{Descripción del problema:} Tanto productores independientes como evaluadores técnicos señalaron que en las zonas rurales de Tacna y Arequipa la vía de coordinación predilecta es la mensajería instantánea por WhatsApp. En la versión actual de la página de aterrizaje, los enlaces de contacto remiten a formularios de suscripción estándar o correos electrónicos institucionales, lo cual incrementa la fricción cognitiva para aquellos agricultores que desean resolver dudas operativas inmediatas sobre la compatibilidad de sus parcelas o los pasos de instalación.
  \item \textbf{Recomendación de ingeniería de UI/UX:} Incorporar un botón flotante accesible (*Floating Action Button*) en la esquina inferior derecha con el ícono reconocido de WhatsApp que enlace a una línea de atención y soporte técnico agronómico directo (`https://wa.me/...`), garantizando que no oculte información crucial ni elementos de llamada a la acción en resoluciones móviles.
\end{itemize}

\vspace{0.4cm}

\noindent \textbf{Problema \#3: Carencia de flujo diferenciado para cotizaciones institucionales en el Plan Cooperativa}
\begin{itemize}
  \item \textbf{Severidad:} 2 (Problema menor de arquitectura de información que ralentiza el ciclo de ventas corporativo).
  \item \textbf{Heurística violada:} Arquitectura de la Información: *Is it Clear?* / Usabilidad: Coincidencia entre el sistema y el mundo real (*Match between system and the real world*).
  \item \textbf{Descripción del problema:} En la sección de planes comerciales, la tarjeta correspondiente al Plan Cooperativa describe con precisión los beneficios agregados (supervisión de socios, emisión de códigos de activación y semáforo territorial), pero dirige al usuario hacia el mismo canal genérico de registro que el Plan Productor. Los gestores técnicos (destacado por el Ing. Daniel Estrada) manifestaron que las cooperativas agrarias requieren solicitar cotizaciones a medida en función del volumen de asociados o coordinar demostraciones técnicas formales para comités de administración antes de autorizar cualquier contratación.
  \item \textbf{Recomendación de ingeniería de UI/UX:} Reemplazar el botón estándar de la tarjeta del Plan Cooperativa por una acción específica rotulada como "Solicitar demostración guiada" o "Cotizar para mi organización", enlazando a un diálogo modal o formulario corporativo conciso que capture el nombre de la cooperativa, número aproximado de hectáreas/socios y datos de contacto institucional.
\end{itemize}

\vspace{0.4cm}

\noindent \textbf{Problema \#4: Falta de previsualización de muestras de campo y exportación de consolidados}
\begin{itemize}
  \item \textbf{Severidad:} 1 (Problema superficial de valor agregado que enriquecería la confianza técnica del usuario).
  \item \textbf{Heurística violada:} Diseño Inclusivo: Brindar elección (*Provide choice*) / Usabilidad: Flexibilidad y control del usuario (*User control and freedom*).
  \item \textbf{Descripción del problema:} La Ing. Maribel Vargas manifestó que, si bien la narrativa técnica sobre la ventana de aclareo y la carga frutal es sólida, los evaluadores con formación agronómica sienten curiosidad por conocer de antemano la apariencia visual del formulario de muestreo móvil en la parcela. Adicionalmente, destacó la conveniencia de que los paneles analíticos permitan exportar resúmenes de estimación de cosecha a formatos universales (planillas de cálculo o documentos PDF) para su presentación en asambleas de acopio.
  \item \textbf{Recomendación de ingeniería de UI/UX:} Incorporar en el carrusel de funcionalidades del portal una galería interactiva (*mockups* en dispositivos móviles reales) que exhiba el flujo de captura de datos de racimos y brotes sin señal. Asimismo, añadir en el texto descriptivo del Plan Cooperativa la mención explícita sobre la capacidad de exportar reportes ejecutivos en formato Excel y PDF.
\end{itemize}
