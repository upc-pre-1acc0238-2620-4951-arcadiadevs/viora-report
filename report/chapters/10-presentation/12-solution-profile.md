## Solution Profile

Esta sección presenta la caracterización integral de la solución propuesta a través de dos componentes fundamentales. En primer lugar, se expone el análisis de antecedentes y la formulación formal de la problemática del sector olivarero mediante la técnica 5W+2H, estableciendo el enunciado del problema, los objetivos generales y específicos, y las restricciones técnicas y de dominio que delimitan el alcance del sistema. En segundo lugar, se detalla la aplicación del proceso Lean UX sobre el modelo de negocio y producto, consolidando los enunciados de problema, las creencias organizadas por tipo de supuestos (assumptions), las hipótesis de experimentación y la matriz estratégica plasmada en el Lean UX Canvas.

### Antecedentes y problemática

**Antecedentes productivos y relevancia.** El olivo es un cultivo estratégico para el sur del Perú por su altísima concentración territorial y su peso en las cadenas de valor de aceituna de mesa y aceite de oliva. Tacna concentra alrededor del 81 % de la superficie olivarera nacional, con cerca de 35 000 hectáreas registradas (Agraria.pe, 2021), y ha reportado volúmenes de 52 000 toneladas en campañas regulares, con una distribución aproximada de 60 % hacia aceituna de mesa y el resto hacia aceite (Andina, 2024); en un año de alta carga esa misma región llegó a cosechar 122 731 toneladas (Agraria.pe, 2021), lo que anticipa la magnitud de la oscilación que se analiza más adelante. Esta concentración implica que cualquier desequilibrio productivo local se traduce de inmediato en un déficit de oferta a escala nacional.

**La vecería como problema central, no como síntoma.** La vecería o alternancia productiva es un fenómeno fisiológico por el cual el olivo alterna entre años de alta producción ("años ON") y años de baja o nula cosecha ("años OFF"). La causa raíz no es climática sino de balance de carga: la carga frutal excesiva de un año ON agota las reservas de carbohidratos no estructurales (almidón y azúcares en hojas y madera), drena masivamente nitrógeno y potasio foliar hacia el fruto, e induce un bloqueo hormonal (auxinas y giberelinas emitidas desde la semilla) sobre las yemas que debían diferenciarse en flor para la campaña siguiente (Lavee, 2007; Paoletti et al., 2021). El clima actúa como disparador y amplificador: un evento de floración o cuaja adverso genera un año OFF, cuyas reservas acumuladas producen un año ON desmedido, y el ciclo se autosostiene indefinidamente si nadie interviene sobre la carga.

Esta distinción es determinante para el diseño de la solución. La variabilidad climática puede monitorearse pero no controlarse; la carga frutal, en cambio, sí constituye una variable de decisión directa del productor. Si bien la vecería es un fenómeno fisiológico intrínseco del olivo que no puede suprimirse de forma absoluta, existe sólida evidencia agronómica de que la regulación deliberada de la carga permite amortiguar la amplitud de las oscilaciones productivas, mitigar las pérdidas del año OFF y evitar que este se prolongue de manera estructural en campañas consecutivas.

**Evidencia local de la magnitud de la alternancia.** La volatilidad interanual del olivar tacneño es extrema y está documentada. En campañas adversas se reportaron mermas de hasta 90 % en La Yarada Los Palos, con proyecciones de cosecha equivalentes a apenas 10 % a 20 % del año previo, vinculadas a la ausencia del "golpe de frío" nocturno necesario para el cuajado (Andina, 2024). En sentido inverso, en septiembre de 2025 se reportó un incremento de 18 615 % en la producción de aceituna de Tacna respecto al mismo mes de 2024 (MIDAGRI, 2025). Ambas cifras no son dos noticias independientes: son las dos caras del mismo ciclo ON/OFF, y constituyen la evidencia más contundente de que el problema no se ha gestionado. Como se observa en la \autoref{fig:calidad-aceite}, el contraste en el rendimiento de aceite entre tratamientos confirma que el manejo deliberado de la poda y la carga frutal reduce de forma sustancial la brecha productiva entre campañas consecutivas.

