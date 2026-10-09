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
