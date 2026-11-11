## Validation Interviews

Esta sección aborda la investigación cualitativa de validación en campo a través de sesiones de interacción guiada con representantes de los dos segmentos objetivo del proyecto Viora: productores olivareros independientes y gestores técnicos de organizaciones agrícolas. La evaluación permite contrastar de primera mano la claridad comunicacional de la propuesta de valor, la idoneidad técnica de los módulos explicativos sobre la vecería y el monitoreo fenológico, la transparencia de los planes comerciales y la viabilidad de la propuesta agronómica integral.

### Diseño de entrevistas

Para la validación de la propuesta de Viora se estructuran sesiones de evaluación adaptadas a los dos segmentos clave: el productor olivarero independiente y el gestor técnico de cooperativas agrarias. Conforme a las directrices de validación, las sesiones abarcan la interacción con el Landing Page y con las aplicaciones del ecosistema. En el caso del productor, la sesión incorpora la evaluación de la aplicación móvil nativa para Android (distribuida mediante Firebase App Distribution), permitiendo evaluar la claridad comunicacional de la propuesta de valor, la solvencia de los módulos técnicos de vecería y la interacción directa con los flujos de trabajo agronómicos en campo.

#### **Segmento 1: Productores olivareros de la región sur**
&nbsp;

**Objetivo:** Determinar si el productor comprende que Viora es un asistente digital agronómico especializado en mitigar la vecería del olivo, evaluar su experiencia interactuando con la aplicación móvil Android en sus principales flujos operativos (creación de cuenta y registro, dashboard de inicio, gestión de lotes, diagnóstico de vecería y frío invernal, prescripción de aclareo y registro de muestreo de campo en bitácora), y ponderar la percepción de valor frente al modelo de suscripción mensual por hectárea.

\noindent \textbf{Artefactos evaluados:}

*   **Landing Page Web:** Escaparate informativo, propuesta de valor, explicación del ciclo de alternancia y tarifas del Plan Productor.
*   **Aplicación Móvil Android (Experiencia del Productor):** Aplicación nativa desarrollada en Kotlin y Jetpack Compose (Material 3), evaluada en dispositivos móviles de los participantes y distribuida vía Firebase App Distribution.

\noindent \textbf{User Flows de la Aplicación Móvil Android incluidos en la sesión:}

*   **UF-F01 (Crear mi cuenta y entrar por primera vez):** Registro guiado inicial, captura de datos de contacto (nombre y celular), validación de código de cooperativa o ingreso de superficie (ha), creación de credenciales y confirmación de cuenta.
*   **UF-F05 (Saber qué hacer hoy en mi olivar):** Pantalla de Inicio / Dashboard, resumen contextual del lote, monitoreo meteorológico y alertas fenológicas del cultivo.
*   **UF-F06 / UF-F07 (Registrar un lote y mantener mis lotes al día):** Registro y delimitación de parcela, caracterización agronómica por variedad (Criolla, Sevillana, etc.), marco de plantación y consulta del inventario de predios.
*   **UF-F10 / UF-F11 (Conocer la vecería de mi lote y seguir el frío invernal):** Consulta del detalle de lote, cálculo del Índice Bienal de Vecería (BBI) a partir del historial y seguimiento de porciones de frío acumuladas (modelo Erez).
*   **UF-F12 (Muestreo de cuajado):** Despliegue de la Bitácora, apertura de captura guiada mediante el botón de acción flotante (FAB) y registro estructurado de conteo de brotes y frutos a pie de árbol.
*   **UF-F13 (Aclarear a tiempo):** Pantalla de Plan, evaluación del balance de carga frutal sostenible vs. conteo real, prescripción de porcentaje de aclareo y consulta de la ventana fenológica con fecha límite antes del endurecimiento del hueso.

\noindent \textbf{1. Datos generales}

*   ¿Cuál es su nombre completo y edad?
*   ¿En qué distrito, valle o sector reside y mantiene sus parcelas de olivo?
*   ¿Cuál es su ocupación principal y cuántos años de experiencia tiene en el sector olivícola?
*   ¿Cuántas hectáreas de cultivo de olivo administra actualmente?
*   ¿Qué variedades de olivo cultiva predominantemente en su predio?

\noindent \textbf{2. Landing page}

*   Al observar la portada inicial, ¿qué entiende que ofrece Viora?
*   ¿Qué problema agronómico considera que resuelve la plataforma presentada?
*   La explicación sobre el ciclo de la vecería y la alternancia de cosecha, ¿coincide con las dificultades que experimenta en su olivar?
*   ¿La información presentada sobre los módulos de carga frutal, frío invernal y aclareo le parece clara y fácil de entender?
*   Las métricas territoriales presentadas sobre la producción y mermas en Tacna, ¿le resultan representativas de la realidad local?
*   Al revisar las condiciones y costos del Plan Productor, ¿la información sobre la suscripción mensual le parece transparente y comprensible?
*   ¿Qué beneficio o elemento visual de la página le llamó más la atención?
*   ¿Hay algún término, sección o explicación que le haya generado dudas o confusión?
*   ¿Considera que una herramienta con las características descritas aportaría valor al manejo de su parcela? ¿Por qué?

