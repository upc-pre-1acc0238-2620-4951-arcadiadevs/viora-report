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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-00-splash.png}
\caption*{\textit{Nota.} Progresión esquelética de inicialización de servicios locales y carga del aplicativo. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-shared-03} se expone el flujo de registro y verificación de identidad. La vista inicial organiza un formulario vertical con indicadores de validación de contraseña, mientras que la segunda pantalla estructura el ingreso de código OTP mediante casillas individuales y un teclado numérico táctil integrado para prevenir saltos de pantalla, complementado con tarjetas modulares de control de errores.

\begin{figure}[H]
\caption{Wireframe Mobile: Registro de Cuenta y Verificación OTP.}
\label{fig:wf-shared-03}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-03-cuenta-y-verificacion.png}
\caption*{\textit{Nota.} Disposición esquelética del formulario de alta, teclado numérico in-app y estados de validación. Elaboración propia.}
\end{figure}

Tal como se detalla en la \autoref{fig:wf-shared-05}, el procedimiento de inicio de sesión y recuperación de credenciales organiza de forma secuencial la solicitud de restablecimiento, el envío de enlace temporal y la definición de una nueva clave con verificación de robustez, disponiendo tarjetas de estado accesibles para notificar la caducidad del enlace.

\begin{figure}[H]
\caption{Wireframe Mobile: Inicio de Sesión y Recuperación de Credenciales.}
\label{fig:wf-shared-05}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/shared/wf-shared-05-iniciar-sesion-y-recuperar-acceso.png}
\caption*{\textit{Nota.} Estructura funcional del inicio de sesión diario y restauración de contraseña olvidada. Elaboración propia.}
\end{figure}


##### Wireframes para el Productor Olivarero
&nbsp;

En la \autoref{fig:wf-prod-01} se presentan las pantallas de bienvenida e inducción para el productor olivarero. La estructura espacial distribuye en tercios verticales la ilustración lineal del olivar, el bloque explicativo sobre la regulación de la carga y el botón primario de acción junto a los enlaces de acceso directo.

\begin{figure}[H]
\caption{Wireframe Productor: Vistas de Bienvenida e Introducción Agronómica.}
\label{fig:wf-prod-01}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-01-bienvenida.png}
\caption*{\textit{Nota.} Estructura esquelética de las vistas introductorias para productores independientes y asociados. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-02} modela el asistente de configuración inicial estructurado en cinco etapas guiadas con cabecera de avance persistente. El recorrido prioriza secuencialmente la captura de identidad, teléfono estandarizado, validación de código cooperativo, dimensionamiento de hectáreas con estimación inmediata de cuota y previsualización de permisos de alerta antes del resumen final.

\begin{figure}[H]
\caption{Wireframe Productor: Asistente Secuencial de Configuración Inicial.}
\label{fig:wf-prod-02}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Esquema por etapas para la captura de parámetros iniciales del productor y predio. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-04} se representan las dos rutas de activación del servicio: la contratación individual mediante tarjeta comercial articulada con pasarela digital y estado de confirmación, frente a la ruta institucional de canje de código asociativo con acreditación de membresía cubierta por la cooperativa.

\begin{figure}[H]
\caption{Wireframe Productor: Activación del Servicio y Canje de Código.}
\label{fig:wf-prod-04}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Rutas de activación de suscripción directa individual y canje asociativo de socio. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:wf-prod-06}, el tablero principal del productor organiza bajo una arquitectura modular de tarjetas la sincronización local, el cintillo de labor prioritaria del día, la barra semanal de campaña, el widget agrometeorológico, el gráfico de barras de vecería histórica (años ON y OFF) y las parcelas activas, previendo variantes estacionales y cintillos de operación sin conexión.

\begin{figure}[H]
\caption{Wireframe Productor: Tablero Principal de Inicio y Estados Estacionales.}
\label{fig:wf-prod-06}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-06-inicio-del-productor-part1.png}
\caption*{(a) Tablero operativo e indicadores clave.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-06-inicio-del-productor-part2.png}
\caption*{(b) Variantes estacionales y operación offline.}
\end{minipage}
\caption*{\textit{Nota.} Disposición del tablero operativo, variantes por etapa fenológica y estados del sistema. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-07} se estructura el alta técnica de una parcela agrícola en cuatro pasos: selección del método de delimitación, trazado cartográfico con cálculo instantáneo de área y perímetro, captura de variedad y marco de plantación para derivar la densidad de árboles, y validaciones geométricas ante posibles inconsistencias de linderos.

\begin{figure}[H]
\caption{Wireframe Productor: Registro y Georreferenciación Cartográfica de Lotes.}
\label{fig:wf-prod-07}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-07-registrar-un-lote.png}
\caption*{\textit{Nota.} Flujo de registro cartográfico, ingreso de marco agronómico y control de geometrías. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-08} exhibe el módulo de muestreo de cuajado fuera de línea conforme al protocolo de cinco árboles en diagonal. La interfaz dispone contadores táctiles amplios de alta sensibilidad para el registro en campo de brotes y frutos cuajados, cálculo instantáneo de la relación agronómica, distintivo de persistencia local y tabla resumen de cierre de ronda.

\begin{figure}[H]
\caption{Wireframe Productor: Protocolo de Muestreo de Cuajado sin Conexión.}
\label{fig:wf-prod-08}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-08-muestrear-el-cuajado-sin-conexion.png}
\caption*{\textit{Nota.} Interfaz de captura táctil en campo, cálculo de frutos por brote y persistencia local. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-09} se modela el módulo de prescripción y registro de aclareo frutal. El diseño estructura un termómetro horizontal comparativo de sobrecarga frente al nivel sostenible del lote, delimitación gráfica de la ventana fenológica óptima, selector de porcentaje de remoción y proyección de ganancia de calibre comercial.

\begin{figure}[H]
\caption{Wireframe Productor: Prescripción y Registro de Aclareo Frutal.}
\label{fig:wf-prod-09}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-09-aclarear-a-tiempo.png}
\caption*{\textit{Nota.} Estructura de prescripción de raleo, ventana temporal de intervención y recálculo de calibre. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:wf-prod-13}, la herramienta analítica de vecería estructura el cálculo del Índice Bienal de Vecería (BBI) mediante un indicador semicircular graduado con aguja de criticidad, complementado por un gráfico temporal de cosechas pasadas y futuras, y un diálogo modal para registrar campañas anteriores.

\begin{figure}[H]
\caption{Wireframe Productor: Análisis de Vecería e Índice Bienal BBI.}
\label{fig:wf-prod-13}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-13-conocer-la-veceria-de-mi-lote-part1.png}
\caption*{(a) Indicador de alternancia y curva histórica.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-13-conocer-la-veceria-de-mi-lote-part2.png}
\caption*{(b) Proyección fenológica y registro previo.}
\end{minipage}
\caption*{\textit{Nota.} Disposición esquelética del indicador de alternancia, curva histórica y registro de cosechas previas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-14} se organiza la liquidación anual de campaña: registro de pesaje final discriminando aceituna verde de mesa y negra de almazara, diálogo de confirmación inmutable para archivo de ciclo y visor del expediente agronómico oficial con bloque de verificación criptográfica.

\begin{figure}[H]
\caption{Wireframe Productor: Cierre de Campaña y Expediente Agronómico.}
\label{fig:wf-prod-14}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-14-cerrar-la-campana.png}
\caption*{\textit{Nota.} Liquidación de pesaje final por destino comercial, bloqueo inmutable y emisión de expediente. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-15} ilustra el seguimiento agrometeorológico de acumulación de porciones de frío bajo el modelo Erez-Fishman, disponiendo un medidor de avance circular, gráfico de dispersión térmica diurna y nocturna, y tarjetas informativas sobre anomalías e inviernos cálidos.

\begin{figure}[H]
\caption{Wireframe Productor: Seguimiento de Frío Invernal y Ruptura de Latencia.}
\label{fig:wf-prod-15}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-15-seguir-el-frio-invernal.png}
\caption*{\textit{Nota.} Esquema estructural del monitor de frío acumulado y detección de inviernos cálidos. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-16} se detalla el tablero de condiciones climáticas y telemetría de campo, disponiendo tarjetas horizontales de pronóstico semanal, curvas continuas de oscilación térmica horaria y lecturas gráficas de sensores de humedad de suelo a diferentes profundidades radiculares.

