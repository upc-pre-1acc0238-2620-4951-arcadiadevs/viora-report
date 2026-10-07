# Capítulo III: Product UX/UI Design

## Product Design

Esta sección documenta el diseño de producto de Viora como parte integral de la arquitectura del sistema, cubriendo tanto las bases visuales compartidas como la organización del contenido y la propuesta de interacción de las dos superficies del ecosistema: el landing informativo y la aplicación móvil, que ofrece experiencias diferenciadas para el productor olivarero y el gestor técnico según el rol autenticado. El desarrollo se organiza en cinco bloques: Style Guidelines, Information Architecture, Landing Page UI Design, Mobile Applications UX/UI Design y Mobile Applications Prototyping.

### Style Guidelines

En esta sección se establece el repositorio central de recursos visuales y de comunicación que el equipo utiliza de forma común. Viora define una única guía de estilo, compartida por el landing y la aplicación móvil, de modo que ambas superficies mantengan la misma presentación sin guías web y móvil paralelas.

#### General Style Guidelines

En esta sección se establecen las bases visuales comunes a todas las superficies de Viora: el landing informativo y las aplicaciones móviles en Kotlin nativo y en Flutter. El resultado es un repositorio central en Figma que reúne los assets de marca, las fuentes, las escalas de color y los tokens de espaciado y forma. Cada valor existe como variable del archivo (por ejemplo, las colecciones "Viora Spacing" y "Viora Shape"), de modo que los diseños referencian el token y nunca un valor escrito a mano. Esta regla es la que mantiene la consistencia cuando cinco integrantes del equipo producen mockups en paralelo.

El sistema toma como base Material Design 3 (Google, s.f.), el design system de referencia de Android, y lo adapta a la identidad de Viora. Se eligió como base única para ambas plataformas porque Jetpack Compose y Flutter lo implementan de forma nativa: la misma especificación produce la misma interfaz en las dos aplicaciones, y el equipo no mantiene un segundo sistema paralelo para iOS. La identidad de Viora se expresa mediante su logotipo, paleta y tipografía de marca. Cada familia de color se define como una escala tonal completa para cubrir las necesidades de las pantallas y mantener la consistencia visual sin introducir colores aislados.

Como se observa en la \autoref{fig:gsg-index}, la guía se organiza en ocho apartados: Branding, Colors, Typography, Spacing & Layout, Iconography, Shape & Elevation, Buttons & Items y Tone of Voice.

