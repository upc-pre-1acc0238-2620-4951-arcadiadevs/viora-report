## Solution Profile

### Antecedentes y problemática

**Antecedentes productivos y relevancia.** El olivo es un cultivo estratégico para el sur del Perú por su altísima concentración territorial y su peso en las cadenas de valor de aceituna de mesa y aceite de oliva. Tacna concentra alrededor del 81 % de la superficie olivarera nacional, con cerca de 35 000 hectáreas registradas (Agraria.pe, 2021), y ha reportado volúmenes de 52 000 toneladas en campañas regulares, con una distribución aproximada de 60 % hacia aceituna de mesa y el resto hacia aceite (Andina, 2024); en un año de alta carga esa misma región llegó a cosechar 122 731 toneladas (Agraria.pe, 2021), lo que anticipa la magnitud de la oscilación que se analiza más adelante. Esta concentración implica que cualquier desequilibrio productivo local se traduce de inmediato en un déficit de oferta a escala nacional.

\begin{table}[H]
\caption{Variación del Valor de la Producción Agropecuaria según subsectores mes de septiembre 2019 - 2025 (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/valor_produccion_midagri.png}
\caption*{\textit{Nota.} En el mes de septiembre el sector agropecuario registró un crecimiento de 12,1 \% comparado con similar mes del 2024. Tomado de MIDAGRI, 2025.}
\end{table}


**La vecería como problema central, no como síntoma.** La vecería o alternancia productiva es un fenómeno fisiológico por el cual el olivo alterna entre años de alta producción ("años ON") y años de baja o nula cosecha ("años OFF"). La causa raíz no es climática sino de balance de carga: la carga frutal excesiva de un año ON agota las reservas de carbohidratos no estructurales (almidón y azúcares en hojas y madera), drena masivamente nitrógeno y potasio foliar hacia el fruto, e induce un bloqueo hormonal (auxinas y giberelinas emitidas desde la semilla) sobre las yemas que debían diferenciarse en flor para la campaña siguiente (Lavee, 2007; Paoletti et al., 2021). El clima actúa como disparador y amplificador: un evento de floración o cuaja adverso genera un año OFF, cuyas reservas acumuladas producen un año ON desmedido, y el ciclo se autosostiene indefinidamente si nadie interviene sobre la carga.

Esta distinción es determinante para el diseño de la solución. La variabilidad climática puede monitorearse pero no controlarse; la carga frutal sí es una variable de decisión del productor, y es precisamente sobre ella donde existe evidencia de que la alternancia puede quebrarse.

**Evidencia local de la magnitud de la alternancia.** La volatilidad interanual del olivar tacneño es extrema y está documentada. En campañas adversas se reportaron mermas de hasta 90 % en La Yarada Los Palos, con proyecciones de cosecha equivalentes a apenas 10 % a 20 % del año previo, vinculadas a la ausencia del "golpe de frío" nocturno necesario para el cuajado (Andina, 2024). En sentido inverso, en septiembre de 2025 se reportó un incremento de 18 615 % en la producción de aceituna de Tacna respecto al mismo mes de 2024 (MIDAGRI, 2025). Ambas cifras no son dos noticias independientes: son las dos caras del mismo ciclo ON/OFF, y constituyen la evidencia más contundente de que el problema no se ha gestionado.

\begin{figure}[H]
\caption{Rendimiento de aceite según tipo de poda y estado de carga, y reducción del rendimiento en períodos bianuales 2020-2022 y 2022-2024 (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/calidad_aceite.png}
\caption*{\textit{Nota.} El contraste entre los tratamientos Bilateral ON y Bilateral OFF evidencia la magnitud de la alternancia productiva y el efecto de la intervención sobre la carga en el rendimiento de la campaña siguiente. Recuperado de Calvo et al., 2024.}
\end{figure}

La investigación aplicada confirma el mecanismo. Un evento ENOS fuerte se asocia a un aumento de temperaturas invernales de aproximadamente +2 °C y a una reducción de la acumulación de frío de entre -15 % y -23 %, con deterioro directo de productividad y agravamiento de la alternancia; en las campañas más adversas se registraron reducciones de rendimiento de aceite superiores al 85 % (Calvo et al., 2024).

\begin{figure}[H]
\caption{Porciones acumuladas de frío, estimadas según el modelo dinámico entre el 1 de mayo y el 1 de septiembre para el período 2013-2023. Las porciones acumuladas de frío anuales promedio suavizadas desde 2013 hasta 2023 se destacan con una línea negra continua. (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/porciones_acumuladas_frio.png}
\caption*{\textit{Nota.} ENOS, acumulación de frío y alternancia productiva — Calvo et al., 2024}
\end{figure}

\begin{table}[H]
\caption{Reducción de la acumulación de frío estacional según la intensidad del evento ENOS}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/intensidades_enso.png}
\caption*{\textit{Nota.} Los eventos ENOS registran reducciones del frío estacional de entre 15 \% y 23 \%, amplificando la amplitud del ciclo ON/OFF. Recuperado de Calvo et al., 2024.}
\end{table}

**Efecto en cascada sobre la cadena de valor.** La alternancia no se agota en la parcela. Las organizaciones que acopian y transforman la aceituna —cooperativas, asociaciones y agroindustrias— planifican capacidad de fermentación, contratos de compra, calibres, mano de obra estacional y compromisos de exportación sobre volúmenes que oscilan de forma impredecible entre campañas. Un ejemplo del orden de magnitud de esta planificación se observa en la Cooperativa Yalpa, que proyectó acopiar 130 000 kilos de aceituna para obtener 23 000 litros de aceite extra virgen (AgroPerú, 2025); un año OFF no anticipado inutiliza esa capacidad instalada y rompe los compromisos comerciales asumidos.

**Brecha tecnológica actual.** Las herramientas disponibles no resuelven la vecería porque monitorean variables que resultan ser "ruido" o llegan fuera de la ventana fisiológica útil:

1. **Métricas satelitales de alta frecuencia.** El monitoreo continuo del Índice de Área Foliar (LAI) no aporta valor predictivo, ya que la canopia del olivo es perenne y no varía drásticamente entre años salvo por poda, y la vegetación entre hileras distorsiona la señal. Lo que sí aporta es el seguimiento espectral focalizado en fases críticas (NDRE/NDVI) para detectar caída prematura de masa foliar bajo alta carga frutal.
2. **Humedad de suelo sin calibración con la planta.** Las sondas tradicionales no reflejan el estrés real del árbol: en años ON la demanda del fruto es tan alta que el olivo sufre estrés severo aunque el suelo conserve agua disponible. La variable pertinente es el potencial hídrico del tallo al mediodía, con umbrales por fase fenológica (Moriana et al., 2012).

\begin{figure}[H]
\caption{Relación entre el potencial hídrico del tallo al mediodía y el déficit de presión de vapor en olivo}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/umbrales_swp.png}
\caption*{\textit{Nota.} La línea base permite interpretar el estrés hídrico real de la planta descontando el efecto de la demanda atmosférica, criterio que sustituye al monitoreo de humedad de suelo, insuficiente en años de alta carga frutal. Recuperado de Shackel et al., 2021.}
\end{figure}

3. **Fertilización nitrogenada por calendario.** Aplicar nitrógeno en fechas fijas no frena la vecería, puede deteriorar la calidad del aceite y enmascara la deficiencia real de potasio, que es el nutriente drenado críticamente por la carga frutal. La decisión debe basarse en análisis foliar de julio contrastado con niveles de suficiencia (University of California Agriculture and Natural Resources [UC ANR], 2010).

\begin{table}[H]
\caption{Niveles críticos de nutrientes en hoja de olivo según análisis foliar de muestras tomadas en julio}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/umbrales_foliares.png}
\caption*{\textit{Nota.} El nitrógeno es deficiente por debajo de 1,40 \% y suficiente entre 1,50 \% y 2,00 \%; el potasio es deficiente por debajo de 0,40 \% y suficiente por encima de 0,80 \%. Estos umbrales reemplazan la fertilización por calendario como criterio de decisión. Recuperado de University of California Agriculture and Natural Resources, 2010.}
\end{table}