\begin{figure}[H]
\caption{Wireframe Productor: Monitoreo Microclimático y Telemetría de Suelo.}
\label{fig:wf-prod-16}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-16-vigilar-el-clima-del-lote.png}
\caption*{\textit{Nota.} Estructura del pronóstico localizado, curvas térmicas y sensores de humedad radicular. Elaboración propia.}
\end{figure}

Tal como se muestra en la \autoref{fig:wf-prod-18}, el panel de cuenta del productor organiza la edición de perfil personal, los ajustes de seguridad y contraseña con comprobación previa, la información de la membresía activa y una hoja inferior modal para alternar el idioma de la aplicación.

\begin{figure}[H]
\caption{Wireframe Productor: Administración de Perfil de Usuario y Seguridad.}
\label{fig:wf-prod-18}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Disposición esquelética de la cuenta, cambio de contraseña y conmutación idiomática. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-prod-19} se modela la gestión del lote agrícola mediante una hoja inferior de opciones rápidas, una vista cartográfica con vértices interactivos para corregir linderos en tiempo real, y un diálogo modal para archivar predios conservando la trazabilidad de sus datos históricos.

\begin{figure}[H]
\caption{Wireframe Productor: Modificación Cartográfica y Archivado de Lotes.}
\label{fig:wf-prod-19}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-19-editar-o-archivar-un-lote.png}
\caption*{\textit{Nota.} Estructura de edición interactiva de polígonos y confirmación de archivado con datos históricos. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-prod-20} presenta la supervisión de nodos de telemetría IoT asociados al lote, organizando tarjetas informativas con nivel de batería, estado de enlace y última transmisión, junto con accesos para vincular sensores por código QR o pausar su transmisión.

\begin{figure}[H]
\caption{Wireframe Productor: Supervisión de Sensores y Nodos de Telemetría IoT.}
\label{fig:wf-prod-20}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/productor/wf-productor-20-sensores-del-lote.png}
\caption*{\textit{Nota.} Disposición estructural de dispositivos físicos asociados, estado de batería y sincronización. Elaboración propia.}
\end{figure}


##### Wireframes para el Gestor Técnico de Cooperativa
&nbsp;

En la \autoref{fig:wf-gest-01} se modelan las pantallas de bienvenida e inducción para el gestor técnico, articulando una estructura visual formal con ilustración del valle, mensajes orientados a la supervisión coordinada de parcelas socias y botones de acceso en la base con áreas táctiles accesibles.

\begin{figure}[H]
\caption{Wireframe Gestor: Bienvenida Institucional y Visión Colectiva del Valle.}
\label{fig:wf-gest-01}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-01-bienvenida.png}
\caption*{\textit{Nota.} Esquema de las vistas introductorias adaptadas a la supervisión técnica asociativa. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-gest-02} despliega el asistente de configuración técnica en tres pasos con indicador superior de avance, estructurando la captura del perfil profesional, el teléfono institucional de coordinación y la selección de criterios de alerta agronómica y térmica para el valle.

\begin{figure}[H]
\caption{Wireframe Gestor: Asistente de Configuración de Alertas Territoriales.}
\label{fig:wf-gest-02}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Captura esquelética del perfil técnico y criterios de priorización agronómica del valle. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-04} se define la vista de espera institucional que informa al gestor sobre la validación y asignación de permisos administrativos por parte de la cooperativa, manteniendo un diseño sobrio y centrado con opciones de consulta de estado.

\begin{figure}[H]
\caption{Wireframe Gestor: Estado de Validación y Asignación Institucional.}
\label{fig:wf-gest-04}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Interfaz de notificación de espera mientras la gerencia cooperativa habilita el rol técnico. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:wf-gest-10}, el tablero de mando del gestor organiza la supervisión territorial mediante un cintillo de alerta prioritaria, una matriz semafórica de cuatro cuadrantes de riesgo, una tarjeta de proyección agregada de acopio con avance muestral y una lista clasificada de visitas técnicas urgentes.

\begin{figure}[H]
\caption{Wireframe Gestor: Tablero Territorial de Mando y Semáforo de Riesgo.}
\label{fig:wf-gest-10}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-10-inicio-del-gestor.png}
\caption*{\textit{Nota.} Estructura del tablero territorial, métricas agregadas de acopio y sugerencias de visitas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-11} se expone el módulo de priorización de visitas de campo, integrando un mapa sectorial zonificado con chinchetas georreferenciadas por nivel de riesgo, un padrón clasificado por magnitud de sobrecarga con enlaces de contacto directo, y una ficha de auditoría técnica de parcela.

\begin{figure}[H]
\caption{Wireframe Gestor: Zonificación Territorial y Priorización de Visitas de Campo.}
\label{fig:wf-gest-11}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-11-priorizar-mis-visitas-de-campo.png}
\caption*{\textit{Nota.} Zonificación cartográfica por riesgo frutal, padrón de socios priorizados y ficha de auditoría. Elaboración propia.}
\end{figure}

La \autoref{fig:wf-gest-12} modela la estimación de acopio territorial estructurando la cifra global de tonelaje, el desglose proporcional entre aceituna verde de mesa y negra de almazara, la tarjeta de cobertura con umbral técnico del 50 %, y el selector modal para contrastar campañas previas.

\begin{figure}[H]
\caption{Wireframe Gestor: Estimación y Desglose Territorial del Acopio Proyectado.}
\label{fig:wf-gest-12}
\centering
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-12-proyectar-el-acopio-part1.png}
\caption*{(a) Estimación global y desglose por destino.}
\end{minipage}
\hfill
\begin{minipage}[b]{0.48\textwidth}
\centering
\includegraphics[width=\linewidth,height=0.34\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-12-proyectar-el-acopio-part2.png}
\caption*{(b) Cobertura muestral y comparativa histórica.}
\end{minipage}
\caption*{\textit{Nota.} Desglose de tonelaje por destino comercial, umbrales de cobertura y consulta de campañas previas. Elaboración propia.}
\end{figure}

En la \autoref{fig:wf-gest-17} se estructura el control del padrón cooperativo y cupo de membresía: tarjeta con desglose de plazas ocupadas y disponibles, buscador con filtros por estado, panel de auditoría de códigos y hoja inferior con selector de vigencia para emisión masiva y revocación segura.

\begin{figure}[H]
\caption{Wireframe Gestor: Administración de Padrón, Cupo Colectivo y Códigos.}
\label{fig:wf-gest-17}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-17-administrar-socios-y-codigos.png}
\caption*{\textit{Nota.} Gestión del cupo institucional de socios, emisión y revocación de códigos con validación de límites. Elaboración propia.}
\end{figure}

Como se observa en la \autoref{fig:wf-gest-18}, el gestor técnico reutiliza la estructura de cuenta del productor (P95 a P98): el panel agrupa datos personales, seguridad, preferencias y sesión, y desde él se abren la edición de nombre y celular en formato E.164, el cambio de contraseña con verificación de la clave actual y la hoja inferior de idioma, que cambia la interfaz a inglés sin cerrar sesión. La fila inferior reserva los estados de validación: celular inválido, nombre vacío, contraseña actual incorrecta y nueva contraseña que no cumple los criterios.

\begin{figure}[H]
\caption{Wireframe Gestor: Administración de Cuenta, Seguridad e Idioma.}
\label{fig:wf-gest-18}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/wireframes/gestor/wf-gestor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Disposición esquelética de la cuenta del gestor, sus formularios de edición y los estados de validación. Elaboración propia.}
\end{figure}

#### Mobile Applications Wireflow Diagrams
&nbsp;

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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f01-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