\begin{figure}[H]
\caption{Índice de las General Style Guidelines de Viora.} \label{fig:gsg-index}
\centering
\includegraphics[width=0.95\textwidth,height=0.45\textheight,keepaspectratio]{report/assets/general-style-guidelines/styles-guidelines-ndex.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Branding.** El logotipo de Viora integra el isotipo, una hoja contenida en un círculo, dentro de la letra "o" del nombre. Así, la marca remite al olivo sin recurrir a una ilustración literal. Se definen cinco variaciones con usos precisos: positivo sobre fondo claro, negativo sobre verde Forest, isotipo aislado, versión sobre el acento Harvest y el ícono de aplicación. La paleta de marca se aplica con una proporción de uso fija: Cream 55 %, Forest 25 %, Shadow (green/900) 10 %, Harvest 7 % y Tierra 3 %. La marca vive sobre Cream y Forest, mientras que Harvest y Tierra funcionan como acentos puntuales y nunca como fondos extensos. Esta proporción aplica el principio de énfasis: si el amarillo y el terracota aparecen poco, cada vez que aparecen señalan algo importante. La lámina también verifica el contraste de cada combinación de texto y fondo, y descarta las que no alcanzan el mínimo de legibilidad (texto Forest sobre Tierra, 2.2:1, y texto Tierra sobre Harvest, 2.4:1). Como se observa en la \autoref{fig:gsg-branding}, la marca se complementa con cuatro valores (Natural, Cercana, Precisa y Confiable) que anticipan el tono de comunicación descrito más adelante.

\begin{figure}[H]
\caption{Branding de Viora.} \label{fig:gsg-branding}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/01-branding.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Colors.** El color principal es Forest (green/800, #2E4A3A), acompañado por un tono más oscuro, Shadow (green/900, #1F2C26), el acento Harvest (harvest/300, #E8B923) y el secundario Tierra (terracotta/500, #C15A2E). A partir de cada color de marca se generó una escala tonal de once pasos en el espacio de color OKLCH, que mantiene una progresión de luminosidad perceptualmente uniforme entre pasos. A estas escalas se suma una escala neutra cálida (Warm Grey), teñida con el crema de la marca, para superficies, bordes y textos; el negro puro no se usa en ningún punto de la interfaz. Los colores de estado (Error, Warning, Info y Success) se definen con un tono sólido para íconos y énfasis, y tonos suaves para contenedores; Warning reutiliza la escala Harvest para no introducir un amarillo adicional. Finalmente, como se observa en la \autoref{fig:gsg-colors}, todas las escalas se asignan a los roles semánticos de Material 3 (primary, secondary, tertiary, error y sus contenedores, además de las superficies y contornos). Los diseñadores eligen roles y no pasos de escala, lo que garantiza que un mismo significado se represente siempre con el mismo color en todas las pantallas.

\begin{figure}[H]
\caption{Sistema de color de Viora.} \label{fig:gsg-colors}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/02-colors.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Typography.** Se emplean dos familias con funciones separadas. Axiforma es la fuente de marca y se reserva para los momentos expresivos, en los roles Display y Headline de Material 3. Roboto es la fuente de interfaz y cubre todo texto funcional, en los roles Title, Body y Label, en coherencia con los valores por defecto de Android y Material 3. Los tamaños Display se redujeron respecto a los de Material 3 (de 57/45/36 a 48/40/32) porque Axiforma es más ancha que Roboto y las pantallas móviles son compactas. Como se observa en la \autoref{fig:gsg-typography}, el tamaño por defecto del contenido es Body Large (16 sp), elegido por la lectura en campo bajo luz solar directa, y el tamaño mínimo permitido en la aplicación es 11 sp. La jerarquía tipográfica se construye con saltos claros de tamaño y peso, de modo que el usuario distinga título, dato y metadato de un vistazo.

\begin{figure}[H]
\caption{Sistema tipográfico de Viora.} \label{fig:gsg-typography}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/03-typography.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Spacing & Layout.** Todo margen, padding y separación es un múltiplo de 4 dp, dentro de una escala cerrada de diez valores (de 4 a 64 dp): si un valor no está en la escala, no se usa. La regla de aplicación traduce el principio de proximidad: los elementos relacionados se separan entre 8 y 12 dp, los grupos distintos entre 16 y 24 dp, y las secciones entre 24 y 32 dp, de modo que la distancia comunica qué elementos forman un conjunto. La cuadrícula sigue las clases de tamaño de ventana de Material 3. En Compact (teléfonos, menos de 600 dp) se usan 4 columnas fluidas con margen y separación de 16 dp. En Medium (600 a 839 dp) se usan 8 columnas con 24 dp, y en Expanded (840 dp o más) se usan 12 columnas y la pantalla se divide en dos paneles, lista y detalle. El diseño se construye a 412 dp y se valida a 360 dp. Como se observa en la \autoref{fig:gsg-spacing}, ningún elemento interactivo baja de un área táctil de 48 × 48 dp, aunque su parte visible sea menor. Esta decisión responde al uso en campo, con guantes o bajo el sol.

\begin{figure}[H]
\caption{Espaciado y layout de Viora.} \label{fig:gsg-spacing}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/04-spacing-layout.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Iconography.** Los íconos de interfaz y de dominio se toman de Material Symbols Rounded (peso 400, sin relleno, 24 dp), el set de íconos de Material 3. Ambas implementaciones incorporan la misma fuente de símbolos: en Kotlin, como recursos vectoriales o fuente variable de Material Symbols, y en Flutter, mediante el paquete material_symbols_icons. Así, las dos aplicaciones muestran los mismos símbolos. Como se observa en la \autoref{fig:gsg-iconography}, los íconos de dominio se agrupan según los módulos funcionales de Viora: lotes y parcelas, vecería y BBI, frío y clima, carga frutal, plan de intervención, bitácora de mediciones, alertas priorizadas y portafolio organizacional. Cada concepto del dominio tiene un solo ícono asignado, lo que refuerza su reconocimiento por repetición.

\begin{figure}[H]
\caption{Iconografía de Viora.} \label{fig:gsg-iconography}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/05-iconography.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Shape & Elevation.** Los radios de esquina siguen la escala de diez pasos de Material 3, de 0 dp a completamente redondeado. Los botones y la búsqueda usan la forma completa (píldora) para un tacto suave, y los contenedores usan radios generosos de 12 a 28 dp; como regla, la esquina de un contenedor siempre es igual o mayor que la de sus hijos. De las formas expresivas de Material 3 se adoptan solo seis, y únicamente en momentos de marca (avatar, máscara de foto del lote, indicador de carga o insignia de cosecha), nunca en controles ni en contenedores de datos. La elevación usa los seis niveles de Material 3. Sobre el fondo crema, los elementos elevados son blancos y proyectan sombras suaves teñidas con el verde más oscuro de la marca en lugar de negro. Como se observa en la \autoref{fig:gsg-shape}, la jerarquía de una pantalla se construye con radios crecientes (chip 8, card 12 y sheet 28 dp) y sombras suaves, no con bordes duros.

\begin{figure}[H]
\caption{Forma y elevación en Viora.} \label{fig:gsg-shape}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/06-shape-elevation.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Buttons & Items.** El contenido de las pantallas se construye con componentes de Material 3 en todas las plataformas: Kotlin con Jetpack Compose y Flutter con ThemeData de Material 3 producen interfaces visualmente equivalentes en Android. En iOS, la aplicación en Flutter mantiene el contenido en Material 3 y se propone adaptar solo la capa de navegación y los controles flotantes al estilo Liquid Glass de la plataforma, sujeto a validación técnica durante el desarrollo, para respetar los comportamientos que el usuario de iPhone espera. Los botones tienen cinco estilos y dos tamaños, y la jerarquía de acciones es explícita: Filled para la acción principal, Tonal u Outlined para las secundarias y Text para descartar, con un máximo de un botón Filled por pantalla. El FAB es la única superficie amarilla grande de la aplicación y se reserva para la acción más frecuente de la pantalla, como registrar un conteo. Las cards tienen tres tipos con propósito fijo: Elevated para lotes, Filled para métricas y Outlined para alertas y contenido secundario. Como se observa en la \autoref{fig:gsg-buttons}, la navegación principal en Android es una barra inferior de cuatro destinos (en la experiencia del productor: Inicio, Lotes, Plan y Bitácora), que en iOS se convierte en una barra flotante con el mismo contenido.

\begin{figure}[H]
\caption{Botones y componentes de Viora.} \label{fig:gsg-buttons}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/07-buttons-items.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Tone of Voice.** Viora habla como un técnico de confianza: claro, directo y con datos del campo. El tono se calibra en las cuatro dimensiones de comunicación con un slider chart:

- **Formal – Casual:** inclinado hacia lo casual. El lenguaje es cercano pero técnico, sin perder rigor agrícola ni generar distancias burocráticas innecesarias.
- **Divertido – Serio:** inclinado hacia lo serio. El mensaje es confiable y preciso, y transmite un optimismo fundado en métricas, sin caer en sensacionalismos.
- **Irreverente – Respetuoso:** completamente respetuoso. Es empático con el esfuerzo del trabajo en campo, y sereno y orientado a la solución ante las alertas críticas.
- **Entusiasta – Sereno:** en equilibrio. Motiva ante el progreso de la producción, pero mantiene una compostura serena y analítica en la toma de decisiones.

Como se observa en la \autoref{fig:gsg-tone}, la guía de calibración resume estas decisiones: vocabulario conciso, empático con las jornadas de campo y sin jerga publicitaria superflua.

\begin{figure}[H]
\caption{Tono de voz de Viora.} \label{fig:gsg-tone}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/08-tone-of-voice.jpg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

### Information Architecture

En esta sección se presentan las decisiones que determinan cómo se organiza, nombra, busca y recorre el contenido del landing y de la aplicación móvil, con el fin de que visitantes y usuarios encuentren lo que necesitan sin esfuerzo. Se abordan los Organization Systems, Labeling Systems, SEO Tags and Meta Tags, Searching Systems y Navigation Systems.


#### Organization Systems

En esta sección se explica cómo se agrupa y ordena la información en las dos experiencias de Viora: el landing informativo y la aplicación móvil. Se aplicó la técnica de Content Organization Steps, que organiza el contenido en tres pasos sucesivos:

1. **Ontology:** listar las piezas críticas de información, es decir, lo que el producto quiere decir.
2. **Taxonomy:** agrupar esas piezas en partes claramente articuladas.
3. **Choreography:** decidir el orden y las rutas por las que el usuario recorre esos grupos.

Las piezas de ambas ontologías se derivan de las User Stories del Product Backlog, de modo que cada elemento de la arquitectura de información tiene un origen trazable en un requisito. En el landing se aplican los tres pasos; en la aplicación móvil, este apartado abarca la ontología y la taxonomía, y los recorridos de tarea se describen en Navigation Systems.

**Landing Page.** Como se observa en la \autoref{fig:os-landing-ontology}, la ontología del landing reúne 22 piezas de información derivadas de las historias US33 a US41: la propuesta de valor, el problema de la alternancia productiva, la solución, las funcionalidades y los casos de uso, el contexto de las cosechas de Tacna, los dos segmentos con sus beneficios, los planes de acceso, el equipo y los elementos de soporte (descarga de la aplicación, idioma y documentos legales). Se incluyen también los videos About the Product y About the Team, que deben incrustarse en el landing.

\begin{figure}[H]
\caption{Landing Page Ontology de Viora.} \label{fig:os-landing-ontology}
\centering
\includegraphics[width=0.95\textwidth,height=0.45\textheight,keepaspectratio]{report/assets/organization-systems/landingpage-ontology.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Como se observa en la \autoref{fig:os-landing-taxonomy}, esas piezas se agrupan en seis bloques:

1. Propuesta: Hero, propuesta de valor, problema y solución.
2. Producto: Features, Use Cases y video del producto.
3. Contexto y segmentos: cosechas de Tacna, productor y gestor técnico, cada uno con sus beneficios.
4. Acceso: Plan Productor, Plan Cooperativa y código de cooperativa para socios.
5. Institucional: equipo, ArcadiaDevs y video del equipo.
6. Conversión, legal y navegación global: CTA final, descarga de la aplicación, términos, privacidad, idioma y footer.

Cada color del tablero identifica un bloque. El idioma y el footer se ubican en una columna contigua por razones de espacio, pero forman parte del sexto bloque.

\begin{figure}[H]
\caption{Landing Page Taxonomy de Viora.} \label{fig:os-landing-taxonomy}
\centering
\includegraphics[width=0.95\textwidth,height=0.45\textheight,keepaspectratio]{report/assets/organization-systems/landingpage-taxonomy.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

La coreografía del visitante, que se observa en la \autoref{fig:os-landing-choreography}, ordena los bloques en un recorrido de scroll que va del problema a la solución, luego a los segmentos, al modelo de acceso y al equipo. El CTA de cosechas de Tacna sirve de puente hacia los segmentos, y el recorrido termina en el área de conversión y el footer. Sobre ese recorrido principal se definen rutas transversales:

- El menú desplegable y el selector de idioma están disponibles desde cualquier punto.
- La acción de descarga aparece de forma redundante e intencional en el Hero, en el modelo de acceso y en el área de conversión final.
- Cada caso de uso enlaza con la funcionalidad que lo resuelve, sin repetir su explicación.
- Cada segmento lleva directamente a su plan.

El landing no incluye formulario de contacto: todo el proceso de alta ocurre en la aplicación y se explica en el propio landing.

\begin{figure}[H]
\caption{Landing Page Visitor Choreography de Viora.} \label{fig:os-landing-choreography}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/organization-systems/landingpage-choreography.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Mobile Application.** Como se observa en la \autoref{fig:os-mobile-ontology}, la ontología de la aplicación móvil reúne 84 piezas de información derivadas de las historias US01 a US32, US42 y US43, agrupadas según las épicas a las que pertenecen. Cada pieza indica la historia de la que proviene; por ejemplo, la ventana y fecha límite de aclareo proviene de la US27. Las historias del landing (US33 a US41), las historias técnicas y los spikes no forman parte de esta ontología, porque no representan información que el usuario vea en la aplicación.

\begin{figure}[H]
\caption{Mobile App Ontology de Viora.} \label{fig:os-mobile-ontology}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/organization-systems/mobile-app-ontology.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

La taxonomía, que se observa en la \autoref{fig:os-mobile-taxonomy}, reorganiza esas mismas 84 piezas, sin agregar ni duplicar ninguna, en ocho secciones navegables. Cada sección indica el rol que la utiliza:

| Sección | Rol | Subgrupos |
|:-------------------------|:------------------------------------|:------------------------------------|
| Identity and Account | Productor y gestor | Access; Profile and Settings (incluye el idioma de la aplicación) |
| Subscription and Membership | Productor y gestor | Producer Access; Cooperative Admin |
| Plot Management | Productor | Plot Registration; Plot Inventory |
| Field Monitoring | Productor | Sensor Nodes; Microclimate and Forecast; Field Alerts |
| Alternate Bearing and Winter Chill | Productor | Harvest History and BBI; Winter Chill; ENSO Risk |
| Fruit Load and Thinning | Productor | Field Sampling (Offline); Load Assessment; Thinning |
| Campaign Close and Reports | Productor y gestor | Harvest Settlement; Technical Reports |
| Cooperative Intelligence | Gestor | Territorial Risk; Intake Forecast |

Respecto a la ontología, la taxonomía introduce dos reubicaciones. Las cuatro piezas de la US12 (matriz de riesgo territorial, sector actual por GPS, selección manual de sector y semáforo con contadores) pertenecen a la épica de parcelas, pero se ubican en Cooperative Intelligence, porque son vistas de trabajo del gestor y comparten contexto con el semáforo reactivo de la US31. Además, las piezas de internacionalización de la US42 (idioma de la aplicación y formatos regionales) se integran en Profile and Settings, dentro de Identity and Account, porque son preferencias de la cuenta.

\begin{figure}[H]
\caption{Mobile App Taxonomy de Viora.} \label{fig:os-mobile-taxonomy}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/organization-systems/mobile-app-taxonomy.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Sistemas de organización visual.** Según la naturaleza de cada grupo de información, se aplica uno de tres sistemas de organización visual, como se detalla a continuación:

| Sistema | Landing Page | Aplicación móvil | Sustento |
|:-------------------|:------------------------|:-----------------------------|:------------------------|
| Jerárquico (visual hierarchy) | Hero, Features, planes de acceso y Equipo: un mensaje principal con detalles subordinados. | Pantallas de inicio por rol, detalle de parcela y lectura de carga frutal: el dato principal domina y el contexto se subordina. El tipo de card distingue el rol de cada bloque: Elevated para lotes, Filled para métricas y Outlined para alertas. | El usuario necesita captar lo esencial de un vistazo antes de profundizar, especialmente en campo, donde la atención es breve. |
| Secuencial (step-by-step to accomplish) | Recorrido de scroll del problema a la solución, casos de uso (problema, módulo, resultado) y transición animada entre segmentos. | Registro y rol (US01, US43), suscripción con pago (US06), delimitación de parcela con GPS (US09), muestreo de cuajado árbol por árbol (US24), prescripción y registro de aclareo (US27, US28) y cierre de campaña (US29, US30). | Son tareas con un orden obligatorio, donde saltar un paso invalida el resultado; guiarlas paso a paso reduce errores y, en el muestreo, permite avanzar sin conexión. |
| Matricial | Comparación de planes de acceso según características. | Matriz de riesgo territorial y semáforo por sector (US12, US31), series temporales de sensores por variable y rango (US17), historial de campañas frente al BBI (US20) y proyección de acopio de aceituna verde y negra (US32). | La información tiene dos dimensiones que el usuario necesita cruzar para decidir, como sector frente a nivel de riesgo o campaña frente a producción. |

**Esquemas de categorización.** De forma complementaria, el contenido se clasifica con cuatro esquemas, según cómo busca el usuario cada tipo de información:

| Esquema | Dónde se aplica | Sustento |
|:-------------------------|:------------------------------------|:------------------------------------|
| Cronológico | Historial de campañas y cálculo del BBI (US20), series temporales de 24 horas, 7 días y 30 días (US17), pronóstico a 7 días (US19), acumulación de frío de la temporada invernal (US22), ventana de aclareo con fecha límite (US27) y bitácora de la parcela (US28). | El productor piensa en campañas y temporadas: la vecería solo se entiende al comparar años sucesivos, y las intervenciones dependen de ventanas fenológicas con fecha. |
| Por tópicos | Las ocho secciones de la taxonomía móvil (parcelas, monitoreo, alternancia y frío, carga y aclareo, cierre, entre otras) y los bloques del landing. | Cada sección responde a un tipo de decisión distinto, y el usuario llega buscando un tema, no una función aislada. |
| Por audiencia | Separación de la aplicación por rol (productor y gestor), la sección exclusiva del gestor (Cooperative Intelligence), el subgrupo Cooperative Admin de Subscription and Membership y, en el landing, los segmentos y planes diferenciados para productor y cooperativa. | Los dos segmentos tienen objetivos distintos: el productor gestiona su parcela y el gestor supervisa el territorio y la cartera de socios. |
| Alfabético | Padrón de socios de la cooperativa (US08), selección manual de sector (US12), selector de variedad de olivo (US09) y selector de idioma (US42). | Se reserva para listas de nombres propios donde el usuario ya conoce el elemento que busca; en el resto de la aplicación, el orden alfabético no aporta significado. |

#### Labeling Systems

Viora utiliza etiquetas breves y consistentes que permiten anticipar el contenido o la acción de cada elemento. Se mantiene el vocabulario de las Style Guidelines y se asocia cada etiqueta con los grupos definidos en Organization Systems. Los nombres de navegación pueden agrupar varios conceptos: no es necesario convertir cada entidad del dominio en una pestaña. Las dos implementaciones móviles, Kotlin y Flutter, comparten las etiquetas y diferencian el contenido según el rol autenticado.

**Landing Page.** Las etiquetas del menú remiten a secciones del mismo documento; los botones describen su destino. Se propone el siguiente vocabulario para concretar los bloques de Organization Systems:

| Etiqueta | Información o acción asociada |
|:-----------------------------|:---------------------------------------------------------------------|
| Inicio | Propuesta de valor, problema de la vecería y solución. |
| Producto | Funcionalidades, casos de uso y video About the Product. |
| Para quién | Contexto de Tacna y beneficios para productores y gestores técnicos. |
| Planes | Plan Productor y Plan Cooperativa, condiciones de acceso y tarifas en PEN. |
| Equipo | ArcadiaDevs, integrantes y video About the Team. |
| Descargar app | Acceso al medio de distribución móvil disponible. |
| Ver Plan Productor / Ver Plan Cooperativa | Desplazamiento desde cada segmento a su modalidad de acceso. |
| Canjear código | Remite a la aplicación para canjear el código de activación que la cooperativa entrega a sus socios; el socio no paga de forma individual. |
| Términos y condiciones / Privacidad | Documentos legales correspondientes. |
| Español / English | Selección del idioma del contenido. |

No se utiliza “Contacto” como destino de un formulario, porque la organización del landing establece que el alta ocurre en la aplicación y no contempla ese formulario.

**Aplicaciones móviles.** Se adopta “Lotes” como etiqueta de navegación, según Style Guidelines. En esta interfaz, un lote corresponde a la parcela registrada; no representa un fundo completo ni una agrupación adicional de parcelas. En la documentación técnica se conserva el término parcela. Esta equivalencia evita introducir una jerarquía inexistente.

| Etiqueta | Asociación y criterio de uso |
|:-----------------------------|:---------------------------------------------------------------------|
| Inicio | Resumen y accesos a las tareas del rol. |
| Lotes | Inventario de parcelas del productor; cada elemento abre su detalle. |
| Plan | Evaluación de carga y prescripción de aclareo por lote y campaña. Se distingue de “Suscripción”. |
| Bitácora | Registros de muestreo, aclareo y cosecha asociados a un lote y una campaña. |
| Muestreo de cuajado | Ronda de observaciones de árboles, brotes y frutos. “Registrar muestreo” inicia la captura. |
| Carga frutal | Evaluación calculada a partir de los insumos agronómicos; no equivale al pesaje real de cosecha. |
| Prescripción | Porcentaje de remoción y ventana de aclareo calculados por el sistema. |
| Registrar aclareo | Fecha y porcentaje realmente ejecutados por el productor. |
| Ventana de aclareo | Estado y fecha límite informados por el sistema. Una fecha vencida se acompaña de la advertencia correspondiente. |
| Cosecha / Registrar cosecha | Kilogramos de la campaña, diferenciados en aceituna verde y negra cuando corresponda. |
| Cerrar campaña | Confirmación del cierre productivo; se diferencia del registro retrospectivo de cosechas. |
| Alternancia / Índice BBI | El primer término identifica el fenómeno; el segundo, su indicador numérico. La ayuda explica que alternancia también se conoce como vecería. |
| Frío acumulado | Acumulación de frío de la temporada evaluada, con su unidad y período. |
| Clima | Series agroclimáticas y pronóstico, mostrando fuente y fecha de actualización. |
| Nodos virtuales | Dispositivos lógicos vinculados al lote; sus lecturas sintéticas se identifican como “Datos simulados”. |
| Riesgo territorial | Priorización de parcelas de la cooperativa por su situación agronómica y climática. |
| Acopio | Proyección agregada de aceituna verde y negra para la campaña, con cobertura de muestreo. |
| Socios | Productores vinculados a la cooperativa y datos de membresía autorizados. |
| Expediente técnico | Documento PDF de trazabilidad agronómica; “Descargar PDF” expresa la acción. |
| Suscripción | Modalidad de acceso, estado y vigencia. |
| Código de cooperativa | Código de activación para acceder mediante una membresía cooperativa. |
| Cuenta / Idioma | Perfil, preferencias y gestión del acceso. |
| Lote archivado | Parcela retirada del inventario activo que conserva su historial. |

Los estados se presentan con texto además de color. Para el semáforo se proponen “Óptimo”, “Moderado” y “Crítico”, acompañados del motivo comunicado por el sistema, como sobrecarga o riesgo climático. “Sobrecarga” no sustituye el nombre de todo el nivel crítico. “Sin datos suficientes” indica ausencia de una evaluación válida y no se interpreta como riesgo óptimo.

En los muestreos se distingue “Pendiente de sincronizar” de “Sincronizado”; un registro guardado localmente no se presenta como recibido por el servidor. El índice BBI muestra “Historial insuficiente” cuando no se cumple el mínimo de campañas históricas de US20. La proyección de acopio muestra “Preliminar” y la cobertura cuando menos del 50 % de parcelas ha completado el muestreo, según US32.

El vocabulario se localiza en español e inglés conforme a US42. Se permite explicar un término agronómico mediante un sinónimo en la ayuda, sin cambiar el nombre del mismo destino entre pantallas. Los iconos acompañan las etiquetas; las unidades, fechas y nombres de lote y campaña aportan el contexto necesario para interpretar los datos.

#### SEO Tags and Meta Tags

El alcance de Viora comprende una Landing Page pública, dos implementaciones de la aplicación móvil con funcionalidades por rol y un Backend API. El modelo de contenedores del AV1 no define una Web Application transaccional independiente; por ello, ese apartado del enunciado no aplica al alcance actual. Los servicios REST y las pantallas móviles no se presentan como páginas web con metadatos SEO.

**Metadatos del sitio público.** Se definen los siguientes valores en español para el documento principal y los documentos legales. Producto, segmentos, planes y equipo son secciones de una misma landing: sus anclas no requieren títulos y descripciones de página independientes.

**Landing Page.**

- **Title:** Viora: gestión del olivar y aclareo guiado
- **Meta Description:** Gestiona tus parcelas de olivo, registra muestreos y consulta orientación de aclareo con Viora. Conoce las opciones para productores y cooperativas.
- **Meta Keywords:** olivo, vecería, alternancia productiva, aclareo, carga frutal, cooperativas, Tacna
- **Meta Author:** ArcadiaDevs

**Términos y condiciones.**

- **Title:** Términos y condiciones de uso | Viora
- **Meta Description:** Consulta los términos y condiciones de uso de Viora y las condiciones de acceso a sus servicios para productores y cooperativas olivícolas.
- **Meta Keywords:** Viora, términos y condiciones, servicios
- **Meta Author:** ArcadiaDevs

**Privacidad.**

- **Title:** Política de privacidad | Viora
- **Meta Description:** Consulta la política de privacidad de Viora y la información sobre el tratamiento de datos personales de sus usuarios.
- **Meta Keywords:** Viora, privacidad, datos personales
- **Meta Author:** ArcadiaDevs

Se incluye Keywords para cumplir el enunciado, aunque Google Search no utiliza esa etiqueta para indexación o posicionamiento. Title y Description se redactan de forma concisa y acorde con el contenido, con 42 y 148 caracteres respectivamente, para favorecer que se muestren sin truncarse en los resultados de búsqueda. Fuente: [Google Search Central, metadatos admitidos](https://developers.google.com/search/docs/crawling-indexing/special-tags).

Para compartir la landing se establecen `og:title` = “Viora: gestión del olivar y aclareo guiado”, `og:description` = la descripción de la landing, `og:type` = `website` y `og:locale` = `es_PE`. La URL canónica, `og:url` y la URL absoluta de `og:image` se completarán con el dominio definitivo y el recurso de marca aprobado. La versión inglesa debe localizar también sus metadatos y declarar el idioma correcto del documento.

La privacidad de los datos de cuenta y parcelas depende de la autenticación y autorización del sistema. Las directivas de indexación no sustituyen estos controles.

**Elementos ASO.** La identidad pública propuesta es “Viora”, para productores y gestores. Kotlin y Flutter son implementaciones tecnológicas, no aplicaciones separadas por audiencia. Las fichas de distribución que se utilicen deben describir las capacidades de ambos roles. En el AV1 la distribución de pruebas está definida mediante Firebase App Distribution; los valores siguientes definen la ficha que se utilizará cuando la aplicación se publique en tienda.

| Elemento solicitado | Valor propuesto |
|:-----------------------------|:---------------------------------------------------------------------|
| App Title | Viora |
| App Subtitle | Gestión del olivar y aclareo |
| App Keywords | olivo,vecería,muestreo,carga frutal,cosecha,cooperativa,acopio |
| App Description | Viora acompaña a productores olivícolas y gestores técnicos en el seguimiento de sus parcelas y campañas. Registra muestreos de cuajado sin conexión y sincronízalos cuando recuperes cobertura. Consulta evaluaciones de carga frutal, prescripciones de aclareo, historial de cosechas e índice de alternancia cuando existan datos suficientes. Como gestor, revisa el riesgo territorial y las proyecciones de acopio de tu cooperativa. Las consultas actualizadas y los cálculos del servidor requieren conexión. En la versión académica, la telemetría de nodos virtuales utiliza datos simulados. |

La adaptación a cada tienda respeta sus campos reales:

| Tienda | Aplicación de los valores |
|:-----------------------------|:---------------------------------------------------------------------|
| Google Play | App name: “Viora” (máximo 30 caracteres). Short description: “Muestreo, aclareo y seguimiento del olivar para productores y cooperativas.” (máximo 80). Full description: el texto de App Description (máximo 4000). No tiene campos independientes equivalentes a App Subtitle y App Keywords; los términos relevantes se incorporan naturalmente en las descripciones. |
| Apple App Store, si se publica una versión iOS | Name: “Viora” (máximo 30). Subtitle: el texto propuesto (máximo 30). Keywords: la lista propuesta (máximo 100). Description: el texto propuesto (máximo 4000). Esta ficha es condicional y no amplía el despliegue Android del AV1. |

Las restricciones de tienda se verificaron en [Google Play Console](https://support.google.com/googleplay/android-developer/answer/9859152?hl=en-GB) y [Apple Developer](https://developer.apple.com/app-store/product-page/). Los textos describen capacidades y condiciones de uso sin prometer eliminar la vecería ni completar todo muestreo en un tiempo garantizado.

#### Searching Systems

Viora ofrece búsqueda contextual dentro de los inventarios y registros, junto con filtros apropiados para cada consulta. No se plantea un buscador universal sobre todos los datos. Las opciones siguientes concretan decisiones de interfaz sobre la información requerida por las historias de usuario.

**Landing Page.** Por su extensión y recorrido secuencial, el sitio no necesita un buscador interno. El menú por secciones, los enlaces entre casos de uso y funcionalidades y los accesos desde cada segmento a su plan permiten localizar la información. Los documentos legales se encuentran en el pie de página.

**Aplicaciones móviles.** Solo se consultan registros autorizados para la cuenta y el rol. El contexto de lote y campaña se mantiene visible y puede preseleccionarse cuando la consulta se abre desde su detalle.

| Consulta y respaldo | Medio y filtros propuestos | Presentación y orden |
|:-------------------------|:------------------------------------|:------------------------------------|
| Lotes del productor (US09–US11) | Nombre del lote; variedad registrada; activos o archivados. El filtro de variedad ofrece las variedades registradas en el sistema: Arbequina, Criolla, Manzanilla y Sevillana. | Tarjetas con nombre, variedad y estado; orden alfabético por nombre. |
| Historial de cosechas e índice BBI (US20, US21) | Selección de lote y año de campaña. | Campañas recientes primero, con año y volumen. La serie comparativa y el BBI se muestran con contexto y estado de suficiencia del historial. |
| Muestreos y árboles evaluados (US24, US25) | Lote, campaña, fecha y estado de sincronización; identificación del árbol dentro de la ronda. | Rondas recientes primero y detalle de árboles, brotes y frutos; estado local o sincronizado visible. |
| Plan de aclareo (US26–US28) | Selección de lote y campaña para consultar evaluación, prescripción y registros de ejecución. | Carga, porcentaje prescrito, fecha límite y labores registradas, distinguiendo lo calculado de lo ejecutado. |
| Nodos virtuales y clima (US13–US19) | Lote y nodo; selección de variable y períodos de 24 horas, 7 días o 30 días para las series. | Inventario por nombre o identificador; series gráficas en orden temporal ascendente, con unidades, fuente y actualización. El pronóstico se presenta aparte, por días. |
| Cartera y riesgo territorial del gestor (US08, US12, US31) | Nombre de socio; sector territorial y nivel de riesgo en la vista de parcelas. | Padrón de socios alfabético; mapa o matriz territorial por sector y prioridad. El riesgo se atribuye a la parcela o sector evaluado, sin convertirlo automáticamente en atributo de la membresía. |
| Acopio cooperativo (US32) | Selección de campaña; lectura diferenciada de aceituna verde y negra. | Resumen de tonelaje y cobertura de muestreo. Se advierte cuando la estimación es preliminar. |
| Expediente técnico (US30) | Selección de lote y campaña dentro del alcance autorizado. | Identificación de lote y campaña y acción para obtener el PDF. No se busca texto dentro del archivo. |

Los campos de búsqueda por nombre ignoran diferencias de mayúsculas y tildes. Los filtros aplicados permanecen visibles y pueden retirarse individualmente o mediante “Limpiar filtros”. La pantalla informa cuántos resultados coinciden y conserva la búsqueda al volver desde un detalle.

Se distinguen tres situaciones: “No hay registros” cuando todavía no existe información, “Sin resultados” cuando los filtros no encuentran coincidencias y “No se pudo actualizar” cuando falla la consulta. Ninguna se representa como una lista vacía sin explicación. Las series sin lecturas y los indicadores sin insumos suficientes se muestran como datos no disponibles, nunca como valores cero.

Sin conexión, la búsqueda se limita a los datos autorizados ya almacenados en el dispositivo y a los muestreos locales. La interfaz informa esa limitación y la última actualización. No promete consultar el historial completo ni obtener resultados nuevos del servidor. El alcance offline garantizado por US24 es la captura de muestreos y su sincronización posterior; no se extiende automáticamente a cosechas, pagos o generación de prescripciones.

#### Navigation Systems

La navegación conecta los bloques de Organization Systems con las tareas del visitante, productor y gestor. Las dos implementaciones móviles mantienen el mismo significado de destinos y las mismas restricciones de acceso por rol. Las ocho secciones de la taxonomía organizan contenido; no obligan a mostrar ocho destinos principales.

**Landing Page.** El visitante recorre la propuesta y el problema, las funcionalidades y los casos de uso, el contexto y los segmentos, las modalidades de acceso, el equipo y la conversión final. El menú permite saltar a Inicio, Producto, Para quién, Planes y Equipo. Descargar app permanece como acción de conversión en el hero, el bloque de acceso y el cierre. Los casos de uso enlazan a su funcionalidad y cada segmento a su plan. El selector Español / English mantiene el acceso a la versión elegida; el footer permite abrir Términos y condiciones y Privacidad.

En pantallas estrechas, el menú se despliega sin cambiar los destinos. Los enlaces internos llevan al encabezado de la sección y los enlaces legales permiten volver mediante la navegación del navegador. La descarga remite al canal efectivamente habilitado, sin mostrar como disponibles tiendas en las que el producto aún no está publicado. El registro y la contratación se realizan desde la aplicación.

**Aplicación: experiencia del productor.** Se conservan los cuatro destinos inferiores establecidos en Style Guidelines:

| Destino | Contenido y recorrido |
|:-----------------------------|:---------------------------------------------------------------------|
| Inicio | Resumen contextual de lotes, clima, alertas y estado de sincronización; cada resumen permite abrir el detalle correspondiente. |
| Lotes | Inventario, registro y detalle de parcela. Desde el detalle se accede a nodos virtuales, clima, historial, BBI, frío acumulado y expediente de campaña. |
| Plan | Selección de lote y campaña, evaluación de carga y prescripción de aclareo. Permite abrir el registro de la labor ejecutada. |
| Bitácora | Muestreos, registros de aclareo y cosechas, con lote y campaña visibles. Incluye el acceso a registrar muestreo y a los flujos de cosecha y cierre. |

Cuenta se abre desde el encabezado y agrupa perfil, idioma y suscripción o código de cooperativa; no introduce una quinta pestaña. Las rutas hacia un mismo registro reutilizan su detalle y conservan el contexto de origen. “Plan” corresponde al manejo agronómico, mientras que la modalidad comercial se consulta en Suscripción.

**Aplicación: experiencia del gestor.** El gestor utiliza la misma barra inferior de cuatro destinos, con contenido propio de su rol: Inicio, Riesgo territorial, Acopio y Socios. Esta agrupación concreta las áreas compartidas y exclusivas de la taxonomía. Inicio resume el estado de la organización; Riesgo territorial abre la matriz o mapa y el detalle autorizado de parcela; Acopio permite revisar la campaña y sus proyecciones; Socios reúne la cartera y los accesos a la administración de membresías y cupos; al igual que en la experiencia del productor, Cuenta se abre desde el encabezado y contiene perfil e idioma. Los expedientes se abren desde el contexto de la parcela y campaña, conforme a US30.

Los destinos de gestor se aplican en Kotlin y Flutter según el rol autenticado. La supervisión no concede automáticamente permisos para editar los datos del productor ni para emitir prescripciones manuales. El diseño debe permitir consultar la cartera durante una visita de campo; no presupone que el gestor trabaje siempre en oficina o con conexión estable.

**Recorridos de tarea.**

| Meta | Recorrido principal |
|:-----------------------------|:---------------------------------------------------------------------|
| Dar de alta un lote | Lotes → Registrar lote → delimitación y caracterización → guardar → detalle del lote. |
| Registrar un muestreo | Bitácora → Registrar muestreo → lote y campaña → captura guiada → guardado local → sincronización al recuperar conexión. |
| Consultar y registrar aclareo | Plan → lote y campaña → evaluación y prescripción → Registrar aclareo → confirmación y consulta en Bitácora. |
| Cerrar la campaña | Bitácora → lote y campaña → registro de cosecha → revisión y confirmación del cierre → expediente técnico. |
| Priorizar una visita | Riesgo territorial → sector o nivel de riesgo → parcela → motivo y detalle autorizado. |
| Revisar el acopio | Acopio → campaña → volúmenes verde y negro → cobertura y advertencias. |

Los formularios indican el paso actual y permiten retroceder sin perder los datos ya guardados. La acción Atrás retorna a la pantalla de origen; cuando se abandona una edición sin guardar, se explica la consecuencia. El encabezado identifica lote y campaña en las pantallas que lo requieren. No se exige una hilera permanente de migas de pan en teléfonos: el contexto se conserva mediante títulos y navegación de retorno.

**Conectividad y acceso directo.** La captura de muestreos conserva los registros localmente y diferencia su guardado de la aceptación del servidor. Las pantallas pueden mostrar información previamente almacenada y autorizada con su fecha de actualización, sin garantizar que esté completa o vigente. Los cálculos de carga y prescripción, la actualización del riesgo y acopio, el cierre confirmado, la generación de PDF y las operaciones de suscripción requieren la comunicación correspondiente con el servidor.

Los enlaces profundos hacia detalles validan sesión, rol y acceso al recurso antes de mostrar datos. Si el recurso no está disponible localmente y no hay conexión, se informa y se permite volver o reintentar. Una prescripción almacenada muestra su fecha y no se presenta como recién calculada. Al retornar de un pago, la aplicación consulta el estado validado por el servidor antes de mostrar la suscripción como activada.

### Landing Page UI Design

En esta sección se presenta la propuesta visual y de interfaz de usuario para el Landing Page de Viora, el cual constituye el escaparate público del modelo de negocio y el punto de acceso para los dos segmentos objetivo: productores olivareros y gestores técnicos de cooperativas agrarias. La concepción del sitio web traduce las decisiones de diseño establecidas en las *Style Guidelines* y en la arquitectura de información, asegurando una experiencia homogénea, accesible y fuertemente ligada a la identidad del producto.

A nivel de identidad y lenguaje visual, el diseño traduce los cuatro valores nucleares de marca instituidos en las *Style Guidelines*: Natural (evocado mediante la paleta orgánica dominada por el color crema cálido *Cream* en 55 % y el verde olivo *Forest* en 25 %), Cercana (expresado a través de ilustraciones con técnica de grabado artesanal, retratos empáticos de productores locales y un tono de voz directo, empático y respetuoso), Precisa (reflejada en la estructuración rigurosa de métricas agronómicas, porcentajes fenológicos y gráficos temporales) y Confiable (sustentada en la claridad de las tarifas en moneda local, pasarelas de pago auditadas y presencia institucional del equipo desarrollador). Asimismo, la jerarquía tipográfica respeta el uso de *Axiforma* como fuente de marca expresiva para titulares de alto impacto en los roles *Display* y *Headline*, y *Roboto* para el contenido funcional y de lectura en los roles *Title*, *Body* y *Label*, garantizando legibilidad óptima y contrastes que satisfacen los estándares WCAG AA.

En estrecha sincronía con la arquitectura de información, la coreografía de desplazamiento sigue estrictamente la secuencia de seis bloques funcionales definida en *Organization Systems*: Hero y propuesta de valor, descripción de módulos y casos de uso del producto, contexto olivícola de Tacna y caracterización de segmentos, modalidades de suscripción y planes de acceso, presentación institucional del equipo de desarrollo ArcadiaDevs, y zona de conversión final con pie de página legal e idiomático. Se aplican de forma sistemática los sistemas de organización visual jerárquico (titular dominante con detalles subordinados), secuencial (narrativa de scroll del problema agronómico a la solución tecnológica) y matricial (comparación estructurada de planes y tarifas). Además, los componentes interactivos respetan el vocabulario controlado de *Labeling Systems* (etiquetas concisas como "Inicio", "Producto", "Para quién", "Planes", "Equipo", "Descargar app", "Canjear código") y las reglas de *Navigation Systems*, que garantizan acceso global al selector idiomático (Español / English) y llamadas a la acción redundantes e intencionales.

Con el fin de asegurar una proporción visual equilibrada en la compilación del informe y evitar imágenes excesivamente largas que degraden la legibilidad tipográfica en el documento final, las secciones con mayor densidad de información se presentan subdivididas ordenadamente en sus subcomponentes lógicos, preservando la numeración y correspondencia arquitectónica.


#### Landing Page Wireframe
&nbsp;

Los wireframes constituyen la representación esquelética y funcional en baja fidelidad del Landing Page. Su propósito fundamental es validar la jerarquía de contenidos, la distribución espacial, los recorridos visuales del usuario y las áreas de interacción antes de la aplicación cromática definitiva, evidenciando los principios de diseño inclusivo, consistencia y trazabilidad con la arquitectura de información.

**Wireframes en Desktop Web Browser.** La versión para navegador de escritorio se estructura sobre una grilla de doce columnas fluidas según las especificaciones de *Spacing & Layout* para ventanas *Expanded* ($\ge 840$ dp), aplicando márgenes y paddings basados estrictamente en la escala modular de múltiplos de 4 dp (separaciones entre elementos relacionados de 8 a 12 dp, entre grupos de 16 a 24 dp y entre secciones de 24 a 32 dp).

Como se muestra en la \autoref{fig:wf-desktop-01-1}, la cabecera fija incorpora el isotipo de Viora dentro del nombre de marca, los accesos directos por ancla correspondientes a las etiquetas fijadas en *Labeling Systems* ("Inicio", "Producto", "Para quién", "Planes", "Equipo"), el selector de idioma y el CTA primario "Descarga la app", dando paso a la portada del Hero donde conviven la promesa central ("Anticipa la Próxima Cosecha. Equilibra tu olivar") y el widget contextual que anticipa el estado de la ventana de aclareo.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 1.1 - Hero y Portada Principal.}
\label{fig:wf-desktop-01-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-1-hero-portada.png}
\caption*{\textit{Nota.} Disposición esquelética del encabezado y la portada inicial en baja fidelidad. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-01-2} se despliega la contextualización de la vecería bajo la premisa "Datos del Campo, Decisiones a Tiempo", articulando el sistema secuencial de organización visual que traslada al usuario desde la incertidumbre del ciclo alternante (*ON/OFF*) hacia la captura sistemática de datos agroclimáticos y fenológicos.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 1.2 - Problemática de la Vecería y Datos de Campo.}
\label{fig:wf-desktop-01-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-2-problema-veceria.png}
\caption*{\textit{Nota.} Estructura del planteamiento del problema agronómico. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-desktop-01-3} consolida la presentación de la solución con la introducción formal de la plataforma ("Somos Viora") y el contenedor para el recurso audiovisual *About the Product*, integrando el acceso redundante de descarga y cerrando en su sección inferior con la pregunta de transición *"¿Listo para una cosecha más pareja cada año?"* y la bajada de acompañamiento estacional que abre el camino hacia los módulos operativos.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 1.3 - Presentación de la Solución Viora.}
\label{fig:wf-desktop-01-3}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-3-solucion-viora.png}
\caption*{\textit{Nota.} Estructura de la propuesta de valor, contenedor multimedia y titular de apertura hacia los módulos del producto. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-02} se detalla el núcleo del bloque de producto, organizado mediante el sistema jerárquico. Se estructuran tres tarjetas modulares correspondientes a las funcionalidades críticas de Viora: Carga frutal (muestreo en campo y cálculo objetivo), Frío invernal (acumulación de porciones de frío frente al riesgo de inviernos cálidos) y Plan de aclareo (prescripción de remoción y ventana fenológica de intervención), complementadas con la sección interactiva *"¿Te suena alguno de estos años?"* y el carrusel de casos de uso que vincula cada problema cotidiano del agricultor con su módulo de software respectivo.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 2 - Módulos de Producto y Casos de Uso.}
\label{fig:wf-desktop-02}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-02-producto-features.png}
\caption*{\textit{Nota.} Esquema estructural de las funcionalidades principales y casos de uso. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:wf-desktop-03-1}, se introduce el esquema de categorización cronológico y territorial centrado en Tacna (valle de La Yarada-Los Palos). Se despliegan tres métricas esenciales de impacto (81 % del área olivarera del país concentrada en la región, 90 % de merma en cosechas críticas como 2024, y el patrón de 1 de cada 2 campañas en año *OFF*) articuladas con la línea de tiempo fenológica del olivo (Frío acumulado de mayo a agosto, Floración en setiembre, Muestreo de cuajado en noviembre, Ventana de aclareo en diciembre y Cosecha de abril a mayo).

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 3.1 - Contexto Territorial de Tacna y Fenología.}
\label{fig:wf-desktop-03-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-1-contexto-tacna.png}
\caption*{\textit{Nota.} Distribución de métricas agronómicas regionales y ciclo fenológico. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-03-2} se modela la categorización por audiencia correspondiente al primer segmento: el Productor Olivarero. El diseño estructura la tarjeta de empatía bajo el dolor recurrente *"Un año sobra, el otro falta"* y detalla los beneficios operativos: seguimiento de frío, medición árbol por árbol y capacidad de captura offline sin señal en campo.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 3.2 - Segmento Productor Olivarero.}
\label{fig:wf-desktop-03-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-2-segmento-productor.png}
\caption*{\textit{Nota.} Estructuración de ventajas competitivas para el productor independiente. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-desktop-03-3} complementa la segmentación modelando el área destinada al Gestor Técnico y las Cooperativas Agrarias bajo la premisa *"No puedes estar en cada parcela"*. Se definen los beneficios del tablero territorial (semáforo de riesgo por sector, seguimiento de cartera de socios y proyección agregada de acopio) y, en su sección inferior, se introduce la cabecera de acceso y planes bajo la premisa rectora de *Organization Systems* (*"Una mala campaña cuesta más que Viora"*), junto a la tarjeta introductoria *"Hecha para el campo"* que destaca el registro offline de muestreos sin señal.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 3.3 - Segmento Gestor Técnico, Apertura de Planes y Trabajo en Campo.}
\label{fig:wf-desktop-03-3}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-3-segmento-gestor.png}
\caption*{\textit{Nota.} Estructura de beneficios para la administración asociativa y cabecera de planes de acceso. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-04-1} se modela la presentación visual del Plan Productor, exhibiendo la estructura informativa de la suscripción individual con la cuota referencial en soles (*S/ XX*), la maqueta del dispositivo móvil como recurso ilustrativo de la plataforma y la guía de tres pasos para el flujo de pago digital directo vía Mercado Pago.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 4.1 - Planes de Acceso: Plan Productor.}
\label{fig:wf-desktop-04-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-04-1-plan-productor.png}
\caption*{\textit{Nota.} Estructura visual de la suscripción individual y pasos de contratación. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-04-2} se estructura la modalidad institucional del Plan Cooperativa (*"Una licencia para toda la organización"*) con costo cubierto para el socio (S/ 0 individual). Se complementa con la guía secuencial de tres pasos para la vinculación institucional: contratación de cupo asociativo por parte de la cooperativa, emisión y distribución de códigos de activación con vigencia determinada por parte del gestor, y canje inmediato en la aplicación móvil por parte del socio.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 4.2 - Planes de Acceso: Plan Cooperativa y Activación.}
\label{fig:wf-desktop-04-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-04-2-plan-cooperativa.png}
\caption*{\textit{Nota.} Esquema de planes institucionales y procedimiento de alta de socios. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-desktop-05-1} ilustra el espacio institucional reservado para el equipo desarrollador ArcadiaDevs bajo el titular *“‘Pero si es solo un proyecto’ ¿Por qué no el mejor?”*, disponiendo un área central de marcador para la ilustración del equipo y la declaración fundacional que contextualiza su origen universitario en la UPC. En la sección inferior se estructura la lista de los cinco integrantes (Victor, Diana, Fabrizio, Jahat y Piero), asociando a cada uno su rol de liderazgo en el proyecto y su enlace profesional a LinkedIn.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 5.1 - Equipo Desarrollador ArcadiaDevs.}
\label{fig:wf-desktop-05-1}
\centering
\includegraphics[width=0.40\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-05-1-equipo-arcadiadevs.png}
\caption*{\textit{Nota.} Presentación estructural del equipo técnico multidisciplinario. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-05-2} se define el bloque de misión y visión de ArcadiaDevs (*"Small but Powerful team"*), integrando el contenedor para el video institucional *About the Team* y los sellos de identidad de marca compartidos.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 5.2 - Misión, Visión y Video Institucional.}
\label{fig:wf-desktop-05-2}
\centering
\includegraphics[width=0.40\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-05-2-mision-vision.png}
\caption*{\textit{Nota.} Estructura de postulados de valor, video de equipo y respaldo institucional. Elaboración propia.}
\end{figure}