\noindent \textbf{3. Aplicación móvil Android (Experiencia del Productor)}

\vspace{0.15cm}

*Interacción general y navegación:*

*   Al abrir la aplicación en el teléfono, ¿la barra de navegación inferior de 4 destinos (Inicio, Lotes, Plan, Bitácora) le resulta intuitiva para desplazarse entre secciones?
*   ¿Los iconos, colores y tamaños de letra le resultan legibles bajo condiciones de iluminación habituales de campo o al aire libre?
*   ¿Identifica con facilidad en qué pantalla o sección de la aplicación se encuentra en cada momento?

*UF-F01: Registro y bienvenida (Crear mi cuenta y entrar por primera vez):*

*   Al realizar el proceso de bienvenida y registro inicial, ¿el paso a paso guiado (ingreso de nombre, celular y código de cooperativa o hectáreas) le resultó claro y fluido?
*   En caso de ingresar sin código de cooperativa, ¿la estimación automática de la cuota según las hectáreas de su predio le pareció comprensible y transparente?
*   Al crear su contraseña y verificar su cuenta, ¿los mensajes de ayuda y validación le permitieron acceder sin generar dudas o fricciones?

*UF-F05: Dashboard y alertas agronómicas (Saber qué hacer hoy en mi olivar):*

*   Al ingresar a la pantalla de Inicio, ¿el resumen de sus parcelas y el estado del tiempo le transmiten una visión clara del estado diario de su cultivo?
*   ¿La alerta visual de acumulación de frío y estado fenológico le ayuda a identificar rápidamente si el olivar requiere una intervención urgente?
*   ¿La organización de las tarjetas de información le permite identificar de un vistazo las prioridades y tareas del día en su olivar?

*UF-F06 / UF-F07: Inventario y registro de parcelas (Registrar un lote y mantener mis lotes al día):*

*   Al acceder a la sección de Lotes, ¿le resulta fácil encontrar y diferenciar sus parcelas según la denominación y la variedad de olivo (Criolla, Sevillana u otras)?
*   Al registrar o revisar los datos de una parcela, ¿los campos de delimitación territorial y marco de plantación le parecen adecuados a la realidad de su predio?
*   ¿Considera que tener organizadas las parcelas en esta lista facilita el seguimiento agronómico individualizado por sector?

*UF-F10 / UF-F11: Diagnóstico de vecería y frío invernal (Conocer la vecería y seguir el frío invernal):*

*   Al abrir el detalle agronómico de una parcela, ¿la gráfica o métrica del índice de alternancia (BBI) y las horas de frío acumuladas se entienden sin requerir asistencia técnica?
*   ¿Considera que la información del expediente del lote le ayuda a llevar un historial más ordenado de sus campañas pasadas?

*UF-F13: Prescripción de aclareo y ventana fenológica (Aclarear a tiempo):*

*   En la sección de Plan, ¿la recomendación de aclareo (porcentaje de fruta a retirar) le parece comprensible y orientada a su labor práctica?
*   ¿La visualización de la fecha límite o ventana de intervención fenológica le resulta clara para planificar la labor antes del endurecimiento del hueso de la aceituna?
*   Al consultar el plan, ¿siente que la aplicación fundamenta adecuadamente por qué se sugiere dicha intensidad de aclareo para evitar el año en blanco (*off*)?

*UF-F12: Registro de muestreo en campo (Muestreo de cuajado a pie de árbol):*

*   Al iniciar una toma de datos desde el botón flotante (FAB) en la Bitácora, ¿el formulario guiado para registrar el conteo de brotes y frutos a pie de árbol le pareció ágil y fácil de completar?
*   ¿Considera que el ingreso numérico de frutos y racimos en pantalla es cómodo para registrar mediciones directamente en el predio?
*   Al finalizar el conteo, ¿el resumen de la muestra registrada le resulta claro y suficiente para verificar que no hubo errores en la toma de datos?

\noindent \textbf{4. Preguntas de cierre y evaluación de valor}

*Cierre y evaluación de la Landing Page:*

*   En una escala del 1 al 5, ¿qué tan útil considera la propuesta de Viora presentada en el sitio web para la gestión del olivo?
*   ¿Considera que contar con estimaciones de carga y recomendaciones de intervención le permitiría tomar decisiones con mayor anticipación?
*   Frente a la posibilidad de reducir las pérdidas de una campaña baja, ¿considera razonable el modelo de acceso propuesto en el portal?
*   ¿Tiene algún comentario o sugerencia para mejorar la información o presentación del sitio web?

