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