Finalmente, la \autoref{fig:wf-desktop-06} exhibe la zona de conversión final ("Empieza a medir tu próxima campaña") con botones de acceso a tiendas de distribución móvil y el pie de página que agrupa las columnas de navegación global hacia Producto, Segmentos, Acceso, Nosotros y los documentos legales (Términos de servicio y Política de privacidad), finalizando con el selector de idioma y los créditos de autoría de ArcadiaDevs.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 6 - Conversión Final y Pie de Página.}
\label{fig:wf-desktop-06}
\centering
\includegraphics[width=0.40\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-06-conversion-footer.png}
\caption*{\textit{Nota.} Wireframe de la llamada a la acción de cierre y pie de página de escritorio. Elaboración propia.}
\end{figure}

\clearpage

**Wireframes en Mobile Web Browser.** La adaptación a navegadores móviles responde a las especificaciones para ventanas *Compact* ($< 600$ dp) de *Spacing & Layout*, organizando el contenido sobre una grilla fluida de 4 columnas con márgenes laterales y separación entre elementos de 16 dp. Siguiendo los principios de diseño inclusivo y accesibilidad para trabajo en campo, los elementos interactivos se calibran con un área táctil mínima de 48 por 48 dp para facilitar la operación con una sola mano o guantes agrícolas, y la navegación superior se condensa en un menú lateral accesible (*drawer*).

Como se muestra en la \autoref{fig:wf-mobile-01-1}, la cabecera móvil sintetiza los controles de navegación e introduce directamente la propuesta de valor sin saturar la pantalla inicial del dispositivo, ubicando el CTA "Descarga la app" en posición prominente y de fácil alcance digital.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 1.1 - Hero y Portada Principal.}
\label{fig:wf-mobile-01-1}
\centering
\includegraphics[width=0.15\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-01-1-hero-portada.png}
\caption*{\textit{Nota.} Disposición vertical compacta de la cabecera móvil. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-mobile-01-2} se adaptan la problemática de la alternancia y la solución Viora en tarjetas verticales apiladas, garantizando una lectura secuencial fluida que mantiene el reproductor multimedia adaptable al ancho completo del viewport.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 1.2 y 1.3 - Problemática de la Vecería y Solución Viora en Móvil.}
\label{fig:wf-mobile-01-2}
\centering
\includegraphics[width=0.32\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-01-problema-solucion.png}
\caption*{\textit{Nota.} Disposición esquelética móvil de la problemática agronómica y la propuesta tecnológica. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-mobile-02} se evidencia la reconfiguración vertical de las tarjetas de características del producto, permitiendo la lectura secuencial de los factores de carga, frío y aclareo mediante gestos naturales de deslizamiento y botones de interacción de ancho completo.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 2 - Módulos de Producto y Casos de Uso.}
\label{fig:wf-mobile-02}
\centering
\includegraphics[width=0.15\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-02-producto-features.png}
\caption*{\textit{Nota.} Adaptación de características a tarjetas en una sola columna táctil. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:wf-mobile-03}, los datos contextuales de Tacna, la curva fenológica y los perfiles de usuario correspondientes al productor y gestor técnico se presentan de forma continua facilitando la lectura bajo condiciones de luz exterior en campo.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 3 - Contexto Regional de Tacna y Segmentación de Usuarios.}
\label{fig:wf-mobile-03}
\centering
\includegraphics[width=0.45\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-03-contexto-segmentos.png}
\caption*{\textit{Nota.} Despliegue estructural móvil de métricas territoriales y fichas de segmentos agronómicos. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-mobile-04} se visualiza la presentación de los planes comerciales en viewport móvil, disponiendo tanto el diseño informativo del Plan Productor como el procedimiento del Plan Cooperativa en tarjetas táctiles accesibles con botones de acción principal en formato píldora.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 4 - Planes de Acceso (Plan Productor y Plan Cooperativa).}
\label{fig:wf-mobile-04}
\centering
\includegraphics[width=0.32\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-04-planes-acceso.png}
\caption*{\textit{Nota.} Esquema móvil informativo del plan individual y guía de activación asociativa. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-mobile-05} presenta la adaptación móvil del equipo ArcadiaDevs, sus postulados institucionales y el cierre de página con enlaces legales distribuidos verticalmente para evitar toques accidentales entre elementos interactivos.

\begin{figure}[H]
\caption{Wireframe Mobile: Bloques 5 y 6 - Equipo ArcadiaDevs, Misión y Pie de Página.}
\label{fig:wf-mobile-05}
\centering
\includegraphics[width=0.45\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-05-06-equipo-footer.png}
\caption*{\textit{Nota.} Disposición esquelética móvil del bloque de integrantes, video institucional y pie de página regulatorio. Elaboración propia.}
\end{figure}

\clearpage

#### Landing Page Mock-up
&nbsp;

Los mock-ups constituyen la expresión gráfica definitiva en alta fidelidad del Landing Page. En ellos se materializa el Design System institucional de Viora, incorporando la paleta de colores corporativa (tonos verde olivo profundo, acentos dorados y fondos orgánicos en escala crema/arena), la selección tipográfica de titulares serifados de alto impacto visual y cuerpos sans-serif de legibilidad optimizada, micro-ilustraciones temáticas del cultivo de olivo y capturas fidedignas de las interfaces de software.

**Mock-ups en Desktop Web Browser.** El diseño de alta fidelidad para escritorio ofrece una atmósfera inmersiva que combina estética editorial clásica con modernidad tecnológica, aplicando rigurosamente los tokens de color y forma establecidos en *Style Guidelines*: fondos cálidos en crema *Cream* (#F3F0EA, 55 % de uso), bloques prominentes en verde olivo *Forest* (#2E4A3A, 25 %), acentos puntuales en dorado *Harvest* (#E8B923, 7 %) y terracota *Tierra* (#C15A2E, 3 %), complementados con sombras suaves teñidas en verde oscuro *Shadow* (#1F2C26) que proyectan elevaciones naturales sin bordes negros rígidos.

Como se muestra en la \autoref{fig:mk-desktop-01-1}, el bloque inicial cautiva al usuario mediante una estética refinada: el fondo texturizado en tonalidad arena acoge una ilustración clásica de un agricultor cosechando olivos, contrastada con la tipografía de titulares *Axiforma* en estilo Display y el widget interactivo que simula la fecha de cierre de la ventana de aclareo. El botón de llamada a la acción "Descarga la app" resalta con forma de píldora (radio completamente redondeado de Material 3) y sombra difusa teñida en verde oscuro.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 1.1 - Hero y Portada Principal en Alta Fidelidad.}
\label{fig:mk-desktop-01-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-1-hero-portada.png}
\caption*{\textit{Nota.} Diseño visual terminado del bloque Hero con aplicación del Design System. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-01-2} se aprecia el impacto visual de la problemática de la vecería articulada con el lema "Datos del Campo, Decisiones a Tiempo". La tipografía de titulares en color *Forest* profundo sobre fondo crema refuerza la seriedad y el tono técnico de confianza instituido en *Tone of Voice*, complementándose con la reproducción en miniatura del video promocional y el botón secundario en estilo píldora.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 1.2 - Problemática de la Vecería en Alta Fidelidad.}
\label{fig:mk-desktop-01-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-2-problema-veceria.png}
\caption*{\textit{Nota.} Presentación gráfica terminada de la problemática del olivar. Elaboración propia.}
\end{figure}

La \autoref{fig:mk-desktop-01-3} exhibe la sección de identidad "Somos Viora", destacando la integración entre sensores físicos y decisiones agronómicas respaldadas por video. El reproductor centralizado, enriquecido con el fotograma editorial y el botón traslúcido "Ver video", plasma la calidez estética del proyecto mientras comunica la propuesta tecnológica de valor, culminando con el titular de cierre *"¿Listo para una cosecha más pareja cada año?"* que conecta armónicamente con la demostración de los módulos del sistema.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 1.3 - Solución Viora en Alta Fidelidad.}
\label{fig:mk-desktop-01-3}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-3-solucion-viora.png}
\caption*{\textit{Nota.} Interfaz visual acabada de la solución, componente de video y apertura de la sección de producto. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-02} se aprecia el tratamiento visual de los módulos funcionales, donde el contraste cromático entre fondos verdes *Forest* y tarjetas claras permite focalizar la atención sobre las métricas esenciales de carga y frío. Las tres tarjetas superiores aplican radios de curvatura de 24 dp propios de *Shape & Elevation*, asignando fondos temáticos diferenciados: carbón para carga frutal, gris cálido suave para frío invernal y terracota *Tierra* para el plan de aclareo. En la parte inferior, la sección *"¿Te suena alguno de estos años?"* introduce el carrusel interactivo con el testimonio directo del agricultor (*"No sé cuánto voy a cosechar hasta que ya es tarde"*), el botón de acción en amarillo *Harvest* y la indicación de navegación mediante iconos *Material Symbols Rounded*.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 2 - Módulos de Producto y Casos de Uso en Alta Fidelidad.}
\label{fig:mk-desktop-02}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-02-producto-features.png}
\caption*{\textit{Nota.} Presentación en alta fidelidad de las capacidades operativas del sistema. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mk-desktop-03-1}, el bloque contextual integra fotografía paisajística en alta resolución del Arco Parabólico de Tacna, articulando visualmente la identidad regional con las tres métricas destacadas (81 %, 90 % y 1 de 2) presentadas en titulares numéricos en fuente *Axiforma* acompañados por el isotipo circular de la marca y la curva de estaciones fenológicas.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 3.1 - Contexto de Tacna y Fenología en Alta Fidelidad.}
\label{fig:mk-desktop-03-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-1-contexto-tacna.png}
\caption*{\textit{Nota.} Fotografía paisajística y métricas agronómicas de Tacna en alta definición. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-03-2} se observa la caracterización del Productor Olivarero mediante una ilustración en técnica de grabado a color de un agricultor en su olivar, humanizando la interacción y facilitando la empatía del usuario. Se acompaña de tarjetas con formas expresivas de flor orgánica y círculo sólido en color *Forest*, transmitiendo la transición de la incertidumbre hacia la estabilidad productiva con redacción en tono cercano y respetuoso.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 3.2 - Segmento Productor Olivarero en Alta Fidelidad.}
\label{fig:mk-desktop-03-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-2-segmento-productor.png}
\caption*{\textit{Nota.} Ilustración de perfil y beneficios para productores. Elaboración propia.}
\end{figure}

La \autoref{fig:mk-desktop-03-3} presenta la ficha visual acabada del Gestor Técnico y Cooperativas Agrarias, retratando a un asesor agronómico en labores técnicas de campo y coordinación asociativa con formas expresivas en flor terracota *Tierra* y corazón amarillo *Harvest*. En su porción inferior se introduce con gran fuerza visual la apertura de los planes bajo la premisa de marca *"Una mala campaña cuesta más que Viora"*, respaldada por el contenedor multimedia de la tarjeta *"Hecha para el campo"* que sintetiza el muestreo sin señal.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 3.3 - Segmento Gestor Técnico y Apertura de Planes en Alta Fidelidad.}
\label{fig:mk-desktop-03-3}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-3-segmento-gestor.png}
\caption*{\textit{Nota.} Ilustración de perfil para gestores técnicos y cabecera de la sección de planes. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-04-1} se evidencia el diseño final de la presentación del Plan Productor, donde la tarjeta principal resalta sobre un fondo en tono crema y detalles en escala de grises, integrando una maqueta de alta fidelidad de la interfaz móvil que ilustra la propuesta del plan, la indicación de tarifa mensual en soles y el botón de acción en forma de píldora con flecha direccional. A su lado, la tarjeta con gráfico secuencial curvado detalla los tres pasos de contratación digital directa sin intermediarios.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 4.1 - Plan Productor en Alta Fidelidad.}
\label{fig:mk-desktop-04-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-04-1-plan-productor.png}
\caption*{\textit{Nota.} Diseño visual del plan individual en soles con integración gráfica de pago. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-04-2} se exhibe el diseño del Plan Cooperativa en fondo terracota *Tierra*, destacando la tarifa cero individual para el socio (S/ 0) bajo la cobertura de la licencia colectiva, y desplegando la secuencia gráfica de los pasos 04 a 09 que explican la emisión de códigos, la supervisión de hectáreas comprometidas y el canje en la aplicación móvil con confirmación visual de estado exitoso.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 4.2 - Plan Cooperativa en Alta Fidelidad.}
\label{fig:mk-desktop-04-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-04-2-plan-cooperativa.png}
\caption*{\textit{Nota.} Presentación gráfica de planes institucionales y pasarela asociativa. Elaboración propia.}
\end{figure}

La \autoref{fig:mk-desktop-05-1} muestra el bloque de ArcadiaDevs en alta fidelidad encabezado por el titular de marca *“‘Pero si es solo un proyecto’ ¿Por qué no el mejor?”*, incorporando la ilustración en técnica de grabado del equipo celebrando con el trofeo y la síntesis de su propuesta de valor. En el bloque inferior de fondo *Forest* se exhibe la lista jerárquica de los cinco integrantes con tipografía expresiva, especificando sus roles técnicos y funcionales junto con sus enlaces a LinkedIn.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 5.1 - Equipo Institucional ArcadiaDevs en Alta Fidelidad.}
\label{fig:mk-desktop-05-1}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-05-1-equipo-arcadiadevs.png}
\caption*{\textit{Nota.} Ilustración terminada del equipo desarrollador ArcadiaDevs y sus integrantes. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-05-2} se plasman el reproductor del video *About the Team* con la portada editorial *"Small but Powerful team"*, y las declaraciones de misión y visión con los sellos corporativos de ArcadiaDevs y Viora en color *Forest*, transmitiendo el compromiso de eliminar la incertidumbre en el olivar tacneño mediante innovación tecnológica.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 5.2 - Misión, Visión y Video Institucional en Alta Fidelidad.}
\label{fig:mk-desktop-05-2}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-05-2-mision-vision.png}
\caption*{\textit{Nota.} Declaración institucional, video de equipo y sellos corporativos. Elaboración propia.}
\end{figure}

La \autoref{fig:mk-desktop-06} exhibe el pie de página integral, garantizando el cumplimiento de contrastes WCAG AA entre el texto en gris oscuro cálido y el fondo arena, e incorporando las insignias oficiales de distribución móvil (App Store y Google Play) junto con el mapa estructurado de enlaces institucionales y regulatorios.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 6 - Conversión Final y Pie de Página en Alta Fidelidad.}
\label{fig:mk-desktop-06}
\centering
\includegraphics[width=0.50\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-06-conversion-footer.png}
\caption*{\textit{Nota.} Diseño terminado del footer con estándares de accesibilidad y enlaces legales. Elaboración propia.}
\end{figure}

\clearpage

**Mock-ups en Mobile Web Browser.** La versión en alta fidelidad para navegador móvil traslada la misma excelencia estética a pantallas pequeñas, garantizando tiempos de carga óptimos, legibilidad inmediata bajo luz solar intensa y una experiencia táctil fluida.