4. **Ausencia de gestión integrada de la decisión de carga.** El aclareo de frutos, la poda de despunte inmediatamente posterior a la cosecha y la cosecha temprana rara vez se notifican dentro de su ventana útil. Sin un seguimiento que cruce la relación fuente-sumidero con datos climáticos y nutricionales, el productor actúa cuando el bloqueo hormonal sobre las yemas ya se ejecutó y la campaña siguiente ya está perdida.

\begin{table}[H]
\caption{Fechas de poda de invierno, poda de primavera y cosecha por estación 2020-2024}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/fecha_poda_cosecha.png}
\caption*{\textit{Nota.} Las intervenciones de manejo de carga operan en ventanas fenológicas estrechas; una ejecución fuera de ventana no modifica el resultado de la campaña siguiente. Recuperado de Calvo et al., 2024.}
\end{table}

\begin{figure}[H]
\caption{Inferencia del modelo YOLOv8m para la detección y conteo de frutos en olivo}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/uso_deep_learning.png}
\caption*{\textit{Nota.} La detección automatizada de frutos evidencia el potencial de escalar el muestreo de carga frutal, variable de decisión central en la gestión de la alternancia productiva. Recuperado de Osco-Mamani et al., 2025.}
\end{figure}

---

**Problemática (5W + 2H)**
**What (Qué)**

