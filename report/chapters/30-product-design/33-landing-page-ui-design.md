### Landing Page UI Design

En esta sección se presenta la propuesta visual y de interfaz de usuario para el Landing Page de Viora, el cual constituye el escaparate público del modelo de negocio y el punto de acceso para los dos segmentos objetivo: productores olivareros y gestores técnicos de cooperativas agrarias. La concepción del sitio web traduce las decisiones de diseño establecidas en las *Style Guidelines* y en la arquitectura de información, asegurando una experiencia homogénea, accesible y fuertemente ligada a la identidad del producto.

A nivel de identidad y lenguaje visual, el diseño traduce los cuatro valores nucleares de marca instituidos en las *Style Guidelines*: Natural (evocado mediante la paleta orgánica dominada por el color crema cálido *Cream* en 55 % y el verde olivo *Forest* en 25 %), Cercana (expresado a través de ilustraciones con técnica de grabado artesanal, retratos empáticos de productores locales y un tono de voz directo, empático y respetuoso), Precisa (reflejada en la estructuración rigurosa de métricas agronómicas, porcentajes fenológicos y gráficos temporales) y Confiable (sustentada en la claridad de las tarifas en moneda local, pasarelas de pago auditadas y presencia institucional del equipo desarrollador). Asimismo, la jerarquía tipográfica respeta el uso de *Axiforma* como fuente de marca expresiva para titulares de alto impacto en los roles *Display* y *Headline*, y *Roboto* para el contenido funcional y de lectura en los roles *Title*, *Body* y *Label*, garantizando legibilidad óptima y contrastes que satisfacen los estándares WCAG AA.

En estrecha sincronía con la arquitectura de información, la coreografía de desplazamiento sigue estrictamente la secuencia de seis bloques funcionales definida en *Organization Systems*: Hero y propuesta de valor, descripción de módulos y casos de uso del producto, contexto olivícola de Tacna y caracterización de segmentos, modalidades de suscripción y planes de acceso, presentación institucional del equipo de desarrollo ArcadiaDevs, y zona de conversión final con pie de página legal e idiomático. Se aplican de forma sistemática los sistemas de organización visual jerárquico, secuencial y matricial. Además, los componentes interactivos respetan el vocabulario controlado de *Labeling Systems* y las reglas de *Navigation Systems*, garantizando acceso global al selector idiomático (Español / English) y llamadas a la acción redundantes e intencionales.

#### Landing Page Wireframe
&nbsp;

Los wireframes constituyen la representación esquelética y funcional en baja fidelidad del Landing Page. Su propósito fundamental es validar la jerarquía de contenidos, la distribución espacial, los recorridos visuales del usuario y las áreas de interacción antes de la aplicación cromática definitiva, evidenciando los principios de diseño inclusivo, consistencia y trazabilidad con la arquitectura de información.

**Wireframes en Desktop Web Browser.** La versión para navegador de escritorio se estructura sobre una grilla de doce columnas fluidas según las especificaciones de *Spacing & Layout* para ventanas *Expanded* ($\ge 840$ dp), aplicando márgenes y paddings basados estrictamente en la escala modular de múltiplos de 4 dp. Como se muestra en la \autoref{fig:wf-desktop-01-ab}, la cabecera fija incorpora el isotipo de Viora, accesos directos por ancla ("Inicio", "Producto", "Para quién", "Planes", "Equipo"), selector idiomático y el CTA primario "Descarga la app", dando paso al Hero con la promesa central ("Anticipa la Próxima Cosecha. Equilibra tu olivar") y el widget de ventana de aclareo (panel a); complementándose con la contextualización de la vecería bajo la premisa "Datos del Campo, Decisiones a Tiempo" (panel b).

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 1 - Hero, Portada y Problemática de la Vecería.}
\label{fig:wf-desktop-01-ab}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-1-hero-portada.png}
\caption*{(a) Bloque 1.1: Hero y portada principal.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-2-problema-veceria.png}
\caption*{(b) Bloque 1.2: Problemática de la vecería.}
\end{minipage}
\caption*{\textit{Nota.} Disposición esquelética del encabezado, portada y planteamiento del problema agronómico. Elaboración propia.}
\end{figure}