\begin{figure}[H]
\caption{Rendimiento de aceite según tipo de poda y estado de carga, y reducción del rendimiento en períodos bianuales 2020-2022 y 2022-2024 (\%)}
\label{fig:calidad-aceite}
\centering
\includegraphics[width=0.42\textwidth]{report/assets/graphics/calidad_aceite.png}
\caption*{\textit{Nota.} Recuperado de Calvo et al., 2024.}
\end{figure}

La investigación aplicada confirma el mecanismo. Un evento ENOS fuerte se asocia a un aumento de temperaturas invernales de aproximadamente +2 °C y a una reducción de la acumulación de frío de entre -15 % y -23 %, con deterioro directo de productividad y agravamiento de la alternancia; en las campañas más adversas se registraron reducciones de rendimiento de aceite superiores al 85 % (Calvo et al., 2024).

**Efecto en cascada sobre la cadena de valor.** La alternancia no se agota en la parcela. Las organizaciones que acopian y transforman la aceituna (cooperativas, asociaciones y agroindustrias) planifican capacidad de fermentación, contratos de compra, calibres, mano de obra estacional y compromisos de exportación sobre volúmenes que oscilan de forma impredecible entre campañas. Un ejemplo del orden de magnitud de esta planificación se observa en la Cooperativa Yalpa, que proyectó acopiar 130 000 kilos de aceituna para obtener 23 000 litros de aceite extra virgen (AgroPerú, 2025); un año OFF no anticipado inutiliza esa capacidad instalada y rompe los compromisos comerciales asumidos.

**Brecha tecnológica actual.** Las herramientas disponibles no resuelven la vecería porque monitorean variables que resultan ser "ruido" o llegan fuera de la ventana fisiológica útil:

1. **Métricas satelitales de alta frecuencia.** El índice LAI no predice la alternancia por la perennidad foliar. Solo el seguimiento espectral focalizado (NDRE/NDVI) detecta oportunamente la caída de masa foliar bajo sobrecarga frutal.
2. **Humedad de suelo sin calibración con la planta.** Sondas tradicionales no reflejan el estrés del árbol en años ON. El potencial hídrico del tallo al mediodía (\autoref{fig:umbrales-decision}a) diagnostica el estrés hídrico real independientemente de la atmósfera.
3. **Fertilización nitrogenada por calendario.** Nitrógeno en fechas fijas no frena la vecería y enmascara el déficit crítico de potasio. El diagnóstico debe sustentarse en análisis foliar de julio (\autoref{fig:umbrales-decision}b) para asegurar reservas florales.
4. **Ausencia de gestión integrada de la decisión de carga.** Sin cruzar balance fuente-sumidero con clima y nutrición, el productor actúa tarde. La visión artificial (\autoref{fig:deteccion-frutos}) permite cuantificar la densidad de carga temprana para regular aclareos oportunamente.

\begin{figure}[H]
\caption{Umbrales fisiológicos y nutricionales para la toma de decisiones en el olivo}
\label{fig:umbrales-decision}
\centering
\begin{minipage}[b]{0.38\textwidth}
\centering
\includegraphics[width=\linewidth]{report/assets/graphics/umbrales_swp.png}
\caption*{(a) Potencial hídrico ($\Psi_{tallo}$) vs. DPV (Shackel et al., 2021).}
\end{minipage}
\hfill
\begin{minipage}[b]{0.38\textwidth}
\centering
\includegraphics[width=\linewidth]{report/assets/graphics/umbrales_foliares.png}
\caption*{(b) Niveles críticos de N y K en julio (UC ANR, 2010).}
\end{minipage}
\caption*{\textit{Nota.} Criterios fisiológicos y nutricionales que sustituyen el manejo por calendario fijo en años de alta carga. Adaptado de Shackel et al. (2021) y UC ANR (2010).}
\end{figure}