*¿Cuál es el problema?*

El olivar del sur del Perú opera atrapado en un ciclo de alternancia productiva (vecería) que nadie gestiona de forma deliberada. La carga frutal excesiva de un año ON agota reservas de carbohidratos, drena nitrógeno y potasio foliar e inhibe hormonalmente la diferenciación floral del año siguiente, produciendo un año OFF de cosecha marginal (Lavee, 2007). El productor no dispone de un criterio cuantitativo sobre **cuánta carga debe llevar su parcela**, ni de una señal oportuna sobre **cuándo intervenir** (aclareo, poda de despunte, cosecha temprana, riego y nutrición correctivos), por lo que la alternancia se perpetúa campaña tras campaña y se agrava con cada anomalía térmica.

**Who (Quién)**

*¿Quiénes son los usuarios?*

- **Productores olivareros de la macro-región sur.** Gestores de parcelas —desde agricultura familiar asociada en cooperativas hasta fundos agroindustriales tecnificados— que sufren directamente la oscilación de ingresos. Su dolor es la imposibilidad de predecir y de estabilizar la cosecha: en años OFF pierden hasta el 90 % del volumen (Andina, 2024) y en años ON obtienen fruta pequeña, de menor calibre y menor valor comercial que además condena la campaña siguiente.
- **Gestores técnicos de organizaciones olivareras** (cooperativas, asociaciones de productores y acopiadores/agroindustrias procesadoras). Responsables de planificar acopio, capacidad de proceso, calibres y compromisos comerciales sobre un volumen agregado que hoy no pueden proyectar. Requieren visibilidad anticipada del estado ON/OFF de su cartera de proveedores y capacidad de impulsar un protocolo homogéneo de manejo de carga entre sus socios.

**When (Cuándo)**

*¿Cuándo sucede el problema?*

El problema se decide en ventanas fenológicas estrechas y se manifiesta un año después. La ventana de **aclareo** se abre en las semanas posteriores a la plena floración de un año ON y se cierra antes del crecimiento vegetativo principal; la de **acumulación de frío** transcurre en el invierno (aproximadamente mayo a septiembre en el hemisferio sur) y determina la ruptura de latencia de yemas; la de **poda de despunte** se abre inmediatamente después de la cosecha. El daño, en cambio, se hace visible recién en la floración de la campaña siguiente, cuando ya no existe acción correctiva posible. Esta **asincronía entre la decisión y su consecuencia** es la razón de fondo por la que el manejo empírico fracasa.