Como se ilustra en la \autoref{fig:wf-desktop-01-3-02}, la presentación de la solución (panel a) introduce formalmente la plataforma ("Somos Viora") y el recurso audiovisual *About the Product*, conectando con la pregunta de transición hacia los módulos operativos; mientras que el núcleo del producto (panel b) estructura las tarjetas modulares (Carga frutal, Frío invernal y Plan de aclareo) junto al carrusel interactivo de casos de uso.

\begin{figure}[H]
\caption{Wireframe Desktop: Bloques 1.3 y 2 - Presentación de Solución y Módulos de Producto.}
\label{fig:wf-desktop-01-3-02}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-01-3-solucion-viora.png}
\caption*{(a) Bloque 1.3: Presentación de la solución Viora.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-02-producto-features.png}
\caption*{(b) Bloque 2: Módulos y casos de uso.}
\end{minipage}
\caption*{\textit{Nota.} Estructura de la propuesta tecnológica y capacidades funcionales del sistema. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:wf-desktop-03-1}, se introduce el esquema cronológico y territorial centrado en Tacna con tres métricas esenciales de impacto (81 % de concentración nacional, 90 % de merma crítica y 1 de cada 2 campañas en año *OFF*) articuladas con la línea de tiempo fenológica del olivo. Asimismo, en la \autoref{fig:wf-desktop-03-bc} se modela la categorización por audiencia: el Productor Olivarero bajo el dolor *"Un año sobra, el otro falta"* con captura offline (panel a); y el Gestor Técnico de Cooperativas bajo la premisa *"No puedes estar en cada parcela"* con semáforo territorial y cabecera de planes (panel b).

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 3.1 - Contexto Territorial de Tacna y Ciclo Fenológico.}
\label{fig:wf-desktop-03-1}
\centering
\includegraphics[width=0.60\textwidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-1-contexto-tacna.png}
\caption*{\textit{Nota.} Distribución de métricas agronómicas regionales y ciclo fenolgggico. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Wireframe Desktop: Bloques 3.2 y 3.3 - Segmentación de Usuarios (Productor y Gestor Técnico).}
\label{fig:wf-desktop-03-bc}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-2-segmento-productor.png}
\caption*{(a) Bloque 3.2: Segmento Productor Olivarero.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-03-3-segmento-gestor.png}
\caption*{(b) Bloque 3.3: Segmento Gestor Técnico.}
\end{minipage}
\caption*{\textit{Nota.} Estructuración de ventajas competitivas para productores independientes y cooperativas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-desktop-04} se modelan las modalidades de acceso: el Plan Productor (panel a) con suscripción individual en moneda local (*S/ XX*), maqueta móvil y flujo de pago digital vía Mercado Pago; y el Plan Cooperativa (panel b) con cobertura asociativa (S/ 0 individual) y proceso de tres pasos para emisión y canje de licencias. Asimismo, en la \autoref{fig:wf-desktop-05-06} se disponen la presentación institucional de ArcadiaDevs con la lista de sus cinco integrantes (panel a), las declaraciones de misión, visión y video institucional *About the Team* (panel b), y la zona de conversión final con pie de página regulatorio (panel c).

\begin{figure}[H]
\caption{Wireframe Desktop: Bloque 4 - Planes de Acceso (Plan Productor y Plan Cooperativa).}
\label{fig:wf-desktop-04}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-04-1-plan-productor.png}
\caption*{(a) Bloque 4.1: Plan Productor (individual).}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-04-2-plan-cooperativa.png}
\caption*{(b) Bloque 4.2: Plan Cooperativa y activación.}
\end{minipage}
\caption*{\textit{Nota.} Esquema estructural comparativo de planes individuales y asociativos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Wireframe Desktop: Bloques 5 y 6 - Equipo ArcadiaDevs, Misión y Pie de POST gina.}
\label{fig:wf-desktop-05-06}
\centering
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-05-1-equipo-arcadiadevs.png}
\caption*{(a) Bloque 5.1: Equipo ArcadiaDevs.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-05-2-mision-vision.png}
\caption*{(b) Bloque 5.2: Misión y visión.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-desktop/wf-desktop-06-conversion-footer.png}
\caption*{(c) Bloque 6: Footer y legal.}
\end{minipage}
\caption*{\textit{Nota.} Identidad institucional del equipo de desarrollo, postulados de valor y pie de página de escritorio. Elaboración propia.}
\end{figure}