\begin{figure}[H]
\caption{Inferencia del modelo YOLOv8m para la detección y conteo de frutos en olivo}
\label{fig:deteccion-frutos}
\centering
\includegraphics[width=0.40\textwidth]{report/assets/graphics/uso_deep_learning.png}
\caption*{\textit{Nota.} Recuperado de Osco-Mamani et al., 2025.}
\end{figure}

\vspace{0.2cm}

\subsubsection{Problemática (5W + 2H)}

Para estructurar de manera exhaustiva el contexto, los actores, las causas fisiológicas y el impacto económico del fenómeno de la alternancia productiva en el ecosistema olivarero, a continuación se presenta la matriz de caracterización formal del problema bajo la técnica 5W+2H:

\begin{table}[H]
\caption{Matriz de Caracterización de la Problemática bajo el Enfoque 5W+2H}
\label{tab:5w2h-problematica}
\centering
\small
\renewcommand{\arraystretch}{1.12}
\linespread{1.0}\selectfont
\begin{tabular}{p{0.08\textwidth} p{0.14\textwidth} p{0.70\textwidth}}
\hline
\textbf{Elemento} & \textbf{Pregunta Guía} & \textbf{Diagnóstico y Sustento en Viora} \\ \hline
\textbf{What (Qué)} & ¿Cuál es el problema central? & El olivar del sur del Perú opera atrapado en un ciclo de alternancia productiva (vecería) que nadie gestiona de forma deliberada. La carga frutal excesiva del año ON agota reservas de carbohidratos, drena nitrógeno y potasio foliar e inhibe hormonalmente la diferenciación floral, induciendo un año OFF de cosecha marginal (Lavee, 2007). El productor carece de criterio cuantitativo sobre la carga a sostener y de alertas tempranas dentro de la ventana de intervención. \\
\textbf{Who (Quién)} & ¿Quiénes son los usuarios afectados? & \textbf{1. Productores olivareros:} Gestores de parcelas (agricultura familiar hasta fundos tecnificados) que sufren mermas de hasta 90\,\% en años OFF (Andina, 2024) y castigo de precio por menor calibre en años ON. \newline \textbf{2. Gestores técnicos:} Responsables de acopio en cooperativas y agroindustrias que no pueden proyectar volúmenes agregados ni planificar capacidad de proceso. \\
\textbf{When (Cuándo)} & ¿Cuándo sucede el problema? & La decisión se define en ventanas fenológicas estrechas (aclareo post-floración, acumulación de frío invernal de mayo a septiembre y poda post-cosecha), pero el daño se hace visible recién en la floración del año siguiente, cuando ya no existe acción correctiva posible. \\
\textbf{Where (Dónde)} & ¿Dónde ocurre? & En la macro-región sur del Perú, con epicentro en Tacna (concentra el 81\,\% del área olivarera nacional; Agraria.pe, 2021) y particularmente en La Yarada Los Palos, caracterizada por clima desértico y presión crítica sobre acuíferos subterráneos (Contraloría, 2023). \\
\textbf{Why (Por qué)} & ¿Por qué ocurre? & Porque la regulación de carga en el árbol se realiza sin medición. Se carece de registros históricos de rendimiento, protocolos de muestreo de carga frutal y umbrales fisiológicos de riego y nutrición, perpetuando prácticas basadas en calendarios empíricos heredados. \\
\textbf{How (Cómo)} & ¿Cómo surge y bajo qué condiciones? & Surge por el drenaje energético del fruto sumidero, bloqueo hormonal de yemas y déficit de potasio foliar. Se agrava críticamente bajo eventos ENOS que elevan temperaturas invernales y reducen entre 15\,\% y 23\,\% el frío estacional (Calvo et al., 2024), y en contextos de estrés hídrico. \\
\textbf{How Much (Cuánto)} & ¿Cuál es la magnitud del problema? & Volatilidad extrema: mermas de hasta 90\,\% en años adversos (Andina, 2024) frente a incrementos puntuales de 18\,615\,\% en años ON (MIDAGRI, 2025); pérdidas de rendimiento de aceite mayores al 85\,\% bajo ENOS fuerte (Calvo et al., 2024) y devaluación comercial por fruto pequeño. \\ \hline
\end{tabular}
\caption*{\textit{Nota.} Elaboración propia a partir de fuentes estadísticas y agronómicas citadas.}
\end{table}