**Where (Dónde)**

*¿Dónde ocurre?*

En la macro-región sur del Perú, con epicentro en Tacna —que concentra cerca del 81 % del área olivarera nacional (Agraria.pe, 2021)— y particularmente en el distrito de La Yarada Los Palos, donde la agricultura se desarrolla en condiciones desérticas costeras bajo riego presurizado y con presión creciente sobre los acuíferos subterráneos (Contraloría, 2023), lo que amplifica el estrés hídrico durante los años de alta carga.

**Why (Por qué)**

*¿Por qué ocurre?*

Porque la decisión más determinante del ciclo —**cuánta fruta dejar en el árbol**— se toma sin medición y sin referencia. No existe un registro sistemático del rendimiento histórico por parcela que permita cuantificar la severidad de la alternancia, ni un protocolo de muestreo que estime la carga frutal real, ni umbrales de riego y nutrición vinculados al estado fisiológico de la planta. En ausencia de estos elementos, el productor aplica calendarios fijos heredados y reacciona al daño visible, mientras que la organización acopiadora descubre el año OFF cuando la fruta no llega a planta.

**How (Cómo)**

*¿Cómo surge el problema?*

Surge por un encadenamiento fisiológico: (1) la carga frutal excesiva convierte al fruto en sumidero dominante; (2) las semillas en desarrollo emiten señales hormonales que bloquean la diferenciación floral de las yemas; (3) el almidón y los azúcares de reserva se consumen en la acumulación de aceite, dejando a las yemas sin energía para diferenciarse en invierno; (4) el nitrógeno y el potasio foliares caen por debajo de los niveles de suficiencia; (5) la demanda hídrica se incrementa cerca de un 30 % en el año ON, elevando la tensión en el xilema y frenando el crecimiento de los brotes de reemplazo que sostendrían la cosecha siguiente. El resultado es un año OFF estructural. Si además el invierno no acumula el frío necesario, la floración se vuelve escasa y desuniforme, y la amplitud del ciclo se profundiza (Calvo et al., 2024).

*¿En qué condición?*

Bajo eventos ENOS o El Niño costero, cuando el aumento de temperaturas invernales reduce entre 15 % y 23 % la acumulación de frío (Calvo et al., 2024), y en contextos de restricción hídrica donde el productor no puede compensar la mayor demanda del año ON.

**How much (Cuánto)**

*¿Cuál es la magnitud del problema?*

La oscilación documentada en Tacna es de una magnitud difícil de sostener financieramente: mermas de hasta 90 % con proyecciones de cosecha de apenas 10 % a 20 % del año previo en campañas adversas (Andina, 2024), frente a un incremento reportado de 18 615 % en septiembre de 2025 respecto al mismo mes del año anterior (MIDAGRI, 2025). Bajo escenarios ENOS fuertes se advierten reducciones de rendimiento de aceite superiores al 85 % (Calvo et al., 2024). A esto se suma la pérdida de valor comercial dentro del propio año ON, donde el exceso de carga produce fruta de menor calibre, maduración más tardía y menor precio por kilo.
 
---

**Enunciado del problema (Problem Statement)**

Los productores olivareros de la macro-región sur y las organizaciones que acopian y transforman su producción enfrentan un problema de negocio: la cosecha alterna entre años de sobreproducción de baja calidad y años de cosecha marginal, y ni el productor ni la organización disponen de un criterio cuantitativo para gestionar la carga frutal ni de una señal oportuna dentro de las ventanas fenológicas donde la intervención todavía es posible. Aunque existe evidencia agronómica consolidada sobre cómo mitigar la alternancia —regulación de carga, poda de renovación, cosecha temprana, riego por potencial hídrico y nutrición por análisis foliar—, esa evidencia no llega traducida en decisiones fechadas y dimensionadas para una parcela concreta. Como consecuencia, los ingresos del productor oscilan de forma insostenible y la organización no puede planificar capacidad ni comprometer volúmenes de venta.
 
