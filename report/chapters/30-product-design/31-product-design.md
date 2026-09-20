# Capítulo III: Product UX/UI Design

## Product Design

Esta sección documenta el diseño de producto de Viora como parte integral de la arquitectura del sistema, cubriendo tanto las bases visuales compartidas como la organización del contenido y la propuesta de interacción de las tres superficies del ecosistema: la aplicación del productor, la aplicación del gestor técnico y el landing informativo. El desarrollo se organiza en cinco bloques: Style Guidelines, Information Architecture, Landing Page UI Design, Mobile Applications UX/UI Design y Mobile Applications Prototyping.

### Style Guidelines


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

**Branding.** El logotipo de Viora integra el isotipo, una hoja contenida en un círculo, dentro de la letra "o" del nombre. Así, la marca remite al olivo sin recurrir a una ilustración literal. Se definen cinco variaciones con usos precisos: positivo sobre fondo claro, negativo sobre verde Forest, isotipo aislado, versión sobre el acento Harvest y el ícono de aplicación. La paleta de marca se aplica con una proporción de uso fija: Cream 55 %, Forest 25 %, Shadow 10 %, Harvest 7 % y Tierra 3 %. La marca vive sobre Cream y Forest, mientras que Harvest y Tierra funcionan como acentos puntuales y nunca como fondos extensos. Esta proporción aplica el principio de énfasis: si el amarillo y el terracota aparecen poco, cada vez que aparecen señalan algo importante. La lámina también verifica el contraste de cada combinación de texto y fondo, y descarta las que no alcanzan el mínimo de legibilidad (texto Forest sobre Tierra, 2.2:1, y texto Tierra sobre Harvest, 2.4:1). Como se observa en la \autoref{fig:gsg-branding}, la marca se complementa con cuatro valores (Natural, Cercana, Precisa y Confiable) que anticipan el tono de comunicación descrito más adelante.