El splash (T01) termina por sí solo y abre la bienvenida (T02), donde Teodoro toca «Comenzar» y avanza por la lámina para productores (pasos 2 y 3). Luego el flujo pasa a la captura de datos: escribe su nombre (T02b) y su celular (T02b2), y el sistema los conserva para el resumen final. En T02c el sistema le pregunta si su cooperativa le dio un código y el diagrama plantea la decisión. Si tiene código, lo escribe y toca «Guardar código», y el flujo salta directamente a las alertas. Si no lo tiene, toca «No tengo código» y pasa por T02d, donde elige cuántas hectáreas maneja; el sistema le muestra un plan estimado de S/ 7,920 al año para 12 ha (paso 7, solo sin código). Ambas ramas convergen en T02e, donde toca «Activar alertas» y responde al permiso de notificaciones del sistema operativo con «Permitir». En T02f revisa un resumen con rol, nombre, acceso y alertas, y toca «Crear mi cuenta». Finalmente, en T04 escribe su correo y una contraseña que cumple los criterios mostrados (8 caracteres, letras y números), y en T04a ingresa el código de 6 dígitos que el sistema le envía por correo. La meta se cumple porque la cuenta queda creada y verificada con el rol de productor, y el flujo continúa en WF-F04 para activar el acceso.

**WF-F01 · Crear mi cuenta y entrar por primera vez (gestor).** Meta de usuario: «Quiero crear mi cuenta con mi rol para entrar a Viora con las herramientas que me corresponden.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US01 y US43. La \autoref{fig:wf-f01-ruben} muestra que el recorrido es más corto en la captura de datos y termina con una decisión sobre la habilitación de su organización.

\begin{figure}[H]
\caption{Wireflow WF-F01: crear mi cuenta y entrar por primera vez (gestor).} \label{fig:wf-f01-ruben}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f01-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Los tres primeros pasos replican el inicio del productor, con la lámina dirigida a gestores técnicos. Rubén escribe su nombre (T02b) y su celular (T02b2), activa las alertas y responde al permiso del sistema (pasos 6 y 7). A diferencia del productor, no ingresa código de cooperativa ni hectáreas: su resumen (T02f) muestra solo el rol de gestor técnico, el nombre y las alertas. Luego crea su cuenta con correo y contraseña (T04) y confirma el código de 6 dígitos que recibe por correo (T04a). Después de la verificación, el diagrama plantea una decisión: si su cooperativa ya lo habilitó, entra directamente a Inicio (G10). Si aún no lo hizo, el sistema muestra «Tu organización aún no te habilita» (G01), con su rol, el estado "Pendiente de habilitación" y su correo. Cuando la cooperativa lo habilita, el sistema le avisa por correo y Rubén entra a G10. La meta se cumple porque Rubén llega a su Inicio con las herramientas de gestor técnico, y la habilitación de la cooperativa condiciona ese acceso.