---

**Objetivos del proyecto**

Objetivos generales

1. **Quebrar el ciclo de alternancia a nivel de parcela.** Reducir de forma medible el índice de alternancia (BBI) de las parcelas gestionadas mediante la regulación deliberada de la carga frutal y de las prácticas asociadas.
2. **Convertir la evidencia agronómica en decisiones fechadas.** Entregar al productor, dentro de la ventana fisiológica útil, la acción concreta y dimensionada que corresponde al estado real de su parcela.
3. **Dar previsibilidad de volumen a la cadena de valor.** Proveer a las organizaciones olivareras una proyección agregada del acopio esperado que permita planificar capacidad, calibres y compromisos comerciales.

Objetivos específicos

- Lograr que al menos el 60 % de las parcelas registradas cuente con un historial de al menos tres campañas y un índice de alternancia calculado durante los primeros 60 días de uso.
- Conseguir que al menos el 50 % de las parcelas clasificadas en año ON ejecute y certifique una acción de regulación de carga dentro de la ventana recomendada por el sistema.
- Reducir el índice de alternancia promedio de la cartera de parcelas gestionadas en al menos 0,10 puntos tras dos campañas consecutivas de uso.
- Alcanzar un error de proyección de volumen agregado de acopio inferior al 25 % frente al volumen real recibido por la organización al cierre de campaña.
- Lograr que al menos el 40 % de las decisiones de riego y fertilización registradas se sustenten en una medición (potencial hídrico o análisis foliar) y no en calendario.
- Firmar al menos 2 convenios con cooperativas, asociaciones o agroindustrias de la macro-región sur en un plazo de 6 meses tras el lanzamiento.

---

**Restricciones**

- **Alcance tecnológico.** La solución se compone de una aplicación móvil nativa, una aplicación móvil multiplataforma, un servicio web RESTful de desarrollo interno y un sitio web estático para el Landing Page. La aplicación nativa se desarrolla en **Kotlin sobre Android**; la estrategia cross-platform se implementa con **Flutter y Dart** o, alternativamente, con **Kotlin Multiplatform (KMP)**. El servicio web se construye bajo estilo arquitectónico RESTful con **Spring Boot y Java**, documentado mediante OpenAPI Specification vía Swagger. El Landing Page se desarrolla en HTML5, CSS3 y JavaScript.
- **Capacidades obligatorias de la aplicación móvil.** La solución debe incorporar almacenamiento local de información en el dispositivo, acceso a al menos un recurso interno del dispositivo, integración con el servicio RESTful de desarrollo interno y consumo de al menos un servicio externo de terceros. **Aplicación al dominio:** el almacenamiento local sostiene el trabajo sin conectividad durante el muestreo de carga frutal en parcela; el recurso interno del dispositivo se emplea en la georreferenciación de la parcela y en la captura de evidencia del muestreo; el servicio externo de terceros provee los datos meteorológicos horarios requeridos para el cálculo de acumulación de frío.
- **Telemetría IoT con datos simulados.** El proyecto no contempla la implementación de hardware ni de sensores físicos de campo. La capa de telemetría se resuelve mediante un **simulador de datos de estación agrometeorológica y de sensores de parcela**, que alimenta al servicio RESTful con lecturas sintéticas coherentes con los rangos documentados para la zona de estudio. Esta decisión no compromete el núcleo funcional: las variables fisiológicas determinantes de la vecería —potencial hídrico del tallo, concentración foliar de nitrógeno y potasio, y conteo de frutos— se incorporan mediante **registro manual guiado** de mediciones que el productor o su técnico ya realizan con instrumental convencional (cámara de presión, análisis de laboratorio, muestreo de ramas marcadas).
- **Feature de aprendizaje autónomo.** El alcance incluye la investigación, evaluación e integración de una tecnología, biblioteca o servicio no abordado en clase, con justificación de su selección y documentación del proceso de aprendizaje y aplicación.
- **Demostración en dispositivo físico.** La presentación final se realiza sobre un dispositivo físico con la aplicación previamente instalada y operativa, distribuida mediante Firebase App Distribution u otro servicio equivalente.
- **Fidelidad arquitectónica.** El diseño de todos los productos de la solución sigue Domain-Driven Design (DDD) y se documenta bajo Modelo C4 (Context, Container, Component, Code).
- **Internacionalización y accesibilidad.** Los productos incorporan internacionalización bajo i18n y accesibilidad bajo a11y, considerando como base los idiomas English (en_US) y Latin American Spanish (es_419).
- **Estandarización de idioma.** El idioma por defecto de mensajes, interfaz de usuario e interfaz de documentación en todos los productos de la solución es el inglés.
- **Disponibilidad en la nube.** El Landing Page y los Web Services se despliegan en plataformas Server-Side o Cloud con acceso público mediante URL.

  \clearpage