Como se evidencia en la \autoref{fig:mk-mobile-01-1}, la composición del Hero móvil preserva la jerarquía tipográfica y la fuerza comunicativa del grabado botánico sin sobrecargar el espacio visual, ofreciendo el botón de descarga en posición prominente y de fácil alcance digital.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloque 1.1 - Hero y Portada en Alta Fidelidad.}
\label{fig:mk-mobile-01-1}
\centering
\includegraphics[width=0.15\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-01-1-hero-portada.png}
\caption*{\textit{Nota.} Portada de alta fidelidad adaptada al viewport móvil. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-mobile-01-2} se despliegan en alta resolución la problemática y la presentación de la plataforma en viewport móvil, manteniendo la legibilidad del texto en tamaño de 16 sp (Body Large de *Typography*) y controles multimedia de pulsación suave.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloques 1.2 y 1.3 - Problemática de la Vecería y Solución Viora en Móvil.}
\label{fig:mk-mobile-01-2}
\centering
\includegraphics[width=0.32\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-01-problema-solucion.png}
\caption*{\textit{Nota.} Planteamiento visual del problema en pantalla reducida y ficha visual del reproductor en alta fidelidad. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-mobile-02} se observa la presentación de los módulos de carga, frío y aclareo con tipografía adaptativa y botones de navegación táctil optimizados que permiten explorar cada caso de uso mediante deslizamiento natural con el pulgar.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloque 2 - Módulos de Producto y Casos de Uso en Alta Fidelidad.}
\label{fig:mk-mobile-02}
\centering
\includegraphics[width=0.15\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-02-producto-features.png}
\caption*{\textit{Nota.} Tarjetas de producto en alta resolución para dispositivos móviles. Elaboración propia.}
\end{figure}

Tal como se aprecia en la \autoref{fig:mk-mobile-03}, el bloque contextual y la presentación de perfiles conservan su riqueza visual e impacto narrativo mediante una navegación vertical ergonómica, asegurando que las ilustraciones representativas de ambos segmentos de usuarios se adapten armónicamente a pantallas de 360 a 412 dp de ancho.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloque 3 - Contexto Territorial y Segmentación en Alta Fidelidad.}
\label{fig:mk-mobile-03}
\centering
\includegraphics[width=0.45\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-03-contexto-segmentos.png}
\caption*{\textit{Nota.} Interfaz móvil terminada de métricas olivícolas y perfiles de productor y gestor técnico. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-mobile-04} se detalla la experiencia visual móvil para la presentación de los planes comerciales en alta definición, exhibiendo la tarjeta estructurada del Plan Productor y la guía de canje del Plan Cooperativa paso a paso con óptima legibilidad en pantallas compactas sin requerir desplazamientos horizontales.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloque 4 - Planes de Acceso en Móvil (Plan Productor y Plan Cooperativa).}
\label{fig:mk-mobile-04}
\centering
\includegraphics[width=0.32\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-04-planes-acceso.png}
\caption*{\textit{Nota.} Diseño visual del plan individual y guía ilustrada de canje de licencias asociativas en alta fidelidad. Elaboración propia.}
\end{figure}

Por último, en la \autoref{fig:mk-mobile-05} se concluye con la presentación móvil del equipo desarrollador ArcadiaDevs, el video institucional y el área de descarga y pie de página accesible con enlaces espaciados generosamente para evitar falsas pulsaciones táctiles.

\begin{figure}[H]
\caption{Mock-up Mobile: Bloques 5 y 6 - Equipo ArcadiaDevs, Misión y Pie de Página en Alta Fidelidad.}
\label{fig:mk-mobile-05}
\centering
\includegraphics[width=0.45\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-05-06-equipo-footer.png}
\caption*{\textit{Nota.} Bloque institucional móvil de ArcadiaDevs, video corporativo y pie de página en alta fidelidad. Elaboración propia.}
\end{figure}

### Mobile Applications UX/UI Design

En esta sección se presenta y explica la propuesta visual y de interacción para las aplicaciones móviles de Viora, las cuales constituyen el núcleo operativo de la solución digital y el punto de contacto primario en campo para los dos segmentos objetivo: los productores olivareros y los gestores técnicos de cooperativas agrarias. La concepción de las interfaces móviles materializa las decisiones de diseño adoptadas en las *Style Guidelines* y en la arquitectura de información, asegurando una experiencia homogénea, accesible, resiliente ante la desconexión y adaptada a las exigencias físicas del trabajo agronómico.

A nivel de lenguaje visual y sistema de diseño, la propuesta se estructura bajo las especificaciones de Material Design 3 para factores de forma compactos (anchos de pantalla de 360 a 412 dp), garantizando compatibilidad nativa tanto en entornos Android como iOS. La distribución cromática implementa con rigor la regla de balance 55-25-7-3-10: el color crema cálido *Cream* (#FDFBF7) domina el 55 % de las superficies para eliminar el deslumbramiento solar en campo; el verde olivo *Forest* (#2D4A3E) abarca el 25 % en barras superiores, tarjetas principales y botones primarios; el dorado *Harvest* (#C99700) interviene en el 7 % como acento de progreso, estados de cosecha y componentes activos; el terracota *Tierra* (#B85D38) se reserva para el 3 % en advertencias de sobrecarga frutal y acciones destructivas; y el neutro oscuro *Shadow* (#1A1A1A) estructura el 10 % en tipografía y sombras suaves con tinte orgánico. Asimismo, la jerarquía tipográfica articula a *Axiforma* para los roles *Display* y *Headline* con un toque distintivo de marca, y a *Roboto* para los roles *Title*, *Body* y *Label*, garantizando una lectura inmediata de métricas agrícolas y cumpliendo con las pautas de accesibilidad WCAG AA. Todas las áreas interactivas respetan una dimensión táctil mínima de 48 por 48 dp, permitiendo una pulsación cómoda con una sola mano o bajo condiciones de movimiento en campo.

En sincronía con la arquitectura de información, la experiencia móvil modela de manera diferenciada las necesidades de cada perfil:

- Flujos transversales compartidos: Abarcan el arranque del aplicativo (*Splash*), la creación de cuentas con verificación por código de un solo uso (OTP) y los mecanismos de inicio de sesión con recuperación de acceso en quince minutos.
- Productor Olivarero: Centrado en la gestión directa de parcelas georreferenciadas, el protocolo de muestreo de cuajado con almacenamiento local sin conexión celular, la prescripción y registro del aclareo frutal, el análisis de alternancia e índice bienal de vecería (BBI), la acumulación de porciones de frío invernal y el cierre inmutable de campaña con expediente agronómico.
- Gestor Técnico de Cooperativa: Orientado a la administración territorial del valle olivícola, la priorización de visitas de campo mediante semáforos de riesgo por sector, la estimación del acopio proyectado con discriminación de destino verde (mesa) y negro (aceite), y el control del cupo asociativo con generación y revocación de códigos de activación para los socios.

#### Mobile Applications Wireframes
&nbsp;

Los wireframes constituyen la representación esquelética y funcional en baja fidelidad de las aplicaciones móviles de Viora. Su propósito es validar la distribución espacial de los componentes, la jerarquía de los contenidos agronómicos, los recorridos de navegación y las áreas de contacto táctil antes de la integración cromática definitiva, evidenciando los principios de diseño inclusivo, cuadrícula modular de 4 dp y correspondencia estricta con la arquitectura de información.

A nivel de diseño estructural, los wireframes organizan la información mediante contenedores tipo tarjeta con bordes finos y esquinas redondeadas, botones en formato píldora inspirados en Material Design 3 y controles táctiles sobredimensionados para captura rápida de datos en campo. La disposición espacial anticipa la jerarquía tipográfica del sistema, reservando las áreas dominantes para los titulares de marca y estructurando cuadrículas tabulares claras para lecturas métricas y estados de conectividad.


##### Wireframes transversales compartidos
&nbsp;

Como se ilustra en la \autoref{fig:wf-shared-00}, la secuencia de inicio modela la progresión cinemática de arranque en seis estados sobre un eje vertical centrado. La estructura dispone el isotipo en la zona superior de lectura y el bloque de marca en el tercio medio, integrando un indicador de actividad en la base para asegurar retroalimentación continua mientras se verifican las credenciales locales.

\begin{figure}[H]
\caption{Wireframe Mobile: Secuencia de Inicio y Arranque del Servicio.}
\label{fig:wf-shared-00}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-00-splash.png}
\caption*{\textit{Nota.} Progresión esquelética de inicialización de servicios locales y carga del aplicativo. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-shared-03} se expone el flujo de registro y verificación de identidad. La vista inicial organiza un formulario vertical con indicadores de validación de contraseña, mientras que la segunda pantalla estructura el ingreso de código OTP mediante casillas individuales y un teclado numérico táctil integrado para prevenir saltos de pantalla, complementado con tarjetas modulares de control de errores.

\begin{figure}[H]
\caption{Wireframe Mobile: Registro de Cuenta y Verificación OTP.}
\label{fig:wf-shared-03}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-03-cuenta-y-verificacion.png}
\caption*{\textit{Nota.} Disposición esquelética del formulario de alta, teclado numérico in-app y estados de validación. Elaboración propia.}
\end{figure}

Tal como se detalla en la \autoref{fig:wf-shared-05}, el procedimiento de inicio de sesión y recuperación de credenciales organiza de forma secuencial la solicitud de restablecimiento, el envío de enlace temporal y la definición de una nueva clave con verificación de robustez, disponiendo tarjetas de estado accesibles para notificar la caducidad del enlace.

\begin{figure}[H]
\caption{Wireframe Mobile: Inicio de Sesión y Recuperación de Credenciales.}
\label{fig:wf-shared-05}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-05-iniciar-sesion-y-recuperar-acceso.png}
\caption*{\textit{Nota.} Estructura funcional del inicio de sesión diario y restauración de contraseña olvidada. Elaboración propia.}
\end{figure}


##### Wireframes para el Productor Olivarero
&nbsp;

En la \autoref{fig:wf-prod-01} se presentan las pantallas de bienvenida e inducción para el productor olivarero. La estructura espacial distribuye en tercios verticales la ilustración lineal del olivar, el bloque explicativo sobre la regulación de la carga y el botón primario de acción junto a los enlaces de acceso directo.

\begin{figure}[H]
\caption{Wireframe Productor: Vistas de Bienvenida e Introducción Agronómica.}
\label{fig:wf-prod-01}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-01-bienvenida.png}
\caption*{\textit{Nota.} Estructura esquelética de las vistas introductorias para productores independientes y asociados. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-02} modela el asistente de configuración inicial estructurado en cinco etapas guiadas con cabecera de avance persistente. El recorrido prioriza secuencialmente la captura de identidad, teléfono estandarizado, validación de código cooperativo, dimensionamiento de hectáreas con estimación inmediata de cuota y previsualización de permisos de alerta antes del resumen final.

\begin{figure}[H]
\caption{Wireframe Productor: Asistente Secuencial de Configuración Inicial.}
\label{fig:wf-prod-02}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Esquema por etapas para la captura de parámetros iniciales del productor y predio. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-04} se representan las dos rutas de activación del servicio: la contratación individual mediante tarjeta comercial articulada con pasarela digital y estado de confirmación, frente a la ruta institucional de canje de código asociativo con acreditación de membresía cubierta por la cooperativa.

\begin{figure}[H]
\caption{Wireframe Productor: Activación del Servicio y Canje de Código.}
\label{fig:wf-prod-04}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Rutas de activación de suscripción directa individual y canje asociativo de socio. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:wf-prod-06}, el tablero principal del productor organiza bajo una arquitectura modular de tarjetas la sincronización local, el cintillo de labor prioritaria del día, la barra semanal de campaña, el widget agrometeorológico, el gráfico de barras de vecería histórica (años ON y OFF) y las parcelas activas, previendo variantes estacionales y cintillos de operación sin conexión.

\begin{figure}[H]
\caption{Wireframe Productor: Tablero Principal de Inicio y Estados Estacionales.}
\label{fig:wf-prod-06}
\centering
\includegraphics[width=0.40\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-06-inicio-del-productor.png}
\caption*{\textit{Nota.} Disposición del tablero operativo, variantes por etapa fenológica y estados del sistema. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-07} se estructura el alta técnica de una parcela agrícola en cuatro pasos: selección del método de delimitación, trazado cartográfico con cálculo instantáneo de área y perímetro, captura de variedad y marco de plantación para derivar la densidad de árboles, y validaciones geométricas ante posibles inconsistencias de linderos.

\begin{figure}[H]
\caption{Wireframe Productor: Registro y Georreferenciación Cartográfica de Lotes.}
\label{fig:wf-prod-07}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-07-registrar-un-lote.png}
\caption*{\textit{Nota.} Flujo de registro cartográfico, ingreso de marco agronómico y control de geometrías. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-08} exhibe el módulo de muestreo de cuajado fuera de línea conforme al protocolo de cinco árboles en diagonal. La interfaz dispone contadores táctiles amplios de alta sensibilidad para el registro en campo de brotes y frutos cuajados, cálculo instantáneo de la relación agronómica, distintivo de persistencia local y tabla resumen de cierre de ronda.

\begin{figure}[H]
\caption{Wireframe Productor: Protocolo de Muestreo de Cuajado sin Conexión.}
\label{fig:wf-prod-08}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-08-muestrear-el-cuajado-sin-conexion.png}
\caption*{\textit{Nota.} Interfaz de captura táctil en campo, cálculo de frutos por brote y persistencia local. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-09} se modela el módulo de prescripción y registro de aclareo frutal. El diseño estructura un termómetro horizontal comparativo de sobrecarga frente al nivel sostenible del lote, delimitación gráfica de la ventana fenológica óptima, selector de porcentaje de remoción y proyección de ganancia de calibre comercial.

\begin{figure}[H]
\caption{Wireframe Productor: Prescripción y Registro de Aclareo Frutal.}
\label{fig:wf-prod-09}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-09-aclarear-a-tiempo.png}
\caption*{\textit{Nota.} Estructura de prescripción de raleo, ventana temporal de intervención y recálculo de calibre. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:wf-prod-13}, la herramienta analítica de vecería estructura el cálculo del Índice Bienal de Vecería (BBI) mediante un indicador semicircular graduado con aguja de criticidad, complementado por un gráfico temporal de cosechas pasadas y futuras, y un diálogo modal para registrar campañas anteriores.

\begin{figure}[H]
\caption{Wireframe Productor: Análisis de Vecería e Índice Bienal BBI.}
\label{fig:wf-prod-13}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-13-conocer-la-veceria-de-mi-lote.png}
\caption*{\textit{Nota.} Disposición esquelética del indicador de alternancia, curva histórica y registro de cosechas previas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-14} se organiza la liquidación anual de campaña: registro de pesaje final discriminando aceituna verde de mesa y negra de almazara, diálogo de confirmación inmutable para archivo de ciclo y visor del expediente agronómico oficial con bloque de verificación criptográfica.

\begin{figure}[H]
\caption{Wireframe Productor: Cierre de Campaña y Expediente Agronómico.}
\label{fig:wf-prod-14}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-14-cerrar-la-campana.png}
\caption*{\textit{Nota.} Liquidación de pesaje final por destino comercial, bloqueo inmutable y emisión de expediente. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-15} ilustra el seguimiento agrometeorológico de acumulación de porciones de frío bajo el modelo Erez-Fishman, disponiendo un medidor de avance circular, gráfico de dispersión térmica diurna y nocturna, y tarjetas informativas sobre anomalías e inviernos cálidos.

\begin{figure}[H]
\caption{Wireframe Productor: Seguimiento de Frío Invernal y Ruptura de Latencia.}
\label{fig:wf-prod-15}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-15-seguir-el-frio-invernal.png}
\caption*{\textit{Nota.} Esquema estructural del monitor de frío acumulado y detección de inviernos cálidos. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-16} se detalla el tablero de condiciones climáticas y telemetría de campo, disponiendo tarjetas horizontales de pronóstico semanal, curvas continuas de oscilación térmica horaria y lecturas gráficas de sensores de humedad de suelo a diferentes profundidades radiculares.

\begin{figure}[H]
\caption{Wireframe Productor: Monitoreo Microclimático y Telemetría de Suelo.}
\label{fig:wf-prod-16}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-16-vigilar-el-clima-del-lote.png}
\caption*{\textit{Nota.} Estructura del pronóstico localizado, curvas térmicas y sensores de humedad radicular. Elaboración propia.}
\end{figure}

Tal como se muestra en la \autoref{fig:wf-prod-18}, el panel de cuenta del productor organiza la edición de perfil personal, los ajustes de seguridad y contraseña con comprobación previa, la información de la membresía activa y una hoja inferior modal para alternar el idioma de la aplicación.

\begin{figure}[H]
\caption{Wireframe Productor: Administración de Perfil de Usuario y Seguridad.}
\label{fig:wf-prod-18}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Disposición esquelética de la cuenta, cambio de contraseña y conmutación idiomática. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-19} se modela la gestión del lote agrícola mediante una hoja inferior de opciones rápidas, una vista cartográfica con vértices interactivos para corregir linderos en tiempo real, y un diálogo modal para archivar predios conservando la trazabilidad de sus datos históricos.

\begin{figure}[H]
\caption{Wireframe Productor: Modificación Cartográfica y Archivado de Lotes.}
\label{fig:wf-prod-19}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-19-editar-o-archivar-un-lote.png}
\caption*{\textit{Nota.} Estructura de edición interactiva de polígonos y confirmación de archivado con datos históricos. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-20} presenta la supervisión de nodos de telemetría IoT asociados al lote, organizando tarjetas informativas con nivel de batería, estado de enlace y última transmisión, junto con accesos para vincular sensores por código QR o pausar su transmisión.

\begin{figure}[H]
\caption{Wireframe Productor: Supervisión de Sensores y Nodos de Telemetría IoT.}
\label{fig:wf-prod-20}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-20-sensores-del-lote.png}
\caption*{\textit{Nota.} Disposición estructural de dispositivos físicos asociados, estado de batería y sincronización. Elaboración propia.}
\end{figure}


##### Wireframes para el Gestor Técnico de Cooperativa
&nbsp;

En la \autoref{fig:wf-gest-01} se modelan las pantallas de bienvenida e inducción para el gestor técnico, articulando una estructura visual formal con ilustración del valle, mensajes orientados a la supervisión coordinada de parcelas socias y botones de acceso en la base con áreas táctiles accesibles.

\begin{figure}[H]
\caption{Wireframe Gestor: Bienvenida Institucional y Visión Colectiva del Valle.}
\label{fig:wf-gest-01}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-01-bienvenida.png}
\caption*{\textit{Nota.} Esquema de las vistas introductorias adaptadas a la supervisión técnica asociativa. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-gest-02} despliega el asistente de configuración técnica en tres pasos con indicador superior de avance, estructurando la captura del perfil profesional, el teléfono institucional de coordinación y la selección de criterios de alerta agronómica y térmica para el valle.

\begin{figure}[H]
\caption{Wireframe Gestor: Asistente de Configuración de Alertas Territoriales.}
\label{fig:wf-gest-02}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Captura esquelética del perfil técnico y criterios de priorización agronómica del valle. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-04} se define la vista de espera institucional que informa al gestor sobre la validación y asignación de permisos administrativos por parte de la cooperativa, manteniendo un diseño sobrio y centrado con opciones de consulta de estado.

\begin{figure}[H]
\caption{Wireframe Gestor: Estado de Validación y Asignación Institucional.}
\label{fig:wf-gest-04}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Interfaz de notificación de espera mientras la gerencia cooperativa habilita el rol técnico. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:wf-gest-10}, el tablero de mando del gestor organiza la supervisión territorial mediante un cintillo de alerta prioritaria, una matriz semafórica de cuatro cuadrantes de riesgo, una tarjeta de proyección agregada de acopio con avance muestral y una lista clasificada de visitas técnicas urgentes.

\begin{figure}[H]
\caption{Wireframe Gestor: Tablero Territorial de Mando y Semáforo de Riesgo.}
\label{fig:wf-gest-10}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-10-inicio-del-gestor.png}
\caption*{\textit{Nota.} Estructura del tablero territorial, métricas agregadas de acopio y sugerencias de visitas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-11} se expone el módulo de priorización de visitas de campo, integrando un mapa sectorial zonificado con chinchetas georreferenciadas por nivel de riesgo, un padrón clasificado por magnitud de sobrecarga con enlaces de contacto directo, y una ficha de auditoría técnica de parcela.

\begin{figure}[H]
\caption{Wireframe Gestor: Zonificación Territorial y Priorización de Visitas de Campo.}
\label{fig:wf-gest-11}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-11-priorizar-mis-visitas-de-campo.png}
\caption*{\textit{Nota.} Zonificación cartográfica por riesgo frutal, padrón de socios priorizados y ficha de auditoría. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-gest-12} modela la estimación de acopio territorial estructurando la cifra global de tonelaje, el desglose proporcional entre aceituna verde de mesa y negra de almazara, la tarjeta de cobertura con umbral técnico del 50 %, y el selector modal para contrastar campañas previas.

\begin{figure}[H]
\caption{Wireframe Gestor: Estimación y Desglose Territorial del Acopio Proyectado.}
\label{fig:wf-gest-12}
\centering
\includegraphics[width=0.60\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-12-proyectar-el-acopio.png}
\caption*{\textit{Nota.} Desglose de tonelaje por destino comercial, umbrales de cobertura y consulta de campañas previas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-17} se estructura el control del padrón cooperativo y cupo de membresía: tarjeta con desglose de plazas ocupadas y disponibles, buscador con filtros por estado, panel de auditoría de códigos y hoja inferior con selector de vigencia para emisión masiva y revocación segura.

\begin{figure}[H]
\caption{Wireframe Gestor: Administración de Padrón, Cupo Colectivo y Códigos.}
\label{fig:wf-gest-17}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-17-administrar-socios-y-codigos.png}
\caption*{\textit{Nota.} Gestión del cupo institucional de socios, emisión y revocación de códigos con validación de límites. Elaboración propia.}
\end{figure}

Como se observa en la \autoref{fig:wf-gest-18}, el gestor técnico reutiliza la estructura de cuenta del productor (P95 a P98): el panel agrupa datos personales, seguridad, preferencias y sesión, y desde él se abren la edición de nombre y celular en formato E.164, el cambio de contraseña con verificación de la clave actual y la hoja inferior de idioma, que cambia la interfaz a inglés sin cerrar sesión. La fila inferior reserva los estados de validación: celular inválido, nombre vacío, contraseña actual incorrecta y nueva contraseña que no cumple los criterios.

\begin{figure}[H]
\caption{Wireframe Gestor: Administración de Cuenta, Seguridad e Idioma.}
\label{fig:wf-gest-18}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Disposición esquelética de la cuenta del gestor, sus formularios de edición y los estados de validación. Elaboración propia.}
\end{figure}

#### Mobile Applications Wireflow Diagrams