\vspace{0.2cm}

\noindent \textbf{Enunciado del problema (Problem Statement)}

\vspace{0.15cm}

Los productores olivareros de la macro-región sur y las organizaciones que acopian y transforman su producción enfrentan un problema de negocio: la cosecha alterna entre años de sobreproducción de baja calidad y años de cosecha marginal, y ni el productor ni la organización disponen de un criterio cuantitativo para gestionar la carga frutal ni de una señal oportuna dentro de las ventanas fenológicas donde la intervención todavía es posible. Aunque existe evidencia agronómica consolidada sobre cómo mitigar la alternancia (regulación de carga, poda de renovación, cosecha temprana, riego por potencial hídrico y nutrición por análisis foliar), esa evidencia no llega traducida en decisiones fechadas y dimensionadas para una parcela concreta. Como consecuencia, los ingresos del productor oscilan de forma insostenible y la organización no puede planificar capacidad ni comprometer volúmenes de venta.

\vspace{0.3cm}

\noindent \textbf{Objetivos del proyecto}

\vspace{0.15cm}

\noindent \textbf{Objetivos generales}

\vspace{0.15cm}

1. **Atenuar la severidad de la alternancia productiva a nivel de parcela.** Reducir de forma medible el índice de alternancia (BBI) y mitigar el impacto del año OFF en las parcelas gestionadas mediante la regulación deliberada de la carga frutal y de las prácticas asociadas.
2. **Convertir la evidencia agronómica en decisiones fechadas.** Entregar al productor, dentro de la ventana fisiológica útil, la acción concreta y dimensionada que corresponde al estado real de su parcela.
3. **Dar previsibilidad de volumen a la cadena de valor.** Proveer a las organizaciones olivareras una proyección agregada del acopio esperado que permita planificar capacidad, calibres y compromisos comerciales.

\noindent \textbf{Objetivos específicos}

\vspace{0.15cm}

- Lograr que al menos el 60 % de las parcelas registradas cuente con un historial de al menos tres campañas y un índice de alternancia calculado durante los primeros 60 días de uso.
- Conseguir que al menos el 50 % de las parcelas clasificadas en año ON ejecute y certifique una acción de regulación de carga dentro de la ventana recomendada por el sistema.
- Reducir el índice de alternancia promedio de la cartera de parcelas gestionadas en al menos 0,10 puntos tras dos campañas consecutivas de uso.
- Alcanzar un error de proyección de volumen agregado de acopio inferior al 25 % frente al volumen real recibido por la organización al cierre de campaña.
- Lograr que al menos el 40 % de las decisiones de riego y fertilización registradas se sustenten en una medición (potencial hídrico o análisis foliar) y no en calendario.
- Firmar al menos 2 convenios con cooperativas, asociaciones o agroindustrias de la macro-región sur en un plazo de 6 meses tras el lanzamiento.

\vspace{0.3cm}

\noindent \textbf{Restricciones}

\vspace{0.15cm}

- **Delimitación de dominio agronómico.** Modelos parametrizados exclusivamente para olivo (*Olea europaea* L.) bajo riego localizado y clima árido (variedades *Criolla*, *Sevillana*, *Manzanilla* y *Arbequina*). No aplica a otros frutales sin recalibración biofísica previa.
- **Instrumentación y telemetría de campo.** Solución estrictamente de base software sin provisión de hardware. Meteorología consumida vía APIs externas y simulador backend; variables fisiológicas directas ingresadas manualmente en la aplicación móvil.
- **Operatividad offline en campo.** Los flujos críticos móviles (delimitación GPS, muestreo de carga y ventanas fenológicas) operan autónomamente mediante persistencia local transaccional SQLite, sincronizándose al recuperar cobertura de red.
- **Ecosistema y stack tecnológico.** Comprende app nativa Android (Kotlin), app multiplataforma (Flutter/Dart), API RESTful (Spring Boot, Java 21, PostgreSQL) y sitio web estático (HTML5/CSS3/JavaScript). No contempla clientes de escritorio.
- **Interoperabilidad y dependencias externas.** El cómputo de porciones de frío y evapotranspiración está condicionado a la disponibilidad, resolución y cuotas de consumo de los servicios agrometeorológicos externos integrados.
- **Internacionalización y accesibilidad.** Soporta inglés (`en_US`) y español (`es_419`), incorporando accesibilidad visual y contraste cromático optimizado para lectura en pantallas móviles bajo alta radiación solar diurna.