### Lean UX Process

#### Lean UX Problem Statements

- **Problem Statement: Gestión de la carga frutal para quebrar la alternancia productiva**

El estado actual de la gestión del cultivo del olivo en la macro-región sur del Perú se ha enfocado principalmente en productores olivareros y en las organizaciones que acopian y transforman su producción, quienes sufren la oscilación extrema de la cosecha entre años de sobreproducción de baja calidad y años de cosecha marginal, la imposibilidad de anticipar el volumen de campaña y la falta de un criterio para decidir cuánta carga debe sostener cada parcela; y se ha apoyado en flujos de trabajo basados en calendarios fijos heredados, observación visual directa y reacción posterior al daño ya visible.

Lo que las prácticas actuales no resuelven es decidir cuánta carga debe sostener cada parcela y ejecutar esa decisión dentro de la ventana fenológica en la que todavía modifica el resultado de la campaña siguiente.

Nuestra propuesta abordará esta brecha convirtiendo el historial de cosecha, unas pocas mediciones de campo y los datos climáticos de la zona en un plan de carga objetivo y un calendario de intervenciones fechadas por parcela.

Nuestro foco inicial serán los productores olivareros de Tacna y los gestores técnicos de las cooperativas, asociaciones y agroindustrias que acopian su producción.

Sabremos que estamos teniendo éxito cuando observemos que el índice de alternancia promedio de las parcelas gestionadas se reduce en al menos 0,10 puntos tras dos campañas, que al menos el 50 % de las parcelas en año ON certifica una acción de regulación de carga dentro de la ventana recomendada, que al menos el 40 % de las decisiones de riego y nutrición se sustenta en una medición y no en calendario, y que las organizaciones proyectan su volumen de acopio con un error inferior al 25 % frente al volumen realmente recibido.

#### Lean UX Assumptions

A continuación se enumeran las creencias resultantes de la sesión de discusión del equipo, organizadas según los cinco tipos de assumptions establecidos en Lean UX.

**Business Assumptions**