Un wireflow combina las pantallas de la aplicación con el flujo de acciones que lleva de una a otra. Su propósito es mostrar cómo una persona de usuario alcanza una meta concreta, qué información ve y entrega en cada paso y qué hace el sistema con ella. Esta sección presenta un wireflow por cada meta de usuario y por cada persona de usuario de cada aplicación del alcance. El alcance es el de los 17 flujos centrales del catálogo del equipo (F01 a F17) para las dos personas de Viora: Teodoro Mamani, productor olivarero que usa la App Productor (Kotlin), y Rubén Ticona, gestor técnico que usa la App Gestor (Flutter). Los flujos F01, F02 y F03 (crear la cuenta, iniciar sesión y mantener la cuenta al día) existen para ambas personas, de modo que el conjunto suma 20 wireflows. Cada uno incluye una meta de usuario redactada en primera persona y una explicación del flujo representado.

Las pantallas provienen del prototipo de alta fidelidad en Figma y se organizaron y anotaron en Lucidchart. Cada wireflow representa únicamente la ruta esperada (*happy path*): las rutas alternativas y los casos de error se tratan en la sección Mobile Applications User Flow Diagrams. Según el enunciado, todo cambio de estado de una pantalla se dibuja como un paso adicional con su nuevo estado. Por ello un mismo código de pantalla puede aparecer más de una vez en un wireflow; por ejemplo, la ronda de muestreo P52 se muestra primero "Sin conexión" y después con "Muestra suficiente". Los 20 wireflows pueden consultarse en su versión editable en la carpeta «Viora · Mobile Wireflows» de Lucidchart (<https://lucid.app/folder/invitations/accept?invitationId=inv_fdf3ec56-200e-409b-b85f-5223df6799c2>), con un documento por wireflow.

La notación es la misma en todos los diagramas. Cada paso se rotula con "PASO n" seguido del código y el nombre de la pantalla. Las cajas verdes describen la acción del usuario que lleva al paso siguiente. El rombo amarillo marca un punto de decisión, y la caja amarilla con borde punteado indica un evento del sistema o una nota pendiente. La caja con borde amarillo sólido al final del recorrido señala la meta cumplida. Las pantallas en gris desaturado son pantallas reutilizadas de otra aplicación o persona. Cuando un wireflow tiene más de una ruta válida, los pasos de cada ruta llevan un sufijo de letra (1B, 2A, 3B) y los rótulos de la rama indican la condición que los separa.

Los wireflows recorren únicamente destinos declarados en Navigation Systems: los cuatro destinos inferiores de cada rol (Inicio, Lotes, Plan y Bitácora para el productor; Inicio, Riesgo territorial, Acopio y Socios para el gestor), la apertura de Cuenta desde el encabezado y las hojas o detalles que se abren desde esos destinos. Ningún diagrama introduce una quinta pestaña. En el prototipo, el productor y el gestor se implementan como dos aplicaciones separadas por rol (App Productor en Kotlin y App Gestor en Flutter), en lugar de una única aplicación con selección de rol. Esta es una decisión de diseño del prototipo; por ello el rol queda definido por la aplicación que se instala y los wireflows de creación de cuenta no incluyen una pantalla de elección de rol. Los wireflows amplían además los recorridos de tarea de Navigation Systems al catálogo completo de 17 flujos. La siguiente tabla resume el conjunto.

| Código | Meta de usuario | Persona y aplicación | User Stories |
|:-------|:----------------|:---------------------|:-------------|
| WF-F01 | Crear mi cuenta y entrar por primera vez (productor) | Teodoro, App Productor | US01, US43 |
| WF-F01 | Crear mi cuenta y entrar por primera vez (gestor) | Rubén, App Gestor | US01, US43 |
| WF-F02 | Iniciar sesión y recuperar mi acceso (productor) | Teodoro, App Productor | US02, US05 |
| WF-F02 | Iniciar sesión y recuperar mi acceso (gestor) | Rubén, App Gestor | US02, US05 |
| WF-F03 | Mantener mi cuenta al día (productor) | Teodoro, App Productor | US03, US04, US42 |
| WF-F03 | Mantener mi cuenta al día (gestor) | Rubén, App Gestor | US03, US04, US42 |
| WF-F04 | Activar mi acceso con pago o código | Teodoro, App Productor | US06, US07 |
| WF-F05 | Saber qué hacer hoy en mi olivar | Teodoro, App Productor | US18 |
| WF-F06 | Registrar un lote | Teodoro, App Productor | US09 |
| WF-F07 | Mantener mis lotes al día | Teodoro, App Productor | US10, US11 |
| WF-F08 | Configurar el monitoreo del lote | Teodoro, App Productor | US13, US14, US15 |
| WF-F09 | Vigilar el clima del lote | Teodoro, App Productor | US17, US18, US19 |
| WF-F10 | Conocer la vecería de mi lote | Teodoro, App Productor | US20 |
| WF-F11 | Seguir el frío invernal | Teodoro, App Productor | US22, US23 |
| WF-F12 | Muestrear el cuajado sin conexión | Teodoro, App Productor | US24, US25 |
| WF-F13 | Aclarear a tiempo | Teodoro, App Productor | US26, US27, US28 |
| WF-F14 | Cerrar la campaña y obtener el expediente | Teodoro, App Productor | US29, US30 |
| WF-F15 | Priorizar mis visitas de campo | Rubén, App Gestor | US12, US30, US31 |
| WF-F16 | Proyectar el acopio de la campaña | Rubén, App Gestor | US32 |
| WF-F17 | Administrar socios y códigos | Rubén, App Gestor | US08 |

**WF-F01 · Crear mi cuenta y entrar por primera vez (productor).** Meta de usuario: «Quiero crear mi cuenta con mi rol para entrar a Viora con las herramientas que me corresponden.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US01 y US43. Como se observa en la \autoref{fig:wf-f01-teodoro}, el recorrido va de la pantalla inicial a la verificación del correo, con una decisión sobre el código de cooperativa.

\begin{figure}[H]
\caption{Wireflow WF-F01: crear mi cuenta y entrar por primera vez (productor).} \label{fig:wf-f01-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f01-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

El splash (T01) termina por sí solo y abre la bienvenida (T02), donde Teodoro toca «Comenzar» y avanza por la lámina para productores (pasos 2 y 3). Luego el flujo pasa a la captura de datos: escribe su nombre (T02b) y su celular (T02b2), y el sistema los conserva para el resumen final. En T02c el sistema le pregunta si su cooperativa le dio un código y el diagrama plantea la decisión. Si tiene código, lo escribe y toca «Guardar código», y el flujo salta directamente a las alertas. Si no lo tiene, toca «No tengo código» y pasa por T02d, donde elige cuántas hectáreas maneja; el sistema le muestra un plan estimado de S/ 7,920 al año para 12 ha (paso 7, solo sin código). Ambas ramas convergen en T02e, donde toca «Activar alertas» y responde al permiso de notificaciones del sistema operativo con «Permitir». En T02f revisa un resumen con rol, nombre, acceso y alertas, y toca «Crear mi cuenta». Finalmente, en T04 escribe su correo y una contraseña que cumple los criterios mostrados (8 caracteres, letras y números), y en T04a ingresa el código de 6 dígitos que el sistema le envía por correo. La meta se cumple porque la cuenta queda creada y verificada con el rol de productor, y el flujo continúa en WF-F04 para activar el acceso.

**WF-F01 · Crear mi cuenta y entrar por primera vez (gestor).** Meta de usuario: «Quiero crear mi cuenta con mi rol para entrar a Viora con las herramientas que me corresponden.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US01 y US43. La \autoref{fig:wf-f01-ruben} muestra que el recorrido es más corto en la captura de datos y termina con una decisión sobre la habilitación de su organización.

\begin{figure}[H]
\caption{Wireflow WF-F01: crear mi cuenta y entrar por primera vez (gestor).} \label{fig:wf-f01-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f01-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Los tres primeros pasos replican el inicio del productor, con la lámina dirigida a gestores técnicos. Rubén escribe su nombre (T02b) y su celular (T02b2), activa las alertas y responde al permiso del sistema (pasos 6 y 7). A diferencia del productor, no ingresa código de cooperativa ni hectáreas: su resumen (T02f) muestra solo el rol de gestor técnico, el nombre y las alertas. Luego crea su cuenta con correo y contraseña (T04) y confirma el código de 6 dígitos que recibe por correo (T04a). Después de la verificación, el diagrama plantea una decisión: si su cooperativa ya lo habilitó, entra directamente a Inicio (G10). Si aún no lo hizo, el sistema muestra «Tu organización aún no te habilita» (G01), con su rol, el estado "Pendiente de habilitación" y su correo. Cuando la cooperativa lo habilita, el sistema le avisa por correo y Rubén entra a G10. La meta se cumple porque Rubén llega a su Inicio con las herramientas de gestor técnico, y la habilitación de la cooperativa condiciona ese acceso.

**WF-F02 · Iniciar sesión y recuperar mi acceso (productor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US02 y US05. La \autoref{fig:wf-f02-teodoro} representa el recorrido de recuperación de la contraseña, que parte de la pantalla de inicio de sesión y regresa a ella.

\begin{figure}[H]
\caption{Wireflow WF-F02: iniciar sesión y recuperar mi acceso (productor).} \label{fig:wf-f02-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f02-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Iniciar sesión (T03), Teodoro toca «¿Olvidaste tu contraseña?» y llega a T06, donde su correo aparece ya escrito y toca «Enviar enlace». El sistema le envía un enlace de un solo uso y T07 le indica que revise su correo. Al abrir ese enlace, llega a T08, donde escribe una nueva contraseña y su confirmación mientras la pantalla verifica los criterios (8 caracteres, letras y números, coincidencia). Al tocar «Guardar contraseña», el sistema la actualiza, cierra sus otras sesiones por seguridad y muestra «Listo, ya puedes entrar». El diagrama muestra ese cambio de estado de T08 como un paso aparte (paso 5). Teodoro toca «Iniciar sesión», vuelve a T03 con su correo y entra con la nueva contraseña a Inicio (P10). La meta se cumple porque Teodoro recupera su acceso por su propia cuenta, sin intervención de terceros, y llega a su Inicio.

**WF-F02 · Iniciar sesión y recuperar mi acceso (gestor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US02 y US05. Como se observa en la \autoref{fig:wf-f02-ruben}, el recorrido es el mismo que el del productor y solo cambia el destino final.

\begin{figure}[H]
\caption{Wireflow WF-F02: iniciar sesión y recuperar mi acceso (gestor).} \label{fig:wf-f02-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f02-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Las pantallas T03, T06, T07 y T08 se reutilizan y por eso aparecen desaturadas. Rubén solicita el enlace con su correo, abre el mensaje, crea una nueva contraseña que cumple los criterios y confirma el cambio. El sistema actualiza la clave y cierra sus otras sesiones. Luego inicia sesión de nuevo y entra a Inicio (G10) de la App Gestor, que resume el semáforo del valle, los indicadores de su cooperativa y las visitas sugeridas. La meta se cumple porque Rubén recupera su acceso por su propia cuenta y llega a su Inicio.

**WF-F03 · Mantener mi cuenta al día (productor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US03, US04 y US42. La \autoref{fig:wf-f03-teodoro} muestra que todo el mantenimiento parte de Mi cuenta (P95), que se abre desde el encabezado.

\begin{figure}[H]
\caption{Wireflow WF-F03: mantener mi cuenta al día (productor).} \label{fig:wf-f03-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f03-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (P10), Teodoro toca su avatar y abre Mi cuenta (P95), que agrupa datos personales, seguridad, preferencias y sesión. Esto es coherente con Navigation Systems, donde Cuenta se abre desde el encabezado y no es una quinta pestaña. Al tocar «Celular» llega a Datos personales (P96), corrige su número, que el sistema valida con formato internacional, y toca «Guardar cambios». Regresa a P95 y toca «Cambiar contraseña» (P97), donde escribe la contraseña actual y la nueva con sus confirmaciones, y el sistema la actualiza. De nuevo en P95, toca «Idioma» y abre una hoja (P98) en la que elige English y toca «Cambiar a English». El sistema aplica el cambio de inmediato, sin cerrar la sesión, y P95 aparece ya en inglés. Cada retorno a P95 se dibuja como un paso propio porque la pantalla muestra datos actualizados. La meta se cumple porque los datos de contacto, la contraseña y el idioma quedan al día sin cerrar sesión.

**WF-F03 · Mantener mi cuenta al día (gestor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US03, US04 y US42. La \autoref{fig:wf-f03-ruben} repite el recorrido del productor sobre las mismas pantallas de cuenta, con los datos y la insignia de licencia del gestor.

\begin{figure}[H]
\caption{Wireflow WF-F03: mantener mi cuenta al día (gestor).} \label{fig:wf-f03-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f03-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

El recorrido comienza en Inicio (G10). Rubén toca su avatar, abre Mi cuenta (P95), actualiza su celular en Datos personales (P96), cambia su contraseña (P97) y cambia el idioma a English mediante la hoja P98. En cada cambio, el sistema valida los datos escritos y los guarda; tras el cambio de idioma, P95 se muestra en inglés con el mismo contenido. Las pantallas P95 a P98 se reutilizan del productor y por eso aparecen desaturadas. La meta se cumple porque sus datos, su clave y su idioma quedan actualizados sin cerrar sesión.

**WF-F04 · Activar mi acceso con pago o código.** Meta de usuario: «Quiero habilitar Viora pagando mi plan o con el código que me dio mi cooperativa.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US06 y US07. En la \autoref{fig:wf-f04}, el rombo de decisión separa las dos rutas de activación: el pago con Mercado Pago (pasos 2A y 3A) y el canje de código de cooperativa (pasos 2B a 4B). Ambas llegan al mismo Inicio.

\begin{figure}[H]
\caption{Wireflow WF-F04: activar mi acceso con pago o código.} \label{fig:wf-f04}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f04.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Teodoro parte de Plan Productor (P02), donde ve sus hectáreas (12 ha), el total anual (S/ 7,920) y su equivalente mensual. El diagrama pregunta si tiene código de cooperativa. Si no lo tiene, toca «Pagar con Mercado Pago» y paga en Checkout Pro. La pantalla P04 muestra primero «Confirmando tu pago…»; cuando Mercado Pago confirma el pago al servidor, cambia a «Bienvenido a Viora», con el plan, la vigencia y el envío del comprobante a su correo. Esto concuerda con Navigation Systems: la aplicación no muestra la suscripción como activada hasta que el servidor valida el pago. Si tiene código, toca «Tengo un código de cooperativa», escribe el código en P05 y toca «Canjear código». La pantalla pasa al estado «Validando tu código…» y, cuando la cooperativa confirma que el código está vigente, P06 informa «Tu cooperativa cubre tu plan», con la cooperativa, el cupo cubierto y la vigencia. En ambas rutas, Teodoro toca «Ir al inicio» y llega a Inicio sin lotes (P10), que lo invita a dibujar su primer lote en el mapa. La meta se cumple porque el acceso queda activo, ya sea por pago o por código, y Teodoro puede registrar su primer lote.

**WF-F05 · Saber qué hacer hoy en mi olivar.** Meta de usuario: «Al abrir la app quiero ver de un vistazo cómo están mis lotes y qué es lo urgente de la temporada.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US18, cuyos resúmenes provienen de US17, US19 y US27. La \autoref{fig:wf-f05} muestra un recorrido lineal de tres pantallas, que va del resumen de Inicio al detalle de una alerta crítica.

\begin{figure}[H]
\caption{Wireflow WF-F05: saber qué hacer hoy en mi olivar.} \label{fig:wf-f05}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f05.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Al abrir la aplicación, Teodoro ve Inicio (P10) con la fase de la campaña, el clima del día, las alertas activas, su alternancia y sus lotes. Lee la tarjeta de la fase y toca «2 alertas activas». En el Centro de alertas (T14) el sistema clasifica las alertas por prioridad (críticas, de atención y normalizadas) y muestra, por ejemplo, un golpe de calor en La Yarada 02. Al tocar «Ver qué hacer» en la alerta crítica, abre el detalle (T15), con la serie de temperaturas máximas de la semana frente al umbral y una lista «Qué hacer». En el prototipo actual, esa lista aún no es interactiva. La meta se cumple porque Teodoro sabe qué atender hoy y en qué lote.

**WF-F06 · Registrar un lote.** Meta de usuario: «Quiero registrar mi parcela con su contorno, variedad y marco de plantación para que Viora conozca su potencial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US09. La \autoref{fig:wf-f06} sigue el asistente de tres pasos del registro y tiene una decisión de repetición mientras se marcan las esquinas del contorno.

\begin{figure}[H]
\caption{Wireflow WF-F06: registrar un lote.} \label{fig:wf-f06}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f06.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Lotes (P20), Teodoro toca «Registrar lote» y en Método (P21) elige «Caminar el contorno» y toca «Empezar a caminar». En P22 el sistema usa el GPS del teléfono, con una precisión indicada, para registrar cada esquina que marca y calcula un área provisional. Con dos esquinas, el sistema indica que se necesitan al menos tres para cerrar el contorno. Teodoro camina a la siguiente esquina y toca «Marcar esquina 3». El diagrama plantea entonces una decisión: mientras no haya marcado todas las esquinas, repite «Marcar esquina»; cuando termina, toca «Cerrar contorno». En Caracterización (P24) escribe el nombre, elige la variedad e indica el marco de plantación, y el sistema calcula la densidad (204 árboles por hectárea) y el área neta. Toca «Revisar lote» y en P25 revisa el resumen, incluida la parte de las hectáreas de su plan que usará el lote. Al tocar «Guardar lote», el sistema registra el lote y abre su detalle (P26) con la confirmación «Lote guardado». Este recorrido coincide con el de "Dar de alta un lote" de Navigation Systems. La meta se cumple porque el lote queda registrado con su contorno, área, variedad y densidad.

**WF-F07 · Mantener mis lotes al día.** Meta de usuario: «Quiero corregir los datos de un lote, o retirarlo de mi inventario sin perder su historial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US10 y US11. En la \autoref{fig:wf-f07}, el rombo «¿Corregir o retirar el lote?» separa dos rutas que parten del mismo menú de opciones.

\begin{figure}[H]
\caption{Wireflow WF-F07: mantener mis lotes al día.} \label{fig:wf-f07}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f07.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Más opciones» y se abre la hoja P27, con las acciones editar datos, ajustar el contorno, sensores del lote y archivar. Si elige corregir, toca «Editar datos del lote» y en Editar lote (P28) cambia, por ejemplo, el marco de plantación; el sistema recalcula la densidad (de 72 a 100 árboles por hectárea) y el área. Al tocar «Guardar cambios», regresa al detalle con los datos corregidos (paso 4). Si elige retirar, toca «Archivar lote» y el sistema muestra un diálogo de confirmación que explica que conserva la historia del lote y libera sus hectáreas (de 4,0 a 1,5 ha usadas del plan). Al confirmar, el lote aparece en la lista de Lotes, pestaña Archivados (P20), marcado con «historial conservado» y con la opción «Restaurar lote». Hay dos metas cumplidas, una por ruta: el lote queda corregido con área y densidad recalculadas, o sale de su inventario con su historial intacto.

**WF-F08 · Configurar el monitoreo del lote.** Meta de usuario: «Quiero vincular nodos virtuales a mi lote para recibir lecturas de clima y suelo.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US13, US14 y US15. La \autoref{fig:wf-f08} muestra el recorrido de vinculación y ajuste de un nodo. Se dejó fuera la acción de desvincular un nodo, que el catálogo considera una ruta alternativa y se trata en los User Flow Diagrams.

\begin{figure}[H]
\caption{Wireflow WF-F08: configurar el monitoreo del lote.} \label{fig:wf-f08}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f08.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Más opciones» y, en la hoja P27, «Sensores del lote». En P85 ve los nodos del lote con su estado y su última lectura, y la pantalla aclara que son nodos virtuales que simulan lecturas con el clima de las coordenadas del lote. Toca «Vincular un nodo» y en la hoja P86 escribe el nombre, elige el tipo (microclima o sonda de suelo) y la profundidad (30 o 60 cm). Al tocar «Vincular nodo», el sistema lo registra y P85 lo muestra en la lista. Luego abre «Sonda Sector Norte» (P87), donde ve su última lectura, ajusta el nombre o la profundidad y define si transmite lecturas. Al tocar «Guardar cambios», vuelve a P85 con la configuración actualizada. La meta se cumple porque los nodos quedan vinculados y el lote recibe lecturas de clima y suelo.

**WF-F09 · Vigilar el clima del lote.** Meta de usuario: «Quiero ver la temperatura y la humedad de mi lote, y el pronóstico, para programar riegos y labores.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US17, US18 y US19. En la \autoref{fig:wf-f09} se muestran dos entradas a la misma lectura: desde Inicio y desde una alerta de estrés hídrico.

\begin{figure}[H]
\caption{Wireflow WF-F09: vigilar el clima del lote.} \label{fig:wf-f09}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f09.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En la ruta principal, Teodoro toca «Hoy en tu campo · 7 días» en Inicio (P10) y abre el Clima del lote (P90), que muestra la temperatura actual, el pronóstico de siete días, las lecturas de los sensores y el contraste entre día y noche. Después de revisar las lecturas y el pronóstico, toca «Humedad del suelo» y llega a P91, con la última lectura, su estado (en rango), la serie de 24 horas, 7 días o 30 días y los valores mínimo, promedio y máximo. En la entrada alternativa, una alerta de estrés hídrico lo lleva por el Centro de alertas (T14) al detalle de la alerta (T15), donde toca «Humedad del suelo» y llega a la misma P91. La meta se cumple porque Teodoro conoce la humedad del suelo y el pronóstico para programar su riego.

**WF-F10 · Conocer la vecería de mi lote.** Meta de usuario: «Quiero registrar mis cosechas pasadas para saber qué tan fuerte es la alternancia de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US20. La \autoref{fig:wf-f10} muestra cómo el registro de una campaña histórica actualiza el índice de vecería. La corrección de una campaña ya registrada se deja para los User Flow Diagrams.

\begin{figure}[H]
\caption{Wireflow WF-F10: conocer la vecería de mi lote.} \label{fig:wf-f10}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f10.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Vecería del lote» y abre Alternancia (P40), que muestra el índice de vecería del lote (0,51, vecería severa), la cosecha por campaña y las campañas registradas. Toca «Agregar campaña» y en la hoja P41 elige el año (2021) y escribe los kilos cosechados (10 500 kg); la hoja anticipa cómo cambiará el índice (de 0,51 a 0,48). Al tocar «Guardar campaña», el sistema registra la campaña y recalcula el índice, y P40 vuelve a mostrarse con el aviso «Campaña 2021 agregada», cinco campañas registradas y el nuevo índice. La meta se cumple porque Teodoro sabe qué tan fuerte es la vecería de su lote con el índice recalculado.

**WF-F11 · Seguir el frío invernal.** Meta de usuario: «Quiero saber cuánto frío ha acumulado mi olivar este invierno para anticipar cómo será la floración.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US22 y US23. La \autoref{fig:wf-f11} dibuja dos entradas a la misma pantalla de frío invernal, y una nota señala una conexión pendiente del prototipo.

\begin{figure}[H]
\caption{Wireflow WF-F11: seguir el frío invernal.} \label{fig:wf-f11}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f11.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En la ruta principal, Teodoro ve Inicio (P10) en fase de reposo invernal, con la acumulación de porciones de frío, y toca «Ver mi frío» en la tarjeta de fase. Llega a Frío invernal (P80), donde el sistema muestra las porciones acumuladas respecto de la meta, la fecha estimada de completarlas, los días sobre 24 °C, el estado del fenómeno de El Niño y el gráfico del frío acumulado frente al invierno pasado. En la entrada alternativa, un pico cálido invernal genera un aviso (T15, «Invierno cálido»), que explica qué cambia. Teodoro lee el aviso, toca «Ver mi frío» y P80 aparece en su estado «Tu frío se frenó», con las porciones recalculadas. La nota punteada indica que el prototipo aún no tiene la entrada desde el detalle del lote (P26), que el catálogo sí prevé. La meta se cumple porque Teodoro sabe cuánto frío ha acumulado su olivar y qué esperar de la floración.

**WF-F12 · Muestrear el cuajado sin conexión.** Meta de usuario: «Quiero contar brotes y frutos árbol por árbol en el campo, aunque no tenga señal, y que se envíe solo cuando vuelva la cobertura.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US24 y US25. La \autoref{fig:wf-f12} es el wireflow con más cambios de estado: la ronda de muestreo se dibuja sin conexión, con muestra suficiente y sincronizada.

\begin{figure}[H]
\caption{Wireflow WF-F12: muestrear el cuajado sin conexión.} \label{fig:wf-f12}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f12.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Bitácora (P50), Teodoro toca «+» y el menú de acciones (paso 2) le ofrece registrar un muestreo de cuajado, un aclareo, una cosecha o una nota. Elige «Muestreo de cuajado» y en Nuevo muestreo (P51) selecciona el lote (Lote Norte) y toca «Continuar ronda». En la Ronda de muestreo (P52) el sistema avisa que no hay conexión y que los registros se guardan en el teléfono. Teodoro toca «Agregar árbol» y en P53 anota los brotes y los frutos cuajados del árbol (40 brotes y 24 frutos para el árbol A-14); la pantalla calcula la relación de frutos por brote. Al tocar «Guardar árbol», el diagrama plantea la decisión «¿Ya van 5 árboles?». Si no, vuelve a la ronda con un árbol más; si sí, P52 muestra la muestra suficiente y Teodoro toca «Finalizar ronda». P54 informa «Ronda guardada» con el resumen (5 árboles, 0,59 frutos por brote, 209 brotes y 123 frutos) y avisa que el plan se habilita cuando se sincronice. Cuando vuelve la señal, el sistema envía la ronda por sí solo (evento del sistema) y P54 pasa a «Ronda completa» con el estado sincronizado. Esto es coherente con Navigation Systems, que distingue el guardado local de la aceptación del servidor. La meta se cumple porque la muestra queda registrada y sincronizada, y habilita el plan del lote.

**WF-F13 · Aclarear a tiempo.** Meta de usuario: «Quiero saber cuánta fruta debo quitar y hasta qué fecha, y dejar registrado lo que hice.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US26, US27 y US28. La \autoref{fig:wf-f13} recorre el destino Plan, de la selección del lote a la confirmación del registro.

\begin{figure}[H]
\caption{Wireflow WF-F13: aclarear a tiempo.} \label{fig:wf-f13}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f13.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En Plan (P60), el sistema indica cuántos lotes necesitan aclareo esta semana, y Teodoro toca «La Yarada 02». En P61 ve la carga frutal estimada frente al objetivo sostenible, una advertencia sobre el riesgo de vecería y la prescripción: quitar el 30 % de los frutos entre dos fechas, con los días que quedan. Toca «Registrar aclareo» y en P62 confirma la fecha y el porcentaje de frutos que quitó, y puede agregar una nota. Al tocar «Guardar aclareo», el sistema registra el aclareo y P63 confirma «Aclareo registrado», con el calibre esperado y la estimación actualizada, además del aviso «Guardado en Bitácora». El recorrido no regresa a P60 porque esa pantalla no muestra un cambio de estado visible. Este recorrido corresponde al de "Consultar y registrar aclareo" de Navigation Systems. La meta se cumple porque Teodoro sabe cuánto quitar y hasta cuándo, y su aclareo queda en la Bitácora.

**WF-F14 · Cerrar la campaña y obtener el expediente.** Meta de usuario: «Quiero registrar los kilos cosechados, cerrar la campaña y descargar el expediente de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US29 y US30. La \autoref{fig:wf-f14} dibuja el recorrido de cierre desde la tarjeta de fase de cosecha. Una caja punteada señala una conexión pendiente del prototipo.

\begin{figure}[H]
\caption{Wireflow WF-F14: cerrar la campaña y obtener el expediente.} \label{fig:wf-f14}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f14.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En Inicio (P10), en fase de cosecha, Teodoro toca «Registrar cosecha» en la tarjeta de fase y elige el lote en la hoja P70 («La Yarada 02»). En Registrar cosecha (P71) escribe los kilos de aceituna verde y negra, y el sistema calcula el total (20 800 kg); la pantalla advierte que al asentar la cosecha se cierra la campaña. Al tocar «Asentar cosecha», un diálogo (P72) le pide confirmar, porque después no podrá cambiar esos kilos. Al confirmar, el sistema asienta la cosecha, cierra la campaña 2026 y P73 muestra «Campaña cerrada» con el comprobante de liquidación. El paso siguiente (tocar «Ver expediente del lote» y llegar a P76) aún no está conectado en el prototipo, y por eso se dibuja punteado. En el Expediente del lote (P76), el sistema consolida los datos de la campaña y un código de verificación. Teodoro toca «Descargar PDF» y la hoja P77 informa que el PDF está listo, con las opciones abrir, compartir por WhatsApp o guardar en el teléfono. Navigation Systems ubica el cierre de campaña en Bitácora; este wireflow lo inicia desde la tarjeta de fase de Inicio, que abre el mismo flujo de registro de cosecha. La meta se cumple porque la campaña queda cerrada y el expediente del lote queda disponible en PDF.

**WF-F15 · Priorizar mis visitas de campo.** Meta de usuario: «Quiero saber qué sectores y parcelas socias están en riesgo, empezando por donde estoy, para decidir a quién visitar.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US12, US30 y US31. En la \autoref{fig:wf-f15}, el recorrido desciende desde el sector hasta el expediente técnico de una parcela, dentro del destino Riesgo territorial.

\begin{figure}[H]
\caption{Wireflow WF-F15: priorizar mis visitas de campo.} \label{fig:wf-f15}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f15.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (G10), Rubén toca «Ver riesgo territorial». La primera vez, el sistema le solicita permiso de ubicación (G20, hoja), para abrir el mapa en el sector donde está; Rubén toca «Permitir ubicación». En Riesgo territorial (G20) ve el mapa con los niveles de riesgo y un resumen de su sector, «La Yarada Baja». Al tocar el sector, llega a G22, con las parcelas en rojo y la lista por prioridad, ordenada por cercanía. Toca la parcela con más prioridad y abre la parcela del socio (G23), en modo de solo lectura, con su carga frutal, la prescripción vigente y las opciones de contacto. Esto es coherente con Navigation Systems, donde la supervisión no concede permisos de edición sobre los datos del productor. Al tocar «Ver expediente técnico», abre el expediente (T16). Este recorrido concuerda con el de "Priorizar una visita" de Navigation Systems y con el acceso a expedientes desde el contexto de la parcela (US30). La meta se cumple porque Rubén sabe qué parcelas visitar primero y puede consultar el expediente del socio.

**WF-F16 · Proyectar el acopio de la campaña.** Meta de usuario: «Quiero estimar cuántas toneladas de aceituna verde y negra entregarán los socios para planificar la planta y los contratos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a la historia US32. La \autoref{fig:wf-f16} muestra el recorrido por el destino Acopio y la selección de la campaña.

\begin{figure}[H]
\caption{Wireflow WF-F16: proyectar el acopio de la campaña.} \label{fig:wf-f16}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f16.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (G10), Rubén toca la tarjeta «Acopio» y abre la pantalla Acopio (G30). El sistema proyecta las toneladas totales de la campaña (1 240 t), separadas en aceituna verde (780 t) y negra (460 t), y muestra la cobertura de muestreo (37 de 60 parcelas, 62 %) y el detalle por sector. Rubén toca el selector «Campaña 2026» y la hoja le ofrece las campañas disponibles, con la campaña en curso y las cerradas. Al elegir la campaña, G30 se muestra de nuevo con los datos de la campaña seleccionada. Navigation Systems describe este recorrido como Acopio → campaña → volúmenes verde y negro → cobertura y advertencias. La meta se cumple porque Rubén conoce las toneladas proyectadas de verde y negra y la cobertura de muestreo que las respalda.

**WF-F17 · Administrar socios y códigos.** Meta de usuario: «Quiero ver mi padrón de socios y el cupo de la licencia, y entregar códigos de activación a los socios nuevos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a la historia US08. En la \autoref{fig:wf-f17}, el recorrido pasa del cupo de la licencia a la generación de nuevos códigos de activación.

\begin{figure}[H]
\caption{Wireflow WF-F17: administrar socios y códigos.} \label{fig:wf-f17}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f17.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (G10), Rubén toca la tarjeta «48 / 60 plazas» y abre Socios (G40), donde ve el cupo de la licencia (48 de 60 plazas, con 12 libres), los códigos por canjear, las hectáreas contratadas y el padrón de socios con su estado. Revisa el padrón y el cupo, y toca «Códigos por canjear» para llegar a Códigos (G42), que agrupa los códigos por estado (por canjear, canjeados y vencidos). Toca «Generar códigos» y en la hoja G43 define la cantidad (5), las hectáreas y el vencimiento (7, 15 o 30 días); la hoja anticipa cómo cambiará el cupo (de 48 a 53 de 60 plazas). Al tocar «Generar 5 códigos», el sistema crea los códigos y G44 los muestra listos para copiar o compartir por WhatsApp. La meta se cumple porque Rubén conoce su padrón y su cupo, y tiene los códigos listos para entregar a los socios nuevos.

#### Mobile Applications Mock-ups
&nbsp;

Los mock-ups constituyen la expresión visual definitiva en alta fidelidad de las aplicaciones móviles de Viora. En estas pantallas se materializa el Design System institucional, combinando la paleta cromática equilibrada bajo la regla 55-25-7-3-10, la tipografía de marca *Axiforma* en estilo Display y Headline con la precisión técnica de *Roboto* en roles funcionales, micro-ilustraciones temáticas del olivar y controles táctiles que satisfacen el estándar de accesibilidad universal WCAG AA.


##### Mock-ups transversales compartidos
&nbsp;

Como se ilustra en la \autoref{fig:mu-shared-00}, la secuencia de inicio en alta fidelidad viste la pantalla con el verde olivo *Forest* (#2D4A3E), sobre el cual el contorno del isotipo se rellena en dorado *Harvest* (#C99700), dando paso a la hoja central blanca y a la marca denominativa en tipografía *Axiforma*.

\begin{figure}[H]
\caption{Mock-up Mobile: Secuencia de Inicio y Arranque del Servicio en Alta Fidelidad.}
\label{fig:mu-shared-00}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-00-splash.png}
\caption*{\textit{Nota.} Aplicación del Design System y cinemática de marca durante el arranque del servicio móvil. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-shared-03} se aprecia la terminación visual del registro y verificación de identidad. El fondo *Cream* (#FDFBF7) acoge campos con foco en dorado cálido y chips dinámicos de validación sintáctica, mientras la pantalla de código OTP dispone casillas elevadas y un teclado numérico táctil embebido de alto contraste.

\begin{figure}[H]
\caption{Mock-up Mobile: Registro de Cuenta y Verificación OTP en Alta Fidelidad.}
\label{fig:mu-shared-03}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-03-cuenta-y-verificacion.png}
\caption*{\textit{Nota.} Formulario de alta, teclado in-app y componentes de validación en alta fidelidad. Elaboración propia.}
\end{figure}

Tal como se expone en la \autoref{fig:mu-shared-05}, el acceso diario y la restauración de credenciales presentan una atmósfera sobria: botón primario en verde *Forest* con radio completo de 24 dp, enlaces de soporte accesibles y flujo de recuperación asistido con advertencias claras sobre la vigencia del enlace temporal.

\begin{figure}[H]
\caption{Mock-up Mobile: Inicio de Sesión y Recuperación de Credenciales en Alta Fidelidad.}
\label{fig:mu-shared-05}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-05-iniciar-sesion-y-recuperar-acceso.png}
\caption*{\textit{Nota.} Diseño visual del acceso seguro y secuencia de restauración de clave de usuario. Elaboración propia.}
\end{figure}


##### Mock-ups para el Productor Olivarero
&nbsp;

En la \autoref{fig:mu-prod-01} se despliegan las pantallas de bienvenida del productor, destacando ilustraciones con técnica de grabado artesanal sobre ramas y frutos de olivo, complementadas por titulares en *Axiforma Headline* con segundo renglón en estilo cursivo orgánico.

\begin{figure}[H]
\caption{Mock-up Productor: Vistas de Bienvenida e Introducción Agronómica en Alta Fidelidad.}
\label{fig:mu-prod-01}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-01-bienvenida.png}
\caption*{\textit{Nota.} Integración de grabados ilustrativos y estilo tipográfico editorial para productores. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-02} exhibe el asistente de configuración inicial en alta fidelidad, combinando controles táctiles de incremento y deslizador continuo para dimensionar hectáreas, tarjeta de cotización anual en tiempo real y previsualización gráfica de las notificaciones agronómicas.

\begin{figure}[H]
\caption{Mock-up Productor: Asistente Secuencial de Configuración Inicial en Alta Fidelidad.}
\label{fig:mu-prod-02}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Asistente por etapas con cotización en tiempo real y previsualización de alertas agronómicas. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-04} se aprecian las interfaces terminadas para la activación del servicio: la tarjeta del Plan Productor con desglose de inversión anual articulada con Mercado Pago, y la confirmación institucional que acredita la membresía cubierta por la cooperativa.

\begin{figure}[H]
\caption{Mock-up Productor: Activación del Servicio y Canje de Código en Alta Fidelidad.}
\label{fig:mu-prod-04}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Activación por pasarela digital de pago y confirmación de membresía asociativa cubierta. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-prod-06}, el tablero principal del productor exhibe una cuidada jerarquía visual: cintillo de labor prioritaria con acento dorado, tarjeta meteorológica con lecturas de humedad en suelo, gráfico de barras alternadas para la vecería histórica, tarjetas de lotes activos y adaptaciones para cada etapa estacional.

\begin{figure}[H]
\caption{Mock-up Productor: Tablero Principal de Inicio y Estados Estacionales en Alta Fidelidad.}
\label{fig:mu-prod-06}
\centering
\includegraphics[width=0.40\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-06-inicio-del-productor.png}
\caption*{\textit{Nota.} Tablero operativo integral, transiciones estacionales y manejo de estados fuera de línea. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-07} se presenta la interfaz cartográfica de delimitación de parcelas sobre ortofoto satelital, disponiendo polígonos semitransparentes en verde *Forest*, paneles de cálculo dinámico de superficie y selectores tipo chip para las variedades tradicionales del cultivo.

\begin{figure}[H]
\caption{Mock-up Productor: Registro y Georreferenciación Cartográfica de Lotes en Alta Fidelidad.}
\label{fig:mu-prod-07}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-07-registrar-un-lote.png}
\caption*{\textit{Nota.} Trazado cartográfico de predios sobre ortofoto satelital y configuración del marco de siembra. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-08} exhibe el módulo de muestreo de cuajado fuera de línea, implementando contadores táctiles de gran escala y alto contraste para su uso bajo luz solar directa, distintivo de persistencia local en almacenamiento del dispositivo y diagnóstico automático de sobrecarga.

\begin{figure}[H]
\caption{Mock-up Productor: Protocolo de Muestreo de Cuajado sin Conexión en Alta Fidelidad.}
\label{fig:mu-prod-08}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-08-muestrear-el-cuajado-sin-conexion.png}
\caption*{\textit{Nota.} Contadores táctiles sobredimensionados para campo y almacenamiento local garantizado. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-09} se modela el módulo de aclareo frutal, integrando el termómetro comparativo con prescripción explícita de porcentaje de remoción en color terracota *Tierra*, cronograma delimitador de la ventana fenológica y simulación de ganancia de calibre comercial.

\begin{figure}[H]
\caption{Mock-up Productor: Prescripción y Registro de Aclareo Frutal en Alta Fidelidad.}
\label{fig:mu-prod-09}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-09-aclarear-a-tiempo.png}
\caption*{\textit{Nota.} Prescripción de raleo, cuenta regresiva de ventana óptima y simulación de ganancia de calibre. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:mu-prod-13}, la vista analítica de vecería despliega un indicador semicircular graduado con aguja que posiciona el BBI del predio, acompañado de una curva temporal que proyecta la siguiente cosecha y modales para incorporar campañas históricas.

\begin{figure}[H]
\caption{Mock-up Productor: Análisis de Vecería e Índice Bienal BBI en Alta Fidelidad.}
\label{fig:mu-prod-13}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-13-conocer-la-veceria-de-mi-lote.png}
\caption*{\textit{Nota.} Reloj del índice BBI, proyección temporal de alternancia y registro de cosechas anteriores. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-14} se visualiza la liquidación productiva anual con balance de pesaje entre destino mesa y aceite, diálogo de confirmación que bloquea la campaña de forma inmutable y visor del expediente agronómico oficial con firma digital mediante hash criptográfico.

\begin{figure}[H]
\caption{Mock-up Productor: Cierre de Campaña y Expediente Agronómico en Alta Fidelidad.}
\label{fig:mu-prod-14}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-14-cerrar-la-campana.png}
\caption*{\textit{Nota.} Liquidación por destino comercial, bloqueo de ciclo y generación de expediente con hash criptográfico. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-15} ilustra el seguimiento agrometeorológico de frío invernal bajo el modelo Erez-Fishman, destacando el contador de porciones acumuladas con copos dorados, gráfico de dispersión térmica diurna y nocturna, y alertas tempranas ante inviernos cálidos.

\begin{figure}[H]
\caption{Mock-up Productor: Seguimiento de Frío Invernal y Ruptura de Latencia en Alta Fidelidad.}
\label{fig:mu-prod-15}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-15-seguir-el-frio-invernal.png}
\caption*{\textit{Nota.} Monitor de porciones de frío acumuladas y detección temprana de anomalías térmicas en invierno. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-16} se aprecia el tablero climático con pronóstico extendido a siete días, curvas continuas de variación térmica horaria y lecturas gráficas de sondas de humedad de suelo a diferentes profundidades radiculares.

\begin{figure}[H]
\caption{Mock-up Productor: Monitoreo Microclimático y Telemetría de Suelo en Alta Fidelidad.}
\label{fig:mu-prod-16}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-16-vigilar-el-clima-del-lote.png}
\caption*{\textit{Nota.} Pronóstico microclimático localizado y telemetría de humedad de suelo en alta fidelidad. Elaboración propia.}
\end{figure}