**WF-F02 · Iniciar sesión y recuperar mi acceso (productor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US02 y US05. La \autoref{fig:wf-f02-teodoro} representa el recorrido de recuperación de la contraseña, que parte de la pantalla de inicio de sesión y regresa a ella.

\begin{figure}[H]
\caption{Wireflow WF-F02: iniciar sesión y recuperar mi acceso (productor).} \label{fig:wf-f02-teodoro}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f02-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Iniciar sesión (T03), Teodoro toca «¿Olvidaste tu contraseña?» y llega a T06, donde su correo aparece ya escrito y toca «Enviar enlace». El sistema le envía un enlace de un solo uso y T07 le indica que revise su correo. Al abrir ese enlace, llega a T08, donde escribe una nueva contraseña y su confirmación mientras la pantalla verifica los criterios (8 caracteres, letras y números, coincidencia). Al tocar «Guardar contraseña», el sistema la actualiza, cierra sus otras sesiones por seguridad y muestra «Listo, ya puedes entrar». El diagrama muestra ese cambio de estado de T08 como un paso aparte (paso 5). Teodoro toca «Iniciar sesión», vuelve a T03 con su correo y entra con la nueva contraseña a Inicio (P10). La meta se cumple porque Teodoro recupera su acceso por su propia cuenta, sin intervención de terceros, y llega a su Inicio.

**WF-F02 · Iniciar sesión y recuperar mi acceso (gestor).** Meta de usuario: «Quiero entrar a mi cuenta sin reingresar mis datos a cada rato, y recuperarla por mi cuenta si olvido la clave.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US02 y US05. Como se observa en la \autoref{fig:wf-f02-ruben}, el recorrido es el mismo que el del productor y solo cambia el destino final.

\begin{figure}[H]
\caption{Wireflow WF-F02: iniciar sesión y recuperar mi acceso (gestor).} \label{fig:wf-f02-ruben}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f02-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Las pantallas T03, T06, T07 y T08 se reutilizan y por eso aparecen desaturadas. Rubén solicita el enlace con su correo, abre el mensaje, crea una nueva contraseña que cumple los criterios y confirma el cambio. El sistema actualiza la clave y cierra sus otras sesiones. Luego inicia sesión de nuevo y entra a Inicio (G10) de la App Gestor, que resume el semáforo del valle, los indicadores de su cooperativa y las visitas sugeridas. La meta se cumple porque Rubén recupera su acceso por su propia cuenta y llega a su Inicio.

**WF-F03 · Mantener mi cuenta al día (productor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US03, US04 y US42. La \autoref{fig:wf-f03-teodoro} muestra que todo el mantenimiento parte de Mi cuenta (P95), que se abre desde el encabezado.

\begin{figure}[H]
\caption{Wireflow WF-F03: mantener mi cuenta al día (productor).} \label{fig:wf-f03-teodoro}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f03-teodoro.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (P10), Teodoro toca su avatar y abre Mi cuenta (P95), que agrupa datos personales, seguridad, preferencias y sesión. Esto es coherente con Navigation Systems, donde Cuenta se abre desde el encabezado y no es una quinta pestaña. Al tocar «Celular» llega a Datos personales (P96), corrige su número, que el sistema valida con formato internacional, y toca «Guardar cambios». Regresa a P95 y toca «Cambiar contraseña» (P97), donde escribe la contraseña actual y la nueva con sus confirmaciones, y el sistema la actualiza. De nuevo en P95, toca «Idioma» y abre una hoja (P98) en la que elige English y toca «Cambiar a English». El sistema aplica el cambio de inmediato, sin cerrar la sesión, y P95 aparece ya en inglés. Cada retorno a P95 se dibuja como un paso propio porque la pantalla muestra datos actualizados. La meta se cumple porque los datos de contacto, la contraseña y el idioma quedan al día sin cerrar sesión.

**WF-F03 · Mantener mi cuenta al día (gestor).** Meta de usuario: «Quiero mantener al día mis datos de contacto, mi clave y mi idioma.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US03, US04 y US42. La \autoref{fig:wf-f03-ruben} repite el recorrido del productor sobre las mismas pantallas de cuenta, con los datos y la insignia de licencia del gestor.

\begin{figure}[H]
\caption{Wireflow WF-F03: mantener mi cuenta al día (gestor).} \label{fig:wf-f03-ruben}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f03-ruben.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

El recorrido comienza en Inicio (G10). Rubén toca su avatar, abre Mi cuenta (P95), actualiza su celular en Datos personales (P96), cambia su contraseña (P97) y cambia el idioma a English mediante la hoja P98. En cada cambio, el sistema valida los datos escritos y los guarda; tras el cambio de idioma, P95 se muestra en inglés con el mismo contenido. Las pantallas P95 a P98 se reutilizan del productor y por eso aparecen desaturadas. La meta se cumple porque sus datos, su clave y su idioma quedan actualizados sin cerrar sesión.

**WF-F04 · Activar mi acceso con pago o código.** Meta de usuario: «Quiero habilitar Viora pagando mi plan o con el código que me dio mi cooperativa.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US06 y US07. En la \autoref{fig:wf-f04}, el rombo de decisión separa las dos rutas de activación: el pago con Mercado Pago (pasos 2A y 3A) y el canje de código de cooperativa (pasos 2B a 4B). Ambas llegan al mismo Inicio.

\begin{figure}[H]
\caption{Wireflow WF-F04: activar mi acceso con pago o código.} \label{fig:wf-f04}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f04.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Teodoro parte de Plan Productor (P02), donde ve sus hectáreas (12 ha), el total anual (S/ 7,920) y su equivalente mensual. El diagrama pregunta si tiene código de cooperativa. Si no lo tiene, toca «Pagar con Mercado Pago» y paga en Checkout Pro. La pantalla P04 muestra primero «Confirmando tu pago…»; cuando Mercado Pago confirma el pago al servidor, cambia a «Bienvenido a Viora», con el plan, la vigencia y el envío del comprobante a su correo. Esto concuerda con Navigation Systems: la aplicación no muestra la suscripción como activada hasta que el servidor valida el pago. Si tiene código, toca «Tengo un código de cooperativa», escribe el código en P05 y toca «Canjear código». La pantalla pasa al estado «Validando tu código…» y, cuando la cooperativa confirma que el código está vigente, P06 informa «Tu cooperativa cubre tu plan», con la cooperativa, el cupo cubierto y la vigencia. En ambas rutas, Teodoro toca «Ir al inicio» y llega a Inicio sin lotes (P10), que lo invita a dibujar su primer lote en el mapa. La meta se cumple porque el acceso queda activo, ya sea por pago o por código, y Teodoro puede registrar su primer lote.

**WF-F05 · Saber qué hacer hoy en mi olivar.** Meta de usuario: «Al abrir la app quiero ver de un vistazo cómo están mis lotes y qué es lo urgente de la temporada.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US18, cuyos resúmenes provienen de US17, US19 y US27. La \autoref{fig:wf-f05} muestra un recorrido lineal de tres pantallas, que va del resumen de Inicio al detalle de una alerta crítica.

\begin{figure}[H]
\caption{Wireflow WF-F05: saber qué hacer hoy en mi olivar.} \label{fig:wf-f05}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f05.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Al abrir la aplicación, Teodoro ve Inicio (P10) con la fase de la campaña, el clima del día, las alertas activas, su alternancia y sus lotes. Lee la tarjeta de la fase y toca «2 alertas activas». En el Centro de alertas (T14) el sistema clasifica las alertas por prioridad (críticas, de atención y normalizadas) y muestra, por ejemplo, un golpe de calor en La Yarada 02. Al tocar «Ver qué hacer» en la alerta crítica, abre el detalle (T15), con la serie de temperaturas máximas de la semana frente al umbral y una lista «Qué hacer». En el prototipo actual, esa lista aún no es interactiva. La meta se cumple porque Teodoro sabe qué atender hoy y en qué lote.

**WF-F06 · Registrar un lote.** Meta de usuario: «Quiero registrar mi parcela con su contorno, variedad y marco de plantación para que Viora conozca su potencial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US09. La \autoref{fig:wf-f06} sigue el asistente de tres pasos del registro y tiene una decisión de repetición mientras se marcan las esquinas del contorno.

\begin{figure}[H]
\caption{Wireflow WF-F06: registrar un lote.} \label{fig:wf-f06}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f06.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Lotes (P20), Teodoro toca «Registrar lote» y en Método (P21) elige «Caminar el contorno» y toca «Empezar a caminar». En P22 el sistema usa el GPS del teléfono, con una precisión indicada, para registrar cada esquina que marca y calcula un área provisional. Con dos esquinas, el sistema indica que se necesitan al menos tres para cerrar el contorno. Teodoro camina a la siguiente esquina y toca «Marcar esquina 3». El diagrama plantea entonces una decisión: mientras no haya marcado todas las esquinas, repite «Marcar esquina»; cuando termina, toca «Cerrar contorno». En Caracterización (P24) escribe el nombre, elige la variedad e indica el marco de plantación, y el sistema calcula la densidad (204 árboles por hectárea) y el área neta. Toca «Revisar lote» y en P25 revisa el resumen, incluida la parte de las hectáreas de su plan que usará el lote. Al tocar «Guardar lote», el sistema registra el lote y abre su detalle (P26) con la confirmación «Lote guardado». Este recorrido coincide con el de "Dar de alta un lote" de Navigation Systems. La meta se cumple porque el lote queda registrado con su contorno, área, variedad y densidad.

**WF-F07 · Mantener mis lotes al día.** Meta de usuario: «Quiero corregir los datos de un lote, o retirarlo de mi inventario sin perder su historial.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US10 y US11. En la \autoref{fig:wf-f07}, el rombo «¿Corregir o retirar el lote?» separa dos rutas que parten del mismo menú de opciones.

\begin{figure}[H]
\caption{Wireflow WF-F07: mantener mis lotes al día.} \label{fig:wf-f07}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f07.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Más opciones» y se abre la hoja P27, con las acciones editar datos, ajustar el contorno, sensores del lote y archivar. Si elige corregir, toca «Editar datos del lote» y en Editar lote (P28) cambia, por ejemplo, el marco de plantación; el sistema recalcula la densidad (de 72 a 100 árboles por hectárea) y el área. Al tocar «Guardar cambios», regresa al detalle con los datos corregidos (paso 4). Si elige retirar, toca «Archivar lote» y el sistema muestra un diálogo de confirmación que explica que conserva la historia del lote y libera sus hectáreas (de 4,0 a 1,5 ha usadas del plan). Al confirmar, el lote aparece en la lista de Lotes, pestaña Archivados (P20), marcado con «historial conservado» y con la opción «Restaurar lote». Hay dos metas cumplidas, una por ruta: el lote queda corregido con área y densidad recalculadas, o sale de su inventario con su historial intacto.

**WF-F08 · Configurar el monitoreo del lote.** Meta de usuario: «Quiero vincular nodos virtuales a mi lote para recibir lecturas de clima y suelo.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US13, US14 y US15. La \autoref{fig:wf-f08} muestra el recorrido de vinculación y ajuste de un nodo. Se dejó fuera la acción de desvincular un nodo, que el catálogo considera una ruta alternativa y se trata en los User Flow Diagrams.

\begin{figure}[H]
\caption{Wireflow WF-F08: configurar el monitoreo del lote.} \label{fig:wf-f08}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f08.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Más opciones» y, en la hoja P27, «Sensores del lote». En P85 ve los nodos del lote con su estado y su última lectura, y la pantalla aclara que son nodos virtuales que simulan lecturas con el clima de las coordenadas del lote. Toca «Vincular un nodo» y en la hoja P86 escribe el nombre, elige el tipo (microclima o sonda de suelo) y la profundidad (30 o 60 cm). Al tocar «Vincular nodo», el sistema lo registra y P85 lo muestra en la lista. Luego abre «Sonda Sector Norte» (P87), donde ve su última lectura, ajusta el nombre o la profundidad y define si transmite lecturas. Al tocar «Guardar cambios», vuelve a P85 con la configuración actualizada. La meta se cumple porque los nodos quedan vinculados y el lote recibe lecturas de clima y suelo.

**WF-F09 · Vigilar el clima del lote.** Meta de usuario: «Quiero ver la temperatura y la humedad de mi lote, y el pronóstico, para programar riegos y labores.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US17, US18 y US19. En la \autoref{fig:wf-f09} se muestran dos entradas a la misma lectura: desde Inicio y desde una alerta de estrés hídrico.

\begin{figure}[H]
\caption{Wireflow WF-F09: vigilar el clima del lote.} \label{fig:wf-f09}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f09.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En la ruta principal, Teodoro toca «Hoy en tu campo · 7 días» en Inicio (P10) y abre el Clima del lote (P90), que muestra la temperatura actual, el pronóstico de siete días, las lecturas de los sensores y el contraste entre día y noche. Después de revisar las lecturas y el pronóstico, toca «Humedad del suelo» y llega a P91, con la última lectura, su estado (en rango), la serie de 24 horas, 7 días o 30 días y los valores mínimo, promedio y máximo. En la entrada alternativa, una alerta de estrés hídrico lo lleva por el Centro de alertas (T14) al detalle de la alerta (T15), donde toca «Humedad del suelo» y llega a la misma P91. La meta se cumple porque Teodoro conoce la humedad del suelo y el pronóstico para programar su riego.

**WF-F10 · Conocer la vecería de mi lote.** Meta de usuario: «Quiero registrar mis cosechas pasadas para saber qué tan fuerte es la alternancia de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a la historia US20. La \autoref{fig:wf-f10} muestra cómo el registro de una campaña histórica actualiza el índice de vecería. La corrección de una campaña ya registrada se deja para los User Flow Diagrams.

\begin{figure}[H]
\caption{Wireflow WF-F10: conocer la vecería de mi lote.} \label{fig:wf-f10}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f10.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde el detalle del lote (P26), Teodoro toca «Vecería del lote» y abre Alternancia (P40), que muestra el índice de vecería del lote (0,51, vecería severa), la cosecha por campaña y las campañas registradas. Toca «Agregar campaña» y en la hoja P41 elige el año (2021) y escribe los kilos cosechados (10 500 kg); la hoja anticipa cómo cambiará el índice (de 0,51 a 0,48). Al tocar «Guardar campaña», el sistema registra la campaña y recalcula el índice, y P40 vuelve a mostrarse con el aviso «Campaña 2021 agregada», cinco campañas registradas y el nuevo índice. La meta se cumple porque Teodoro sabe qué tan fuerte es la vecería de su lote con el índice recalculado.

**WF-F11 · Seguir el frío invernal.** Meta de usuario: «Quiero saber cuánto frío ha acumulado mi olivar este invierno para anticipar cómo será la floración.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US22 y US23. La \autoref{fig:wf-f11} dibuja dos entradas a la misma pantalla de frío invernal, y una nota señala una conexión pendiente del prototipo.

\begin{figure}[H]
\caption{Wireflow WF-F11: seguir el frío invernal.} \label{fig:wf-f11}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f11.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En la ruta principal, Teodoro ve Inicio (P10) en fase de reposo invernal, con la acumulación de porciones de frío, y toca «Ver mi frío» en la tarjeta de fase. Llega a Frío invernal (P80), donde el sistema muestra las porciones acumuladas respecto de la meta, la fecha estimada de completarlas, los días sobre 24 °C, el estado del fenómeno de El Niño y el gráfico del frío acumulado frente al invierno pasado. En la entrada alternativa, un pico cálido invernal genera un aviso (T15, «Invierno cálido»), que explica qué cambia. Teodoro lee el aviso, toca «Ver mi frío» y P80 aparece en su estado «Tu frío se frenó», con las porciones recalculadas. La nota punteada indica que el prototipo aún no tiene la entrada desde el detalle del lote (P26), que el catálogo sí prevé. La meta se cumple porque Teodoro sabe cuánto frío ha acumulado su olivar y qué esperar de la floración.

**WF-F12 · Muestrear el cuajado sin conexión.** Meta de usuario: «Quiero contar brotes y frutos árbol por árbol en el campo, aunque no tenga señal, y que se envíe solo cuando vuelva la cobertura.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US24 y US25. La \autoref{fig:wf-f12} es el wireflow con más cambios de estado: la ronda de muestreo se dibuja sin conexión, con muestra suficiente y sincronizada.

\begin{figure}[H]
\caption{Wireflow WF-F12: muestrear el cuajado sin conexión.} \label{fig:wf-f12}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f12.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Bitácora (P50), Teodoro toca «+» y el menú de acciones (paso 2) le ofrece registrar un muestreo de cuajado, un aclareo, una cosecha o una nota. Elige «Muestreo de cuajado» y en Nuevo muestreo (P51) selecciona el lote (Lote Norte) y toca «Continuar ronda». En la Ronda de muestreo (P52) el sistema avisa que no hay conexión y que los registros se guardan en el teléfono. Teodoro toca «Agregar árbol» y en P53 anota los brotes y los frutos cuajados del árbol (40 brotes y 24 frutos para el árbol A-14); la pantalla calcula la relación de frutos por brote. Al tocar «Guardar árbol», el diagrama plantea la decisión «¿Ya van 5 árboles?». Si no, vuelve a la ronda con un árbol más; si sí, P52 muestra la muestra suficiente y Teodoro toca «Finalizar ronda». P54 informa «Ronda guardada» con el resumen (5 árboles, 0,59 frutos por brote, 209 brotes y 123 frutos) y avisa que el plan se habilita cuando se sincronice. Cuando vuelve la señal, el sistema envía la ronda por sí solo (evento del sistema) y P54 pasa a «Ronda completa» con el estado sincronizado. Esto es coherente con Navigation Systems, que distingue el guardado local de la aceptación del servidor. La meta se cumple porque la muestra queda registrada y sincronizada, y habilita el plan del lote.

**WF-F13 · Aclarear a tiempo.** Meta de usuario: «Quiero saber cuánta fruta debo quitar y hasta qué fecha, y dejar registrado lo que hice.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US26, US27 y US28. La \autoref{fig:wf-f13} recorre el destino Plan, de la selección del lote a la confirmación del registro.

\begin{figure}[H]
\caption{Wireflow WF-F13: aclarear a tiempo.} \label{fig:wf-f13}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f13.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En Plan (P60), el sistema indica cuántos lotes necesitan aclareo esta semana, y Teodoro toca «La Yarada 02». En P61 ve la carga frutal estimada frente al objetivo sostenible, una advertencia sobre el riesgo de vecería y la prescripción: quitar el 30 % de los frutos entre dos fechas, con los días que quedan. Toca «Registrar aclareo» y en P62 confirma la fecha y el porcentaje de frutos que quitó, y puede agregar una nota. Al tocar «Guardar aclareo», el sistema registra el aclareo y P63 confirma «Aclareo registrado», con el calibre esperado y la estimación actualizada, además del aviso «Guardado en Bitácora». El recorrido no regresa a P60 porque esa pantalla no muestra un cambio de estado visible. Este recorrido corresponde al de "Consultar y registrar aclareo" de Navigation Systems. La meta se cumple porque Teodoro sabe cuánto quitar y hasta cuándo, y su aclareo queda en la Bitácora.

**WF-F14 · Cerrar la campaña y obtener el expediente.** Meta de usuario: «Quiero registrar los kilos cosechados, cerrar la campaña y descargar el expediente de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y a las historias US29 y US30. La \autoref{fig:wf-f14} dibuja el recorrido de cierre desde la tarjeta de fase de cosecha. Una caja punteada señala una conexión pendiente del prototipo.

\begin{figure}[H]
\caption{Wireflow WF-F14: cerrar la campaña y obtener el expediente.} \label{fig:wf-f14}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f14.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

En Inicio (P10), en fase de cosecha, Teodoro toca «Registrar cosecha» en la tarjeta de fase y elige el lote en la hoja P70 («La Yarada 02»). En Registrar cosecha (P71) escribe los kilos de aceituna verde y negra, y el sistema calcula el total (20 800 kg); la pantalla advierte que al asentar la cosecha se cierra la campaña. Al tocar «Asentar cosecha», un diálogo (P72) le pide confirmar, porque después no podrá cambiar esos kilos. Al confirmar, el sistema asienta la cosecha, cierra la campaña 2026 y P73 muestra «Campaña cerrada» con el comprobante de liquidación. El paso siguiente (tocar «Ver expediente del lote» y llegar a P76) aún no está conectado en el prototipo, y por eso se dibuja punteado. En el Expediente del lote (P76), el sistema consolida los datos de la campaña y un código de verificación. Teodoro toca «Descargar PDF» y la hoja P77 informa que el PDF está listo, con las opciones abrir, compartir por WhatsApp o guardar en el teléfono. Navigation Systems ubica el cierre de campaña en Bitácora; este wireflow lo inicia desde la tarjeta de fase de Inicio, que abre el mismo flujo de registro de cosecha. La meta se cumple porque la campaña queda cerrada y el expediente del lote queda disponible en PDF.

**WF-F15 · Priorizar mis visitas de campo.** Meta de usuario: «Quiero saber qué sectores y parcelas socias están en riesgo, empezando por donde estoy, para decidir a quién visitar.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a las historias US12, US30 y US31. En la \autoref{fig:wf-f15}, el recorrido desciende desde el sector hasta el expediente técnico de una parcela, dentro del destino Riesgo territorial.

\begin{figure}[H]
\caption{Wireflow WF-F15: priorizar mis visitas de campo.} \label{fig:wf-f15}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f15.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (G10), Rubén toca «Ver riesgo territorial». La primera vez, el sistema le solicita permiso de ubicación (G20, hoja), para abrir el mapa en el sector donde está; Rubén toca «Permitir ubicación». En Riesgo territorial (G20) ve el mapa con los niveles de riesgo y un resumen de su sector, «La Yarada Baja». Al tocar el sector, llega a G22, con las parcelas en rojo y la lista por prioridad, ordenada por cercanía. Toca la parcela con más prioridad y abre la parcela del socio (G23), en modo de solo lectura, con su carga frutal, la prescripción vigente y las opciones de contacto. Esto es coherente con Navigation Systems, donde la supervisión no concede permisos de edición sobre los datos del productor. Al tocar «Ver expediente técnico», abre el expediente (T16). Este recorrido concuerda con el de "Priorizar una visita" de Navigation Systems y con el acceso a expedientes desde el contexto de la parcela (US30). La meta se cumple porque Rubén sabe qué parcelas visitar primero y puede consultar el expediente del socio.

**WF-F16 · Proyectar el acopio de la campaña.** Meta de usuario: «Quiero estimar cuántas toneladas de aceituna verde y negra entregarán los socios para planificar la planta y los contratos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a la historia US32. La \autoref{fig:wf-f16} muestra el recorrido por el destino Acopio y la selección de la campaña.

\begin{figure}[H]
\caption{Wireflow WF-F16: proyectar el acopio de la campaña.} \label{fig:wf-f16}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f16.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

Desde Inicio (G10), Rubén toca la tarjeta «Acopio» y abre la pantalla Acopio (G30). El sistema proyecta las toneladas totales de la campaña (1 240 t), separadas en aceituna verde (780 t) y negra (460 t), y muestra la cobertura de muestreo (37 de 60 parcelas, 62 %) y el detalle por sector. Rubén toca el selector «Campaña 2026» y la hoja le ofrece las campañas disponibles, con la campaña en curso y las cerradas. Al elegir la campaña, G30 se muestra de nuevo con los datos de la campaña seleccionada. Navigation Systems describe este recorrido como Acopio → campaña → volúmenes verde y negro → cobertura y advertencias. La meta se cumple porque Rubén conoce las toneladas proyectadas de verde y negra y la cobertura de muestreo que las respalda.

**WF-F17 · Administrar socios y códigos.** Meta de usuario: «Quiero ver mi padrón de socios y el cupo de la licencia, y entregar códigos de activación a los socios nuevos.» Corresponde a Rubén Ticona en la App Gestor (Flutter) y a la historia US08. En la \autoref{fig:wf-f17}, el recorrido pasa del cupo de la licencia a la generación de nuevos códigos de activación.

\begin{figure}[H]
\caption{Wireflow WF-F17: administrar socios y códigos.} \label{fig:wf-f17}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-wireflows/wf-f17.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-00-splash.png}
\caption*{\textit{Nota.} Aplicación del Design System y cinemática de marca durante el arranque del servicio móvil. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-shared-03} se aprecia la terminación visual del registro y verificación de identidad. El fondo *Cream* (#FDFBF7) acoge campos con foco en dorado cálido y chips dinámicos de validación sintáctica, mientras la pantalla de código OTP dispone casillas elevadas y un teclado numérico táctil embebido de alto contraste.

\begin{figure}[H]
\caption{Mock-up Mobile: Registro de Cuenta y Verificación OTP en Alta Fidelidad.}
\label{fig:mu-shared-03}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-03-cuenta-y-verificacion.png}
\caption*{\textit{Nota.} Formulario de alta, teclado in-app y componentes de validación en alta fidelidad. Elaboración propia.}
\end{figure}

Tal como se expone en la \autoref{fig:mu-shared-05}, el acceso diario y la restauración de credenciales presentan una atmósfera sobria: botón primario en verde *Forest* con radio completo de 24 dp, enlaces de soporte accesibles y flujo de recuperación asistido con advertencias claras sobre la vigencia del enlace temporal.

\begin{figure}[H]
\caption{Mock-up Mobile: Inicio de Sesión y Recuperación de Credenciales en Alta Fidelidad.}
\label{fig:mu-shared-05}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/shared/mk-shared-05-iniciar-sesion-y-recuperar-acceso.png}
\caption*{\textit{Nota.} Diseño visual del acceso seguro y secuencia de restauración de clave de usuario. Elaboración propia.}
\end{figure}