**Wireframes en Mobile Web Browser.** La adaptación a navegadores móviles responde a las especificaciones para ventanas *Compact* ($< 600$ dp), organizando el contenido sobre una grilla fluida de 4 columnas con área táctil mínima de 48 por 48 dp y navegación superior condensada en men lateral accesible (*drawer*).

Como se muestra en la \autoref{fig:wf-mobile-01}, la cabecera móvil introduce la propuesta de valor y el CTA prominente (panel a), continuada por la problemática de vecería y presentación de la solución en tarjetas verticales apiladas (panel b). En la \autoref{fig:wf-mobile-02-03}, los módulos funcionales (panel a) y los datos contextuales de Tacna con fichas de segmentos (panel b) garantizan lectura ergonómica en exteriores. Por último, en la \autoref{fig:wf-mobile-04-05} se exhiben los planes de acceso en tarjetas táctiles accesibles (panel a) y el bloque institucional con pie de página regulatorio (panel b).

\begin{figure}[H]
\caption{Wireframe Mobile: Bloque 1 - Hero, Portada, Problemática y Solucinnn Viora.}
\label{fig:wf-mobile-01}
\centering
\begin{minipage}[b]{0.38\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-01-1-hero-portada.png}
\caption*{(a) Bloque 1.1: Hero y portada móvil.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.58\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-01-problema-solucion.png}
\caption*{(b) Bloques 1.2 y 1.3: Problema y solución.}
\end{minipage}
\caption*{\textit{Nota.} Disposición esquelética móvil del bloque inicial del producto. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Wireframe Mobile: Bloques 2 y 3 - Módulos de Producto, Contexto de Tacna y Segmentación.}
\label{fig:wf-mobile-02-03}
\centering
\begin{minipage}[b]{0.35\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-02-producto-features.png}
\caption*{(a) Bloque 2: Módulos funcionales.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.60\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-03-contexto-segmentos.png}
\caption*{(b) Bloque 3: Tacna y segmentación.}
\end{minipage}
\caption*{\textit{Nota.} Adaptación móvil de características funcionales, métricas y perfiles de usuario. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Wireframe Mobile: Bloques 4 a 6 - Planes de Acceso, Equipo ArcadiaDevs y Footer.}
\label{fig:wf-mobile-04-05}
\centering
\begin{minipage}[b]{0.45\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-04-planes-acceso.png}
\caption*{(a) Bloque 4: Planes de acceso.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.52\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/wireframes-mobile/wf-mobile-05-06-equipo-footer.png}
\caption*{(b) Bloques 5 y 6: Equipo y pie de página.}
\end{minipage}
\caption*{\textit{Nota.} Estructura móvil de contratación comercial, equipo de desarrollo y enlaces legales. Elaboración propia.}
\end{figure}

#### Landing Page Mock-up
&nbsp;

Los mock-ups constituyen la expresión gráfica definitiva en alta fidelidad del Landing Page. En ellos se materializa el Design System institucional de Viora, incorporando la paleta de colores corporativa (tonos verde olivo profundo, acentos dorados y fondos orgánicos en escala crema/arena), la selección tipográfica de titulares serifados de alto impacto visual y cuerpos sans-serif de legibilidad optimizada, micro-ilustraciones temáticas del cultivo de olivo y capturas fidedignas de las interfaces de software.