*Cierre y evaluación de la Aplicación Móvil Android:*

*   En una escala del 1 al 5, ¿qué tan útil considera la aplicación móvil Android para la gestión cotidiana de su olivar y la toma de decisiones agronómicas?
*   ¿Considera que la aplicación móvil le permitiría tomar decisiones de aclareo y manejo con mayor rapidez y precisión que su método tradicional de cálculo?
*   Considerando que la aplicación le brinda asistencia técnica personalizada y directa en la palma de su mano, ¿considera justificada la suscripción mensual de S/ 55 por hectárea?
*   ¿Qué función o aspecto de la aplicación Android agregaría, modificaría o eliminaría para que se ajuste mejor a su jornada diaria de trabajo en el campo?

\clearpage

#### **Segmento 2: Gestores técnicos de organizaciones olivareras**
&nbsp;

**Objetivo:** Evaluar si el portal comunica con suficiente solvencia técnica el respaldo metodológico del sistema, verificar la claridad del Plan Cooperativa basado en códigos de activación para los agricultores asociados y ponderar el interés de adopción institucional para coordinar la logística de acopio en planta.

\noindent \textbf{1. Datos generales y ámbito organizacional}

*   ¿Cuál es su nombre completo y edad?
*   ¿En qué distrito, institución o cooperativa agraria labora actualmente?
*   ¿Cuál es su profesión o cargo dentro de la organización?
*   ¿Cuántos años de experiencia tiene en la asistencia técnica y supervisión de olivares?
*   ¿Cuántos productores o hectáreas supervisa de forma agregada durante una campaña?

\noindent \textbf{2. Landing page}

*   Al revisar la plataforma, ¿cómo percibe la propuesta orientada a organizaciones bajo la premisa de supervisión de parcelas dispersas?
*   ¿La distinción entre las necesidades del productor individual y las herramientas para cooperativas le resulta clara y pertinente?
*   La información técnica mostrada sobre seguimiento de frío invernal y monitoreo fenológico, ¿responde a los criterios que utiliza en la supervisión de campo?
*   ¿La explicación del Plan Cooperativa y el sistema de activación para socios le parece comprensible y viable para una organización agrícola?
*   ¿El contenido presentado le transmite el respaldo técnico y metodológico necesario para evaluar una adopción institucional?
*   ¿Qué funcionalidad o ventaja presentada considera de mayor impacto para la gestión técnica de una cooperativa?
*   ¿Identificó algún aspecto de la información que considere ambiguo o que requiera mayor detalle técnico?
*   ¿Considera que la plataforma facilitaría la articulación entre el equipo técnico y los productores asociados? ¿Por qué?

\noindent \textbf{3. Preguntas de cierre y evaluación institucional}

*   En una escala del 1 al 5, ¿qué tan pertinente considera la solución de Viora para la coordinación técnica y comercial en cooperativas?
*   ¿Considera que contar con datos de campo estandarizados mejoraría la precisión en las estimaciones de acopio de aceituna verde y negra?
*   ¿Estaría dispuesto a recomendar la evaluación de esta plataforma a los directivos o miembros de su organización?
*   ¿Qué recomendaciones o consideraciones adicionales sugeriría para fortalecer la propuesta del sitio web?

### Registro de entrevistas

En esta sección se presenta el registro individual de las sesiones de validación cualitativa realizadas con los usuarios representativos de los dos segmentos objetivo del proyecto Viora (productores olivareros independientes y gestores técnicos de organizaciones olivareras). Cada ficha detalla los datos demográficos y agronómicos del participante, el intervalo temporal y duración total de la sesión, el enlace directo a la grabación audiovisual alojada en la nube institucional, un resumen descriptivo minucioso de la interacción con el artefacto evaluado (Landing Page o aplicación móvil productor) y la evidencia gráfica correspondiente.

#### Segmento 1: Productores olivareros de la región sur
&nbsp;

\begingroup
\small
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont

\noindent \begin{tabular}{p{0.14\textwidth} p{0.34\textwidth} p{0.12\textwidth} p{0.32\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#1} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Cristóbal Benito Barrientos Carpio & \textbf{Edad} & 51 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.78\textwidth}}{Valle de Yauca, Provincia de Caravelí, Arequipa} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.78\textwidth}}{Productor Olivarero y Acopiador Local} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.78\textwidth}}{Landing page} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.78\textwidth}}{00:05 - 05:07} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.78\textwidth}}{\url{https://tinyurl.com/validation-interviews}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Productor con 10 años en el olivar de Yauca, a cargo de 2 hectáreas propias y acopio local. Al revisar el portal web, comprendió de inmediato que la herramienta previene las pérdidas por falta de floración y frío invernal insuficiente. Validó que la vecería afecta con igual severidad a Tacna y Yauca, con mermas de hasta 90\% en campañas anómalas. Calificó los módulos de frío y balance de carga como claros y orientados a proteger la cosecha. Respecto al Plan Productor, consideró accesible la tarifa, aunque consultó si el costo incluye IGV y facturación con RUC para gastos contables. Otorgó una calificación de 4/5 a la plataforma, señalando que la adopción tecnológica requiere comprobación en campo. Afirmó que su disposición de pago se afianzará al observar resultados o recibir recomendaciones de colegas, sugiriendo incorporar testimonios reales de agricultores para generar mayor confianza.} \\ 
\multicolumn{4}{c}{\vspace{0.05cm}\includegraphics[width=0.28\textwidth]{report/assets/interviews/validation/interview-val-cristobal.png}\vspace{0.05cm}} \\ 
\hline 
\end{tabular}

\vspace{0.35cm}

\noindent \begin{tabular}{p{0.14\textwidth} p{0.34\textwidth} p{0.12\textwidth} p{0.32\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#2} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Alexandra Rosas & \textbf{Edad} & 50 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.78\textwidth}}{La Yarada-Los Palos, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.78\textwidth}}{Productora Olivarera y Comercializadora Familiar} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.78\textwidth}}{Landing page} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.78\textwidth}}{05:17 - 11:10} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.78\textwidth}}{\url{https://tinyurl.com/validation-interviews}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Productora con más de 10 años de experiencia en La Yarada-Los Palos, a cargo de 3 hectáreas tecnificadas de aceituna Criolla. Comprendió con inmediatez que el producto es un asistente predial frente a la vecería. Ratificó que las oscilaciones productivas descritas reflejan su realidad, con caídas drásticas de cosecha en años impactados por El Niño. Resaltó el módulo de aclareo como una valiosa ventana de oportunidad antes del endurecimiento del hueso, eliminando dudas operativas. Calificó la tarifa de S/ 55 por hectárea/mes del Plan Productor como transparente y accesible, pues un mal manejo genera pérdidas muy superiores a la suscripción anual. Destacó especialmente el soporte sin conexión para registrar muestras sin señal en campo. Asignó una calificación de 5/5 a la propuesta y recomendó integrar un enlace directo a WhatsApp en la página para brindar asistencia técnica rápida.} \\ 
\multicolumn{4}{c}{\vspace{0.05cm}\includegraphics[width=0.28\textwidth]{report/assets/interviews/validation/interview-val-alexandra-rosas.png}\vspace{0.05cm}} \\ 
\hline 
\end{tabular}

\vspace{0.35cm}

\noindent \begin{tabular}{p{0.14\textwidth} p{0.34\textwidth} p{0.12\textwidth} p{0.32\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#3} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Gustavo Calizaga Limache & \textbf{Edad} & 30 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.78\textwidth}}{La Yarada Los Palos, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.78\textwidth}}{Productor olivarero} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.78\textwidth}}{Aplicación móvil productor} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.78\textwidth}}{\textit{Pendiente}} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.78\textwidth}}{\textit{Enlace pendiente}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Productor con 7 años de experiencia en La Yarada Los Palos, a cargo de 4 hectáreas de aceituna Sevillana, que participó también en la etapa de needfinding. La sesión se centró en la aplicación móvil productor. Calificó como claro el registro guiado y como transparente la estimación de la cuota según sus hectáreas. Al registrar su lote con un marco de plantación de 6 por 6 metros, comprobó que la densidad calculada (278 árboles por hectárea) refleja su campo y consideró el flujo «bastante fácil». Validó como suficientes el listado de lotes, la información de frío invernal, el orden de las tarjetas de Inicio y el ingreso numérico de muestras en campo, aunque pidió revisar las fechas de las fases fenológicas para alinearlas con el calendario local de floración, cuajado y aclareo. Otorgó una calificación de 5/5, consideró justificada la suscripción de S/ 55 por hectárea al mes y describió la aplicación como una guía para anticiparse a cada fase. Sugirió estimar los kilos perdidos por hectárea, pues muchos productores cosechan y venden sin conocer la rentabilidad de su campaña, y mencionó la recomendación de productos fitosanitarios para reducir costos, necesidad reconocida pero ajena al problema central que aborda Viora. Durante la sesión, la ubicación de la parcela demoró al no estar activado el GPS del dispositivo.} \\ 
\multicolumn{4}{c}{\vspace{0.05cm}\includegraphics[height=4.5cm]{report/assets/interviews/validation/interview-val-gustavo-calizaga.png}\vspace{0.05cm}} \\ 
\hline 
\end{tabular}
<!-- TODO: timing y enlace de la entrevista de validación de Gustavo. -->

\endgroup

\clearpage

#### Segmento 2: Gestores técnicos de organizaciones olivareras
&nbsp;

\begingroup
\small
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont

\noindent \begin{tabular}{p{0.14\textwidth} p{0.34\textwidth} p{0.12\textwidth} p{0.32\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#4} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Daniel Estrada & \textbf{Edad} & 44 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.78\textwidth}}{La Yarada Los Palos / Magollo, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.78\textwidth}}{Ingeniero Agrónomo - Jefe Técnico de Cooperativa Agraria} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.78\textwidth}}{Landing page} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.78\textwidth}}{11:13 - 16:41} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.78\textwidth}}{\url{https://tinyurl.com/validation-interviews}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Ingeniero Agrónomo con 18 años de experiencia, a cargo de supervisar 68 socios y 420 hectáreas en La Yarada y Magollo. Valoró la centralización de datos para mitigar la dispersión territorial y superar la «ceguera logística» en planta, donde estimaciones tradicionales provocan desviaciones de hasta 40\% en acopio. Destacó el esquema del Plan Cooperativa basado en códigos institucionales de activación, eliminando trabas administrativas con los productores. Confirmó que el seguimiento de frío entre mayo y agosto posee pleno rigor agronómico y que los descargos legales aportan solidez formal ante directivos. Calificó la utilidad de la plataforma con 5/5 y acordó presentarla en asamblea directiva para una prueba piloto. Como recomendaciones de diseño, sugirió habilitar un botón directo para coordinar demostraciones a nivel gerencial y una sección de preguntas frecuentes sobre el soporte a socios con menor destreza digital.} \\ 
\multicolumn{4}{c}{\vspace{0.05cm}\includegraphics[width=0.28\textwidth]{report/assets/interviews/validation/interview-val-daniel-estrada.png}\vspace{0.05cm}} \\ 
\hline 
\end{tabular}

\vspace{0.35cm}

\noindent \begin{tabular}{p{0.14\textwidth} p{0.34\textwidth} p{0.12\textwidth} p{0.32\textwidth}} 
\hline 
\multicolumn{4}{l}{\textbf{Entrevista de Validación \#5} \hfill \textbf{Detalles}} \\ 
\hline 
\textbf{Nombre} & Maribel Vargas & \textbf{Edad} & 40 \\ 
\textbf{Distrito} & \multicolumn{3}{p{0.78\textwidth}}{La Yarada Los Palos, Tacna} \\ 
\textbf{Ocupación} & \multicolumn{3}{p{0.78\textwidth}}{Ingeniera Agrónoma - Responsable Técnica y de Acopio} \\ 
\textbf{Artefacto} & \multicolumn{3}{p{0.78\textwidth}}{Landing page} \\ 
\textbf{Timing} & \multicolumn{3}{p{0.78\textwidth}}{16:44 - 23:02} \\ 
\textbf{Enlace} & \multicolumn{3}{p{0.78\textwidth}}{\url{https://tinyurl.com/validation-interviews}} \\ 
\hline 
\multicolumn{4}{p{0.95\textwidth}}{\textbf{Resumen de la sesión:} Ingeniera Agrónoma con 15 años de trayectoria en Tacna, a cargo de 35 socios y 150 hectáreas con riego tecnificado. Valoró positivamente la distinción entre el panel operativo del productor y el módulo analítico institucional. Resaltó la pertinencia técnica de alertar la ventana de aclareo previa al endurecimiento del hueso, señalando que retrasar el raleo deteriora el calibre del fruto y la floración de la siguiente campaña. Confirmó que la plataforma optimiza la coordinación técnica al suministrar datos objetivos de campo. Calificó la propuesta con 4.8/5, fundamentando que la inversión institucional se amortiza al prevenir penalizaciones comerciales en contratos de acopio. Como mejoras puntuales, propuso permitir la exportación de estimaciones a hojas de cálculo para comisiones directivas e incorporar en el sitio web vistas previas directas de la interfaz móvil de muestreo.} \\ 
\multicolumn{4}{c}{\vspace{0.05cm}\includegraphics[width=0.28\textwidth]{report/assets/interviews/validation/interview-val-maribel-vargas.png}\vspace{0.05cm}} \\ 
\hline 
\end{tabular}

\endgroup

\clearpage

### Evaluaciones según heurísticas

Esta sección contiene el proceso de evaluación de las sesiones de validación basado en heurísticas, considerando heurísticas de usabilidad, arquitectura de información e inclusive design de la experiencia propuesta.

\vspace{0.2cm}

\begin{center}
\textbf{--- UX Heuristics \& Principles Evaluation ---} \\
\textbf{-- Usability - Inclusive Design - Information Architecture --}
\end{center}

\vspace{0.15cm}

\begingroup
\small
\renewcommand{\arraystretch}{1.06}
\noindent \begin{tabular}{|p{4.2cm}|p{11.2cm}|}
\hline
\textbf{CARRERA:} & Ingeniería de Software \\ \hline
\textbf{CURSO:} & 1ACC0238 - Aplicaciones para Dispositivos Móviles \\ \hline
\textbf{NRC:} & 4951 \\ \hline
\textbf{PROFESORES:} & Todos \\ \hline
\textbf{AUDITOR:} & ArcadiaDevs \\ \hline
\textbf{CLIENTES:} & Cristóbal Benito Barrientos Carpio, Alexandra Rosas, Gustavo Calizaga Limache, Ing. Daniel Estrada, Ing. Maribel Vargas \\ \hline
\textbf{Site o App a Evaluar:} & Landing page y aplicación móvil productor \\ \hline
\end{tabular}
\endgroup

\vspace{0.25cm}

\noindent \textbf{TAREAS A EVALUAR:}

El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas en la Landing Page (1 a 4) y en la aplicación móvil productor (5 a 9):

1. Exploración de la propuesta de valor agronómica y módulos de frío invernal y balance de carga frutal.
2. Consulta y diferenciación de planes comerciales (Plan Productor vs. Plan Cooperativa).
3. Cambio de idioma de la interfaz (español / inglés) y navegación en cabecera.
4. Localización de vías de contacto comercial y canales de soporte técnico.
5. Creación de cuenta y bienvenida guiada (UF-F01).
6. Consulta del resumen diario y de las fases del cultivo en Inicio (UF-F05).
7. Registro y delimitación de un lote con ubicación del dispositivo o mapa (UF-F06 y UF-F07).
8. Consulta del detalle del lote, la vecería y el frío invernal acumulado (UF-F10 y UF-F11).
9. Registro de un muestreo de cuajado en la Bitácora (UF-F12).

No están incluidas en esta versión de la evaluación las siguientes tareas:

1. Muestreo de campo de racimos y brotes sin conexión a internet.
2. Exportación automatizada de consolidados de cosecha a formatos descargables (Excel/PDF).

\vspace{0.25cm}

\noindent \textbf{ESCALA DE SEVERIDAD:} Los errores identificados han sido puntuados tomando en cuenta la siguiente escala:

\begin{center}
\small
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{4pt}
\begin{longtable}{|c|p{14.2cm}|}
\caption{Escala de severidad para evaluación heurística de UX.} \label{tab:severity-scale} \\
\hline
\textbf{Nivel} & \textbf{Descripción} \\ \hline
\endfirsthead
\hline
\textbf{Nivel} & \textbf{Descripción} \\ \hline
\endhead
\hline
\endfoot
\hline
\multicolumn{2}{l}{\parbox{15cm}{\vspace{0.1cm} \textit{Nota.} Escala adaptada de evaluación heurística de Nielsen Norman Group. Elaboración propia.}} \\
\endlastfoot
1 & Problema superficial: Puede ser fácilmente superado por el usuario y ocurre con muy poca frecuencia. No necesita ser corregido a no ser que exista disponibilidad de tiempo. \\ \hline
2 & Problema menor: Puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debe asignar una prioridad baja de cara al siguiente ciclo de desarrollo. \\ \hline
3 & Problema mayor: Ocurre frecuentemente o los usuarios no son capaces de resolverlo. Es importante que sea corregido y se le debe asignar una prioridad alta. \\ \hline
4 & Problema muy grave: Error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento oficial. \\ \hline
\end{longtable}
\end{center}

\vspace{0.2cm}

\noindent \textbf{TABLA RESUMEN:}

\begin{center}
\small
\renewcommand{\arraystretch}{1.06}
\setlength{\tabcolsep}{3.5pt}
\begin{longtable}{|c|>{\raggedright\arraybackslash}p{6.2cm}|c|>{\raggedright\arraybackslash}p{5.5cm}|}
\caption{Matriz resumen de hallazgos en la evaluación heurística de UX de la Landing Page y la aplicación móvil productor.} \label{tab:heuristic-summary} \\
\hline
\textbf{\#} & \textbf{Problema} & \textbf{Severidad} & \textbf{Heurística / Principio violado} \\ \hline
\endfirsthead
\hline
\textbf{\#} & \textbf{Problema} & \textbf{Severidad} & \textbf{Heurística / Principio violado} \\ \hline
\endhead
\hline
\endfoot
\hline
\multicolumn{4}{l}{\parbox{15cm}{\vspace{0.1cm} \textit{Nota.} Resumen de problemas detectados durante las sesiones de evaluación de UX. Elaboración propia.}} \\
\endlastfoot
1 & Carencia de especificación sobre inclusión de IGV y emisión de factura con RUC en las tarifas mostradas. & 1 & Arquitectura de Información: Claridad / Usabilidad: Coincidencia entre el sistema y el mundo real. \\ \hline
2 & Ausencia de un canal de comunicación directa inmediata (enlace a WhatsApp o soporte rápido) en la navegación o pie de página. & 2 & Usabilidad: Reconocimiento antes que recuerdo / Arquitectura de Información: Localizable. \\ \hline
3 & El botón de acción del Plan Cooperativa remite a la descarga de la aplicación móvil individual en lugar de un canal de cotización institucional. & 2 & Arquitectura de Información: Claridad / Usabilidad: Coincidencia entre el sistema y el mundo real. \\ \hline
4 & Ausencia de una opción visible para previsualizar capturas del módulo móvil o exportar consolidados de acopio a formatos descargables (Excel / PDF). & 1 & Diseño Inclusivo: Brindar elección / Usabilidad: Flexibilidad y control del usuario. \\ \hline
5 & Al delimitar un lote con la ubicación del dispositivo, la aplicación no detecta que el GPS está desactivado ni ofrece activarlo. & 3 & Usabilidad: Ayudar a reconocer, diagnosticar y recuperarse de errores / Usabilidad: Prevención de errores. \\ \hline
6 & Las fechas de las fases fenológicas mostradas en Inicio no coinciden con el calendario que maneja el productor en su valle. & 2 & Usabilidad: Coincidencia entre el sistema y el mundo real. \\ \hline
7 & La aplicación no estima los kilogramos por hectárea que se dejan de cosechar en una campaña baja. & 2 & Usabilidad: Visibilidad del estado del sistema / Arquitectura de Información: Claridad. \\ \hline
\end{longtable}
\end{center}

\vspace{0.25cm}

\noindent \textbf{DESCRIPCIÓN DE PROBLEMAS:}

\vspace{0.2cm}

\noindent \textbf{PROBLEMA \#1: Falta de especificación sobre el IGV y facturación con RUC en las tarifas mostradas}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 1.
  \item \textbf{Heurística violada:} Arquitectura de la Información: Claridad / Usabilidad: Coincidencia entre el sistema y el mundo real.
  \item \textbf{Problema:} En la tarjeta correspondiente al Plan Productor, la tarifa mensual se visualiza como "S/ 55 por hectárea al mes — referencial", omitiendo precisar si dicho importe incluye el Impuesto General a las Ventas (IGV) o si el servicio permite emitir facturas electrónicas con RUC. Durante la validación técnica (destacado por Cristóbal Barrientos), se observó que los agricultores formales que declaran ante SUNAT requieren conocer de antemano el régimen tributario del cobro para calcular sus costos netos de campaña y deducir crédito fiscal.
  \item \textbf{Recomendación:} Añadir una breve nota aclaratoria debajo del desglose de precios en la tarjeta del plan indicando explícitamente: "Precios no incluyen IGV. Emisión de factura o boleta electrónica", permitiendo al productor tomar decisiones comerciales con información fiscal transparente.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#2: Ausencia de canal directo de mensajería rápida para asistencia técnica}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 2.
  \item \textbf{Heurística violada:} Usabilidad: Reconocimiento antes que recuerdo / Arquitectura de la Información: Localizable.
  \item \textbf{Problema:} Tanto productores independientes como evaluadores técnicos señalaron que en las zonas rurales de Tacna y Arequipa la vía de coordinación predilecta es la mensajería instantánea por WhatsApp. En la versión actual de la página de aterrizaje, no se incluye ningún enlace directo de contacto, correo visible ni número telefónico en la navegación o en el pie de página, incrementando la fricción para aquellos agricultores que desean consultar sobre la compatibilidad de sus parcelas o los pasos de instalación.
  \item \textbf{Recomendación:} Añadir un enlace directo de contacto con el ícono reconocido de WhatsApp en la barra de navegación o en el pie de página que redirija a una línea de atención técnica (\url{https://wa.me/...}), facilitando una vía de comunicación inmediata sin necesidad de navegar formularios externos.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#3: Carencia de flujo diferenciado para cotizaciones institucionales en el Plan Cooperativa}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 2.
  \item \textbf{Heurística violada:} Arquitectura de la Información: Claridad / Usabilidad: Coincidencia entre el sistema y el mundo real.
  \item \textbf{Problema:} En la sección de planes comerciales, la tarjeta correspondiente al Plan Cooperativa describe con precisión los beneficios agregados (supervisión de socios, emisión de códigos de activación y semáforo territorial), pero su botón de llamada a la acción ("Lo quiero") dirige al usuario hacia la descarga de la aplicación móvil individual. Los gestores técnicos (destacado por el Ing. Daniel Estrada) manifestaron que las organizaciones agrarias requieren solicitar cotizaciones a medida en función del volumen de socios antes de autorizar cualquier contratación.
  \item \textbf{Recomendación:} Cambiar el rótulo del botón en la tarjeta del Plan Cooperativa a "Solicitar cotización" y vincularlo directamente a un enlace de correo comercial (\texttt{mailto:ventas@viora.pe}) o al canal de WhatsApp corporativo, evitando derivar a los representantes institucionales hacia el flujo de instalación individual.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#4: Falta de previsualización de muestras de campo y exportación de consolidados}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 1.
  \item \textbf{Heurística violada:} Diseño Inclusivo: Brindar elección / Usabilidad: Flexibilidad y control del usuario.
  \item \textbf{Problema:} La Ing. Maribel Vargas manifestó que, si bien la narrativa técnica sobre la ventana de aclareo y la carga frutal es sólida, los evaluadores con formación agronómica sienten curiosidad por conocer de antemano la apariencia visual del formulario de muestreo móvil en la parcela. Adicionalmente, destacó la conveniencia de que los paneles analíticos permitan exportar resúmenes de estimación de cosecha a formatos universales (planillas de cálculo o documentos PDF) para su presentación en asambleas de acopio.
  \item \textbf{Recomendación:} Añadir en la tarjeta del Plan Cooperativa o en la sección de módulos una viñeta informativa que aclare la disponibilidad de "Exportación de informes a Excel y PDF", e incluir una imagen ilustrativa de la pantalla de muestreo móvil para brindar certeza visual sobre el uso de la herramienta en campo.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#5: Ausencia de detección del GPS desactivado al delimitar un lote}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 3.
  \item \textbf{Heurística violada:} Usabilidad: Ayudar a reconocer, diagnosticar y recuperarse de errores / Usabilidad: Prevención de errores.
  \item \textbf{Problema:} En el registro de un lote, la aplicación móvil productor solicita el permiso de ubicación precisa, pero no verifica si el servicio de ubicación (GPS) del dispositivo está activado. Durante la sesión con Gustavo Calizaga, el permiso estaba concedido y el GPS apagado, por lo que la aplicación quedó a la espera de una señal que no llegaba, sin mensaje que explicara la causa. Ubicar la parcela tomó más tiempo del previsto, ya que la causa no era evidente para el productor.
  \item \textbf{Recomendación:} Comprobar el estado del servicio de ubicación antes de iniciar la delimitación y, si está desactivado, mostrar el diálogo del sistema para activarlo. Mientras tanto, indicar con un mensaje breve que el GPS está apagado y ofrecer delimitar el lote directamente sobre el mapa, de modo que el productor pueda continuar el registro sin depender de la señal.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#6: Fechas de las fases fenológicas desalineadas con el calendario local}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 2.
  \item \textbf{Heurística violada:} Usabilidad: Coincidencia entre el sistema y el mundo real.
  \item \textbf{Problema:} La pantalla de Inicio presenta las fases del olivo con fechas de referencia generales: reposo invernal de junio a agosto, floración plena a inicios de octubre, ventana de aclareo durante noviembre y cosecha de abril a junio. Gustavo Calizaga consideró claro el resumen, pero pidió ordenar las fechas de las fases, pues en su experiencia en La Yarada Los Palos la floración, el cuajado y el aclareo se adelantan respecto de lo mostrado. Si las fechas no reflejan el calendario del valle, el productor puede desconfiar de las alertas o llegar tarde a la ventana de aclareo.
  \item \textbf{Recomendación:} Validar el calendario fenológico con asesores técnicos de La Yarada Los Palos y Yauca, y ajustar las fechas de referencia por valle. Además, permitir que el productor registre en su lote la fecha real de floración observada, para que la aplicación recalcule el cuajado y la ventana de aclareo a partir de ese dato.
\end{itemize}

\vspace{0.25cm}

\noindent \textbf{PROBLEMA \#7: Falta de estimación de la pérdida productiva por hectárea}
\begin{itemize}
  \setlength{\itemsep}{1pt}
  \setlength{\parskip}{0pt}
  \item \textbf{Severidad:} 2.
  \item \textbf{Heurística violada:} Usabilidad: Visibilidad del estado del sistema / Arquitectura de Información: Claridad.
  \item \textbf{Problema:} Gustavo Calizaga señaló que muchos productores cosechan y venden sin saber cuántos kilogramos por hectárea dejan de obtener en una campaña baja, por lo que no advierten cuándo una campaña deja de ser rentable. La aplicación móvil productor calcula el índice de vecería a partir del historial de campañas, pero no traduce esa alternancia en una cifra de pérdida que el productor pueda interpretar directamente.
  \item \textbf{Recomendación:} Mostrar en el detalle del lote la diferencia estimada entre una campaña alta y una baja, expresada en kilogramos por hectárea y en soles según el precio de referencia, aprovechando los rendimientos ya registrados en el historial de campañas.
\end{itemize}

\clearpage