##### Mock-ups para el Productor Olivarero
&nbsp;

En la \autoref{fig:mu-prod-01} se despliegan las pantallas de bienvenida del productor, destacando ilustraciones con técnica de grabado artesanal sobre ramas y frutos de olivo, complementadas por titulares en *Axiforma Headline* con segundo renglón en estilo cursivo orgánico.

\begin{figure}[H]
\caption{Mock-up Productor: Vistas de Bienvenida e Introducción Agronómica en Alta Fidelidad.}
\label{fig:mu-prod-01}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-01-bienvenida.png}
\caption*{\textit{Nota.} Integración de grabados ilustrativos y estilo tipográfico editorial para productores. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-02} exhibe el asistente de configuración inicial en alta fidelidad, combinando controles táctiles de incremento y deslizador continuo para dimensionar hectáreas, tarjeta de cotización anual en tiempo real y previsualización gráfica de las notificaciones agronómicas.

\begin{figure}[H]
\caption{Mock-up Productor: Asistente Secuencial de Configuración Inicial en Alta Fidelidad.}
\label{fig:mu-prod-02}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Asistente por etapas con cotización en tiempo real y previsualización de alertas agronómicas. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-04} se aprecian las interfaces terminadas para la activación del servicio: la tarjeta del Plan Productor con desglose de inversión anual articulada con Mercado Pago, y la confirmación institucional que acredita la membresía cubierta por la cooperativa.