**Mock-ups en Desktop Web Browser.** El diseño de alta fidelidad para escritorio ofrece una atmósfera inmersiva aplicando rigurosamente los tokens de color y forma: fondos cálidos en crema *Cream* (#F3F0EA, 55 % de uso), bloques prominentes en verde olivo *Forest* (#2E4A3A, 25 %), acentos puntuales en dorado *Harvest* (#E8B923, 7 %) y terracota *Tierra* (#C15A2E, 3 %), complementados con sombras suaves teñidas en verde oscuro *Shadow* (#1F2C26).

Como se muestra en la \autoref{fig:mk-desktop-01-ab}, el bloque inicial destaca por el grabado botánico en tonalidad arena junto al widget interactivo de aclareo (panel a) y el despliegue del lema "Datos del Campo, Decisiones a Tiempo" sobre fondo crema (panel b).

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 1 - Hero, Portada Principal y Problemática en Alta Fidelidad.}
\label{fig:mk-desktop-01-ab}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-1-hero-portada.png}
\caption*{(a) Bloque 1.1: Hero y portada en alta fidelidad.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-2-problema-veceria.png}
\caption*{(b) Bloque 1.2: Problemática de la vecería.}
\end{minipage}
\caption*{\textit{Nota.} Diseño visual terminado del bloque inicial con aplicación estricta del Design System. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-01-3-02} se aprecian la solución Viora con su reproductor audiovisual editorial y titular de transición (panel a), junto al tratamiento en alta fidelidad de los módulos funcionales con tarjetas de 24 dp de curvatura y carrusel de casos de uso (panel b).

\begin{figure}[H]
\caption{Mock-up Desktop: Bloques 1.3 y 2 - Solución Viora y Módulos de Producto en Alta Fidelidad.}
\label{fig:mk-desktop-01-3-02}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-01-3-solucion-viora.png}
\caption*{(a) Bloque 1.3: Solución Viora y video promocional.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-02-producto-features.png}
\caption*{(b) Bloque 2: Módulos y casos de uso.}
\end{minipage}
\caption*{\textit{Nota.} Presentación gráfica terminada de la propuesta de valor y capacidades operativas. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mk-desktop-03-1}, el bloque contextual integra fotografía en alta resolución del Arco Parabólico de Tacna con las métricas 81 %, 90 % y 1 de 2. Asimismo, en la \autoref{fig:mk-desktop-03-bc} se detallan las fichas acabadas del Productor Olivarero (panel a) con ilustración en grabado a color y del Gestor Técnico (panel b) con formas expresivas terracota y amarilla.

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 3.1 - Contexto de Tacna y Fenología en Alta Fidelidad.}
\label{fig:mk-desktop-03-1}
\centering
\includegraphics[width=0.60\textwidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-1-contexto-tacna.png}
\caption*{\textit{Nota.} Fotografía paisajística y métricas agronómicas de Tacna en alta definición. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Mock-up Desktop: Bloques 3.2 y 3.3 - Segmentación de Usuarios en Alta Fidelidad.}
\label{fig:mk-desktop-03-bc}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-2-segmento-productor.png}
\caption*{(a) Bloque 3.2: Segmento Productor Olivarero.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-03-3-segmento-gestor.png}
\caption*{(b) Bloque 3.3: Segmento Gestor Técnico.}
\end{minipage}
\caption*{\textit{Nota.} Ilustraciones de perfil y beneficios específicos para productores y cooperativas. Elaboración propia.}
\end{figure}

En la \autoref{fig:mk-desktop-04} se evidencia el diseño final del Plan Productor (panel a) con maqueta del aplicativo móvil y tarifa en soles, junto al Plan Cooperativa (panel b) en fondo terracota *Tierra* con flujo ilustrado de emisión de licencias. Por su parte, la \autoref{fig:mk-desktop-05-06} exhibe la lista jerrquica del equipo de desarrollo (panel a), la misión y visión con sellos de identidad (panel b) y el pie de página integral con insignias de distribución en App Store y Google Play (panel c).