Tal como se exhibe en la \autoref{fig:mu-prod-18}, el panel de cuenta del productor presenta la gestión de perfil con validaciones en formato E.164, cambio de contraseña con comprobación previa, tarjeta de membresía activa y hoja inferior interactiva para selección idiomática.

\begin{figure}[H]
\caption{Mock-up Productor: Administración de Perfil de Usuario y Seguridad en Alta Fidelidad.}
\label{fig:mu-prod-18}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Perfil de usuario, parámetros de seguridad y selector de idioma en alta fidelidad. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-19} se ilustra la edición interactiva de vértices cartográficos sobre plano satelital para actualizar linderos, acompañada del diálogo modal de archivado que preserva la trazabilidad histórica de los datos para la cooperativa.

\begin{figure}[H]
\caption{Mock-up Productor: Modificación Cartográfica y Archivado de Lotes en Alta Fidelidad.}
\label{fig:mu-prod-19}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-19-editar-o-archivar-un-lote.png}
\caption*{\textit{Nota.} Ajuste de polígonos perimétricos y archivado con preservación de series estadísticas. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-20} muestra la lista de dispositivos IoT asociados a la parcela con niveles de carga de batería e indicadores de sincronización, complementados con opciones modales para pausar transmisiones o desvincular sensores físicos.

\begin{figure}[H]
\caption{Mock-up Productor: Supervisión de Sensores y Nodos de Telemetría IoT en Alta Fidelidad.}
\label{fig:mu-prod-20}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-20-sensores-del-lote.png}
\caption*{\textit{Nota.} Supervisión de sondas y microestaciones IoT con estado de conectividad y batería. Elaboración propia.}
\end{figure}


##### Mock-ups para el Gestor Técnico de Cooperativa
&nbsp;

En la \autoref{fig:mu-gest-01} se despliegan las pantallas de bienvenida del gestor técnico, articulando grabados del valle y mensajes institucionales orientados a la supervisión coordinada de parcelas socias y a la planificación del acopio.

\begin{figure}[H]
\caption{Mock-up Gestor: Bienvenida Institucional y Visión Colectiva del Valle en Alta Fidelidad.}
\label{fig:mu-gest-01}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-01-bienvenida.png}
\caption*{\textit{Nota.} Portada introductoria orientada a la gestión asociativa y coordinación territorial del valle. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-gest-02} presenta el asistente de alta técnica en tres pasos, capturando el nombre profesional, teléfono institucional de coordinación y criterios de parametrización para alertas de sobrecarga y heladas en zonas bajas.

\begin{figure}[H]
\caption{Mock-up Gestor: Asistente de Configuración de Alertas Territoriales en Alta Fidelidad.}
\label{fig:mu-gest-02}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Asistente de configuración técnica y parametrización de alertas colectivas del valle. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-04} se aprecia la pantalla de espera institucional con diseño formal que informa al gestor sobre la habilitación de permisos administrativos por parte de la cooperativa.