1. Creemos que el olivar de la macro-región sur opera bajo un ciclo de alternancia productiva que nadie gestiona de forma deliberada, y que esa omisión —y no únicamente la variabilidad climática— es la causa de la oscilación extrema de los ingresos del productor (Calvo et al., 2024; MIDAGRI, 2025).
2. Creemos que la carga frutal es la única variable de este sistema que el productor controla efectivamente, por lo que un producto que la gestione tiene una ventaja competitiva sostenible frente a las plataformas que se limitan a monitorear el clima.
3. Creemos que existe un mercado suficiente en la macro-región sur, dado que Tacna concentra cerca del 81 % de la superficie olivarera nacional y agrupa a más de tres mil olivareros bajo una denominación de origen reconocida (Agraria.pe, 2021; Casanova, 2022).
4. Creemos que la monetización puede sostenerse con una suscripción del productor por parcela o hectárea y un plan organizacional por cartera de socios, siempre que el servicio demuestre utilidad recurrente dentro de la campaña.
5. Creemos que la captación inicial dependerá de convenios con cooperativas, asociaciones y agroindustrias, porque estas organizaciones concentran la asistencia técnica y la relación de confianza con el productor.
6. Creemos que el equipo cuenta con la capacidad técnica para construir la solución móvil, pero no con capacidad agronómica propia, por lo que la validez de los umbrales dependerá de fuentes académicas y de la validación con especialistas del sector.
7. Creemos que la mayor amenaza del negocio es el horizonte de validación, ya que el resultado de fondo se observa en la campaña siguiente y el producto debe entregar valor percibible antes de ese plazo.

**Business Outcome Assumptions**

1. Creemos que firmaremos al menos 2 convenios con cooperativas, asociaciones o agroindustrias de la macro-región sur dentro de los 6 meses posteriores al lanzamiento.
2. Creemos que al menos el 60 % de los nuevos suscriptores registrará su parcela y cargará el historial de al menos tres campañas durante los primeros 30 días de uso.
3. Creemos que al menos el 50 % de las parcelas clasificadas en año ON certificará una acción de regulación de carga dentro de la ventana recomendada por el sistema.
4. Creemos que al menos el 60 % de las suscripciones activas renovará su segundo ciclo de cobro al cierre del sexto mes.
5. Creemos que el índice de alternancia promedio de la cartera gestionada se reducirá en al menos 0,10 puntos tras dos campañas consecutivas de uso.
6. Creemos que el error de proyección del volumen agregado de acopio será inferior al 25 % frente al volumen real recibido por la organización al cierre de campaña.
7. Creemos que al menos el 45 % de los productores activos ajustará su plan de campaña antes del inicio de la floración.
8. Creemos que al menos el 55 % de las parcelas en año ON contará con una estimación de carga frutal registrada en el sistema.
9. Creemos que al menos el 40 % de las decisiones de riego y nutrición registradas se sustentará en una medición de potencial hídrico o de análisis foliar, y no en calendario.

**User Assumptions**

1. Creemos que nuestro usuario principal es el productor olivarero de la macro-región sur, que administra entre 3 y 30 hectáreas y decide poda, riego, nutrición y fecha de cosecha sobre la base de la costumbre heredada y con poco tiempo disponible.
2. Creemos que este productor reconoce el patrón de "un año carga y otro no", pero lo asume como una fatalidad del cultivo y no como una variable sobre la que pueda intervenir.
3. Creemos que su nivel de digitalización es heterogéneo y que su punto de contacto habitual es el teléfono móvil, frecuentemente sin conectividad estable durante el trabajo en parcela.
4. Creemos que nuestro segundo usuario es el gestor técnico de organizaciones olivareras —cooperativas, asociaciones y agroindustrias procesadoras—, responsable de coordinar el acopio y la asistencia técnica de decenas de socios o proveedores.
5. Creemos que este gestor descubre la magnitud real de la campaña cuando la fruta llega, o no llega, a planta, y que esa falta de anticipación le impide comprometer volúmenes con seguridad.
6. Creemos que el gestor tiene incentivo económico directo en que sus socios estabilicen la producción, por lo que actuará como promotor de la adopción dentro de su cartera.

**User Outcome and Benefit Assumptions**

1. Creemos que el productor busca reducir la amplitud entre su mejor y su peor campaña, y que valorará dejar de financiar los años OFF con la caja del año ON.
2. Creemos que el productor obtendrá un beneficio percibible dentro del mismo año ON, mediante mayor calibre, maduración más oportuna y mejor precio por kilo al regular la carga.
3. Creemos que el productor valorará sustituir la costumbre por un umbral medible, ganando seguridad al invertir en una intervención dentro de la ventana correcta.
4. Creemos que el gestor busca planificar capacidad de proceso, calibres, mano de obra estacional y contratos sobre una proyección y no sobre una expectativa.
5. Creemos que ambos usuarios valorarán observar la evolución del índice de alternancia como prueba objetiva del efecto de las intervenciones ejecutadas.
6. Creemos que ambos usuarios requieren que el esfuerzo de registro sea mínimo y guiado, dado que las mediciones necesarias son pocas pero deben realizarse en fechas precisas.