\begin{figure}[H]
\caption{Mock-up Productor: Activación del Servicio y Canje de Código en Alta Fidelidad.}
\label{fig:mu-prod-04}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Activación por pasarela digital de pago y confirmación de membresía asociativa cubierta. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-prod-06}, el tablero principal del productor exhibe una cuidada jerarquía visual: cintillo de labor prioritaria con acento dorado, tarjeta meteorológica con lecturas de humedad en suelo, gráfico de barras alternadas para la vecería histórica, tarjetas de lotes activos y adaptaciones para cada etapa estacional.

\begin{figure}[H]
\caption{Mock-up Productor: Tablero Principal de Inicio y Estados Estacionales en Alta Fidelidad.}
\label{fig:mu-prod-06}
\centering
\includegraphics[width=0.40\textwidth,height=0.28\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-06-inicio-del-productor.png}
\caption*{\textit{Nota.} Tablero operativo integral, transiciones estacionales y manejo de estados fuera de línea. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-07} se presenta la interfaz cartográfica de delimitación de parcelas sobre ortofoto satelital, disponiendo polígonos semitransparentes en verde *Forest*, paneles de cálculo dinámico de superficie y selectores tipo chip para las variedades tradicionales del cultivo.

\begin{figure}[H]
\caption{Mock-up Productor: Registro y Georreferenciación Cartográfica de Lotes en Alta Fidelidad.}
\label{fig:mu-prod-07}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-07-registrar-un-lote.png}
\caption*{\textit{Nota.} Trazado cartográfico de predios sobre ortofoto satelital y configuración del marco de siembra. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-08} exhibe el módulo de muestreo de cuajado fuera de línea, implementando contadores táctiles de gran escala y alto contraste para su uso bajo luz solar directa, distintivo de persistencia local en almacenamiento del dispositivo y diagnóstico automático de sobrecarga.

\begin{figure}[H]
\caption{Mock-up Productor: Protocolo de Muestreo de Cuajado sin Conexión en Alta Fidelidad.}
\label{fig:mu-prod-08}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-08-muestrear-el-cuajado-sin-conexion.png}
\caption*{\textit{Nota.} Contadores táctiles sobredimensionados para campo y almacenamiento local garantizado. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-09} se modela el módulo de aclareo frutal, integrando el termómetro comparativo con prescripción explícita de porcentaje de remoción en color terracota *Tierra*, cronograma delimitador de la ventana fenológica y simulación de ganancia de calibre comercial.

\begin{figure}[H]
\caption{Mock-up Productor: Prescripción y Registro de Aclareo Frutal en Alta Fidelidad.}
\label{fig:mu-prod-09}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-09-aclarear-a-tiempo.png}
\caption*{\textit{Nota.} Prescripción de raleo, cuenta regresiva de ventana óptima y simulación de ganancia de calibre. Elaboración propia.}
\end{figure}

Tal como se observa en la \autoref{fig:mu-prod-13}, la vista analítica de vecería despliega un indicador semicircular graduado con aguja que posiciona el BBI del predio, acompañado de una curva temporal que proyecta la siguiente cosecha y modales para incorporar campañas históricas.