\vspace{0.3cm}

### Lean UX Process

#### Lean UX Problem Statements

El estado actual de la gestión del cultivo del olivo en la macro-región sur del Perú se ha enfocado principalmente en productores olivareros y en las organizaciones que acopian y transforman su producción, quienes sufren la oscilación extrema de la cosecha entre años de sobreproducción de baja calidad y años de cosecha marginal, la imposibilidad de anticipar el volumen de campaña y la falta de un criterio para decidir cuánta carga debe sostener cada parcela; y se ha apoyado en flujos de trabajo basados en calendarios fijos heredados, observación visual directa y reacción posterior al daño ya visible.

Lo que las prácticas actuales no resuelven es decidir cuánta carga debe sostener cada parcela y ejecutar esa decisión dentro de la ventana fenológica en la que todavía modifica el resultado de la campaña siguiente.

Nuestra propuesta abordará esta brecha convirtiendo el historial de cosecha, unas pocas mediciones de campo y los datos climáticos de la zona en un plan de carga objetivo y un calendario de intervenciones fechadas por parcela.

Nuestro foco inicial serán los productores olivareros de Tacna y los gestores técnicos de las cooperativas, asociaciones y agroindustrias que acopian su producción.

Sabremos que estamos teniendo éxito cuando observemos que el índice de alternancia promedio de las parcelas gestionadas se reduce en al menos 0,10 puntos tras dos campañas, que al menos el 50 % de las parcelas en año ON certifica una acción de regulación de carga dentro de la ventana recomendada, que al menos el 40 % de las decisiones de riego y nutrición se sustenta en una medición y no en calendario, y que las organizaciones proyectan su volumen de acopio con un error inferior al 25 % frente al volumen realmente recibido.

#### Lean UX Assumptions

A continuación se enumeran las creencias resultantes de la sesión de discusión del equipo, organizadas según los cinco tipos de assumptions establecidos en Lean UX.

\noindent \textbf{Business Assumptions}

\vspace{0.15cm}

1. Creemos que el olivar de la macro-región sur opera bajo un ciclo de alternancia productiva que nadie gestiona de forma deliberada, y que esa omisión, y no únicamente la variabilidad climática, es la causa de la oscilación extrema de los ingresos del productor (Calvo et al., 2024; MIDAGRI, 2025).
2. Creemos que la carga frutal es la única variable de este sistema que el productor controla efectivamente, por lo que un producto que la gestione tiene una ventaja competitiva sostenible frente a las plataformas que se limitan a monitorear el clima.
3. Creemos que existe un mercado suficiente en la macro-región sur, dado que Tacna concentra cerca del 81 % de la superficie olivarera nacional y agrupa a más de tres mil olivareros bajo una denominación de origen reconocida (Agraria.pe, 2021; Casanova, 2022).
4. Creemos que la monetización puede sostenerse con una suscripción del productor por parcela o hectárea y un plan organizacional por cartera de socios, siempre que el servicio demuestre utilidad recurrente dentro de la campaña.
5. Creemos que la captación inicial dependerá de convenios con cooperativas, asociaciones y agroindustrias, porque estas organizaciones concentran la asistencia técnica y la relación de confianza con el productor.
6. Creemos que el equipo cuenta con la capacidad técnica para construir la solución móvil, pero no con capacidad agronómica propia, por lo que la validez de los umbrales dependerá de fuentes académicas y de la validación con especialistas del sector.
7. Creemos que la mayor amenaza del negocio es el horizonte de validación, ya que el resultado de fondo se observa en la campaña siguiente y el producto debe entregar valor percibible antes de ese plazo.