\begin{figure}[H]
\caption{Mock-up Gestor: Estado de Validación y Asignación Institucional en Alta Fidelidad.}
\label{fig:mu-gest-04}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Pantalla de espera institucional previa a la asignación de permisos técnicos. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-gest-10}, el tablero territorial de mando reúne el semáforo de riesgo del valle con bloques de severidad diferenciados, la tarjeta de acopio con volumen proyectado y la lista jerarquizada de visitas técnicas urgentes.

\begin{figure}[H]
\caption{Mock-up Gestor: Tablero Territorial de Mando y Semáforo de Riesgo en Alta Fidelidad.}
\label{fig:mu-gest-10}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-10-inicio-del-gestor.png}
\caption*{\textit{Nota.} Tablero de mando territorial con semáforo agronómico, acopio agregado y priorización de visitas. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-11} se expone el módulo de visitas de campo con cartografía sectorial, listado ordenado por severidad de sobrecarga con accesos directos de comunicación y ficha de auditoría agronómica de la parcela.

\begin{figure}[H]
\caption{Mock-up Gestor: Zonificación Territorial y Priorización de Visitas de Campo en Alta Fidelidad.}
\label{fig:mu-gest-11}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-11-priorizar-mis-visitas-de-campo.png}
\caption*{\textit{Nota.} Mapa de riesgo sectorial, ranking de atención a productores y ficha técnica de parcela. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-gest-12} despliega el módulo de proyección de acopio territorial, exhibiendo el volumen global con barras proporcionales para aceituna verde y negra, barra de cobertura sobre el umbral técnico del 50 % y estados de consulta fuera de línea.

\begin{figure}[H]
\caption{Mock-up Gestor: Estimación y Desglose Territorial del Acopio Proyectado en Alta Fidelidad.}
\label{fig:mu-gest-12}
\centering
\includegraphics[width=0.60\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-12-proyectar-el-acopio.png}
\caption*{\textit{Nota.} Modelo volumétrico de acopio, desglose comercial, umbrales de cobertura y consulta offline. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-17} se presenta el panel de gestión del padrón de socios y cupo colectivo: tarjeta de membresía con barra tricolor, visor de auditoría de códigos por vigencia, hoja inferior para emisión masiva y diálogos para la revocación segura de plazas.

\begin{figure}[H]
\caption{Mock-up Gestor: Administración de Padrón, Cupo Colectivo y Códigos en Alta Fidelidad.}
\label{fig:mu-gest-17}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-17-administrar-socios-y-codigos.png}
\caption*{\textit{Nota.} Control de cupo asociativo, emisión masiva de códigos y auditoría de vinculación de socios. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-gest-18}, el panel de cuenta del gestor técnico exhibe la insignia de licencia activa, opciones de seguridad con validación de credenciales y una hoja inferior de cambio de idioma en caliente que adapta de forma instantánea etiquetas y formatos numéricos.

\begin{figure}[H]
\caption{Mock-up Gestor: Administración de Cuenta Institucional y Bilingüismo en Caliente en Alta Fidelidad.}
\label{fig:mu-gest-18}
\centering
\includegraphics[width=0.85\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Perfil institucional de gestor técnico, auditoría de credenciales y conmutación idiomática en caliente. Elaboración propia.}
\end{figure}

#### Mobile Applications User Flow Diagrams

Un user flow representa el recorrido completo que sigue una persona de usuario para alcanzar una meta, con las pantallas reales de la aplicación, la ruta esperada (*happy path*) y las rutas alternativas (*unhappy paths*) que se activan cuando una condición no se cumple. Esta sección presenta un user flow por cada meta de usuario y por cada persona de usuario de cada aplicación del alcance. Cada user flow se deriva del wireflow homónimo de la sección anterior (UF-F01 de WF-F01, y así sucesivamente) y conserva su ruta esperada, de modo que ambos conjuntos son consistentes: los 17 flujos centrales del catálogo (F01 a F17) para Teodoro Mamani, productor olivarero que usa la App Productor (Kotlin), y Rubén Ticona, gestor técnico que usa la App Gestor (Flutter). Como F01, F02 y F03 existen para ambas personas, el conjunto suma 20 user flows.

A diferencia de los wireflows, que se dibujan con wireframes en escala de grises y solo con la ruta esperada, los user flows incorporan los mock-ups de alta fidelidad de Figma y agregan las rutas alternativas. Estas rutas provienen de las variantes y validaciones de cada lámina de mock-ups. Por eso este conjunto cubre también las historias que los wireflows dejaron explícitamente para esta sección: la desvinculación de un nodo (US16, en UF-F08) y la corrección o eliminación de una campaña histórica (US21, en UF-F10).

Los diagramas se elaboraron en Lucidchart y comparten la misma notación. Cada diagrama abre con la meta de usuario, la persona y las User Stories que cubre, y una leyenda en la esquina superior derecha: la flecha blanca indica la ruta esperada (*happy path*) y la flecha roja, una ruta alternativa (*unhappy path*). La ruta esperada se lee de izquierda a derecha en filas numeradas: cada paso se rotula con «PASO n» seguido del código y el nombre de la pantalla, y las cajas verdes describen la acción del usuario que lleva al paso siguiente. Cuando la ruta se bifurca por una decisión, las ramas se rotulan con letras («PASO 2A», «PASO 2B») y confluyen en un «PASO FINAL». Los rombos amarillos plantean cada decisión con sus ramas «Sí» y «No»; la rama que no cumple la condición sale con flecha roja hacia una pantalla rotulada «RUTA ALTERNA», que muestra el estado que ve el usuario, y una caja rosada describe su acción de recuperación. Esa acción devuelve al usuario a un paso de la ruta esperada, lo deriva a otro flujo mediante una nota punteada del tipo «Continúa en Fxx», o cierra el recorrido. Los eventos del sistema se indican con cajas punteadas y la caja con borde amarillo, «Meta cumplida», marca el resultado del flujo.

La siguiente tabla resume el conjunto, con el número de rutas alternativas que dibuja cada diagrama.

| Código | Meta de usuario | Persona y aplicación | User Stories | Rutas alternativas |
|:-------|:----------------|:---------------------|:-------------|:------------------:|
| UF-F01 | Crear mi cuenta y entrar por primera vez (productor) | Teodoro, App Productor | US01, US43 | 4 |
| UF-F01 | Crear mi cuenta y entrar por primera vez (gestor) | Rubén, App Gestor | US01, US43 | 5 |
| UF-F02 | Iniciar sesión y recuperar mi acceso (productor) | Teodoro, App Productor | US02, US05 | 3 |
| UF-F02 | Iniciar sesión y recuperar mi acceso (gestor) | Rubén, App Gestor | US02, US05 | 3 |
| UF-F03 | Mantener mi cuenta al día (productor) | Teodoro, App Productor | US03, US04, US42 | 4 |
| UF-F03 | Mantener mi cuenta al día (gestor) | Rubén, App Gestor | US03, US04, US42 | 4 |
| UF-F04 | Activar mi acceso con pago o código | Teodoro, App Productor | US06, US07 | 2 |
| UF-F05 | Saber qué hacer hoy en mi olivar | Teodoro, App Productor | US18 (resúmenes de US17, US19, US27) | 8 |
| UF-F06 | Registrar un lote | Teodoro, App Productor | US09 | 5 |
| UF-F07 | Mantener mis lotes al día | Teodoro, App Productor | US10, US11 | 1 |
| UF-F08 | Configurar el monitoreo del lote | Teodoro, App Productor | US13, US14, US15, US16 | 3 |
| UF-F09 | Vigilar el clima del lote | Teodoro, App Productor | US17, US18, US19 | 2 |
| UF-F10 | Conocer la vecería de mi lote | Teodoro, App Productor | US20, US21 | 3 |
| UF-F11 | Seguir el frío invernal | Teodoro, App Productor | US22, US23 | 2 |
| UF-F12 | Muestrear el cuajado sin conexión | Teodoro, App Productor | US24, US25 | 1 |
| UF-F13 | Aclarear a tiempo | Teodoro, App Productor | US26, US27, US28 | 5 |
| UF-F14 | Cerrar la campaña y obtener el expediente | Teodoro, App Productor | US29, US30 | 3 |
| UF-F15 | Priorizar mis visitas de campo | Rubén, App Gestor | US12, US30, US31 | 4 |
| UF-F16 | Proyectar el acopio de la campaña | Rubén, App Gestor | US32 | 3 |
| UF-F17 | Administrar socios y códigos | Rubén, App Gestor | US08 | 4 |
| **Total** | | | | **69** |

**UF-F01 · Crear mi cuenta y entrar por primera vez (productor).** Meta de usuario: «Quiero crear mi cuenta con mi rol para entrar a Viora con las herramientas que me corresponden.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US01 y US43. Como se observa en la \autoref{fig:uf-f01-teodoro}, la ruta esperada coincide con la de WF-F01 y recorre las pantallas T01 Splash, T02 Bienvenida, T02b Tu nombre, T02b2 Tu celular, T02c Código de cooperativa, T02d Hectáreas (solo si no tiene código), T02e Alertas, T02f Resumen, T04 Crear cuenta y T04a Verifica tu correo. Cierra con la meta cumplida: cuenta creada y verificada; el flujo continúa en UF-F04 para activar su acceso. El diagrama dibuja 4 rutas alternativas. Además, la decisión «¿Tiene código de cooperativa?» bifurca la ruta esperada: con código el usuario salta el PASO 7 (hectáreas) y sin código lo recorre.

\begin{figure}[H]
\caption{User flow UF-F01: crear mi cuenta y entrar por primera vez (productor).} \label{fig:uf-f01-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f01-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **T02b · Tu nombre / Vacío.** Se activa cuando el nombre está vacío. Resultado: escribe su nombre completo y retoma el PASO 4.
- **T02b2 · Tu celular / Celular inválido.** Se activa cuando el celular no es válido para su país (error «Ingresa 9 dígitos que empiecen con 9»). Resultado: corrige el número con el prefijo +51 y retoma el PASO 5.
- **T04 · Crear cuenta / Correo ya registrado.** Se activa cuando el correo ya tiene una cuenta. Resultado: escribe otro correo y retoma el PASO 11.
- **T04 · Crear cuenta / Contraseña débil.** Se activa cuando la contraseña no cumple las reglas (mínimo 8 caracteres, con letras y números). Resultado: corrige la contraseña y retoma el PASO 11.

**UF-F01 · Crear mi cuenta y entrar por primera vez (gestor).** Meta de usuario: «Quiero crear mi cuenta con mi rol para entrar a Viora con las herramientas que me corresponden.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre las historias US01 y US43. Como se observa en la \autoref{fig:uf-f01-ruben}, la ruta esperada coincide con la de WF-F01 y recorre las pantallas T01 Splash, T02 Bienvenida (lámina de gestor), T02b Tu nombre, T02b2 Tu celular, T02e Alertas, T02f Resumen, T04 Crear cuenta, T04a Verifica tu correo y G10 Inicio. Cierra con la meta cumplida: Rubén entra a su Inicio con las herramientas de gestor técnico. El diagrama dibuja 5 rutas alternativas. A diferencia del productor, el gestor no declara código de cooperativa ni hectáreas, y su cuenta debe ser habilitada por la organización antes de entrar.

\begin{figure}[H]
\caption{User flow UF-F01: crear mi cuenta y entrar por primera vez (gestor).} \label{fig:uf-f01-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f01-ruben.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **T02b · Tu nombre / Vacío.** Se activa cuando el nombre está vacío. Resultado: escribe su nombre completo y retoma el PASO 4.
- **T02b2 · Tu celular / Celular inválido.** Se activa cuando el celular no es válido para su país. Resultado: corrige el número con el prefijo +51 y retoma el PASO 5.
- **T04 · Crear cuenta / Correo ya registrado.** Se activa cuando el correo ya tiene una cuenta. Resultado: escribe otro correo y retoma el PASO 9.
- **T04 · Crear cuenta / Contraseña débil.** Se activa cuando la contraseña no cumple las reglas. Resultado: corrige la contraseña y retoma el PASO 9.
- **G01 · Acceso pendiente.** Se activa cuando su cooperativa aún no lo habilitó (la pantalla indica «Tu organización aún no te habilita»). Resultado: el evento del sistema «la cooperativa lo habilita y le avisa por correo» lo lleva al PASO 11 (G10 · Inicio).

**UF-F02 · Iniciar sesión y recuperar mi acceso (productor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US02 y US05. Como se observa en la \autoref{fig:uf-f02-teodoro}, la ruta esperada coincide con la de WF-F02 y recorre las pantallas T03 Iniciar sesión, T06 Recuperar contraseña, T07 Revisa tu correo, T08 Nueva contraseña y P10 Inicio. Cierra con la meta cumplida: recuperó su acceso por su cuenta y entró a su Inicio. El diagrama dibuja 3 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F02: iniciar sesión y recuperar mi acceso (productor).} \label{fig:uf-f02-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f02-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **Aviso neutral (correo no registrado).** Se activa cuando el correo no está registrado. Resultado: la app muestra el mismo aviso T07, sin revelar si el correo existe, y continúa en el PASO 3.
- **T09 · Enlace no válido.** Se activa cuando el enlace del correo ya venció. Resultado: toca «Solicitar un nuevo enlace» y retoma el PASO 2.
- **T03 · Iniciar sesión / Credenciales inválidas.** Se activa cuando el correo o la contraseña son incorrectos. Resultado: corrige sus datos y retoma el PASO 6.

**UF-F02 · Iniciar sesión y recuperar mi acceso (gestor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre las historias US02 y US05. Como se observa en la \autoref{fig:uf-f02-ruben}, la ruta esperada coincide con la de WF-F02 y recorre las pantallas T03 Iniciar sesión, T06 Recuperar contraseña, T07 Revisa tu correo, T08 Nueva contraseña y G10 Inicio. Cierra con la meta cumplida: recuperó su acceso por su cuenta y entró a su Inicio. El diagrama dibuja 3 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F02: iniciar sesión y recuperar mi acceso (gestor).} \label{fig:uf-f02-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f02-ruben.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **Aviso neutral (correo no registrado).** Se activa cuando el correo no está registrado. Resultado: la app muestra el mismo aviso T07, sin revelar si el correo existe, y continúa en el PASO 3.
- **T09 · Enlace no válido.** Se activa cuando el enlace del correo ya venció. Resultado: toca «Solicitar un nuevo enlace» y retoma el PASO 2.
- **T03 · Iniciar sesión / Credenciales inválidas.** Se activa cuando el correo o la contraseña son incorrectos. Resultado: corrige sus datos y retoma el PASO 6.

**UF-F03 · Mantener mi cuenta al día (productor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US03, US04 y US42. Como se observa en la \autoref{fig:uf-f03-teodoro}, la ruta esperada coincide con la de WF-F03 y recorre las pantallas P10 Inicio, P95 Mi cuenta, P96 Datos personales, P97 Cambiar contraseña y P98 Idioma, con retorno a P95 en inglés. Cierra con la meta cumplida: sus datos, su clave y su idioma quedaron al día, sin cerrar sesión. El diagrama dibuja 4 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F03: mantener mi cuenta al día (productor).} \label{fig:uf-f03-teodoro}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f03-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P96 · Datos personales / Nombre vacío.** Se activa cuando el nombre está vacío. Resultado: escribe su nombre completo y retoma el PASO 3.
- **P96 · Datos personales / Celular inválido.** Se activa cuando el celular no tiene 9 dígitos o no empieza con 9. Resultado: corrige el número con el prefijo +51 y retoma el PASO 3.
- **P97 · Cambiar contraseña / Actual incorrecta.** Se activa cuando la contraseña actual no es correcta. Resultado: corrige la contraseña actual y retoma el PASO 5.
- **P97 · Cambiar contraseña / No cumple.** Se activa cuando la nueva contraseña es igual a la actual o no cumple las reglas. Resultado: escribe una contraseña válida y retoma el PASO 5.

**UF-F03 · Mantener mi cuenta al día (gestor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre las historias US03, US04 y US42. Como se observa en la \autoref{fig:uf-f03-ruben}, la ruta esperada coincide con la de WF-F03 y recorre las pantallas G10 Inicio, P95 Mi cuenta, P96 Datos personales, P97 Cambiar contraseña y P98 Idioma, con retorno a P95 en inglés. Cierra con la meta cumplida: sus datos, su clave y su idioma quedaron al día, sin cerrar sesión. El diagrama dibuja 4 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F03: mantener mi cuenta al día (gestor).} \label{fig:uf-f03-ruben}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f03-ruben.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P96 · Datos personales / Nombre vacío.** Se activa cuando el nombre está vacío. Resultado: escribe su nombre completo y retoma el PASO 3.
- **P96 · Datos personales / Celular inválido.** Se activa cuando el celular no tiene 9 dígitos o no empieza con 9. Resultado: corrige el número con el prefijo +51 y retoma el PASO 3.
- **P97 · Cambiar contraseña / Actual incorrecta.** Se activa cuando la contraseña actual no es correcta. Resultado: corrige la contraseña actual y retoma el PASO 5.
- **P97 · Cambiar contraseña / No cumple.** Se activa cuando la nueva contraseña es igual a la actual o no cumple las reglas. Resultado: escribe una contraseña válida y retoma el PASO 5.

**UF-F04 · Activar mi acceso con pago o código.** Meta de usuario: «Quiero habilitar Viora pagando mi plan o con el código que me dio mi cooperativa.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US06 y US07. Como se observa en la \autoref{fig:uf-f04}, la ruta esperada coincide con la de WF-F04 y recorre las pantallas P02 Plan Productor y, según la decisión «¿Tiene código de cooperativa?», la rama de pago (PASO 2A P04 Verificando, PASO 3A P04 Aprobado) o la rama de código (PASO 2B P05 Canjear código, PASO 3B P05 Validando, PASO 4B P06 Membresía activada), que confluyen en el PASO FINAL P10 Inicio sin lotes. Cierra con la meta cumplida: el acceso quedó activo y Teodoro entra a su Inicio para registrar su primer lote. El diagrama dibuja 2 rutas alternativas. Este flujo es el único del catálogo con dos ramas esperadas, una por cada forma de activar el acceso, y por eso usa la numeración 2A/3A y 2B/3B/4B.

\begin{figure}[H]
\caption{User flow UF-F04: activar mi acceso con pago o código.} \label{fig:uf-f04}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f04.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P04 · Resultado del pago / Rechazado.** Se activa cuando Mercado Pago no confirma el pago. Resultado: toca «Intentar con otro medio» y retoma el pago en el PASO 2A.
- **P05 · Canjear código / Código no válido.** Se activa cuando el código está vencido o ya fue canjeado. Resultado: toca «Probar otro código» y retoma el PASO 3B.

**UF-F05 · Saber qué hacer hoy en mi olivar.** Meta de usuario: «Al abrir la app quiero ver de un vistazo cómo están mis lotes y qué es lo urgente de la temporada.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US18, con resúmenes de US17, US19 y US27. Como se observa en la \autoref{fig:uf-f05}, la ruta esperada coincide con la de WF-F05 y recorre las pantallas P10 Inicio, T14 Centro de alertas y T15 Detalle de alerta. Cierra con la meta cumplida: sabe qué atender hoy y en qué lote. El diagrama dibuja 8 rutas alternativas. El diagrama incluye una nota que aclara que las cuatro pantallas P61 pertenecen al carril de F13 · Aclarear a tiempo (respaldo en US27 esc. 2 y 3 y US26 esc. 3) y se muestran aquí porque P10 resume la prescripción de US27.

\begin{figure}[H]
\caption{User flow UF-F05: saber qué hacer hoy en mi olivar.} \label{fig:uf-f05}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f05.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P10 · Inicio / Sin lotes.** Se activa cuando el productor aún no tiene lotes registrados. Resultado: toca «Registrar mi primer lote» y continúa en F06.
- **P10 · Inicio / Sin acceso activo.** Se activa cuando su plan venció. Resultado: toca «Renovar Plan Productor» y continúa en F04.
- **P10 · Inicio / Sin conexión.** Se activa cuando no hay conexión. Resultado: sigue con los datos guardados en el teléfono y retoma el PASO 2.
- **T15 · Humedad normal (alerta normalizada).** Se activa cuando toca una alerta ya normalizada desde T14. Resultado: toca «Atrás» y regresa a T14, PASO 2.
- **P61 · Plan del lote.** Se activa cuando el resumen de aclareo indica «Aclarar ahora». Resultado: abre el plan del lote.
- **P61 · Plan del lote / Carga óptima.** Se activa cuando el plan indica carga óptima (0 % sin aclareo). Resultado: consulta el plan; la ruta termina ahí.
- **P61 · Plan del lote / Ventana concluida.** Se activa cuando la ventana de aclareo ya cerró. Resultado: consulta el plan; la ruta termina ahí.
- **P61 · Plan del lote / Muestra incompleta.** Se activa cuando al lote le faltan árboles por muestrear. Resultado: el botón «Continuar muestreo» lleva a F12.

**UF-F06 · Registrar un lote.** Meta de usuario: «Quiero registrar mi parcela con su contorno, variedad y marco de plantación para que Viora conozca su potencial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre la historia US09. Como se observa en la \autoref{fig:uf-f06}, la ruta esperada coincide con la de WF-F06 y recorre las pantallas P20 Lotes, P21 Método, P22 Delimitar con GPS (con la repetición «Marcar esquina» hasta cerrar el contorno), P24 Caracterización, P25 Revisar y guardar y P26 Detalle del lote. Cierra con la meta cumplida: el lote quedó registrado con su contorno, área, variedad y densidad. El diagrama dibuja 5 rutas alternativas. En el diagrama, la rama de sin señal GPS cuenta como dos pantallas alternas (P22 y P23).

\begin{figure}[H]
\caption{User flow UF-F06: registrar un lote.} \label{fig:uf-f06}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f06.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P22 · Sin señal GPS y P23 · Trazar en el mapa.** Se activa cuando se pierde la señal del GPS. Resultado: toca «Seguir en el mapa», marca las esquinas en el mapa, cierra el contorno y continúa en el PASO 5.
- **P22 · Bordes que se cruzan.** Se activa cuando el contorno no es válido. Resultado: corrige la última esquina y vuelve a tocar «Cerrar contorno».
- **P24 · ¿Descartar este lote?.** Se activa cuando toca «Atrás» a mitad del registro. Resultado: confirma «Descartar» y vuelve a P20 sin guardar.
- **P24 · Marco fuera de rango.** Se activa cuando el marco de plantación está fuera de rango (por ejemplo 1 × 7 m, 1 429 árboles/ha frente al máximo de 500). Resultado: corrige el marco y retoma el PASO 5.
- **P25 · Área mayor al cupo del plan.** Se activa cuando el área no cabe en el cupo del plan. Resultado: toca «Ajustar contorno» y vuelve al PASO 4, o «Ampliar mi plan» y continúa en F04.

**UF-F07 · Mantener mis lotes al día.** Meta de usuario: «Quiero corregir los datos de un lote, o retirarlo de mi inventario sin perder su historial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US10 y US11. Como se observa en la \autoref{fig:uf-f07}, la ruta esperada coincide con la de WF-F07 y recorre las pantallas P26 Detalle del lote y P27 Opciones del lote; después, según la decisión «¿Corregir o retirar el lote?», P28 Editar lote y retorno a P26 (corregir) o P28 Archivar lote y P20 Lotes / Archivados (retirar). Cierra con la meta cumplida: el lote quedó corregido con área y densidad recalculadas, o salió del inventario con su historial intacto. El diagrama dibuja 1 ruta alternativa. Este flujo tiene dos metas cumplidas, una por cada rama.

\begin{figure}[H]
\caption{User flow UF-F07: mantener mis lotes al día.} \label{fig:uf-f07}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f07.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P28 · Editar lote / Marco fuera de rango.** Se activa cuando el marco de plantación no es compatible (por ejemplo 4 × 4 m, 625 árboles/ha, no viable). Resultado: corrige el marco y retoma el PASO 3.

**UF-F08 · Configurar el monitoreo del lote.** Meta de usuario: «Quiero vincular nodos virtuales a mi lote para recibir lecturas de clima y suelo.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US13, US14, US15 y US16. Como se observa en la \autoref{fig:uf-f08}, la ruta esperada coincide con la de WF-F08 y recorre las pantallas P26 Detalle del lote, P27 Opciones del lote, P85 Sensores del lote, P86 Vincular un nodo, P87 Configurar nodo y retorno a P85. Cierra con la meta cumplida: sus nodos quedaron vinculados y el lote recibe lecturas de clima y suelo. El diagrama dibuja 3 rutas alternativas. La desvinculación de un nodo (US16) se documenta en la ruta alterna P88, que termina en P85 con el aviso «Nodo desvinculado · historial conservado».

\begin{figure}[H]
\caption{User flow UF-F08: configurar el monitoreo del lote.} \label{fig:uf-f08}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f08.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P85 · Sensores del lote / Sin sensores.** Se activa cuando el lote aún no tiene nodos vinculados. Resultado: toca «Vincular el primero» y pasa al PASO 4.
- **P86 · Vincular un nodo / Nombre repetido.** Se activa cuando el nombre del nodo ya existe en el lote. Resultado: cambia el nombre y vuelve a tocar «Vincular nodo».
- **P88 · Desvincular nodo (diálogo).** Se activa cuando decide desvincular el nodo en lugar de guardar los cambios. Resultado: confirma «Desvincular nodo»; el historial de lecturas se conserva.

**UF-F09 · Vigilar el clima del lote.** Meta de usuario: «Quiero ver la temperatura y la humedad de mi lote, y el pronóstico, para programar riegos y labores.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US17, US18 y US19. Como se observa en la \autoref{fig:uf-f09}, la ruta esperada coincide con la de WF-F09 y recorre las pantallas P10 Inicio, P90 Clima del lote y P91 Humedad del suelo; una segunda entrada parte de T14 Centro de alertas y T15 alerta de estrés hídrico. Cierra con la meta cumplida: conoce la humedad del suelo y el pronóstico para programar su riego. El diagrama dibuja 2 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F09: vigilar el clima del lote.} \label{fig:uf-f09}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f09.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P90 · Clima del lote / Pronóstico guardado (sin conexión).** Se activa cuando el pronóstico no está actualizado. Resultado: toca «Humedad del suelo» y llega a P91 con los datos guardados.
- **T15 · Humedad normal (alerta normalizada).** Se activa cuando la alerta de estrés hídrico ya no está activa. Resultado: toca «Ver humedad del suelo» y llega a P91.

**UF-F10 · Conocer la vecería de mi lote.** Meta de usuario: «Quiero registrar mis cosechas pasadas para saber qué tan fuerte es la alternancia de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US20 y US21. Como se observa en la \autoref{fig:uf-f10}, la ruta esperada coincide con la de WF-F10 y recorre las pantallas P26 Detalle del lote, P40 Alternancia, P41 Cosecha histórica y retorno a P40 con la campaña agregada. Cierra con la meta cumplida: sabe qué tan fuerte es la vecería de su lote con el índice recalculado. El diagrama dibuja 3 rutas alternativas. La corrección y eliminación de campañas históricas (US21) se documenta en la ruta alterna de eliminar campaña.

\begin{figure}[H]
\caption{User flow UF-F10: conocer la vecería de mi lote.} \label{fig:uf-f10}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f10.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P40 · Alternancia / Historial insuficiente.** Se activa cuando el lote tiene menos de 3 campañas. Resultado: toca «Agregar campaña» y pasa a P41.
- **P41 · Cosecha histórica / Fuera de rango.** Se activa cuando el año o los kilos no son válidos. Resultado: corrige el año o los kilos y vuelve a guardar.
- **P41 · Eliminar campaña (diálogo).** Se activa cuando el productor quiere eliminar una campaña. Resultado: confirma «Eliminar campaña» y regresa a P40 con el índice recalculado.

**UF-F11 · Seguir el frío invernal.** Meta de usuario: «Quiero saber cuánto frío ha acumulado mi olivar este invierno para anticipar cómo será la floración.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US22 y US23. Como se observa en la \autoref{fig:uf-f11}, la ruta esperada coincide con la de WF-F11 y recorre las pantallas P10 Inicio (fase de reposo invernal) y P80 Frío invernal; una segunda entrada parte de T15 Invierno cálido (alerta ENSO) y llega a P80 / Frío frenado. Cierra con la meta cumplida: sabe cuánto frío lleva su olivar y qué esperar de la floración. El diagrama dibuja 2 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F11: seguir el frío invernal.} \label{fig:uf-f11}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f11.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P80 · Frío invernal / Fuera de temporada.** Se activa cuando no es temporada de invierno. Resultado: toca «Atrás» y regresa a P10.
- **P80 · Frío invernal / Estímulo completado.** Se activa cuando el olivar ya completó su frío. Resultado: toca «Atrás» y regresa a P10.

**UF-F12 · Muestrear el cuajado sin conexión.** Meta de usuario: «Quiero contar brotes y frutos árbol por árbol en el campo, aunque no tenga señal, y que se envíe solo cuando vuelva la cobertura.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US24 y US25. Como se observa en la \autoref{fig:uf-f12}, la ruta esperada coincide con la de WF-F12 y recorre las pantallas P50 Bitácora, P51 Nuevo muestreo, P52 Ronda de muestreo, P53 Registrar árbol (repetido hasta completar 5 árboles) y P54 Resumen de ronda, con o sin señal al finalizar. Cierra con la meta cumplida: la muestra quedó registrada y sincronizada, y habilita el plan del lote. El diagrama dibuja 1 ruta alternativa. Si no hay señal al finalizar, la ronda queda guardada en el teléfono (PASO 7) y un evento del sistema la envía sola cuando vuelve la cobertura.

\begin{figure}[H]
\caption{User flow UF-F12: muestrear el cuajado sin conexión.} \label{fig:uf-f12}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f12.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P53 · Registrar árbol / Conteo fuera de rango.** Se activa cuando el conteo está fuera de rango (por ejemplo, con 40 brotes el máximo admitido es 160 frutos). Resultado: corrige el conteo y retoma el PASO 5.

**UF-F13 · Aclarear a tiempo.** Meta de usuario: «Quiero saber cuánta fruta debo quitar y hasta qué fecha, y dejar registrado lo que hice.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US26, US27 y US28. Como se observa en la \autoref{fig:uf-f13}, la ruta esperada coincide con la de WF-F13 y recorre las pantallas P60 Plan, P61 Plan del lote, P62 Registrar aclareo y P63 Aclareo registrado, tras cuatro decisiones encadenadas (muestra suficiente, carga que necesita aclareo, ventana abierta y conexión). Cierra con la meta cumplida: sabe cuánto quitar y hasta cuándo, y su aclareo quedó en la Bitácora. El diagrama dibuja 5 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F13: aclarear a tiempo.} \label{fig:uf-f13}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f13.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P61 · Plan del lote / Muestra incompleta.** Se activa cuando la muestra tiene menos de 5 árboles. Resultado: toca «Continuar muestreo» y continúa en F12 (respaldo: US26 esc. 3).
- **P61 · Plan del lote / Carga óptima.** Se activa cuando la carga no necesita aclareo (0 % sin aclareo). Resultado: la ruta termina en el plan.
- **P61 · Plan del lote / Ventana concluida.** Se activa cuando la ventana de aclareo ya cerró. Resultado: toca «Registrar de todos modos» y pasa a P62 / Fuera de ventana.
- **P61 · Plan del lote / Sin conexión.** Se activa cuando no hay conexión a internet. Resultado: toca «Registrar aclareo» y retoma el PASO 2.
- **P62 · Registrar aclareo / Fuera de ventana.** Se activa cuando la fecha queda fuera de la ventana (aviso: se guardará en Bitácora, pero su efecto contra la vecería será menor). Resultado: toca «Guardar aclareo» y llega a P63.

**UF-F14 · Cerrar la campaña y obtener el expediente.** Meta de usuario: «Quiero registrar los kilos cosechados, cerrar la campaña y descargar el expediente de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US29 y US30. Como se observa en la \autoref{fig:uf-f14}, la ruta esperada coincide con la de WF-F14 y recorre las pantallas P10 Inicio (fase de cosecha), P70 Lote, P71 Registrar cosecha, P72 Asentar cosecha, P73 Campaña cerrada, P76 Expediente del lote y P77 PDF listo. Cierra con la meta cumplida: la campaña quedó cerrada y tiene el expediente del lote en PDF. El diagrama dibuja 3 rutas alternativas. Una nota del diagrama indica que, en el prototipo, «Ver expediente del lote» aún no navega a P76.

\begin{figure}[H]
\caption{User flow UF-F14: cerrar la campaña y obtener el expediente.} \label{fig:uf-f14}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f14.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P73 · Cosecha guardada sin conexión.** Se activa cuando no hay conexión al asentar la cosecha. Resultado: la cosecha queda en el teléfono como pendiente y se asentará al reconectar; aún puede corregir los kilos.
- **P72 · Campaña ya asentada (409).** Se activa cuando la campaña ya no está abierta. Resultado: toca «Ver comprobante» y pasa al PASO 6.
- **P76 · Expediente del lote / Sin conexión.** Se activa cuando no hay conexión al descargar el PDF. Resultado: toca «Abrir la última versión» y pasa al PASO 7.

**UF-F15 · Priorizar mis visitas de campo.** Meta de usuario: «Quiero saber qué sectores y parcelas socias están en riesgo, empezando por donde estoy, para decidir a quién visitar.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre las historias US12, US30 y US31. Como se observa en la \autoref{fig:uf-f15}, la ruta esperada coincide con la de WF-F15 y recorre las pantallas G10 Inicio, G20 Permiso de ubicación y Riesgo territorial, G22 Detalle del sector, G23 Parcela del socio y T16 Expediente técnico. Cierra con la meta cumplida: sabe qué parcelas visitar primero y tiene el expediente del socio. El diagrama dibuja 4 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F15: priorizar mis visitas de campo.} \label{fig:uf-f15}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f15.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **T14 · Alertas del gestor (US31).** Se activa cuando no empieza por el mapa de riesgo sino por las alertas. Resultado: toca «Abrir sector» y pasa al PASO 4.
- **G21 · Elegir sector (sin GPS).** Se activa cuando el GPS no está activo o no tiene permiso. Resultado: elige su sector en «¿En qué sector estás?» y pasa al PASO 4.
- **G20 · Sin conexión.** Se activa cuando no hay conexión a internet. Resultado: toca «Ver parcelas del sector» con el último estado guardado y pasa al PASO 4.
- **G23 · Sin datos suficientes.** Se activa cuando la parcela no tiene datos suficientes de muestreo. Resultado: toca «Ver expediente técnico» y pasa al PASO 6.