\begin{figure}[H]
\caption{Mock-up Productor: Análisis de Vecería e Índice Bienal BBI en Alta Fidelidad.}
\label{fig:mu-prod-13}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-13-conocer-la-veceria-de-mi-lote.png}
\caption*{\textit{Nota.} Reloj del índice BBI, proyección temporal de alternancia y registro de cosechas anteriores. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-14} se visualiza la liquidación productiva anual con balance de pesaje entre destino mesa y aceite, diálogo de confirmación que bloquea la campaña de forma inmutable y visor del expediente agronómico oficial con firma digital mediante hash criptográfico.

\begin{figure}[H]
\caption{Mock-up Productor: Cierre de Campaña y Expediente Agronómico en Alta Fidelidad.}
\label{fig:mu-prod-14}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-14-cerrar-la-campana.png}
\caption*{\textit{Nota.} Liquidación por destino comercial, bloqueo de ciclo y generación de expediente con hash criptográfico. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-15} ilustra el seguimiento agrometeorológico de frío invernal bajo el modelo Erez-Fishman, destacando el contador de porciones acumuladas con copos dorados, gráfico de dispersión térmica diurna y nocturna, y alertas tempranas ante inviernos cálidos.

\begin{figure}[H]
\caption{Mock-up Productor: Seguimiento de Frío Invernal y Ruptura de Latencia en Alta Fidelidad.}
\label{fig:mu-prod-15}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-15-seguir-el-frio-invernal.png}
\caption*{\textit{Nota.} Monitor de porciones de frío acumuladas y detección temprana de anomalías térmicas en invierno. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-16} se aprecia el tablero climático con pronóstico extendido a siete días, curvas continuas de variación térmica horaria y lecturas gráficas de sondas de humedad de suelo a diferentes profundidades radiculares.

\begin{figure}[H]
\caption{Mock-up Productor: Monitoreo Microclimático y Telemetría de Suelo en Alta Fidelidad.}
\label{fig:mu-prod-16}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-16-vigilar-el-clima-del-lote.png}
\caption*{\textit{Nota.} Pronóstico microclimático localizado y telemetría de humedad de suelo en alta fidelidad. Elaboración propia.}
\end{figure}

Tal como se exhibe en la \autoref{fig:mu-prod-18}, el panel de cuenta del productor presenta la gestión de perfil con validaciones en formato E.164, cambio de contraseña con comprobación previa, tarjeta de membresía activa y hoja inferior interactiva para selección idiomática.

\begin{figure}[H]
\caption{Mock-up Productor: Administración de Perfil de Usuario y Seguridad en Alta Fidelidad.}
\label{fig:mu-prod-18}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Perfil de usuario, parámetros de seguridad y selector de idioma en alta fidelidad. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-prod-19} se ilustra la edición interactiva de vértices cartográficos sobre plano satelital para actualizar linderos, acompañada del diálogo modal de archivado que preserva la trazabilidad histórica de los datos para la cooperativa.

\begin{figure}[H]
\caption{Mock-up Productor: Modificación Cartográfica y Archivado de Lotes en Alta Fidelidad.}
\label{fig:mu-prod-19}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-19-editar-o-archivar-un-lote.png}
\caption*{\textit{Nota.} Ajuste de polígonos perimétricos y archivado con preservación de series estadísticas. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-prod-20} muestra la lista de dispositivos IoT asociados a la parcela con niveles de carga de batería e indicadores de sincronización, complementados con opciones modales para pausar transmisiones o desvincular sensores físicos.

\begin{figure}[H]
\caption{Mock-up Productor: Supervisión de Sensores y Nodos de Telemetría IoT en Alta Fidelidad.}
\label{fig:mu-prod-20}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/productor/mk-productor-20-sensores-del-lote.png}
\caption*{\textit{Nota.} Supervisión de sondas y microestaciones IoT con estado de conectividad y batería. Elaboración propia.}
\end{figure}


##### Mock-ups para el Gestor Técnico de Cooperativa
&nbsp;

En la \autoref{fig:mu-gest-01} se despliegan las pantallas de bienvenida del gestor técnico, articulando grabados del valle y mensajes institucionales orientados a la supervisión coordinada de parcelas socias y a la planificación del acopio.

\begin{figure}[H]
\caption{Mock-up Gestor: Bienvenida Institucional y Visión Colectiva del Valle en Alta Fidelidad.}
\label{fig:mu-gest-01}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-01-bienvenida.png}
\caption*{\textit{Nota.} Portada introductoria orientada a la gestión asociativa y coordinación territorial del valle. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-gest-02} presenta el asistente de alta técnica en tres pasos, capturando el nombre profesional, teléfono institucional de coordinación y criterios de parametrización para alertas de sobrecarga y heladas en zonas bajas.

\begin{figure}[H]
\caption{Mock-up Gestor: Asistente de Configuración de Alertas Territoriales en Alta Fidelidad.}
\label{fig:mu-gest-02}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-02-preguntas-del-onboarding.png}
\caption*{\textit{Nota.} Asistente de configuración técnica y parametrización de alertas colectivas del valle. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-04} se aprecia la pantalla de espera institucional con diseño formal que informa al gestor sobre la habilitación de permisos administrativos por parte de la cooperativa.

\begin{figure}[H]
\caption{Mock-up Gestor: Estado de Validación y Asignación Institucional en Alta Fidelidad.}
\label{fig:mu-gest-04}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-04-activacion-del-acceso.png}
\caption*{\textit{Nota.} Pantalla de espera institucional previa a la asignación de permisos técnicos. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-gest-10}, el tablero territorial de mando reúne el semáforo de riesgo del valle con bloques de severidad diferenciados, la tarjeta de acopio con volumen proyectado y la lista jerarquizada de visitas técnicas urgentes.

\begin{figure}[H]
\caption{Mock-up Gestor: Tablero Territorial de Mando y Semáforo de Riesgo en Alta Fidelidad.}
\label{fig:mu-gest-10}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-10-inicio-del-gestor.png}
\caption*{\textit{Nota.} Tablero de mando territorial con semáforo agronómico, acopio agregado y priorización de visitas. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-11} se expone el módulo de visitas de campo con cartografía sectorial, listado ordenado por severidad de sobrecarga con accesos directos de comunicación y ficha de auditoría agronómica de la parcela.

\begin{figure}[H]
\caption{Mock-up Gestor: Zonificación Territorial y Priorización de Visitas de Campo en Alta Fidelidad.}
\label{fig:mu-gest-11}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-11-priorizar-mis-visitas-de-campo.png}
\caption*{\textit{Nota.} Mapa de riesgo sectorial, ranking de atención a productores y ficha técnica de parcela. Elaboración propia.}
\end{figure}

La \autoref{fig:mu-gest-12} despliega el módulo de proyección de acopio territorial, exhibiendo el volumen global con barras proporcionales para aceituna verde y negra, barra de cobertura sobre el umbral técnico del 50 % y estados de consulta fuera de línea.

\begin{figure}[H]
\caption{Mock-up Gestor: Estimación y Desglose Territorial del Acopio Proyectado en Alta Fidelidad.}
\label{fig:mu-gest-12}
\centering
\includegraphics[width=0.40\textwidth,height=0.28\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-12-proyectar-el-acopio.png}
\caption*{\textit{Nota.} Modelo volumétrico de acopio, desglose comercial, umbrales de cobertura y consulta offline. Elaboración propia.}
\end{figure}

En la \autoref{fig:mu-gest-17} se presenta el panel de gestión del padrón de socios y cupo colectivo: tarjeta de membresía con barra tricolor, visor de auditoría de códigos por vigencia, hoja inferior para emisión masiva y diálogos para la revocación segura de plazas.

\begin{figure}[H]
\caption{Mock-up Gestor: Administración de Padrón, Cupo Colectivo y Códigos en Alta Fidelidad.}
\label{fig:mu-gest-17}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-17-administrar-socios-y-codigos.png}
\caption*{\textit{Nota.} Control de cupo asociativo, emisión masiva de códigos y auditoría de vinculación de socios. Elaboración propia.}
\end{figure}