\begin{figure}[H]
\caption{Mock-up Desktop: Bloque 4 - Planes de Acceso en Alta Fidelidad.}
\label{fig:mk-desktop-04}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-04-1-plan-productor.png}
\caption*{(a) Bloque 4.1: Plan Productor en alta fidelidad.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.30\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-04-2-plan-cooperativa.png}
\caption*{(b) Bloque 4.2: Plan Cooperativa en alta fidelidad.}
\end{minipage}
\caption*{\textit{Nota.} Diseño visual de planes individuales e institucionales con integración gráfica de pagos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Mock-up Desktop: Bloques 5 y 6 - Equipo ArcadiaDevs, Misión y Pie de Página en Alta Fidelidad.}
\label{fig:mk-desktop-05-06}
\centering
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-05-1-equipo-arcadiadevs.png}
\caption*{(a) Bloque 5.1: Equipo ArcadiaDevs.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-05-2-mision-vision.png}
\caption*{(b) Bloque 5.2: Misión y visión.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.32\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.32\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-desktop/mk-desktop-06-conversion-footer.png}
\caption*{(c) Bloque 6: Footer y legal.}
\end{minipage}
\caption*{\textit{Nota.} Ilustración terminada del equipo, postulados de valor y diseño accesible de pie de página. Elaboración propia.}
\end{figure}

**Mock-ups en Mobile Web Browser.** La versión en alta fidelidad para navegador móvil traslada la misma excelencia estética a pantallas pequeñas, garantizando tiempos de carga óptimos, legibilidad inmediata bajo luz solar intensa y una experiencia táctil fluida.

Como se evidencia en la \autoref{fig:mk-mobile-01}, la portada móvil preserva la jerarquía tipográfica y la fuerza comunicativa del grabado botánico (panel a) junto con la problemática y video promocional (panel b). En la \autoref{fig:mk-mobile-02-03}, los módulos funcionales (panel a) y el contexto de Tacna con fichas de segmentos (panel b) ofrecen óptima nitidez sin desbordes. Finalmente, en la \autoref{fig:mk-mobile-04-05} se aprecian los planes comerciales (panel a) y el cierre de página institucional (panel b).

\begin{figure}[H]
\caption{Mock-up Mobile: Bloque 1 - Hero, Portada, Problemática y Solución en Alta Fidelidad.}
\label{fig:mk-mobile-01}
\centering
\begin{minipage}[b]{0.38\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-01-1-hero-portada.png}
\caption*{(a) Bloque 1.1: Hero y portada móvil.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.58\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-01-problema-solucion.png}
\caption*{(b) Bloques 1.2 y 1.3: Problema y solución.}
\end{minipage}
\caption*{\textit{Nota.} Portada de alta fidelidad adaptada al viewport móvil con aplicación del Design System. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Mock-up Mobile: Bloques 2 y 3 - Módulos de Producto, Contexto de Tacna y Segmentación en Alta Fidelidad.}
\label{fig:mk-mobile-02-03}
\centering
\begin{minipage}[b]{0.35\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-02-producto-features.png}
\caption*{(a) Bloque 2: Módulos funcionales.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.60\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-03-contexto-segmentos.png}
\caption*{(b) Bloque 3: Tacna y segmentación.}
\end{minipage}
\caption*{\textit{Nota.} Interfaz móvil terminada de capacidades operativas, métricas territoriales y perfiles agronmmmicos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Mock-up Mobile: Bloques 4 a 6 - Planes de Acceso, Equipo ArcadiaDevs y Footer en Alta Fidelidad.}
\label{fig:mk-mobile-04-05}
\centering
\begin{minipage}[b]{0.45\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-04-planes-acceso.png}
\caption*{(a) Bloque 4: Planes de acceso.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.52\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/landing-page-design/mockups-mobile/mk-mobile-05-06-equipo-footer.png}
\caption*{(b) Bloques 5 y 6: Equipo y pie de página.}
\end{minipage}
\caption*{\textit{Nota.} Presentación comercial móvil, bloque institucional y pie de página en alta definición. Elaboración propia.}
\end{figure}
