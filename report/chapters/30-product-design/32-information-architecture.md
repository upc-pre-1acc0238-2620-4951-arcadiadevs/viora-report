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