Tal como se ilustra en la \autoref{fig:mu-gest-18}, el panel de cuenta del gestor técnico exhibe la insignia de licencia activa, opciones de seguridad con validación de credenciales y una hoja inferior de cambio de idioma en caliente que adapta de forma instantánea etiquetas y formatos numéricos.

\begin{figure}[H]
\caption{Mock-up Gestor: Administración de Cuenta Institucional y Bilingüismo en Caliente en Alta Fidelidad.}
\label{fig:mu-gest-18}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-ui-design/mockups/gestor/mk-gestor-18-mi-cuenta.png}
\caption*{\textit{Nota.} Perfil institucional de gestor técnico, auditoría de credenciales y conmutación idiomática en caliente. Elaboración propia.}
\end{figure}

#### Mobile Applications User Flow Diagrams
&nbsp;

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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f01-teodoro.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f01-ruben.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f02-teodoro.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f02-ruben.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f03-teodoro.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f03-ruben.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f04.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P04 · Resultado del pago / Rechazado.** Se activa cuando Mercado Pago no confirma el pago. Resultado: toca «Intentar con otro medio» y retoma el pago en el PASO 2A.
- **P05 · Canjear código / Código no válido.** Se activa cuando el código está vencido o ya fue canjeado. Resultado: toca «Probar otro código» y retoma el PASO 3B.

**UF-F05 · Saber qué hacer hoy en mi olivar.** Meta de usuario: «Al abrir la app quiero ver de un vistazo cómo están mis lotes y qué es lo urgente de la temporada.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US18, con resúmenes de US17, US19 y US27. Como se observa en la \autoref{fig:uf-f05}, la ruta esperada coincide con la de WF-F05 y recorre las pantallas P10 Inicio, T14 Centro de alertas y T15 Detalle de alerta. Cierra con la meta cumplida: sabe qué atender hoy y en qué lote. El diagrama dibuja 8 rutas alternativas. El diagrama incluye una nota que aclara que las cuatro pantallas P61 pertenecen al carril de F13 · Aclarear a tiempo (respaldo en US27 esc. 2 y 3 y US26 esc. 3) y se muestran aquí porque P10 resume la prescripción de US27.

\begin{figure}[H]
\caption{User flow UF-F05: saber qué hacer hoy en mi olivar.} \label{fig:uf-f05}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f05.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f06.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f07.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P28 · Editar lote / Marco fuera de rango.** Se activa cuando el marco de plantación no es compatible (por ejemplo 4 × 4 m, 625 árboles/ha, no viable). Resultado: corrige el marco y retoma el PASO 3.

**UF-F08 · Configurar el monitoreo del lote.** Meta de usuario: «Quiero vincular nodos virtuales a mi lote para recibir lecturas de clima y suelo.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US13, US14, US15 y US16. Como se observa en la \autoref{fig:uf-f08}, la ruta esperada coincide con la de WF-F08 y recorre las pantallas P26 Detalle del lote, P27 Opciones del lote, P85 Sensores del lote, P86 Vincular un nodo, P87 Configurar nodo y retorno a P85. Cierra con la meta cumplida: sus nodos quedaron vinculados y el lote recibe lecturas de clima y suelo. El diagrama dibuja 3 rutas alternativas. La desvinculación de un nodo (US16) se documenta en la ruta alterna P88, que termina en P85 con el aviso «Nodo desvinculado · historial conservado».

\begin{figure}[H]
\caption{User flow UF-F08: configurar el monitoreo del lote.} \label{fig:uf-f08}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f08.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f09.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P90 · Clima del lote / Pronóstico guardado (sin conexión).** Se activa cuando el pronóstico no está actualizado. Resultado: toca «Humedad del suelo» y llega a P91 con los datos guardados.
- **T15 · Humedad normal (alerta normalizada).** Se activa cuando la alerta de estrés hídrico ya no está activa. Resultado: toca «Ver humedad del suelo» y llega a P91.

**UF-F10 · Conocer la vecería de mi lote.** Meta de usuario: «Quiero registrar mis cosechas pasadas para saber qué tan fuerte es la alternancia de mi lote.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US20 y US21. Como se observa en la \autoref{fig:uf-f10}, la ruta esperada coincide con la de WF-F10 y recorre las pantallas P26 Detalle del lote, P40 Alternancia, P41 Cosecha histórica y retorno a P40 con la campaña agregada. Cierra con la meta cumplida: sabe qué tan fuerte es la vecería de su lote con el índice recalculado. El diagrama dibuja 3 rutas alternativas. La corrección y eliminación de campañas históricas (US21) se documenta en la ruta alterna de eliminar campaña.

\begin{figure}[H]
\caption{User flow UF-F10: conocer la vecería de mi lote.} \label{fig:uf-f10}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f10.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f11.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P80 · Frío invernal / Fuera de temporada.** Se activa cuando no es temporada de invierno. Resultado: toca «Atrás» y regresa a P10.
- **P80 · Frío invernal / Estímulo completado.** Se activa cuando el olivar ya completó su frío. Resultado: toca «Atrás» y regresa a P10.

**UF-F12 · Muestrear el cuajado sin conexión.** Meta de usuario: «Quiero contar brotes y frutos árbol por árbol en el campo, aunque no tenga señal, y que se envíe solo cuando vuelva la cobertura.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US24 y US25. Como se observa en la \autoref{fig:uf-f12}, la ruta esperada coincide con la de WF-F12 y recorre las pantallas P50 Bitácora, P51 Nuevo muestreo, P52 Ronda de muestreo, P53 Registrar árbol (repetido hasta completar 5 árboles) y P54 Resumen de ronda, con o sin señal al finalizar. Cierra con la meta cumplida: la muestra quedó registrada y sincronizada, y habilita el plan del lote. El diagrama dibuja 1 ruta alternativa. Si no hay señal al finalizar, la ronda queda guardada en el teléfono (PASO 7) y un evento del sistema la envía sola cuando vuelve la cobertura.

\begin{figure}[H]
\caption{User flow UF-F12: muestrear el cuajado sin conexión.} \label{fig:uf-f12}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f12.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **P53 · Registrar árbol / Conteo fuera de rango.** Se activa cuando el conteo está fuera de rango (por ejemplo, con 40 brotes el máximo admitido es 160 frutos). Resultado: corrige el conteo y retoma el PASO 5.

**UF-F13 · Aclarear a tiempo.** Meta de usuario: «Quiero saber cuánta fruta debo quitar y hasta qué fecha, y dejar registrado lo que hice.» Corresponde a Teodoro Mamani en la App Productor (Kotlin) y cubre las historias US26, US27 y US28. Como se observa en la \autoref{fig:uf-f13}, la ruta esperada coincide con la de WF-F13 y recorre las pantallas P60 Plan, P61 Plan del lote, P62 Registrar aclareo y P63 Aclareo registrado, tras cuatro decisiones encadenadas (muestra suficiente, carga que necesita aclareo, ventana abierta y conexión). Cierra con la meta cumplida: sabe cuánto quitar y hasta cuándo, y su aclareo quedó en la Bitácora. El diagrama dibuja 5 rutas alternativas. 

\begin{figure}[H]
\caption{User flow UF-F13: aclarear a tiempo.} \label{fig:uf-f13}
\centering
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f13.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f14.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f15.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f16.png}
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
\includegraphics[width=0.92\textwidth,height=0.26\textheight,keepaspectratio]{report/assets/mobile-userflows/uf-f17.png}
\caption*{\textit{Nota.} Elaboración propia en Lucidchart con los mock-ups de Figma.}
\end{figure}

Las rutas alternativas del diagrama son las siguientes:

- **G43 · Generar códigos / Cupo excedido.** Se activa cuando la cantidad de códigos supera las plazas libres de la licencia. Resultado: baja la cantidad con «−» y retoma el PASO 4.
- **G42 · Revocar código (diálogo).** Se activa cuando decide revocar un código por canjear en lugar de generar nuevos. Resultado: confirma «Revocar código» y el sistema evalúa si sigue sin canjear.
- **G42 · Códigos / Código revocado.** Se activa cuando el código seguía sin canjear. Resultado: el código sale de la lista y la plaza vuelve a la membresía; la ruta termina ahí.
- **G42 · Código ya canjeado (409).** Se activa cuando el código ya fue canjeado por el socio. Resultado: toca «Entendido» y regresa al PASO 3.