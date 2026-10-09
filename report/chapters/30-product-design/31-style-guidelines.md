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