**UF-F16 · Proyectar el acopio de la campaña.** Meta de usuario: «Quiero estimar cuántas toneladas de aceituna verde y negra entregarán los socios para planificar la planta y los contratos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre la historia US32. Como se observa en la \autoref{fig:uf-f16}, la ruta esperada coincide con la de WF-F16 y recorre las pantallas G10 Inicio y G30 Acopio con su hoja de selección de campaña. Cierra con la meta cumplida: conoce las toneladas proyectadas de verde y negra, y cuánta cobertura de muestreo las respalda. El diagrama dibuja 3 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F16: proyectar el acopio de la campaña.} \label{fig:uf-f16}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f16.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **G30 · Sin conexión.** Se activa cuando no hay conexión a internet. Resultado: muestra la última proyección en caché, con su fecha.
- **G30 · Sin datos para proyectar.** Se activa cuando ningún socio tiene muestreo en la campaña. Resultado: muestra «aún sin cifra» y el acceso «Ver socios sin muestreo».
- **G30 · Preliminar (cobertura < 50 %).** Se activa cuando la cobertura de muestreo no llega al 50 %. Resultado: muestra la proyección marcada como preliminar, con aviso de margen de incertidumbre elevado.

**UF-F17 · Administrar socios y códigos.** Meta de usuario: «Quiero ver mi padrón de socios y el cupo de la licencia, y entregar códigos de activación a los socios nuevos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y cubre la historia US08. Como se observa en la \autoref{fig:uf-f17}, la ruta esperada coincide con la de WF-F17 y recorre las pantallas G10 Inicio, G40 Socios, G42 Códigos, G43 Generar códigos y G44 Códigos generados. Cierra con la meta cumplida: conoce su padrón y su cupo, y tiene los códigos listos para compartir con los socios nuevos. El diagrama dibuja 4 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F17: administrar socios y códigos.} \label{fig:uf-f17}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f17.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **G43 · Generar códigos / Cupo excedido.** Se activa cuando la cantidad de códigos supera las plazas libres de la licencia. Resultado: baja la cantidad con «−» y retoma el PASO 4.
- **G42 · Revocar código (diálogo).** Se activa cuando decide revocar un código por canjear en lugar de generar nuevos. Resultado: confirma «Revocar código» y el sistema evalúa si sigue sin canjear.
- **G42 · Códigos / Código revocado.** Se activa cuando el código seguía sin canjear. Resultado: el código sale de la lista y la plaza vuelve a la membresía; la ruta termina ahí.
- **G42 · Código ya canjeado (409).** Se activa cuando el código ya fue canjeado por el socio. Resultado: toca «Entendido» y regresa al PASO 3.

### Mobile Applications Prototyping

En esta sección se presenta y analiza la simulación interactiva y de navegación para las aplicaciones móviles de Viora, desarrollada sobre la plataforma Figma. Dicho prototipo de alta fidelidad operacionaliza las rutas prioritarias definidas en los diagramas de flujos de usuario, permitiendo comprobar el comportamiento dinámico, la coherencia de las transiciones visuales y la usabilidad de las interfaces tanto para el productor olivarero como para el gestor técnico de cooperativa bajo condiciones análogas a las de campo.

#### Criterios de diseño de interacción y articulación arquitectónica
&nbsp;

Las decisiones de interacción adoptadas en el prototipo móvil responden rigurosamente a las directrices de diseño del producto, las especificaciones ergonómicas de Material Design 3 y los sistemas de organización, navegación y búsqueda formulados en la arquitectura de información:

- Zonas táctiles y ergonomía con una sola mano: Todas las áreas interactivas, botones de acción principal, pestañas de navegación y conmutadores presentan una dimensión mínima de 48 por 48 dp, garantizando pulsaciones precisas y reduciendo errores accidentales en campo, inclusive durante la manipulación de dispositivos bajo vibración o con guantes agrícolas de protección.
- Sistema de navegación por pestañas inferiores y cabecera de perfil: La navegación estructural materializa fielmente la distribución de cuatro destinos base por rol especificada en los sistemas de navegación. Para el productor olivarero, la barra fija inferior articula Inicio, Lotes, Plan y Bitácora; para el gestor técnico, estructura Inicio, Riesgo territorial, Acopio y Socios. En ambos roles, el acceso a la configuración de cuenta, idioma y preferencias se sitúa de forma no invasiva en el extremo superior izquierdo de la cabecera, preservando el espacio inferior para tareas operativas sin sobrecargar la jerarquía visual con una quinta pestaña.
- Asistente guiado y retroalimentación táctil: Los flujos de incorporación (*onboarding*) y configuración inicial emplean una navegación secuencial paso a paso con barras de progreso lineales, campos de entrada numérica especializados y selectores interactivos directos, previniendo la fatiga cognitiva del usuario.
- Patrones de captura rápida y registro flotante: La arquitectura incorpora un botón de acción flotante (FAB) centralizado en la bitácora del productor, facilitando el despliegue de hojas de acción modal (*bottom sheets*) para el muestreo de cuajado, el aclareo ejecutado, el pesaje de cosecha y notas rápidas de campo.
- Resiliencia y affordance cromático: En concordancia con la paleta Cream, Forest, Harvest y Tierra, los elementos interactivos comunican con claridad su estado (reposo, pulsado y deshabilitado) manteniendo una relación de contraste que cumple con las pautas de accesibilidad WCAG AA bajo irradiación solar intensa.

#### Recorridos de interacción simulados en el prototipo
&nbsp;

La simulación funcional en video recorre secuencialmente la experiencia de ambos perfiles agronómicos, demostrando la continuidad operativa del sistema:

##### Flujo de interacción del productor olivarero
&nbsp;

El recorrido inicia con la secuencia de arranque (*splash screen*) y carga cinemática del sistema, dando paso a la pantalla de bienvenida. A continuación, el usuario ejecuta el flujo de registro guiado completando su nombre y número telefónico con prefijo internacional en formato E.164, seleccionando la opción de cuenta individual independiente sin código de cooperativa. Posteriormente, define una extensión territorial de doce hectáreas mediante el control deslizante e interactivo, habilita las alertas del sistema y revisa el resumen preliminar de alta.

Tras confirmar los datos, se formalizan las credenciales de acceso con correo y contraseña, validando la identidad mediante un código OTP ingresado en casillas independientes. En la etapa de suscripción, la interfaz computa automáticamente el plan anual correspondiente a la superficie ingresada (S/ 7,920 anuales), procesa la confirmación simulada del pago y redirige de inmediato a la configuración del primer predio. Mediante la herramienta de cartografía vectorial, el productor traza y cierra el contorno georreferenciado de su parcela, ingresa la denominación del lote, el marco de plantación entre árboles y consolida el registro en la base local.

En la pantalla principal de Inicio, el productor consulta el estado de la campaña en curso, las estadísticas del índice bienal de vecería (BBI) y el acceso al plan de aclareo. Desde allí, navega por el inventario de lotes para revisar parcelas georreferenciadas y accede a la sección de Bitácora, donde examina el historial de rondas de muestreo con mediciones fenológicas, los registros de aclareo y la proyección de cosecha. Mediante el botón de acción flotante, despliega el menú contextual de registro para cuajado, labores ejecutadas y notas de campo. Finalmente, explora el módulo meteorológico con variables climáticas locales y consulta las fases fenológicas de desarrollo del olivar (reposo, floración, cuajado, aclareo y cosecha).

##### Flujo de interacción del gestor técnico
&nbsp;

El segundo segmento inicia con la selección del perfil técnico y la apertura del formulario de registro corporativo. El gestor ingresa sus datos de contacto, autoriza las notificaciones territoriales del valle y revisa el resumen del perfil técnico antes de autenticarse con sus credenciales institucionales.

Al ingresar al panel de control, la interfaz expone el semáforo territorial de parcelas bajo supervisión correspondiente al sector La Yarada. La vista cartográfica interactiva geolocaliza cinco predios en estado crítico: cuatro afectados por sobrecarga frutal severa y uno por riesgo de helada. Al pasar al módulo de Acopio Proyectado, el gestor evalúa las proyecciones consolidadas de cosecha con un 62 % de cobertura muestral firme y tres predios pendientes de evaluación, analizando la discriminación por sector y tonelaje estimado.

En la pestaña de Socios, el gestor administra el padrón de cooperativistas y genera dinámicamente nuevos códigos alfanuméricos de invitación para vincular productores al entorno institucional. Desde la lista de socios, selecciona el predio de Teodoro Mamani identificado en estado crítico, accediendo al desglose de carga frutal estimada, la prescripción automática de aclareo y las opciones de contacto directo vía llamada celular y mensajería instantánea por WhatsApp. Por último, solicita y descarga el expediente técnico agronómico consolidado en formato PDF para su remisión inmediata al productor.

#### Demostración en video del prototipo interactivo
&nbsp;

A continuación se presenta el registro visual y el acceso al recurso audiovisual.

Link del video: [https://tinyurl.com/44hdrd42](https://tinyurl.com/44hdrd42)

Como se observa en la \autoref{fig:mobile-prototyping-home}, el prototipo se reproduce en Figma desde el panel de flujos, que organiza los recorridos de la App Productor y de la App Gestor por meta de usuario (por ejemplo, «Productor · 03 Inicio (F05)») e incluye las variantes de excepción, como el pago rechazado, el inicio sin conexión o el muestreo sin señal. La captura muestra el Inicio del productor en fase de aclareo, con el tapbar flotante y la tarjeta estacional que conduce al plan de aclareo.

\begin{figure}[H]
\caption{Prototipo Mobile: Reproducción del Flujo de Inicio del Productor en Figma.}
\label{fig:mobile-prototyping-home}
\centering
\includegraphics[width=0.88\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-prototyping/prototype-home-screenshot.png}
\caption*{\textit{Nota.} Panel de flujos del prototipo con los recorridos principales y sus variantes, y reproducción del Inicio (P10). Elaboración propia.}
\end{figure}

La \autoref{fig:mobile-prototyping-panoramic} presenta la vista panorámica del archivo en modo prototipo: a la izquierda, la reproducción iniciada en el splash (T01); a la derecha, las secciones de la App Productor (Kotlin) y de la App Gestor (Flutter) con sus puntos de inicio de flujo, que conectan las láminas de cada meta de usuario con la misma organización empleada en los wireframes, mock-ups y user flows.

\begin{figure}[H]
\caption{Prototipo Mobile: Vista Panorámica de Flujos y Conexiones en Figma.}
\label{fig:mobile-prototyping-panoramic}
\centering
\includegraphics[width=0.88\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/mobile-prototyping/prototype-panoramic-screenshot.png}
\caption*{\textit{Nota.} Puntos de inicio de flujo de ambas aplicaciones y reproducción del splash del prototipo. Elaboración propia.}
\end{figure}