\noindent \textbf{Business Outcome Assumptions}

\vspace{0.15cm}

1. Creemos que firmaremos al menos 2 convenios con cooperativas, asociaciones o agroindustrias de la macro-región sur dentro de los 6 meses posteriores al lanzamiento.
2. Creemos que al menos el 60 % de los nuevos suscriptores registrará su parcela y cargará el historial de al menos tres campañas durante los primeros 30 días de uso.
3. Creemos que al menos el 50 % de las parcelas clasificadas en año ON certificará una acción de regulación de carga dentro de la ventana recomendada por el sistema.
4. Creemos que al menos el 60 % de las suscripciones activas renovará su segundo ciclo de cobro al cierre del sexto mes.
5. Creemos que el índice de alternancia promedio de la cartera gestionada se reducirá en al menos 0,10 puntos tras dos campañas consecutivas de uso.
6. Creemos que el error de proyección del volumen agregado de acopio será inferior al 25 % frente al volumen real recibido por la organización al cierre de campaña.
7. Creemos que al menos el 45 % de los productores activos ajustará su plan de campaña antes del inicio de la floración.
8. Creemos que al menos el 55 % de las parcelas en año ON contará con una estimación de carga frutal registrada en el sistema.
9. Creemos que al menos el 40 % de las decisiones de riego y nutrición registradas se sustentará en una medición de potencial hídrico o de análisis foliar, y no en calendario.

\noindent \textbf{User Assumptions}

\vspace{0.15cm}

1. Creemos que nuestro usuario principal es el productor olivarero de la macro-región sur, que administra entre 3 y 30 hectáreas y decide poda, riego, nutrición y fecha de cosecha sobre la base de la costumbre heredada y con poco tiempo disponible.
2. Creemos que este productor reconoce el patrón de "un año carga y otro no", pero lo asume como una fatalidad del cultivo y no como una variable sobre la que pueda intervenir.
3. Creemos que su nivel de digitalización es heterogéneo y que su punto de contacto habitual es el teléfono móvil, frecuentemente sin conectividad estable durante el trabajo en parcela.
4. Creemos que nuestro segundo usuario es el gestor técnico de organizaciones olivareras (cooperativas, asociaciones y agroindustrias procesadoras), responsable de coordinar el acopio y la asistencia técnica de decenas de socios o proveedores.
5. Creemos que este gestor descubre la magnitud real de la campaña cuando la fruta llega, o no llega, a planta, y que esa falta de anticipación le impide comprometer volúmenes con seguridad.
6. Creemos que el gestor tiene incentivo económico directo en que sus socios estabilicen la producción, por lo que actuará como promotor de la adopción dentro de su cartera.

\noindent \textbf{User Outcome and Benefit Assumptions}

\vspace{0.15cm}

1. Creemos que el productor busca reducir la amplitud entre su mejor y su peor campaña, y que valorará dejar de financiar los años OFF con la caja del año ON.
2. Creemos que el productor obtendrá un beneficio percibible dentro del mismo año ON, mediante mayor calibre, maduración más oportuna y mejor precio por kilo al regular la carga.
3. Creemos que el productor valorará sustituir la costumbre por un umbral medible, ganando seguridad al invertir en una intervención dentro de la ventana correcta.
4. Creemos que el gestor busca planificar capacidad de proceso, calibres, mano de obra estacional y contratos sobre una proyección y no sobre una expectativa.
5. Creemos que ambos usuarios valorarán observar la evolución del índice de alternancia como prueba objetiva del efecto de las intervenciones ejecutadas.
6. Creemos que ambos usuarios requieren que el esfuerzo de registro sea mínimo y guiado, dado que las mediciones necesarias son pocas pero deben realizarse en fechas precisas.

\noindent \textbf{Feature Assumptions}