**Feature Assumptions**

1. Creemos que una **línea base de alternancia por parcela**, construida a partir del historial de rendimiento, permitirá al productor dimensionar por primera vez la severidad real de su problema (Hoblyn et al., 1936).
2. Creemos que un **seguimiento de acumulación de frío con simulación de escenario ENOS** permitirá anticipar la calidad y uniformidad de la floración de la campaña (Calvo et al., 2024).
3. Creemos que un **muestreo guiado de carga frutal contrastado contra una carga objetivo** convertirá la variable de decisión central en un número accionable y comparable.
4. Creemos que un **plan de manejo de carga con ventanas fechadas** entregará el aclareo, la poda de despunte y la fecha límite de cosecha dimensionados y ubicados en el calendario (Fernández et al., 2015; UC IPM, s.f.).
5. Creemos que un **registro de potencial hídrico del tallo y de análisis foliar contrastado contra umbrales de suficiencia** reemplazará el calendario fijo como criterio de riego y nutrición (Shackel et al., 2021; UC ANR, 2010).
6. Creemos que una **bitácora de trazabilidad que realimente el índice de alternancia** permitirá sostener el protocolo campaña tras campaña al hacer visible su efecto.
7. Creemos que un **portafolio de parcelas con proyección agregada de acopio** trasladará el valor del dato de parcela a la planificación de la organización.


#### Lean UX Hypothesis Statements

&nbsp;

- **H1. Creemos que lograremos** que el 60 % de las parcelas registradas cuente con línea base calculada en 60 días. **Si** los productores olivareros **logran** dimensionar por primera vez la severidad real de su alternancia productiva **con** el registro del historial de rendimiento y el cálculo automático del índice de alternancia.
- **H2. Creemos que lograremos** que el 45 % de los productores ajuste su plan de campaña antes de la floración. **Si** los productores olivareros **logran** anticipar una floración escasa o desuniforme **con** el seguimiento de acumulación de frío y la simulación de escenario ENOS.
- **H3. Creemos que lograremos** que el 55 % de las parcelas en año ON cuente con una estimación de carga registrada. **Si** los productores olivareros **logran** saber cuánto se desvían de la carga que su parcela puede sostener **con** el muestreo guiado de carga frutal contrastado contra la carga objetivo.
- **H4. Creemos que lograremos** que el 50 % de las parcelas en año ON ejecute una regulación de carga dentro de ventana. **Si** los productores olivareros **logran** saber cuánta fruta retirar y en qué fecha exacta **con** el plan de manejo de carga con ventanas fechadas.
- **H5. Creemos que lograremos** que el 40 % de las decisiones de riego y nutrición se sustente en una medición. **Si** los productores olivareros **logran** interpretar sus propias lecturas de campo y laboratorio **con** el registro de potencial hídrico del tallo y de análisis foliar contrastado contra umbrales de suficiencia.
- **H6. Creemos que lograremos** reducir el índice de alternancia promedio de la cartera en 0,10 puntos tras dos campañas. **Si** los productores olivareros **logran** sostener el protocolo de regulación campaña tras campaña **con** la bitácora de trazabilidad que realimenta el índice de alternancia.
- **H7. Creemos que lograremos** la firma de al menos 2 convenios institucionales. **Si** los gestores técnicos de organizaciones olivareras **logran** anticipar el volumen de acopio de su campaña **con** el portafolio de parcelas y la proyección agregada de cosecha.

#### Lean UX Canvas
&nbsp;

[Canvas representation]

\clearpage