\begin{figure}[H]
\caption{Branding de Viora.} \label{fig:gsg-branding}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/general-style-guidelines/01-branding.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Colors.** El color principal es Forest (green/800, #2E4A3A), acompañado por un tono más oscuro (green/900, #1F2C26), el acento Harvest (harvest/300, #E8B923) y el secundario Tierra (terracotta/500, #C15A2E). A partir de cada color de marca se generó una escala tonal de once pasos en el espacio de color OKLCH, que mantiene una progresión de luminosidad perceptualmente uniforme entre pasos. A estas escalas se suma una escala neutra cálida (Warm Grey), teñida con el crema de la marca, para superficies, bordes y textos; el negro puro no se usa en ningún punto de la interfaz. Los colores de estado (Error, Warning, Info y Success) se definen con un tono sólido para íconos y énfasis, y tonos suaves para contenedores; Warning reutiliza la escala Harvest para no introducir un amarillo adicional. Finalmente, como se observa en la \autoref{fig:gsg-colors}, todas las escalas se asignan a los roles semánticos de Material 3 (primary, secondary, tertiary, error y sus contenedores, además de las superficies y contornos). Los diseñadores eligen roles y no pasos de escala, lo que garantiza que un mismo significado se represente siempre con el mismo color en todas las pantallas.

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

**Iconography.** Los íconos de interfaz provienen del set de Material 3 disponible en Jetpack Compose. Los íconos de dominio se toman de Material Symbols Rounded (peso 400, sin relleno, 24 dp), disponibles como Icons.Rounded en Compose y como Symbols rounded en Flutter, lo que asegura que ambas aplicaciones muestren exactamente los mismos símbolos. Como se observa en la \autoref{fig:gsg-iconography}, los íconos de dominio se agrupan según los módulos funcionales de Viora: lotes y parcelas, vecería y BBI, frío y clima, carga frutal, plan de intervención, bitácora de mediciones, alertas priorizadas y portafolio organizacional. Cada concepto del dominio tiene un solo ícono asignado, lo que refuerza su reconocimiento por repetición.

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

**Buttons & Items.** El contenido de las pantallas se construye con componentes de Material 3 en todas las plataformas: Kotlin con Jetpack Compose y Flutter con ThemeData de Material 3 producen interfaces visualmente idénticas en Android. En iOS, la aplicación en Flutter mantiene el contenido en Material 3 y solo adapta la capa de navegación y los controles flotantes al estilo Liquid Glass de la plataforma, para respetar los comportamientos que el usuario de iPhone espera. Los botones tienen cinco estilos y dos tamaños, y la jerarquía de acciones es explícita: Filled para la acción principal, Tonal u Outlined para las secundarias y Text para descartar, con un máximo de un botón Filled por pantalla. El FAB es la única superficie amarilla grande de la aplicación y se reserva para la acción más frecuente de la pantalla, como registrar un conteo. Las cards tienen tres tipos con propósito fijo: Elevated para lotes, Filled para métricas y Outlined para alertas y contenido secundario. Como se observa en la \autoref{fig:gsg-buttons}, la navegación principal en Android es una barra inferior con cuatro destinos (Inicio, Lotes, Plan y Bitácora), que en iOS se convierte en una barra flotante con el mismo contenido.

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


#### Organization Systems

En esta sección se explica cómo se agrupa y ordena la información en las dos experiencias de Viora: el landing informativo y la aplicación móvil. Para ambas se aplicó la técnica de Content Organization Steps, que organiza el contenido en tres pasos sucesivos:

1. **Ontology:** listar las piezas críticas de información, es decir, lo que el producto quiere decir.
2. **Taxonomy:** agrupar esas piezas en partes claramente articuladas.
3. **Choreography:** decidir el orden y las rutas por las que el usuario recorre esos grupos.

Las piezas de ambas ontologías se derivan de las User Stories del Product Backlog, de modo que cada elemento de la arquitectura de información tiene un origen trazable en un requisito.

**Landing Page.** Como se observa en la \autoref{fig:os-landing-ontology}, la ontología del landing reúne 22 piezas de información derivadas de las historias US33 a US41: la propuesta de valor, el problema de la alternancia productiva, la solución, las funcionalidades y los casos de uso, el contexto de las cosechas de Tacna, los dos segmentos con sus beneficios, los planes de acceso, el equipo y los elementos de soporte (descarga de la aplicación, idioma y documentos legales). Se incluyen también los videos About the Product y About the Team, que deben incrustarse en el landing.

\begin{figure}[H]
\caption{Landing Page Ontology de Viora.} \label{fig:os-landing-ontology}
\centering
\includegraphics[width=0.95\textwidth,height=0.45\textheight,keepaspectratio]{report/assets/organization-systems/landingpage-ontology.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Como se observa en la \autoref{fig:os-landing-taxonomy}, esas piezas se agrupan en siete bloques:

1. Propuesta: Hero, propuesta de valor, problema y solución.
2. Producto: Features, Use Cases y video del producto.
3. Contexto y segmentos: cosechas de Tacna, productor y asesor o gestor, cada uno con sus beneficios.
4. Acceso: Plan Productor, Plan Cooperativa e invitación al asesor.
5. Institucional: equipo, ArcadiaDevs y video del equipo.
6. Conversión y legal: CTA final, descarga de la aplicación, términos y privacidad.
7. Navegación global: idioma y footer.

Cada color del tablero identifica un bloque.

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

La diferencia principal respecto a la ontología es la matriz de riesgo territorial (US12). Aunque pertenece a la épica de parcelas, en la taxonomía se ubica en Cooperative Intelligence, porque es una vista de trabajo del gestor y comparte contexto con el semáforo reactivo de la US31.

\begin{figure}[H]
\caption{Mobile App Taxonomy de Viora.} \label{fig:os-mobile-taxonomy}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/organization-systems/mobile-app-taxonomy.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

<!-- TODO: redactar la explicación de la Mobile App Choreography cuando el diagrama esté terminado. -->

\begin{figure}[H]
\caption{Mobile App Choreography de Viora.} \label{fig:os-mobile-choreography}
\centering
\includegraphics[width=0.95\textwidth,height=0.85\textheight,keepaspectratio]{report/assets/organization-systems/mobile-app-choreography.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

**Sistemas de organización visual.** Según la naturaleza de cada grupo de información, se aplica uno de tres sistemas de organización visual, como se detalla a continuación:

| Sistema | Landing Page | Aplicación móvil | Sustento |
|:-------------------|:------------------------|:-----------------------------|:------------------------|
| Jerárquico (visual hierarchy) | Hero, Features, planes de acceso y About Us: un mensaje principal con detalles subordinados. | Pantallas de inicio por rol, detalle de parcela y lectura de carga frutal: el dato principal domina y el contexto se subordina. El tipo de card distingue el rol de cada bloque: Elevated para lotes, Filled para métricas y Outlined para alertas. | El usuario necesita captar lo esencial de un vistazo antes de profundizar, especialmente en campo, donde la atención es breve. |
| Secuencial (step-by-step to accomplish) | Recorrido de scroll del problema a la solución, casos de uso (problema, módulo, resultado) y transición animada entre segmentos. | Registro y rol (US01, US43), suscripción con pago (US06), delimitación de parcela con GPS (US09), muestreo de cuajado árbol por árbol (US24), prescripción y registro de aclareo (US27, US28) y cierre de campaña (US29, US30). | Son tareas con un orden obligatorio, donde saltar un paso invalida el resultado; guiarlas paso a paso reduce errores y, en el muestreo, permite avanzar sin conexión. |
| Matricial | Comparación de planes de acceso según características. | Matriz de riesgo territorial y semáforo por sector (US12, US31), series temporales de sensores por variable y rango (US17), historial de campañas frente al BBI (US20) y proyección de acopio de aceituna verde y negra (US32). | La información tiene dos dimensiones que el usuario necesita cruzar para decidir, como sector frente a nivel de riesgo o campaña frente a producción. |

**Esquemas de categorización.** De forma complementaria, el contenido se clasifica con cuatro esquemas, según cómo busca el usuario cada tipo de información:

| Esquema | Dónde se aplica | Sustento |
|:-------------------------|:------------------------------------|:------------------------------------|
| Cronológico | Historial de campañas y cálculo del BBI (US20), series temporales de 24 horas, 7 días y 30 días (US17), pronóstico a 7 días (US19), acumulación de frío de la temporada invernal (US22), ventana de aclareo con fecha límite (US27) y bitácora de la parcela (US28). | El productor piensa en campañas y temporadas: la vecería solo se entiende al comparar años sucesivos, y las intervenciones dependen de ventanas fenológicas con fecha. |
| Por tópicos | Las ocho secciones de la taxonomía móvil (parcelas, monitoreo, alternancia y frío, carga y aclareo, cierre, entre otras) y los bloques del landing. | Cada sección responde a un tipo de decisión distinto, y el usuario llega buscando un tema, no una función aislada. |
| Por audiencia | Separación de la aplicación por rol (productor y gestor), secciones exclusivas del gestor (Cooperative Admin y Cooperative Intelligence) y, en el landing, los segmentos y planes diferenciados para productor y cooperativa. | Los dos segmentos tienen objetivos distintos: el productor gestiona su parcela y el gestor supervisa el territorio y la cartera de socios. |
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
| Registrar aclareo | Fecha y porcentaje realmente ejecutados por el productor. No es un acuse de lectura. |
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

Se incluye Keywords para cumplir el enunciado, aunque Google Search no utiliza esa etiqueta para indexación o posicionamiento. Title y Description se redactan de forma concisa y acorde con el contenido; las cifras de 60 y 155 caracteres no se presentan como límites técnicos obligatorios de Google. Fuente: [Google Search Central, metadatos admitidos](https://developers.google.com/search/docs/crawling-indexing/special-tags).

Para compartir la landing se establecen `og:title` = “Viora: gestión del olivar y aclareo guiado”, `og:description` = la descripción de la landing, `og:type` = `website` y `og:locale` = `es_PE`. La URL canónica, `og:url` y la URL absoluta de `og:image` se completarán con el dominio definitivo y el recurso de marca aprobado; no se inventan direcciones ni se publican placeholders. La versión inglesa debe localizar también sus metadatos y declarar el idioma correcto del documento.

La privacidad de los datos de cuenta y parcelas depende de la autenticación y autorización del sistema. Las directivas de indexación no sustituyen estos controles. No se atribuye a una ley una obligación específica de configurar SEO para pantallas móviles.

**Elementos ASO.** La identidad pública propuesta es “Viora”, para productores y gestores. Kotlin y Flutter son implementaciones tecnológicas, no aplicaciones separadas por audiencia. Las fichas de distribución que se utilicen deben describir las capacidades de ambos roles. En el AV1 la distribución de pruebas está definida mediante Firebase App Distribution; estos valores preparan la descripción del producto y no afirman una publicación actual en Google Play o App Store.

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

Viora ofrece búsqueda contextual dentro de los inventarios y registros, junto con filtros apropiados para cada consulta. No se plantea un buscador universal sobre todos los datos. Las opciones siguientes concretan decisiones de interfaz sobre la información requerida por las historias de usuario; no presuponen que cada filtro constituya un endpoint ya implementado.

**Landing Page.** Por su extensión y recorrido secuencial, el sitio no necesita un buscador interno. El menú por secciones, los enlaces entre casos de uso y funcionalidades y los accesos desde cada segmento a su plan permiten localizar la información. Los documentos legales se encuentran en el pie de página.

**Aplicaciones móviles.** Solo se consultan registros autorizados para la cuenta y el rol. El contexto de lote y campaña se mantiene visible y puede preseleccionarse cuando la consulta se abre desde su detalle.

| Consulta y respaldo | Medio y filtros propuestos | Presentación y orden |
|:-------------------------|:------------------------------------|:------------------------------------|
| Lotes del productor (US09–US11) | Nombre del lote; variedad registrada; activos o archivados. Las variedades proceden de los valores disponibles, sin fijar una lista de dos opciones en esta sección. | Tarjetas con nombre, variedad y estado; orden alfabético por nombre. |
| Historial de cosechas e índice BBI (US20, US21) | Selección de lote y año de campaña. | Campañas recientes primero, con año y volumen. La serie comparativa y el BBI se muestran con contexto y estado de suficiencia del historial. |
| Muestreos y árboles evaluados (US24, US25) | Lote, campaña, fecha y estado de sincronización; identificación del árbol dentro de la ronda. | Rondas recientes primero y detalle de árboles, brotes y frutos; estado local o sincronizado visible. |
| Plan de aclareo (US26–US28) | Selección de lote y campaña para consultar evaluación, prescripción y registros de ejecución. | Carga, porcentaje prescrito, fecha límite y labores registradas, distinguiendo lo calculado de lo ejecutado. No se ofrece búsqueda de acuses del gestor. |
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

**Aplicación: experiencia del gestor.** Se propone un menú por rol con Inicio, Riesgo territorial, Acopio, Socios y Cuenta. Esta agrupación concreta las áreas compartidas y exclusivas de la taxonomía; no se presenta como un árbol de seis secciones previamente aprobado. Inicio resume el estado de la organización; Riesgo territorial abre la matriz o mapa y el detalle autorizado de parcela; Acopio permite revisar la campaña y sus proyecciones; Socios reúne la cartera y los accesos a la administración de membresías y cupos; Cuenta contiene perfil e idioma. Los expedientes se abren desde el contexto de la parcela y campaña, conforme a US30.

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

**Conectividad y acceso directo.** La captura de muestreos conserva los registros localmente y diferencia su guardado de la aceptación del servidor. Las pantallas pueden mostrar información previamente almacenada y autorizada con su fecha de actualización, sin garantizar que esté completa o vigente. Los cálculos de carga y prescripción, la actualización del riesgo y acopio, el cierre confirmado, la generación de PDF y las operaciones de suscripción requieren la comunicación correspondiente con el servidor. No se establece un nuevo flujo de cosecha offline sin un requisito que lo respalde.

Los enlaces profundos hacia detalles validan sesión, rol y acceso al recurso antes de mostrar datos. Si el recurso no está disponible localmente y no hay conexión, se informa y se permite volver o reintentar. Una prescripción almacenada muestra su fecha y no se presenta como recién calculada. Al retornar de un pago, la aplicación consulta el estado validado por el servidor antes de mostrar la suscripción como activada.

Las propuestas de menú del gestor y ubicación de accesos secundarios deben trasladarse al diagrama Mobile App Choreography, cuya explicación sigue pendiente en el archivo fuente, y comprobarse durante el QA de los wireflows. Así se documentan como decisiones de diseño de esta sección, sin atribuirles una validación previa en Miro.

### Landing Page UI Design

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* elaborar la propuesta de UI del Landing Page, iniciando con una introducción que explique cómo el equipo traduce las decisiones de diseño visual y de arquitectura de información a la interfaz.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la propuesta debe instanciar exactamente la secuencia de ocho bloques y el vocabulario de etiquetas del landing definidos en Organization Systems y Labeling Systems, sin agregar bloques ni renombrarlos.

#### Landing Page Wireframe

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los wireframes del Landing Page para navegador de escritorio y para navegador móvil, evidenciando la aplicación de los principios y elementos de diseño, el diseño inclusivo y la arquitectura de información.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireframe debe reflejar fielmente la secuencia de scroll de ocho bloques definida en Organization Systems, sin reordenarla ni introducir bloques adicionales.

#### Landing Page Mock-up

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los mock-ups del Landing Page para navegador de escritorio y para navegador móvil, evidenciando principios y elementos de diseño, diseño inclusivo, arquitectura de información y el Design System establecido para los productos digitales.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* el mock-up debe aplicar el Design System pendiente sobre la misma secuencia de bloques y las mismas etiquetas ya fijadas en Organization Systems y Labeling Systems, sin alterar la arquitectura de información aprobada.

### Mobile Applications UX/UI Design

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar la propuesta visual y de interacción de las aplicaciones móviles que constituyen la experiencia de usuario de los productos digitales.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la propuesta debe instanciar los árboles de navegación del productor y del gestor definidos en Organization Systems, respetando la profundidad máxima de tres niveles y el vocabulario de Labeling Systems.

#### Mobile Applications Wireframes

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los wireframes de las aplicaciones móviles, evidenciando principios y elementos de diseño, diseño inclusivo y arquitectura de información, utilizando las herramientas indicadas por la cátedra.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireframe debe corresponder a un nodo real de los árboles de navegación definidos en Organization Systems, sin agregar niveles ni introducir etiquetas fuera del vocabulario controlado de Labeling Systems.

#### Mobile Applications Wireflow Diagrams

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar los wireflows, considerando un wireflow por cada meta de usuario y por cada persona de usuario de cada aplicación del alcance, recomendándose elaborar antes los task flows correspondientes; cada wireflow requiere una meta de usuario redactada y una explicación del flujo representado.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* cada wireflow debe recorrer únicamente las rutas de navegación y los enlaces profundos declarados en Navigation Systems.

#### Mobile Applications Mock-ups

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar y explicar los mock-ups de las aplicaciones móviles, evidenciando principios y elementos de diseño, diseño inclusivo, arquitectura de información y el Design System establecido, utilizando las herramientas indicadas por la cátedra.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* los mock-ups deben aplicar el Design System sobre los mismos nodos de navegación y las mismas etiquetas ya definidos en Organization Systems y Labeling Systems, sin modificar la arquitectura de información aprobada.

#### Mobile Applications User Flow Diagrams

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* presentar los user flows, considerando uno por cada meta de usuario y persona de usuario, consistentes con los wireflows de los que derivan, incluyendo los mock-ups de las pantallas junto con la ruta esperada y las rutas alternativas; cada user flow requiere una meta de usuario redactada y una explicación de los flujos y condiciones representados.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la ruta esperada y las rutas alternativas deben ser consistentes con las rutas de Navigation Systems, y con las facetas de Searching Systems cuando el flujo incluya una búsqueda.

### Mobile Applications Prototyping

> **Sección pendiente de redacción.**
>
> *Qué exige el enunciado:* incluir prototipos de UI para navegador de escritorio y navegador móvil con simulación de interacción y navegación, acordes con la propuesta de rutas de los user flow diagrams, iniciando con una introducción sobre los principales criterios de las decisiones de interacción y evidenciando su relación con las decisiones de arquitectura de información, en particular el sistema de navegación y los tipos de interacción seleccionados; para cada aplicación debe incluirse una captura del video y un enlace al video correspondiente.
>
> *Insumos disponibles en el repositorio:* el catálogo de marca de `report/assets/viora-brand/` (paleta, isologotipo, isotipo, icono). El equipo ya emplea Lucidchart y Figma para su material gráfico, de modo que la herramienta de trabajo no requiere decisión nueva.
>
> *Enlace con la arquitectura de información:* la simulación de interacción y navegación debe reproducir fielmente el sistema de navegación —pestañas inferiores, menú lateral, migas de pan y enlaces profundos— definido en Navigation Systems.