\vspace{0.15cm}

1. Creemos que una línea base de alternancia por parcela, construida a partir del historial de rendimiento, permitirá al productor dimensionar por primera vez la severidad real de su problema (Hoblyn et al., 1936).
2. Creemos que un seguimiento de acumulación de frío con simulación de escenario ENOS  permitirá anticipar la calidad y uniformidad de la floración de la campaña (Calvo et al., 2024).
3. Creemos que un muestreo guiado de carga frutal contrastado contra una carga objetivo convertirá la variable de decisión central en un número accionable y comparable.
4. Creemos que un plan de manejo de carga con ventanas fechadas entregará el aclareo, la poda de despunte y la fecha límite de cosecha dimensionados y ubicados en el calendario (Fernández et al., 2015; UC IPM, s.f.).
5. Creemos que un registro de potencial hídrico del tallo y de análisis foliar contrastado contra umbrales de suficiencia reemplazará el calendario fijo como criterio de riego y nutrición (Shackel et al., 2021; UC ANR, 2010).
6. Creemos que una bitácora de trazabilidad que realimente el índice de alternancia permitirá sostener el protocolo campaña tras campaña al hacer visible su efecto.
7. Creemos que un portafolio de parcelas con proyección agregada de acopio trasladará el valor del dato de parcela a la planificación de la organización.


#### Lean UX Hypothesis Statements

- **H1. Creemos que lograremos** que el 60 % de las parcelas registradas cuente con línea base calculada en 60 días. **Si** los productores olivareros **logran** dimensionar por primera vez la severidad real de su alternancia productiva **con** el registro del historial de rendimiento y el cálculo automático del índice de alternancia.
- **H2. Creemos que lograremos** que el 45 % de los productores ajuste su plan de campaña antes de la floración. **Si** los productores olivareros **logran** anticipar una floración escasa o desuniforme **con** el seguimiento de acumulación de frío y la simulación de escenario ENOS.
- **H3. Creemos que lograremos** que el 55 % de las parcelas en año ON cuente con una estimación de carga registrada. **Si** los productores olivareros **logran** saber cuánto se desvían de la carga que su parcela puede sostener **con** el muestreo guiado de carga frutal contrastado contra la carga objetivo.
- **H4. Creemos que lograremos** que el 50 % de las parcelas en año ON ejecute una regulación de carga dentro de ventana. **Si** los productores olivareros **logran** saber cuánta fruta retirar y en qué fecha exacta **con** el plan de manejo de carga con ventanas fechadas.
- **H5. Creemos que lograremos** que el 40 % de las decisiones de riego y nutrición se sustente en una medición. **Si** los productores olivareros **logran** interpretar sus propias lecturas de campo y laboratorio **con** el registro de potencial hídrico del tallo y de análisis foliar contrastado contra umbrales de suficiencia.
- **H6. Creemos que lograremos** reducir el índice de alternancia promedio de la cartera en 0,10 puntos tras dos campañas. **Si** los productores olivareros **logran** sostener el protocolo de regulación campaña tras campaña **con** la bitácora de trazabilidad que realimenta el índice de alternancia.
- **H7. Creemos que lograremos** la firma de al menos 2 convenios institucionales. **Si** los gestores técnicos de organizaciones olivareras **logran** anticipar el volumen de acopio de su campaña **con** el portafolio de parcelas y la proyección agregada de cosecha.

#### Lean UX Canvas
&nbsp;

Como se observa en la \autoref{fig:lean-ux-canvas}, el Lean UX Canvas sintetiza el modelo de valor y experimentación de Viora, articulando el problema de la alternancia productiva, los perfiles de productores y gestores técnicos, las soluciones funcionales propuestas, los resultados de negocio proyectados y las hipótesis prioritarias para guiar el desarrollo incremental del producto.

\begin{figure}[H]
\caption{Lean UX Canvas de la solución Viora}
\label{fig:lean-ux-canvas}
\centering
\includegraphics[width=0.72\textwidth]{report/assets/lean-ux-canvas/lean-ux-canvas-viora.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}