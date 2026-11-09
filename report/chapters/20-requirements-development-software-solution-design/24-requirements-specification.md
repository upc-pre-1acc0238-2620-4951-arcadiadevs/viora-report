## Requirements specification

Esta sección permite que el equipo realice, en base al análisis de la información obtenida en las investigaciones de campo, el Needfinding y el taller de Big Picture Event Storming, la especificación formal de los requisitos de los productos digitales que integran el ecosistema Viora. La especificación articula las necesidades de los productores olivareros independientes y de los gestores técnicos de organizaciones olivareras con los servicios de backend y la presencia digital del negocio.

### User Stories

En esta sección se definen los requisitos del ecosistema mediante Épicas e Historias de Usuario, estructuradas a partir de la línea de tiempo agronómica y los focos de mayor incertidumbre identificados en el Big Picture Event Storming (especialmente "Unmeasured Crop Load" y "Lack of History"). Los requisitos abarcan las funcionalidades del dominio transaccional de las aplicaciones móviles (Android nativa y multiplataforma), el sitio web estático (*Landing Page*) orientado a la conversión y transparencia de tarifas, las Technical Stories desde la perspectiva del desarrollador cliente para la integración de contratos RESTful, y las *Spike Stories* destinadas a reducir riesgos técnicos mediante aprendizaje autónomo.

Todos los criterios de aceptación son comprobables y siguen estrictamente la estructura BDD (*Behavior-Driven Development*) con sintaxis Gherkin (*Given-When-Then*) en tiempo presente y tercera persona, sin hacer referencia a detalles efímeros de interfaz gráfica y modelando escenarios representativos de éxito, validación y control de excepciones.

A continuación, se presentan las 16 Épicas definidas para el ecosistema Viora, estructuradas bajo el formato estándar establecido:

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP01} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Gestión de Identidad, Acceso y Perfil de Usuario} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} registrarme, autenticarme con credenciales seguras y gestionar mis datos de contacto, \textbf{para} acceder a la plataforma con las vistas, privilegios y seguridad correspondientes a mi rol.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP02} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Gestión de Suscripciones SaaS y Membresía Cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} gestionar mi modalidad de suscripción (mediante pago digital en línea para planes individuales o canje de código de activación de cooperativa) y administrar cupos corporativos, \textbf{para} habilitar y mantener activo el acceso a los servicios de la plataforma.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP03} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Delimitación Georreferenciada y Gestión de Parcelas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} delimitar espacialmente mis parcelas con el sensor GPS interno y mapas satelitales, registrando la caracterización agronómica de variedad de olivo cultivada, marco de plantación y densidad de árboles por hectárea, así como consultar la cartera georreferenciada de predios socios, \textbf{para} estructurar la base territorial y dendrométrica del olivar y optimizar las rutas de asistencia técnica en campo.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP04} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Monitoreo Agroclimático y Dispositivos de Parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} vincular nodos sensores a mis lotes, consultar las series periódicas de temperatura, humedad ambiental y suelo, y revisar los pronósticos meteorológicos de la zona, \textbf{para} vigilar el microclima de mi unidad productiva y anticipar condiciones climáticas desfavorables.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP05} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP05} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Diagnóstico Histórico de Vecería y Cómputo de Frío Invernal} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} registrar las cosechas de campañas previas, calcular automáticamente mi índice BBI de alternancia y monitorear la acumulación de frío invernal con alerta por picos térmicos de efecto ENOS, para conocer la severidad histórica de la alternancia en mi fundo y prever el potencial floral de la temporada.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP06} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Regulación de Carga Frutal y Prescripción de Aclareo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} realizar muestreos guiados de cuajado en campo operando sin conexión a internet mediante persistencia local en el dispositivo y sincronización automática al recuperar cobertura, calcular la carga frutal objetivo sostenible y recibir prescripciones in-app de intensidad y ventana de aclareo, \textbf{para} remover el exceso de fruta a tiempo antes del endurecimiento del carozo y mitigar la vecería prolongada en los años de menor rendimiento.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP07} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP07} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Cierre de Campaña, Balance Productivo y Reportes Técnicos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} asentar los kilogramos cosechados al término del ciclo agrícola, visualizar la curva comparativa de estabilización interanual frente al año base y generar la ficha técnica en PDF con la trazabilidad agronómica de mi predio, \textbf{para} certificar el rendimiento del lote, sustentar financiamiento agrícola y demostrar ante compradores la consistencia productiva de mi olivar.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP08} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP08} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Inteligencia Territorial Cooperativa y Proyecciones de Acopio} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} consultar un semáforo de riesgo fenológico que priorice parcelas socias con sobrecarga frutal o déficit térmico, y generar proyecciones tempranas del volumen global de acopio discriminadas por aceituna verde y negra, \textbf{para} orientar las visitas de campo a los predios más vulnerables, optimizar la capacidad de salmueras en planta y respaldar compromisos comerciales de exportación.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP09} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Presencia Web, Propuesta de Valor y Conversión de Usuarios} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} visitante del sitio web de Viora, \textbf{quiero} conocer la propuesta de valor para mitigar la vecería prolongada y sostener la productividad del olivar en los años de menor cosecha, consultar las tarifas transparentes en Soles (PEN), conocer al equipo fundador, acceder a los enlaces de descarga móvil y consultar en el pie de página los Términos y Condiciones junto con las Políticas de Privacidad conforme a la Ley N° 29733, \textbf{para} evaluar la adopción de la solución digital con total respaldo legal e instalar la aplicación en mi dispositivo.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP10} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Integración de Servicios de Identidad, Acceso y Suscripciones (IAM \& Billing)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consumir los endpoints de autenticación JWT, registro por roles, generación de preferencias de cobro en pasarela de pagos digitales (Sandbox) y canje de códigos de activación, \textbf{para} implementar las interfaces de control de acceso, monetización directa y membresías corporativas en las aplicaciones móviles y web.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP11} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Integración de Servicios Geoespaciales, Nodos de Campo y Clima} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consumir los endpoints de gestión poligonal de parcelas, ciclo de vida de nodos sensores, consulta de telemetría y pronósticos meteorológicos externos, \textbf{para} implementar las vistas cartográficas satelitales, vinculación de dispositivos y paneles de monitoreo climático en la interfaz de usuario.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP12} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Integración de Servicios del Motor de Vecería, Regulación de Carga y Acopio} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consumir los endpoints de registro de cosechas, métricas de BBI y frío, muestreos de cuajado, prescripciones de aclareo, generación de PDF y proyección agregada de acopio, para implementar los flujos agronómicos centrales y los paneles predictivos de la cooperativa en la experiencia móvil.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP13} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Ingeniero de Plataforma Core} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP13} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Fundamentos de Arquitectura Core y Estandarización de Backend} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Ingeniero de Plataforma Core, \textbf{quiero} implementar los componentes transversales de la arquitectura en capas DDD (manejo centralizado de excepciones RFC 7807, estrategias de nomenclatura ORM y contratos OpenAPI/Swagger), \textbf{para} proveer una infraestructura backend robusta, uniforme, observable y desacoplada que facilite el consumo de servicios por los desarrolladores frontend.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP14} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Equipo de Desarrollo de Viora} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP14} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Spikes de Viabilidad Técnica y Aprendizaje Autónomo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} equipo de desarrollo de Viora, \textbf{queremos} prototipar e investigar la viabilidad matemática del modelo de Erez, los mecanismos de persistencia offline-first con SQLite local y el flujo de checkout en sandbox de Mercado Pago, \textbf{para} mitigar la incertidumbre técnica y asegurar la correcta integración de tecnologías clave en la solución final.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP15} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Usuario del Ecosistema Viora} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP15} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Internacionalización y Localización del Ecosistema (i18n / l10n)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario del ecosistema digital de Viora (Visitante, Productor Olivarero o Gestor Técnico), \textbf{quiero} acceder a la plataforma web y móvil en mi idioma de preferencia (Español o Inglés) con adaptación de contenidos y formatos regionales, \textbf{para} interactuar con las herramientas agronómicas y comerciales en un entorno comprensible que facilite la adopción y la expansión internacional de la plataforma.} \\ \hline
\end{tabular}
\end{table}

\begin{table}[H]
\centering
\begin{tabular}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{EP16} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Asistencia Agronómica Basada en Datos del Productor} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} productor olivarero, \textbf{quiero} obtener explicaciones comprensibles sobre la situación de mis parcelas a partir de mis propios datos, \textbf{para} entender las recomendaciones agronómicas y decidir sin depender de asistencia técnica presencial.} \\ \hline
\end{tabular}
\end{table}

\clearpage

A continuación, se presentan las Historias de Usuario desarrolladas para el ecosistema Viora, formuladas con sus respectivos criterios de aceptación BDD:

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US01} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de cuenta de acceso y credenciales seguras con asignación de rol} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario nuevo de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} registrar una cuenta en la plataforma ingresando mi correo electrónico y una contraseña segura desde la aplicación móvil de mi segmento, \textbf{para} darme de alta en el sistema y disponer de una identidad de acceso con el rol asignado automáticamente según la aplicación cliente utilizada.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de cuenta de acceso con asignación de rol por aplicación cliente}\newline
\textbf{Given} un usuario que no posee una cuenta registrada en la plataforma y accede desde la aplicación móvil de su segmento (App Productor en Android o App Gestor en Flutter).\newline
\textbf{When} solicita su registro proporcionando un correo electrónico válido y una contraseña segura.\newline
\textbf{Then} el sistema crea la cuenta de acceso en estado activo con el rol correspondiente a la aplicación desde la que se registró (Productor Olivarero o Gestor Técnico).\newline
\textbf{And} el usuario puede autenticarse satisfactoriamente en dicha aplicación con esas credenciales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por correo electrónico ya registrado}\newline
\textbf{Given} un usuario que intenta registrarse en el sistema.\newline
\textbf{When} ingresa una dirección de correo electrónico que ya se encuentra asociada a una cuenta existente.\newline
\textbf{Then} el sistema rechaza la solicitud impidiendo duplicar identidades de acceso.\newline
\textbf{And} notifica que el correo electrónico ya se encuentra registrado en la plataforma.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por contraseña que incumple estándar de seguridad}\newline
\textbf{Given} un usuario que solicita el registro de una nueva cuenta de acceso.\newline
\textbf{When} ingresa una contraseña que posee menos de 8 caracteres o carece de combinación alfanumérica.\newline
\textbf{Then} el sistema rechaza la operación sin registrar la cuenta.\newline
\textbf{And} notifica el incumplimiento de las políticas de complejidad requeridas para la contraseña.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Rechazo de autenticación cruzada en aplicación de segmento no correspondiente}\newline
\textbf{Given} un usuario registrado con rol de un segmento específico (por ejemplo, Productor Olivarero).\newline
\textbf{When} intenta iniciar sesión en la aplicación cliente correspondiente al otro segmento (por ejemplo, App Gestor Técnico en Flutter).\newline
\textbf{Then} el sistema rechaza el acceso informando que las credenciales corresponden a otro perfil de usuario.\newline
\textbf{And} orienta al usuario hacia la aplicación móvil oficial correspondiente a su rol.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US02} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Inicio de sesión y autenticación persistente mediante tokens} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario registrado de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} autenticarme con mi correo electrónico y contraseña para mantener mi sesión activa en el dispositivo móvil mediante tokens seguros, \textbf{para} operar de forma continua y protegida en la gestión de mis predios o cartera cooperativa sin tener que reingresar credenciales continuamente durante mis labores agrícolas en campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Autenticación exitosa con emisión de tokens de acceso y actualización}\newline
\textbf{Given} un usuario que posee una cuenta activa registrada en la plataforma.\newline
\textbf{When} solicita el inicio de sesión proporcionando su correo electrónico y contraseña correcta.\newline
\textbf{Then} el sistema valida satisfactoriamente la identidad del usuario.\newline
\textbf{And} emite un token de acceso seguro (JWT) con los privilegios de su rol ("ROLE\_PRODUCTOR" o "ROLE\_GESTOR") junto con un token de actualización.\newline
\textbf{And} establece la sesión persistente en el dispositivo autorizando las operaciones subsiguientes.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Denegación de acceso por credenciales inválidas}\newline
\textbf{Given} un usuario que solicita el inicio de sesión en el sistema.\newline
\textbf{When} proporciona una contraseña incorrecta o un correo electrónico no registrado.\newline
\textbf{Then} el sistema rechaza la autenticación sin generar tokens de sesión.\newline
\textbf{And} notifica que las credenciales son inválidas sin detallar cuál de los datos es el erróneo por motivos de seguridad.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Renovación transparente de sesión mediante token de actualización}\newline
\textbf{Given} un usuario con sesión iniciada en el dispositivo móvil cuyo token de acceso ha expirado.\newline
\textbf{When} la aplicación realiza una solicitud a los servicios presentando un token de actualización válido y vigente.\newline
\textbf{Then} el sistema valida el token de actualización y emite un nuevo token de acceso.\newline
\textbf{And} ejecuta la operación solicitada sin interrumpir las labores del usuario en campo ni requerir el reingreso manual de credenciales.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US03} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta y actualización de datos de perfil y contacto} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario autenticado de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} consultar y modificar mis datos personales, país y número telefónico en mi perfil, \textbf{para} mantener actualizada mi información de contacto y facilitar las coordinaciones operativas y de asistencia técnica entre productores y la administración cooperativa.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa de datos de contacto}\newline
\textbf{Given} un usuario autenticado que accede a la gestión de su perfil.\newline
\textbf{When} actualiza su nombre completo o número celular proporcionando un valor conforme a la norma E.164 según su país de residencia.\newline
\textbf{Then} el sistema persiste los cambios en los datos del usuario.\newline
\textbf{And} confirma la actualización manteniendo la información de contacto vigente para las coordinaciones operativas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por número telefónico con formato incompatible}\newline
\textbf{Given} un usuario autenticado editando sus datos de contacto.\newline
\textbf{When} ingresa un número telefónico que no cumple con el estándar E.164 o cuya longitud no corresponde al país seleccionado.\newline
\textbf{Then} el sistema deniega la actualización sin modificar el registro previo.\newline
\textbf{And} notifica la inconsistencia especificando el formato telefónico esperado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por envío de atributos obligatorios vacíos}\newline
\textbf{Given} un usuario autenticado editando su información personal.\newline
\textbf{When} envía la solicitud de actualización omitiendo el nombre completo o dejándolo en blanco.\newline
\textbf{Then} el sistema rechaza la operación preservando los valores originales en la base de datos.\newline
\textbf{And} notifica que el nombre completo es un campo obligatorio para la identificación en la plataforma.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US04} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Cambio seguro de contraseña de acceso} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario autenticado de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} actualizar mi contraseña de acceso verificando mi clave actual e ingresando una nueva clave robusta, \textbf{para} proteger el acceso a mis registros agrícolas, históricos de cosecha y datos comerciales ante sospechas de vulneración y salvaguardar la privacidad de mis parcelas o cartera gremial.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa de contraseña}\newline
\textbf{Given} un usuario autenticado que accede a la configuración de seguridad de su cuenta.\newline
\textbf{When} proporciona su contraseña actual correcta y define una nueva contraseña que satisface los requisitos de seguridad y es distinta a la anterior.\newline
\textbf{Then} el sistema actualiza las credenciales de acceso del usuario en la plataforma.\newline
\textbf{And} el usuario puede autenticarse satisfactoriamente utilizando únicamente la nueva contraseña definida.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por contraseña actual incorrecta}\newline
\textbf{Given} un usuario autenticado que solicita el cambio de su clave de acceso.\newline
\textbf{When} ingresa una contraseña actual que no coincide con la registrada en el sistema.\newline
\textbf{Then} el sistema rechaza la solicitud sin modificar las credenciales persistidas.\newline
\textbf{And} notifica que la contraseña actual es errónea.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por nueva contraseña que incumple políticas de complejidad}\newline
\textbf{Given} un usuario autenticado que solicita la actualización de su contraseña.\newline
\textbf{When} valida satisfactoriamente su clave actual pero ingresa una nueva contraseña con menos de 8 caracteres o sin combinación alfanumérica.\newline
\textbf{Then} el sistema bloquea el cambio sin persistir modificaciones.\newline
\textbf{And} notifica los criterios de complejidad requeridos para la nueva contraseña.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Rechazo por nueva contraseña idéntica a la actual}\newline
\textbf{Given} un usuario autenticado que intenta modificar su clave de acceso.\newline
\textbf{When} ingresa como nueva contraseña exactamente la misma clave que tiene en uso.\newline
\textbf{Then} el sistema deniega la operación impidiendo la reutilización inmediata de la misma clave.\newline
\textbf{And} notifica al usuario que la nueva contraseña debe diferir de la contraseña actual.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US05} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Recuperación de contraseña olvidada mediante enlace por correo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario registrado de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} solicitar el restablecimiento de mi clave ingresando mi correo electrónico para recibir un enlace de un solo uso, \textbf{para} recuperar el acceso a mis registros agrícolas o cartera gremial de forma autónoma sin depender de soporte técnico ni perder la trazabilidad histórica de mis parcelas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Solicitud exitosa de enlace de recuperación}\newline
\textbf{Given} un usuario que no recuerda su contraseña y posee una cuenta activa en la plataforma.\newline
\textbf{When} solicita la recuperación de clave proporcionando su dirección de correo electrónico registrada.\newline
\textbf{Then} el sistema genera un token de seguridad temporal de un solo uso con vigencia de 15 minutos y envía el correo con el enlace de restablecimiento.\newline
\textbf{And} notifica que la solicitud ha sido procesada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Restablecimiento exitoso de contraseña con token válido}\newline
\textbf{Given} un usuario que accede mediante un token de recuperación válido y vigente.\newline
\textbf{When} define una nueva contraseña que satisface los requisitos de complejidad y confirma su envío.\newline
\textbf{Then} el sistema actualiza la contraseña del usuario e invalida el token de recuperación utilizado.\newline
\textbf{And} el usuario puede autenticarse exitosamente utilizando su nueva contraseña.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por token de recuperación expirado o ya utilizado}\newline
\textbf{Given} un usuario que intenta restablecer su clave utilizando un enlace cuyo token ya caducó o fue consumido previamente.\newline
\textbf{When} envía la solicitud con la nueva contraseña.\newline
\textbf{Then} el sistema rechaza la operación sin modificar las credenciales del usuario.\newline
\textbf{And} notifica que el enlace de recuperación ha expirado, requiriendo generar una nueva solicitud.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Manejo seguro ante solicitud con correo electrónico no registrado}\newline
\textbf{Given} un usuario que solicita la recuperación de acceso.\newline
\textbf{When} ingresa una dirección de correo electrónico que no existe en el sistema.\newline
\textbf{Then} el sistema procesa la petición sin generar tokens ni enviar correos.\newline
\textbf{And} emite la misma notificación genérica de confirmación sin revelar si el correo está o no registrado para evitar ataques de enumeración.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US06} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Suscripción individual al Plan Productor mediante pasarela de pago digital} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero independiente, \textbf{quiero} suscribirme al Plan Productor seleccionando la tarifa correspondiente a la extensión de mis parcelas y realizando el pago en línea mediante una pasarela digital segura, \textbf{para} habilitar de inmediato las herramientas de diagnóstico histórico, monitoreo climático y prescripción agronómica de Viora sin depender de intermediarios ni membresías corporativas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Suscripción y confirmación exitosa de pago en línea}\newline
\textbf{Given} un productor olivarero independiente con cuenta activa que no posee una suscripción vigente.\newline
\textbf{When} selecciona el Plan Productor según la extensión de su predio y completa el pago a través de la pasarela digital con un medio de pago válido.\newline
\textbf{Then} el sistema registra la suscripción en estado activo.\newline
\textbf{And} el usuario puede acceder inmediatamente a las funcionalidades de diagnóstico de vecería y prescripción de aclareo de su plan.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Pago rechazado o fondos insuficientes en la pasarela}\newline
\textbf{Given} un productor iniciando el proceso de suscripción al Plan Productor.\newline
\textbf{When} la pasarela digital rechaza la transacción por fondos insuficientes o medio de pago declinado.\newline
\textbf{Then} el sistema mantiene la cuenta en estado no suscrito sin realizar cargos.\newline
\textbf{And} notifica que la transacción no pudo completarse, permitiendo reintentar la operación con otro medio de pago.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Activación asíncrona mediante confirmación de pago}\newline
\textbf{Given} una transacción de pago procesada a través de la pasarela digital.\newline
\textbf{When} el sistema recibe la confirmación electrónica del pago exitoso.\newline
\textbf{Then} el sistema valida la confirmación de la pasarela y asocia el identificador de pago a la cuenta del productor.\newline
\textbf{And} actualiza la vigencia de la suscripción anual en el sistema.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US07} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Activación de membresía corporativa de socio mediante canje de código de cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero agremiado a una cooperativa agrícola, \textbf{quiero} canjear un código de activación institucional proporcionado por mi organización con validación de cuota y consentimiento explícito, \textbf{para} acceder a las prestaciones de la plataforma bajo patrocinio corporativo sin costo individual de suscripción compartiendo mi información técnica con el gestor de la entidad.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso con validación de cuota de hectáreas y consentimiento}\newline
\textbf{Given} un productor olivarero autenticado en la plataforma que no cuenta con un plan de membresía corporativa activo.\newline
\textbf{When} ingresa un código de activación válido con formato institucional \texttt{COOP-XXXX} y confirma de forma explícita el consentimiento para compartir sus datos agronómicos con la cooperativa emisora.\newline
\textbf{Then} el sistema valida la disponibilidad de cupo en plazas y saldo de hectáreas contratadas de la licencia institucional, vincula la cuenta del productor con la entidad y marca el código como canjeado.\newline
\textbf{And} actualiza el estado de la suscripción a membresía patrocinada activa, mostrando la denominación de la cooperativa en la interfaz de usuario.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por código inexistente o formato malformado}\newline
\textbf{Given} un productor olivarero en la pantalla de canje de patrocinio institucional.\newline
\textbf{When} introduce un código que no sigue el patrón alfanumérico esperado o que no figura en los registros de códigos emitidos por ninguna organización.\newline
\textbf{Then} el sistema bloquea la operación de canje sin modificar el estado ni los privilegios de la cuenta.\newline
\textbf{And} notifica que el código ingresado no existe o no corresponde a una invitación institucional válida.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por código caducado, previamente utilizado o cuota agotada}\newline
\textbf{Given} un productor olivarero intentando registrar un código emitido legítimamente por su cooperativa.\newline
\textbf{When} el código proporcionado ya fue consumido por otro socio, ha superado su fecha límite de vigencia o la cooperativa no dispone de balance suficiente de plazas o hectáreas disponibles.\newline
\textbf{Then} el sistema deniega la vinculación y preserva inalterado el estado del usuario.\newline
\textbf{And} presenta un mensaje informativo especificando la causa del rechazo, ya sea por código utilizado, invitación caducada o capacidad institucional completada.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US08} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Administración de la cartera de socios productores y consulta de cuota corporativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa con rol \texttt{ROLE\_TECHNICAL\_MANAGER}, \textbf{quiero} consultar el padrón de socios productores agremiados con su superficie declarada, el balance de cuota corporativa y el estado de los códigos innominados emitidos, \textbf{para} supervisar la base productiva de la organización, gestionar la entrega de invitaciones y controlar la ocupación de plazas contratadas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta del padrón consolidado de socios vinculados y balance de cuota}\newline
\textbf{Given} un gestor técnico autenticado con privilegios institucionales de \texttt{ROLE\_TECHNICAL\_MANAGER}.\newline
\textbf{When} accede al directorio de miembros y licencias corporativas de su cooperativa.\newline
\textbf{Then} el sistema retorna el listado de socios vinculados bajo la relación autorizada de supervisión, exponiendo nombre, teléfono bajo norma E.164, correo, número de parcelas activas y hectáreas totales registradas.\newline
\textbf{And} presenta el balance contractual desagregando plazas y hectáreas contratadas, comprometidas y disponibles en la licencia colectiva.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Inspección y consulta de inventario de códigos innominados}\newline
\textbf{Given} un gestor técnico supervisando las invitaciones generadas para la incorporación de productores.\newline
\textbf{When} solicita el reporte de códigos de activación institucionales de su entidad.\newline
\textbf{Then} el sistema presenta la relación de códigos innominados detallando identificador enmascarado o utilizable, fecha de expedición, fecha límite de vigencia y estado actual (disponible, canjeado o revocado).\newline
\textbf{And} permite copiar y compartir aquellos códigos que se encuentren vigentes y no hayan sido redimidos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Denegación de acceso por rol no autorizado}\newline
\textbf{Given} una petición de acceso a la cartera gremial emitida por una cuenta que no posee el rol \texttt{ROLE\_TECHNICAL\_MANAGER} o pertenece a otra organización.\newline
\textbf{When} el servicio evalúa las credenciales y el ámbito institucional del solicitante.\newline
\textbf{Then} deniega el acceso retornando código de estado HTTP \texttt{403 Forbidden}.\newline
\textbf{And} resguarda la privacidad del padrón impidiendo la exposición de datos de productores o cupos contractuales a usuarios no facultados.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US09} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} delimitar el contorno de mi parcela capturando los vértices mediante el sensor GPS del dispositivo móvil o fijándolos sobre la cartografía satelital, registrando la variedad de olivo cultivada y el marco de plantación, \textbf{para} establecer la base territorial y dendrométrica de mi lote necesaria para dimensionar el potencial productivo y regular la carga frutal.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de parcela con polígono cerrado y cálculo de densidad}\newline
\textbf{Given} un productor autenticado que inicia el alta de una nueva parcela en la plataforma.\newline
\textbf{When} delimita un polígono cerrado de al menos tres vértices, asigna una denominación al lote, selecciona la variedad de olivo correspondiente y define el marco de plantación.\newline
\textbf{Then} el sistema calcula la superficie en hectáreas y la densidad de árboles resultante.\newline
\textbf{And} registra la parcela en estado activo asociada a la cuenta del productor permitiendo su visualización cartográfica.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por polígono abierto o vértices insuficientes}\newline
\textbf{Given} un productor trazando los límites de su predio.\newline
\textbf{When} intenta registrar el predio con menos de tres coordenadas georreferenciadas o con un trazado perimétrico que no cierra geométricamente.\newline
\textbf{Then} el sistema deniega el registro impidiendo la creación del lote.\newline
\textbf{And} notifica que se requiere un polígono cerrado de al menos tres vértices válidos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Trazado manual sobre mapa satelital ante ausencia de señal GPS}\newline
\textbf{Given} un productor delimitando un lote en campo sin recepción de señal satelital en el sensor GPS del dispositivo.\newline
\textbf{When} no se obtiene fijación de coordenadas satelitales directas.\newline
\textbf{Then} el sistema permite fijar manualmente los puntos perimétricos sobre la vista satelital de la zona.\newline
\textbf{And} calcula el área delimitada conservando la validez geométrica del lote.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US10} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta y modificación de linderos y datos dendrométricos de parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar y actualizar los linderos perimétricos, el nombre o el marco de plantación de una parcela existente, \textbf{para} corregir mediciones topográficas tras labores de replante y mantener al día la caracterización dendrométrica del olivar.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa de linderos y recálculo de área}\newline
\textbf{Given} un productor que consulta una de sus parcelas registradas.\newline
\textbf{When} ajusta la posición de uno de los vértices del polígono perimétrico y confirma los cambios.\newline
\textbf{Then} el sistema recalcula la superficie total en hectáreas.\newline
\textbf{And} actualiza la geometría del predio conservando el historial agronómico previo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Modificación del marco de plantación y actualización de densidad}\newline
\textbf{Given} un productor editando los parámetros agronómicos de su lote.\newline
\textbf{When} modifica el marco de plantación (ej. de 10x10 a 8x8 metros) tras una renovación de árboles.\newline
\textbf{Then} el sistema recalcula automáticamente la densidad de árboles por hectárea.\newline
\textbf{And} actualiza la población vegetal estimada para los modelos de regulación de carga.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por marco de plantación incompatible con la agronomía del olivo}\newline
\textbf{Given} un productor modificando las dimensiones del marco de plantación.\newline
\textbf{When} ingresa espaciamientos negativos o valores que arrojan densidades biológicamente incompatibles con el olivar (superiores a 500 árboles/ha en sistema tradicional).\newline
\textbf{Then} el sistema bloquea la actualización sin alterar la configuración previa.\newline
\textbf{And} notifica los rangos agronómicos admisibles para la plantación.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US11} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Baja y remoción de parcela del inventario productivo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} dar de baja o eliminar una parcela registrada por error o que ya no forma parte de mi explotación agrícola, \textbf{para} mantener ordenado mi inventario de unidades productivas y evitar asignación innecesaria de recursos o cobros.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Eliminación exitosa de una parcela sin registros históricos asociados}\newline
\textbf{Given} un productor olivarero que gestiona una parcela recientemente creada sin cosechas ni muestreos vinculados.\newline
\textbf{When} confirma la eliminación definitiva del predio.\newline
\textbf{Then} el sistema remueve la parcela del inventario de unidades productivas del usuario.\newline
\textbf{And} libera el área asociada permitiendo su reutilización en el límite del plan de suscripción.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Solicitud de confirmación ante eliminación de parcela con datos históricos}\newline
\textbf{Given} un productor que solicita dar de baja una parcela que cuenta con registros de cosechas e historial telemétrico previo.\newline
\textbf{When} inicia la solicitud de eliminación del predio.\newline
\textbf{Then} el sistema advierte sobre la pérdida permanente de la trazabilidad agronómica asociada al lote.\newline
\textbf{And} requiere una confirmación explícita para procesar la baja definitiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US12} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} consultar un tablero territorial que agrupe las parcelas socias por etiquetas sectoriales y visualice mi posición actual mediante GPS, \textbf{para} identificar sectores con mayor vulnerabilidad agronómica y priorizar visitas técnicas presenciales en parcelas con sobrecarga crítica o riesgo meteorológico activo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Visualización cartográfica de parcelas socias y posición del gestor mediante GPS}\newline
\textbf{Given} un gestor técnico en campo con permisos de geolocalización concedidos en su dispositivo móvil.\newline
\textbf{When} accede al visor territorial y matriz de riesgo de su cooperativa.\newline
\textbf{Then} el sistema proyecta en el mapa las geometrías de las parcelas correspondientes a los productores vinculados a su cartera de supervisión.\newline
\textbf{And} posiciona el marcador de ubicación actual del gestor mediante el sensor GPS del dispositivo para orientar su desplazamiento físico sin requerir polígonos de fronteras geográficas administrativas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Agrupación por etiquetas sectoriales y cálculo del semáforo por mayor gravedad}\newline
\textbf{Given} un gestor técnico consultando la situación agronómica consolidada de la cooperativa.\newline
\textbf{When} filtra por una etiqueta sectorial (e.g., Magollo, Sama o La Yarada Los Palos) o visualiza el resumen general de sectores.\newline
\textbf{Then} el sistema calcula el estado del semáforo asignando la mayor gravedad observada entre las parcelas del sector (crítico si existe al menos una parcela con alerta crítica, moderado si no hay críticas pero sí moderadas, u óptimo si todas las evaluadas cumplen parámetros normales).\newline
\textbf{And} reporta de forma independiente el conteo de parcelas en riesgo crítico, moderado, óptimo y sin datos suficientes, sin promediar colores ni ocultar casos urgentes.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Operación ante ausencia de señal GPS o permisos de ubicación denegados}\newline
\textbf{Given} el gestor operando en una zona sin cobertura satelital GPS o habiendo revocado los permisos de localización en el terminal.\newline
\textbf{When} abre la matriz territorial y tablero de sectores.\newline
\textbf{Then} el sistema presenta la vista cartográfica centrada en la extensión envolvente de las parcelas socias registradas.\newline
\textbf{And} mantiene plenamente funcionales la exploración interactiva del mapa, el filtrado por sectores nominales y la consulta del semáforo de riesgo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US13} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Vinculación y alta de nodo sensor virtual a una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} dar de alta un nodo sensor virtual (estación microclimática o sonda de humedad de suelo) en una de mis parcelas asignándole una denominación y tipo, \textbf{para} habilitar la ingesta y recepción de series telemétricas en el lote sin requerir el despliegue de hardware físico en campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Vinculación exitosa de nodo sensor virtual}\newline
\textbf{Given} un productor olivarero autenticado que gestiona una parcela registrada.\newline
\textbf{When} registra un nodo sensor virtual indicando un nombre descriptivo y seleccionando el tipo de sensor (microclima o sonda de suelo).\newline
\textbf{Then} el sistema asocia el nodo sensor virtual a la parcela registrándolo en estado activo.\newline
\textbf{And} habilita la ingesta periódica de telemetría simulada para dicha unidad productiva.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por campos obligatorios incompletos o tipo no soportado}\newline
\textbf{Given} un productor intentando dar de alta un nodo sensor virtual.\newline
\textbf{When} omite el nombre descriptivo o selecciona un tipo de dispositivo no admitido por el sistema.\newline
\textbf{Then} el sistema deniega el registro sin modificar la configuración del lote.\newline
\textbf{And} notifica los campos obligatorios y tipos de sensores virtuales válidos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por nombre duplicado de nodo virtual en la misma parcela}\newline
\textbf{Given} un productor registrando un nodo virtual en su parcela.\newline
\textbf{When} ingresa una denominación idéntica a la de otro nodo virtual ya existente en la misma parcela.\newline
\textbf{Then} el sistema bloquea el alta impidiendo nombres duplicados en el predio.\newline
\textbf{And} notifica que la denominación del sensor virtual debe ser única en el lote.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US14} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de inventario y estado operativo de nodos sensores virtuales en parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar el inventario de nodos sensores virtuales vinculados a mi parcela y su estado de transmisión simulada, \textbf{para} comprobar qué puntos de monitoreo se encuentran activos alimentando los modelos agroclimáticos del olivar.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado consolidado de nodos virtuales con estado operativo activo}\newline
\textbf{Given} una parcela que cuenta con múltiples nodos sensores virtuales vinculados.\newline
\textbf{When} el productor accede al inventario de dispositivos del predio.\newline
\textbf{Then} el sistema presenta la relación de nodos virtuales detallando tipo de dispositivo, estado operativo (activo o pausado) y fecha de última telemetría generada.\newline
\textbf{And} resalta en estado activo aquellos nodos que alimentan la simulación climática actual.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Visualización de nodo virtual en estado de transmisión pausado}\newline
\textbf{Given} un nodo sensor virtual cuyo estado de transmisión ha sido pausado por el usuario o por mantenimiento de datos.\newline
\textbf{When} el productor consulta la lista de dispositivos de la parcela.\newline
\textbf{Then} el sistema clasifica el nodo en estado inactivo o en pausa.\newline
\textbf{And} notifica que las series temporales de dicho punto se encuentran temporalmente suspendidas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Consulta en parcela sin dispositivos sensores asignados}\newline
\textbf{Given} un productor que consulta una parcela que aún no posee nodos virtuales vinculados.\newline
\textbf{When} accede al módulo de sensores.\newline
\textbf{Then} el sistema informa que no existen nodos sensores virtuales asociados al lote.\newline
\textbf{And} presenta la opción de dar de alta un nuevo sensor virtual.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US15} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Configuración y calibración de nodo sensor virtual en parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} personalizar la denominación del nodo sensor virtual y definir la profundidad de monitoreo de la sonda de suelo (30 cm o 60 cm), \textbf{para} asegurar que las lecturas telemétricas se computen en el estrato radicular correspondiente a las raíces absorbentes del olivo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Configuración exitosa de profundidad y etiqueta de sonda virtual}\newline
\textbf{Given} un productor que gestiona un sensor virtual de humedad de suelo vinculado a su parcela.\newline
\textbf{When} asigna un nombre descriptivo (ej. "Sonda Sector Norte") y selecciona la profundidad de monitoreo (30 cm o 60 cm).\newline
\textbf{Then} el sistema persiste la configuración técnica del nodo virtual.\newline
\textbf{And} asocia las series de humedad posteriores al estrato radicular seleccionado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por profundidad de sonda no soportada}\newline
\textbf{Given} un productor configurando los parámetros de una sonda virtual de suelo.\newline
\textbf{When} ingresa un valor de profundidad fuera de las opciones estándar de calibración (30 cm o 60 cm).\newline
\textbf{Then} el sistema rechaza la actualización sin alterar la configuración previa.\newline
\textbf{And} notifica los valores de profundidad admitidos para el monitoreo radicular del olivo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US16} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Desvinculación y baja de nodo sensor virtual de una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} dar de baja o desvincular un nodo sensor virtual de mi parcela cuando ya no requiera monitorear ese punto, \textbf{para} mantener limpio el inventario del lote preservando intacto el historial previo de telemetría registrada.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Desvinculación exitosa conservando la serie histórica de datos}\newline
\textbf{Given} un productor olivarero que gestiona un nodo sensor virtual activo en una parcela.\newline
\textbf{When} solicita y confirma la desvinculación del nodo virtual del predio.\newline
\textbf{Then} el sistema remueve el nodo sensor virtual del inventario activo de la parcela.\newline
\textbf{And} preserva intactas todas las series de telemetría y lecturas históricas registradas previamente en el lote.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta de métricas históricas de parcela tras desvinculación de nodo}\newline
\textbf{Given} un productor que consulta las métricas históricas de una parcela tras la baja de un sensor virtual.\newline
\textbf{When} accede a los reportes de temporadas anteriores.\newline
\textbf{Then} el sistema presenta las series históricas generadas durante la vigencia del sensor.\newline
\textbf{And} confirma que la desvinculación no afectó los datos acumulados de campañas pasadas.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US17} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Monitoreo agroclimático y consulta de series temporales de suelo y microclima} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar las lecturas periódicas de temperatura ambiental, humedad relativa y humedad del suelo registradas en mi parcela, \textbf{para} supervisar el confort hídrico del olivar y detectar oportunamente riesgos de estrés térmico en floración o déficit de humedad en cuajado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de telemetría para un rango temporal definido}\newline
\textbf{Given} un productor olivarero con sensores activos en su parcela.\newline
\textbf{When} consulta el historial agroclimático seleccionando un rango de fechas (últimas 24 horas, 7 días o 30 días).\newline
\textbf{Then} el sistema presenta las curvas temporales de temperatura, humedad relativa y humedad del suelo correspondientes al intervalo.\newline
\textbf{And} destaca el último valor medido con su respectiva marca de tiempo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Visualización de promedios diurnos y nocturnos de temperatura}\newline
\textbf{Given} una parcela con lecturas horarias consolidadas durante la semana.\newline
\textbf{When} el productor consulta el resumen térmico semanal.\newline
\textbf{Then} el sistema discrimina las temperaturas promedio diurnas y nocturnas registradas en el campo.\newline
\textbf{And} calcula la oscilación térmica diaria para evaluar el estímulo fisiológico del cultivo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US18} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} recibir alertas automáticas en el sistema cuando la humedad del suelo caiga a niveles de estrés o la temperatura ambiental supere umbrales fisiológicos críticos, \textbf{para} adelantar turnos de riego y proteger la viabilidad del polen durante la etapa crítica de floración.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Emisión de alerta por caída de humedad de suelo a punto de recarga}\newline
\textbf{Given} una parcela con monitoreo continuo de humedad de suelo.\newline
\textbf{When} la lectura de la sonda en el estrato radicular desciende por debajo del punto de recarga configurado (ej. < 18\% de humedad volumétrica).\newline
\textbf{Then} el sistema emite una alerta de estrés hídrico de prioridad alta asociada a la parcela.\newline
\textbf{And} sugiere la programación urgente de un turno de riego en el sector afectado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Emisión de alerta por temperatura extrema durante floración}\newline
\textbf{Given} una parcela en fase de floración con telemetría de microclima activa.\newline
\textbf{When} la temperatura ambiental supera los 32°C con humedad relativa inferior al 20\% durante más de tres horas consecutivas.\newline
\textbf{Then} el sistema registra una advertencia de riesgo de desecación estigmática y aborto floral.\newline
\textbf{And} notifica al productor el peligro de reducción en la tasa de cuajado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Normalización de alerta tras restablecimiento de variables dentro de rango}\newline
\textbf{Given} una parcela con alerta activa por estrés hídrico.\newline
\textbf{When} una nueva lectura de la sonda registra una recuperación de humedad de suelo por encima del umbral seguro tras un evento de riego.\newline
\textbf{Then} el sistema actualiza el estado de la alerta a normalizada.\newline
\textbf{And} registra el tiempo total que el olivar permaneció bajo estrés hídrico.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US19} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP04} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de pronóstico meteorológico geolocalizado a 7 días} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar el pronóstico del tiempo a 7 días geolocalizado para las coordenadas de mi predio, \textbf{para} anticipar condiciones climáticas desfavorables (vientos desecantes o bajadas térmicas) y programar con antelación los riegos y labores de aclareo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de proyección meteorológica a 7 días}\newline
\textbf{Given} un productor autenticado que selecciona una de sus parcelas georreferenciadas.\newline
\textbf{When} consulta el pronóstico meteorológico del predio.\newline
\textbf{Then} el sistema presenta la proyección a 7 días con temperaturas máximas, mínimas, velocidad del viento y probabilidad de lluvia calculadas para las coordenadas del lote.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Presentación de datos en caché ante indisponibilidad del servicio externo}\newline
\textbf{Given} un productor solicitando la previsión meteorológica.\newline
\textbf{When} el servicio meteorológico externo presenta demoras o falla de conexión.\newline
\textbf{Then} el sistema muestra la última previsión almacenada en memoria caché.\newline
\textbf{And} notifica la fecha y hora de la última sincronización disponible.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US20} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP05} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} registrar los volúmenes totales cosechados en campañas agrícolas de años anteriores en mi parcela, \textbf{para} que el sistema calcule el Índice de Vecería de Hoblyn ($BBI$) y determine la intensidad histórica de alternancia de mi cuartel.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Cálculo exitoso de BBI con al menos tres campañas históricas}\newline
\textbf{Given} una parcela con 3 o más campañas previas registradas.\newline
\textbf{When} el productor guarda el pesaje de una campaña histórica adicional.\newline
\textbf{Then} el sistema evalúa la fórmula matemática de Hoblyn y clasifica la vecería en baja ($< 0.20$), moderada ($0.20 - 0.40$) o severa ($> 0.40$).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Datos insuficientes para evaluación matemática}\newline
\textbf{Given} una parcela con menos de 3 campañas históricas registradas.\newline
\textbf{When} el usuario solicita la métrica de vecería.\newline
\textbf{Then} el sistema notifica que la serie histórica es insuficiente y solicita registrar cosechas anteriores sin bloquear la operatividad predial.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por volumen de cosecha negativo o año futuro}\newline
\textbf{Given} un productor ingresando datos de cosecha.\newline
\textbf{When} proporciona un pesaje negativo o un año de campaña futuro que aún no ha tenido lugar.\newline
\textbf{Then} el sistema bloquea el registro impidiendo almacenar datos inconsistentes.\newline
\textbf{And} notifica los rangos válidos para el año agrícola y los kilogramos cosechados.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US21} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP05} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Modificación y rectificación de registros históricos de cosecha} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} corregir o actualizar las cifras de kilogramos cosechados en una campaña anterior, \textbf{para} subsanar errores de digitación de boletas de pesaje en almazara y recalcular con precisión el índice BBI histórico de la parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Rectificación exitosa de pesaje y recálculo automático del BBI}\newline
\textbf{Given} una parcela con registros de cosechas plurianuales e índice BBI previamente calculado.\newline
\textbf{When} el productor modifica el pesaje en kilogramos de una campaña previa y confirma la rectificación.\newline
\textbf{Then} el sistema actualiza el registro histórico del año corregido.\newline
\textbf{And} recalcula automáticamente la serie de índices BBI de alternancia para todos los intervalos interanuales afectados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Eliminación de un registro erróneo de cosecha}\newline
\textbf{Given} un productor que consulta el historial de cosechas de una parcela.\newline
\textbf{When} elimina un registro de campaña duplicado o erróneo.\newline
\textbf{Then} el sistema suprime el registro del historial del lote.\newline
\textbf{And} actualiza la línea base de alternancia según las campañas válidas remanentes.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US22} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP05} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar el avance de acumulación de porciones de frío calculadas mediante el modelo dinámico de Erez durante el reposo invernal en mi parcela, \textbf{para} conocer si el olivo alcanzará el estímulo fisiológico indispensable para inducir una floración uniforme en el olivar.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta del avance periódico de porciones de frío de Erez}\newline
\textbf{Given} una parcela con registros horarios de temperatura durante los meses de invierno (mayo a agosto).\newline
\textbf{When} el productor consulta el panel de descanso invernal del lote.\newline
\textbf{Then} el sistema calcula y muestra las porciones de frío acumuladas a la fecha aplicando el modelo dinámico de Erez.\newline
\textbf{And} contrasta la cifra acumulada frente al umbral fisiológico requerido por la variedad registrada en la parcela (ej. 25 a 30 porciones para Sevillana/Criolla).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Notificación de cumplimiento de acumulación de frío}\newline
\textbf{Given} una parcela en seguimiento de reposo invernal.\newline
\textbf{When} las porciones de frío acumuladas alcanzan el umbral óptimo de la variedad.\newline
\textbf{Then} el sistema actualiza el estado fisiológico de la parcela a estímulo térmico completado.\newline
\textbf{And} notifica al productor que el olivar cuenta con el estímulo térmico necesario para una brotación uniforme.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Consulta fuera del período invernal de acumulación}\newline
\textbf{Given} un productor accediendo al panel térmico fuera de la temporada de reposo (meses de verano u otoño).\newline
\textbf{When} solicita la lectura de acumulación de frío en curso.\newline
\textbf{Then} el sistema informa que el ciclo de acumulación de frío se encuentra inactivo.\newline
\textbf{And} expone el consolidado histórico final de la campaña invernal previa.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US23} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP05} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} recibir advertencias tempranas en el sistema cuando se registren picos de calor anómalos durante el invierno asociados al fenómeno de El Niño, \textbf{para} anticipar una baja inducción floral y reajustar oportunamente las proyecciones de rendimiento y las metas de aclareo de la campaña.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Detección de temperaturas diurnas perjudiciales en invierno}\newline
\textbf{Given} una parcela durante la etapa de acumulación de frío invernal.\newline
\textbf{When} la temperatura ambiental diurna supera sostenidamente los 24°C durante más de tres días consecutivos destruyendo los intermediarios del frío de Erez.\newline
\textbf{Then} el sistema registra una advertencia de anomalía térmica invernal asociada al lote.\newline
\textbf{And} notifica al productor el riesgo de reversión floral y brotación exclusivamente vegetativa.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reajuste predictivo de floración y carga frutal potencial}\newline
\textbf{Given} una parcela con advertencia activa por invierno cálido.\newline
\textbf{When} el productor consulta el detalle de la advertencia térmica.\newline
\textbf{Then} el sistema presenta el resumen del estrés térmico acumulado y actualiza la proyección de diferenciación floral a nivel crítico.\newline
\textbf{And} reajusta la estimación de carga potencial de la parcela para considerar la baja floración en los modelos de regulación de carga.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US24} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} registrar los conteos de brotes y frutos de muestra a pie de árbol (con el diámetro de tronco como dato dendrométrico opcional) sin requerir conexión a internet, \textbf{para} asentar la densidad real de cuajado directamente en el olivar y sincronizar automáticamente las observaciones al restablecer la conectividad celular o de red.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Registro offline de conteo de frutos a pie de árbol con diámetro de tronco opcional}\newline
\textbf{Given} un productor olivarero ubicado en campo sin cobertura celular ni acceso a internet.\newline
\textbf{When} registra el número de árbol muestreado, total de brotes observados, frutos cuajados en la muestra y opcionalmente el diámetro del tronco en milímetros (\texttt{trunkDiameterMm}), confirmando el guardado.\newline
\textbf{Then} la aplicación móvil almacena el registro en la base de datos local del dispositivo tanto si incluye el diámetro del tronco como si dicho campo opcional se deja en blanco.\newline
\textbf{And} clasifica el muestreo como pendiente de sincronización permitiendo continuar con la evaluación de los siguientes árboles.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Sincronización automática de muestreos al recuperar conexión}\newline
\textbf{Given} un dispositivo con muestreos de cuajado pendientes de sincronización en su almacenamiento local.\newline
\textbf{When} el dispositivo restablece la conectividad a internet.\newline
\textbf{Then} el sistema transmite de manera automática el lote de registros al servidor de Viora.\newline
\textbf{And} actualiza el estado de los muestreos a sincronizados sin requerir intervención manual del usuario.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por conteos fuera de rango biológico}\newline
\textbf{Given} un productor registrando datos en el protocolo de muestreo.\newline
\textbf{When} ingresa valores negativos o una cantidad de frutos cuajados que supera físicamente la capacidad biológica del brote evaluado.\newline
\textbf{Then} el sistema rechaza el ingreso impidiendo registrar mediciones inverosímiles.\newline
\textbf{And} notifica los rangos biológicos admisibles para el conteo de frutos por brote.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US25} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de representatividad estadística e historial de árboles muestreados en campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} consultar el avance de la ronda de muestreo y revisar la lista de árboles evaluados en mi predio, \textbf{para} saber si alcancé la representatividad mínima requerida ($\ge 5$ árboles) e identificar qué árboles ya fueron evaluados a pie de campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de representatividad y listado de árboles evaluados}\newline
\textbf{Given} una ronda de muestreo en progreso en la parcela activa.\newline
\textbf{When} el usuario consulta el estado del muestreo en su dispositivo.\newline
\textbf{Then} el sistema presenta el indicador de suficiencia estadística (\texttt{isSampleSufficient}), la media de frutos por brote y el listado de árboles evaluados con su etiqueta física, brotes y frutos registrados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Alcanzar el umbral de representatividad}\newline
\textbf{Given} una ronda donde se alcanza el árbol mínimo requerido ($\ge 5$ árboles válidos).\newline
\textbf{When} se sincroniza el último registro.\newline
\textbf{Then} el sistema transiciona la ronda a completada y habilita la generación de la prescripción de aclareo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US26} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} que el sistema procese los muestreos de cuajado, la densidad de plantación y el área de mi predio para calcular la carga frutal máxima sostenible en frutos por árbol y kilogramos por hectárea, \textbf{para} conocer el límite productivo que el olivo puede soportar sin agotar sus reservas y evitar el colapso vegetativo de la siguiente campaña.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Cálculo exitoso de carga admisible con muestra representativa}\newline
\textbf{Given} una parcela con al menos 5 árboles representativos muestreados en campo.\newline
\textbf{When} el productor solicita el balance de carga frutal de la temporada.\newline
\textbf{Then} el sistema procesa el promedio de frutos cuajados y proyecta la carga total estimada en frutos por árbol.\newline
\textbf{And} determina la carga frutal objetivo sostenible y el rendimiento en kilogramos por hectárea según el marco de plantación del lote.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Detección de sobrecarga frutal con riesgo de vecería severa}\newline
\textbf{Given} una parcela cuyo cálculo de carga estimada supera en más del 30\% la capacidad de carga biológica calibrada para la variedad registrada en el predio.\newline
\textbf{When} se genera el cálculo de rendimiento potencial.\newline
\textbf{Then} el sistema clasifica el lote en estado de sobrecarga severa.\newline
\textbf{And} notifica al productor que el exceso de fruta inducirá una vecería prolongada si no se regula la carga a tiempo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Bloqueo de cálculo por cantidad insuficiente de árboles evaluados}\newline
\textbf{Given} una parcela con menos de 5 árboles muestreados.\newline
\textbf{When} el productor solicita el dimensionamiento productivo.\newline
\textbf{Then} el sistema deniega el cálculo automático por falta de representatividad muestral.\newline
\textbf{And} notifica la cantidad de árboles adicionales requeridos para completar el diagnóstico.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US27} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} recibir una prescripción agronómica con el porcentaje exacto de frutos a remover y la ventana de fechas límite de ejecución, \textbf{para} remover el exceso de fruta a tiempo antes del endurecimiento del carozo y asegurar un buen calibre comercial sin inducir vecería en el siguiente año.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Prescripción de aclareo ante sobrecarga frutal}\newline
\textbf{Given} una parcela con diagnóstico de sobrecarga frutal procesado durante la fase previa al endurecimiento del carozo.\newline
\textbf{When} el productor consulta la recomendación de regulación de carga.\newline
\textbf{Then} el sistema prescribe el porcentaje óptimo de remoción de fruta (ej. 30\% de aclareo).\newline
\textbf{And} define la ventana temporal recomendada con fecha de inicio y fecha límite de ejecución antes de la lignificación del carozo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela con carga frutal equilibrada que no requiere aclareo}\newline
\textbf{Given} una parcela cuya carga estimada se encuentra dentro del rango fisiológico óptimo.\newline
\textbf{When} el productor consulta la prescripción de regulación.\newline
\textbf{Then} el sistema determina un porcentaje de aclareo del 0\%.\newline
\textbf{And} notifica que la carga frutal es óptima y no requiere intervención para sostener la productividad interanual.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Advertencia por consulta posterior al endurecimiento del carozo}\newline
\textbf{Given} una parcela donde la fecha de consulta supera la ventana fenológica de aclareo con el carozo ya endurecido (lignificado).\newline
\textbf{When} el productor solicita la prescripción de aclareo.\newline
\textbf{Then} el sistema advierte que la ventana óptima de aclareo ha concluido.\newline
\textbf{And} notifica que la remoción tardía de fruto ya no evitará la inhibición hormonal de la floración de la siguiente campaña.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US28} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP06} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro y confirmación de ejecución de aclareo en campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} registrar la fecha y el porcentaje real de frutos removidos durante las labores de aclareo en mi parcela, \textbf{para} asentar la ejecución de la práctica de manejo en la bitácora del lote, estimar el estado de carga residual y, cuando exista calibración de la variedad, proyectar el rango de calibre comercial esperado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Registro exitoso de intervención de aclareo y proyección de calibre COI}\newline
\textbf{Given} un productor con una prescripción de aclareo activa para su predio.\newline
\textbf{When} registra la fecha de ejecución (\texttt{executedDate}) en campo y confirma el porcentaje real de fruta removida (\texttt{actualRemovalPercentage}).\newline
\textbf{Then} el sistema actualiza la bitácora agronómica del lote marcando la labor como ejecutada.\newline
\textbf{And} muestra la carga residual y su estado de balance; si el modelo de la variedad se encuentra calibrado, proyecta el calibre comercial COI más probable con su intervalo de confianza al 80 \%.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Advertencia por ejecución tardía fuera de la ventana fenológica}\newline
\textbf{Given} un productor registrando la ejecución de aclareo.\newline
\textbf{When} la fecha ingresada es posterior a la fecha límite prescrita por endurecimiento del carozo.\newline
\textbf{Then} el sistema guarda el registro de la labor en la bitácora.\newline
\textbf{And} notifica una advertencia indicando que la eficacia para mitigar la vecería será reducida debido a la lignificación del carozo, omitiendo la proyección de calibre por ejecución tardía fuera de ventana.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Modelo varietal en fase de calibración sin observaciones suficientes}\newline
\textbf{Given} un lote cuya variedad aún no cuenta con el número mínimo de campañas cosechadas y liquidadas para calibrar el modelo estadístico.\newline
\textbf{When} el productor confirma la ejecución del aclareo.\newline
\textbf{Then} el sistema calcula y exhibe el balance de carga residual.\newline
\textbf{And} clasifica la proyección de calibre en estado 'En calibración', informando cuántas campañas adicionales de liquidación se requieren sin arrojar cifras no respaldadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Carga residual fuera de rango biológico admisible}\newline
\textbf{Given} un lote donde la intensidad de remoción informada resulta en una carga residual fuera del dominio experimental de calibración (por ejemplo, 100 \% de defrutado o sobrecarga extrema sin aclareo efectivo).\newline
\textbf{When} el sistema evalúa la proyección de tamaño de fruto.\newline
\textbf{Then} marca el estado de proyección como no aplicable o no estimado, absteniéndose de extrapolar calibres fuera del rango de validez del modelo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US29} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP07} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} asentar formalmente el pesaje real de cosecha al término de la temporada discriminando kilos de aceituna verde y negra e indicando opcionalmente el calibre comercial de venta (\texttt{commercialFruitsPerKg}), \textbf{para} formalizar la liquidación de entrega, alimentar la calibración empírica del modelo varietal y auditar la curva interanual de atenuación de vecería.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Asentamiento exitoso de liquidación de cosecha con calibre comercial opcional}\newline
\textbf{Given} la culminación de las faenas de cosecha de la campaña en curso.\newline
\textbf{When} el productor o la almazara asienta los kilogramos recolectados (\texttt{greenOlivesKg} y \texttt{blackOlivesKg}) e ingresa opcionalmente el calibre comercial de venta (\texttt{commercialFruitsPerKg} en escala COI).\newline
\textbf{Then} el sistema emite el comprobante inmutable de liquidación, registra la observación para calibración de calibre, actualiza la curva de estabilización productiva y bloquea el año contra modificaciones no autorizadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Campaña previamente liquidada}\newline
\textbf{Given} un intento de registrar un pesaje sobre una campaña ya asentada.\newline
\textbf{When} el sistema valida la unicidad anual.\newline
\textbf{Then} responde con código \texttt{409 Conflict} preservando la inmutabilidad de auditoría.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Calibre comercial fuera de rango biológico admisible}\newline
\textbf{Given} un registro de liquidación que incluye el dato opcional de calibre de venta.\newline
\textbf{When} el valor de \texttt{commercialFruitsPerKg} es menor o igual a cero o excede el límite agronómico de frutos por kilogramo configurable en el sistema.\newline
\textbf{Then} el sistema rechaza la solicitud notificando error de validación biológica (\texttt{400 Bad Request}).} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US30} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP07} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Generación y exportación del expediente agronómico de parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero o Gestor Técnico autorizado, \textbf{quiero} generar y descargar el expediente agronómico en formato PDF correspondiente a una parcela para una campaña determinada, \textbf{para} disponer de un documento técnico descargable que respalde el historial productivo, floración, cuajado, aclareo y telemetría de cara a gestiones financieras, comerciales o de supervisión cooperativa.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación y descarga de expediente provisional en campaña activa}\newline
\textbf{Given} un productor o gestor técnico autorizado consultando una parcela cuya campaña agronómica se encuentra en curso.\newline
\textbf{When} solicita la exportación del documento mediante una petición con cabecera \texttt{Accept: application/pdf}.\newline
\textbf{Then} el sistema compila una instantánea técnica con los datos registrados y cálculos demostrables (muestreos, labores de aclareo, telemetría y proyecciones), rotulando de forma visible en el encabezado «Expediente Agronómico Provisional» e indicando la fecha y hora de corte de la emisión.\newline
\textbf{And} responde con \texttt{Content-Type: application/pdf} y cabecera \texttt{Content-Disposition} para su descarga, declarando explícitamente los campos sin registros como no disponibles sin inventar cifras ni requerir sellos criptográficos en datos en evolución.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Emisión y verificación de integridad de expediente definitivo en campaña cerrada}\newline
\textbf{Given} una solicitud de expediente sobre una campaña agrícola concluida y liquidada con registros definitivos de cosecha.\newline
\textbf{When} el usuario solicita el expediente cerrado en formato binario PDF o sus metadatos mediante cabecera \texttt{Accept: application/json}.\newline
\textbf{Then} el sistema emite el dossier consolidado inmutable incorporando el balance productivo final y adjuntando una huella digital calculada mediante algoritmo SHA-256 para verificar la integridad del archivo generado.\newline
\textbf{And} expone en el JSON de metadatos el identificador documental, la fecha de cierre y el hash de comprobación de integridad.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Control de acceso y confidencialidad}\newline
\textbf{Given} una solicitud de descarga de expediente emitida por un usuario no autenticado o que no posee relación de propiedad ni de supervisión técnica autorizada sobre la parcela.\newline
\textbf{When} el servicio evalúa la autorización del solicitante sobre el predio.\newline
\textbf{Then} el sistema deniega la descarga retornando código de estado HTTP \texttt{403 Forbidden}.\newline
\textbf{And} bloquea la exportación de documentos técnicos protegiendo la reserva de la información productiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US31} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP08} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} que el semáforo territorial refleje de forma reactiva la mayor gravedad sustentada por sobrecarga frutal (> 30\%) o riesgo de helada en las parcelas socias, \textbf{para} focalizar de inmediato la asistencia técnica en los sectores críticos sin que las alertas de supervisión se oculten si el productor pospone sus avisos locales.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Activación reactiva de semáforo rojo por sobrecarga frutal crítica}\newline
\textbf{Given} una parcela socia cuya prescripción agronómica arroja una sobrecarga frutal superior al 30\% respecto al objetivo productivo.\newline
\textbf{When} se registra el muestreo de cuajado o impacta el evento de dominio en el contexto de supervisión territorial.\newline
\textbf{Then} el semáforo del sector asociado transiciona de inmediato al estado de mayor gravedad (Rojo / Crítico) e incrementa el contador de unidades productivas en riesgo urgente.\newline
\textbf{And} el sistema mantiene la alerta visible en el panel del gestor con independencia de que el productor haya silenciado o pospuesto la notificación en su aplicación móvil.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Alerta agroclimática preventiva por riesgo de helada}\newline
\textbf{Given} un pronóstico validado de temperatura crítica ($\le 1.5\,^\circ\text{C}$) o helada radiativa para un sector en un horizonte de 48 horas.\newline
\textbf{When} se actualizan las series de telemetría meteorológica del valle.\newline
\textbf{Then} el sector activa la advertencia de helada en el semáforo gremial e identifica las parcelas en estadios fenológicos vulnerables (floración o cuajado sensible).\newline
\textbf{And} destaca el estado de alerta en el visor territorial para priorizar recomendaciones de riego defensivo o medidas de mitigación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Presentación informativa del índice de vecería histórica (BBI)}\newline
\textbf{Given} una parcela supervisada que cuenta con un historial validado de rendimientos de tres o más campañas consecutivas.\newline
\textbf{When} el gestor técnico examina la ficha de detalle de riesgo fenológico del predio.\newline
\textbf{Then} el sistema presenta el Índice Bienal de Carga (BBI) como indicador contextual de alternancia productiva histórica.\newline
\textbf{And} preserva el estado fenológico actual sin forzar colores de alerta roja exclusivamente por alternancia pasada si la campaña presente no evidencia sobrecarga ni estrés climático.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US32} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP08} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} consultar la estimación agregada del tonelaje de cosecha sumando estrictamente las parcelas con evaluaciones validadas y desglosando por aptitud comercial (verde para mesa y negra para almazara), \textbf{para} dimensionar con sustento real el acopio cooperativo, organizar la logística de salmueras y patios de recepción, y comercializar volúmenes seguros sin incurrir en penalidades contractuales.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consolidación de volumen de acopio basada exclusivamente en parcelas estimables}\newline
\textbf{Given} una cartera cooperativa con parcelas socias que cuentan con registros válidos de cuajado y modelos de carga frutal en la campaña activa.\newline
\textbf{When} el gestor técnico consulta el módulo de proyección agregada de acopio (pantalla G30).\newline
\textbf{Then} el sistema calcula el tonelaje total proyectado consolidando únicamente la producción de las parcelas estimables respaldadas por datos de campo, sin aplicar factores arbitrarios de reducción ni extrapolar rendimientos a predios no evaluados.\newline
\textbf{And} reporta la cobertura muestral expresando explícitamente la cantidad de parcelas computadas respecto al universo de la cartera (e.g., «$Y$ de $N$ parcelas evaluadas»).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Desagregación por aptitud comercial en aceituna verde, negra y volumen por clasificar}\newline
\textbf{Given} un tonelaje total consolidado sobre las parcelas socias evaluadas.\newline
\textbf{When} se genera la distribución por aptitud comercial de cosecha.\newline
\textbf{Then} el sistema discrimina el volumen en aceituna verde de mesa y aceituna negra para aceite según la aptitud varietal y los ratios históricos registrados.\newline
\textbf{And} cataloga cualquier fracción de producción que carezca de tipificación de destino en el rubro explícito «Sin clasificar / Por definir», evitando asignaciones forzadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Declaración explícita de cobertura muestral insuficiente}\newline
\textbf{Given} una cartera cooperativa donde las parcelas con muestreo agronómico válido representan una proporción menor al 60\% del total de parcelas socias registradas.\newline
\textbf{When} el gestor técnico accede al reporte de proyección de acopio.\newline
\textbf{Then} el sistema presenta las toneladas estimadas identificando el resultado bajo la etiqueta «Cobertura preliminar / Muestra parcial».\newline
\textbf{And} muestra un aviso visible indicando que la cobertura es insuficiente para el cierre definitivo de contratos comerciales, exhortando a completar los muestreos de cuajado pendientes.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US33} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante, \textbf{quiero} que el sistema exponga con claridad cómo la integración de datos de microclima, frío invernal y regulación de carga frutal atenúa la severidad de la alternancia productiva y mitiga la vecería prolongada, \textbf{para} comprender de inmediato la solución tecnológica que ofrece Viora frente a la incertidumbre agronómica del cultivo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Comprensión del valor del ecosistema ante la incertidumbre climática}\newline
\textbf{Given} un visitante que accede al sitio web informativo de la plataforma.\newline
\textbf{When} consulta la presentación inicial de la propuesta de valor.\newline
\textbf{Then} el sistema expone la relación entre acumulación de frío, riesgo fenológico y decisiones preventivas de aclareo basadas en datos.\newline
\textbf{And} resalta el objetivo agronómico de atenuar la severidad de la vecería y sostener un piso productivo viable en los años de menor cosecha sin comprometer la longevidad del olivar.\newline
\textbf{And} la interfaz responde con diseño adaptativo fluido (\textit{mobile-first}), reordenando los bloques visuales y garantizando legibilidad en pantallas móviles ($\le 480$px), tablets y escritorio sin desbordamiento horizontal.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Adaptabilidad a diversas variedades de olivar y aptitudes comerciales}\newline
\textbf{Given} un visitante evaluando la pertinencia técnica de la plataforma para su predio.\newline
\textbf{When} explora los fundamentos del modelo de estabilización productiva.\newline
\textbf{Then} el sistema detalla cómo los algoritmos adaptan dinámicamente los parámetros de frío y regulación de carga según la variedad de olivo registrada (mesa o aceite).\newline
\textbf{And} comunica cómo el soporte técnico continuo asiste la toma de decisiones del agricultor.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US34} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante Productor} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Exploración de beneficios y capacidades operativas para el productor olivarero} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante Productor, \textbf{quiero} consultar las herramientas tecnológicas orientadas al monitoreo y manejo agronómico de parcelas, \textbf{para} evaluar cómo la plataforma me ayuda a registrar conteos sin conexión a internet, anticipar estrés hídrico y recibir prescripciones precisas de aclareo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Descubrimiento de herramientas para el trabajo a pie de árbol}\newline
\textbf{Given} un visitante con perfil de agricultor explorando el sitio informativo.\newline
\textbf{When} solicita la información de beneficios orientada al productor individual.\newline
\textbf{Then} el sistema presenta las capacidades de recolección offline de datos en campo, sincronización diferida y cálculo automático del índice de vecería BBI.\newline
\textbf{And} expone las alertas tempranas de estrés hídrico y térmico junto con la prescripción técnica de porcentaje de fruta a remover.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta del impacto en la estabilidad de ingresos del predio}\newline
\textbf{Given} un productor olivarero evaluando el retorno productivo de la adopción.\newline
\textbf{When} revisa la justificación técnica de la regulación de carga frutal.\newline
\textbf{Then} el sistema expone la proyección de calibres comerciales uniformes y la reducción del riesgo de colapso productivo en la siguiente campaña.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US35} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante Gestor de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante Gestor de Cooperativa, \textbf{quiero} consultar las capacidades de supervisión cartográfica y proyección agregada de cosecha, \textbf{para} determinar si la plataforma facilita la asistencia técnica a los socios agremiados y mejora la planificación logística del acopio en almazara.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Descubrimiento de capacidades de supervisión territorial y semáforo de riesgo}\newline
\textbf{Given} un representante de cooperativa agraria consultando las soluciones institucionales.\newline
\textbf{When} accede a la información de valor para organizaciones de productores.\newline
\textbf{Then} el sistema expone el mapa satelital de parcelas socias con posición GPS y el tablero semafórico de vulnerabilidad fenológica.\newline
\textbf{And} detalla la optimización de rutas de asistencia técnica según la severidad de sobrecarga frutal de los predios.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Visualización de capacidades de estimación temprana de acopio}\newline
\textbf{Given} un gestor técnico evaluando el impacto de la solución en la recepción de materia prima.\newline
\textbf{When} revisa los módulos de previsión de volumen.\newline
\textbf{Then} el sistema presenta la estimación agregada temprana de tonelaje discriminada por aptitud comercial (aceituna de mesa y para almazara) para organizar turnos de procesamiento y salmueras.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US36} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante, \textbf{quiero} consultar las tarifas de suscripción en Soles (PEN) por superficie o membresía institucional junto con el detalle de servicios incluidos, \textbf{para} evaluar la opción comercial más conveniente y transparente para mi escala productiva antes de contratar.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de alternativas comerciales diferenciadas por segmento}\newline
\textbf{Given} un visitante interesado en contratar el servicio de la plataforma.\newline
\textbf{When} consulta las opciones de suscripción y tarifas vigentes.\newline
\textbf{Then} el sistema presenta los costos expresados en Soles (PEN), diferenciando el plan de productor individual por hectárea y la membresía corporativa para cooperativas.\newline
\textbf{And} detalla las prestaciones analíticas, límites de parcelas y soporte agronómico comprendidos en cada alternativa.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Transparencia en condiciones de facturación y renovación}\newline
\textbf{Given} un agricultor evaluando la periodicidad de pago del servicio.\newline
\textbf{When} revisa las condiciones comerciales del plan.\newline
\textbf{Then} el sistema expone con claridad los ciclos de cobro, los medios locales de pago admitidos y la ausencia de penalidades ocultas por cancelación.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US37} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante Interesado} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Reproducción del video promocional y demostrativo del producto ("About the Product")} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante Interesado, \textbf{quiero} reproducir un video demostrativo breve sobre el funcionamiento de Viora, \textbf{para} apreciar la aplicación práctica de los modelos agronómicos en campo y validar su eficacia en la mitigación de la vecería prolongada antes de adoptar la plataforma.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Reproducción del video demostrativo del producto}\newline
\textbf{Given} un visitante interesado en conocer la operatividad práctica de la plataforma.\newline
\textbf{When} solicita reproducir el contenido audiovisual sobre el producto ("About the Product").\newline
\textbf{Then} el sistema inicia la reproducción del video demostrando el flujo de muestreo a pie de árbol, la sincronización offline y la generación de prescripciones agronómicas.\newline
\textbf{And} presenta casos de uso orientados tanto a productores individuales como a organizaciones cooperativas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Control de reproducción adaptativa}\newline
\textbf{Given} un usuario reproduciendo el video del producto sobre una conexión de datos móvil.\newline
\textbf{When} el contenido audiovisual se reproduce en el navegador.\newline
\textbf{Then} el sistema ofrece controles de reproducción, pausa y ajuste dinámico de calidad según el ancho de banda disponible.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US38} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante Cauteloso} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Reproducción del video institucional sobre el equipo y proceso de ingeniería ("About the Team")} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante Cauteloso, \textbf{quiero} reproducir un video sobre el equipo y el proceso de trabajo detrás del desarrollo de Viora, \textbf{para} corroborar el respaldo profesional, rigor agronómico e institucional del software antes de incorporarlo en mi actividad agrícola.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Reproducción del video de trayectoria y metodología del equipo}\newline
\textbf{Given} un visitante que busca comprobar la seriedad y el respaldo técnico del proyecto.\newline
\textbf{When} solicita reproducir el video institucional del equipo ("About the Team").\newline
\textbf{Then} el sistema reproduce el material audiovisual documentando el trabajo de campo con agricultores, diseño centrado en el usuario y pruebas de software.\newline
\textbf{And} expone las intervenciones de los integrantes describiendo las competencias agronómicas y tecnológicas aplicadas en la solución.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta de perfiles y roles de los miembros del equipo}\newline
\textbf{Given} un visitante examinando la información institucional del proyecto.\newline
\textbf{When} consulta el detalle complementario del equipo.\newline
\textbf{Then} el sistema presenta la identidad, especialidad y rol técnico de cada integrante del equipo desarrollador.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US39} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante, \textbf{quiero} consultar los Términos y Condiciones y la Política de Privacidad formulada conforme a la Ley N° 29733 (Ley de Protección de Datos Personales del Perú), \textbf{para} tener plena certidumbre legal sobre la confidencialidad de mis registros de cultivo y los derechos sobre mis datos agronómicos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta formal de la política de privacidad de datos}\newline
\textbf{Given} un visitante interesado en las garantías de protección de la información.\newline
\textbf{When} accede al documento de política de privacidad de la plataforma.\newline
\textbf{Then} el sistema expone los lineamientos de tratamiento de datos personales en estricta conformidad con la Ley N° 29733 y su reglamento.\newline
\textbf{And} especifica los fines exclusivamente agronómicos de custodia y los canales formales para ejercer los derechos de acceso, rectificación, cancelación y oposición (derechos ARCO).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta de términos y condiciones de la plataforma SaaS}\newline
\textbf{Given} un usuario evaluando el marco contractual del servicio digital.\newline
\textbf{When} consulta las condiciones de uso de la plataforma.\newline
\textbf{Then} el sistema expone los términos comerciales estipulando la propiedad inalienable de los datos de cosecha por parte del agricultor y los compromisos de disponibilidad del servicio.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US40} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP09} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Redirección y acceso a la descarga oficial de la aplicación móvil} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante, \textbf{quiero} distinguir accesos directos hacia las aplicaciones móviles oficiales según mi segmento (App Productor Olivarero en Android/Kotlin o App Gestor Técnico en Flutter), \textbf{para} descargar e instalar la aplicación correspondiente a mi actividad e iniciar mi experiencia en la plataforma.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Acceso guiado a la descarga según segmento y plataforma del dispositivo}\newline
\textbf{Given} un visitante que decide adoptar una solución móvil de Viora.\newline
\textbf{When} solicita el acceso a la descarga diferenciada para Productor Olivarero o Gestor Técnico.\newline
\textbf{Then} el sistema provee los enlaces directos y verificados hacia los repositorios oficiales de distribución móvil según el segmento y sistema operativo seleccionado.\newline
\textbf{And} confirma los requisitos mínimos de compatibilidad del sistema operativo para una instalación exitosa.\newline
\textbf{And} los botones y badges de descarga mantienen un área táctil mínima de 48 por 48 píxeles en dispositivos móviles.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Orientación de primeros pasos al completar la instalación sin ambigüedad de segmentos}\newline
\textbf{Given} un visitante que finaliza la instalación de la aplicación móvil específica de su segmento.\newline
\textbf{When} abre la aplicación por primera vez en su dispositivo.\newline
\textbf{Then} el sistema ofrece la alternativa de iniciar sesión con credenciales previas o crear una nueva cuenta del segmento correspondiente a la aplicación instalada (Productor Olivarero o Gestor Técnico).\newline
\textbf{And} omite cualquier referencia a tipos de cuenta corporativa o de cooperativa no contemplados en el modelo de roles del sistema.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US41} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Visitante} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP15} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Selección de idioma y localización de contenidos en la Landing Page} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Visitante, \textbf{quiero} alternar el idioma de los contenidos entre Español e Inglés mediante un selector visible en la cabecera, \textbf{para} consultar la propuesta de valor, los beneficios agronómicos y las tarifas en mi idioma preferido.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Detección automática del idioma del navegador}\newline
\textbf{Given} un visitante que accede al sitio web público de Viora.\newline
\textbf{When} la página carga en el navegador del dispositivo.\newline
\textbf{Then} el sistema detecta la configuración regional del navegador y presenta los contenidos en idioma inglés si el navegador utiliza dicho idioma, o en español de forma predeterminada.\newline
\textbf{And} el selector de cabecera refleja visualmente la opción de idioma activa.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cambio manual interactivo y persistencia local}\newline
\textbf{Given} un visitante explorando cualquier sección de la landing page.\newline
\textbf{When} selecciona un idioma distinto a través del componente selector en la barra superior.\newline
\textbf{Then} la interfaz traduce instantáneamente todos los textos, menús y tarifas sin requerir la recarga completa del sitio web.\newline
\textbf{And} persiste la preferencia en el almacenamiento local (\texttt{localStorage}) para conservar la configuración en visitas sucesivas.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US42} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP15} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Configuración y cambio de idioma de la interfaz en la aplicación móvil} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario autenticado de la aplicación móvil de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} seleccionar mi idioma de preferencia (Español o Inglés) desde el panel de ajustes de la aplicación, \textbf{para} visualizar todos los menús, diagnósticos y alertas en el idioma con el que tenga mayor familiaridad.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Cambio de idioma en caliente sin reinicio de sesión}\newline
\textbf{Given} un usuario autenticado navegando dentro de la aplicación móvil.\newline
\textbf{When} ingresa a la configuración de preferencias y selecciona una nueva opción de idioma (Español o Inglés).\newline
\textbf{Then} la aplicación actualiza en caliente todas las etiquetas, títulos, botones y mensajes de alerta al idioma seleccionado sin cerrar la sesión activa del usuario.\newline
\textbf{And} adapta los separadores de miles y fechas según la convención regional correspondiente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Persistencia local de la preferencia de idioma en el dispositivo}\newline
\textbf{Given} un usuario que configuró previamente su preferencia de idioma en la app.\newline
\textbf{When} cierra la aplicación y vuelve a iniciarla o reinicia el dispositivo móvil.\newline
\textbf{Then} la aplicación móvil recupera el ajuste persistido desde el almacenamiento local seguro y levanta directamente en el idioma seleccionado.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US43} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Completado de perfil de usuario y contacto validado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario nuevo autenticado en Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} completar mi perfil de usuario ingresando mi nombre completo, país de residencia y número celular de contacto, \textbf{para} personalizar mi cuenta y habilitar los canales de notificación agronómica y operativa del sistema.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Registro exitoso de perfil y contacto con normalización telefónica}\newline
\textbf{Given} un usuario autenticado con una cuenta activa que aún no ha completado su perfil inicial.\newline
\textbf{When} ingresa su nombre completo, país de residencia y un número celular válido para dicho país.\newline
\textbf{Then} el sistema persiste el perfil de usuario asociándolo a su cuenta y normaliza el número telefónico bajo el estándar internacional E.164.\newline
\textbf{And} habilita el acceso completo a las funciones operativas de la plataforma según su rol asignado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por número telefónico incompatible con el país seleccionado}\newline
\textbf{Given} un usuario autenticado completando su información de perfil.\newline
\textbf{When} proporciona un número telefónico que no cumple con el formato E.164 o cuya longitud no corresponde al estándar del país seleccionado.\newline
\textbf{Then} el sistema rechaza el guardado del perfil sin alterar la cuenta de acceso existente.\newline
\textbf{And} notifica la inconsistencia indicando el formato telefónico y prefijo requerido para dicho país.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por campos obligatorios incompletos o nombre vacío}\newline
\textbf{Given} un usuario autenticado completando su perfil de usuario.\newline
\textbf{When} envía el formulario omitiendo su nombre completo o país de residencia.\newline
\textbf{Then} el sistema deniega el registro del perfil.\newline
\textbf{And} resalta los campos requeridos solicitando su debido diligenciamiento.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US44} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Activación de licencia corporativa de supervisión mediante código maestro de un solo uso} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} activar la licencia institucional contratada por mi organización ingresando el código maestro de activación emitido por Viora (formato \texttt{GEST-XXXX}) desde la aplicación móvil Flutter, \textbf{para} asumir la administración técnica de la membresía corporativa, consultar el saldo total de plazas y hectáreas disponibles, y habilitar la emisión de códigos de patrocinio para los socios productores.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Activación exitosa de licencia institucional con código maestro válido}\newline
\textbf{Given} un gestor técnico debidamente registrado y autenticado en la aplicación móvil Flutter que no cuenta con una licencia corporativa activa y se encuentra en la pantalla de bienvenida y activación (\texttt{G01}). \textbf{When} ingresa un código maestro de activación válido con prefijo institucional (por ejemplo, \texttt{GEST-7K2M}) y confirma la operación. \textbf{Then} el sistema valida la vigencia del código en el servicio de licencias, asocia la cuenta del gestor técnico como responsable técnico de la entidad y transiciona a la pantalla de confirmación exitosa (\texttt{G02}) detallando la razón social de la organización, las plazas contratadas y la superficie total de hectáreas habilitadas. \textbf{And} desbloquea el panel principal de control técnico (\texttt{G10}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por código maestro de activación inexistente o inválido}\newline
\textbf{Given} un gestor técnico en la pantalla de activación de membresía (\texttt{G01}). \textbf{When} ingresa un código que no coincide con ninguna licencia registrada en la plataforma o cuya sintaxis no cumple el formato esperado. \textbf{Then} el sistema rechaza la solicitud sin vincular al usuario. \textbf{And} presenta una alerta modal de error (\texttt{G01 / Código no válido}) informando que el código no existe o fue digitado incorrectamente, manteniendo habilitada la casilla para reintentar el ingreso.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por código maestro ya canjeado o licencia previamente asignada}\newline
\textbf{Given} un gestor técnico intentando activar una licencia corporativa. \textbf{When} introduce un código maestro que ya fue canjeado con anterioridad por otro gestor técnico de la misma organización. \textbf{Then} el sistema bloquea la activación. \textbf{And} notifica que la licencia ya cuenta con un responsable técnico activo asignado, orientando al usuario a comunicarse con la administración de su entidad o con soporte de Viora.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Restricción de acceso a funciones operativas para gestor sin licencia activa}\newline
\textbf{Given} un gestor técnico autenticado en la aplicación Flutter cuya cuenta no tiene una licencia institucional asociada. \textbf{When} intenta navegar hacia las secciones de mapa territorial, semáforo de riesgo, acopio o nómina de socios. \textbf{Then} el sistema restringe el acceso a dichas vistas operativas. \textbf{And} redirige de forma persistente a la pantalla de aviso y activación (\texttt{G01 / Sin licencia}), impidiendo cualquier interacción hasta que se complete un canje de licencia válido.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US45} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Emisión de códigos de patrocinio para socios con asignación de cupo de hectáreas y control de saldo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} generar lotes de códigos de activación unívocos (formato \texttt{COOP-XXXX}) asignando un cupo individual de hectáreas para cada socio productor y consultando el balance remanente de la licencia, \textbf{para} distribuir el patrocinio corporativo a los agricultores agremiados garantizando que no se sobrepase la capacidad máxima de plazas ni de hectáreas contratadas por la organización.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación exitosa de códigos de patrocinio dentro del saldo disponible}\newline
\textbf{Given} un gestor técnico con licencia activa que accede al módulo de administración de códigos corporativos (\texttt{G43}). \textbf{When} especifica la cantidad de códigos a generar (plazas requeridas) y define la superficie de hectáreas asignada por código, verificando que la suma no exceda las plazas ni las hectáreas disponibles en la licencia. \textbf{Then} el sistema genera los códigos criptográficos unívocos con prefijo institucional (por ejemplo, \texttt{COOP-8R4T}), almacena una copia cifrada para su consulta y descuenta inmediatamente las plazas y hectáreas del saldo disponible de la membresía. \textbf{And} transiciona a la pantalla de confirmación (\texttt{G44}) mostrando la lista de códigos generados listos para ser compartidos a los socios.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Bloqueo de emisión por plazas insuficientes en la licencia corporativa}\newline
\textbf{Given} un gestor técnico intentando generar un nuevo lote de códigos en la pantalla \texttt{G43}. \textbf{When} solicita una cantidad de códigos que supera el número de plazas vacantes de la licencia corporativa. \textbf{Then} el sistema inhabilita la acción de emisión. \textbf{And} presenta un estado de error bloqueante (\texttt{G43 / Cupo excedido}) indicando la cantidad máxima de plazas remanentes e invitando a la organización a ampliar su contrato de licencia.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Bloqueo de emisión por hectáreas insuficientes en el balance de la licencia}\newline
\textbf{Given} un gestor técnico configurando la emisión de códigos en la vista \texttt{G43}. \textbf{When} el total de hectáreas asignadas para los nuevos códigos excede el saldo remanente de hectáreas contratadas de la licencia. \textbf{Then} el sistema impide la confirmación del lote. \textbf{And} muestra una alerta modal (\texttt{G43 / Hectáreas insuficientes}) detallando el balance de hectáreas libres versus las hectáreas solicitadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Consulta, copiado y estado de códigos emitidos pendientes de canje}\newline
\textbf{Given} un gestor técnico navegando en la pestaña de códigos de la membresía (\texttt{G42}). \textbf{When} visualiza la nómina de códigos emitidos. \textbf{Then} el sistema presenta cada código agrupado por estado (Disponibles por canjear y Canjeados), permitiendo copiar la clave al portapapeles o compartirla directamente por mensajería. \textbf{And} mantiene los códigos disponibles sin asociar nombre de socio hasta que se haga efectivo el canje en la aplicación del productor.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US46} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Canje de código de membresía patrocinada con consentimiento informado de compartición de datos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} canjear un código de patrocinio corporativo (\texttt{COOP-XXXX}) en la aplicación móvil Android, revisar la identidad de la organización titular y aceptar formalmente la cláusula de compartición de datos agronómicos en modo solo lectura conforme a la Ley N° 29733, \textbf{para} activar mi plan de suscripción institucional subvencionado y habilitar el acompañamiento técnico de mis parcelas sin realizar pagos individuales.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso con consentimiento informado y vinculación institucional}\newline
\textbf{Given} un productor olivarero autenticado en la aplicación móvil Android que accede a la sección de planes de suscripción (\texttt{P05}). \textbf{When} ingresa un código de patrocinio válido (\texttt{COOP-XXXX}), visualiza los datos de la entidad titular patrocinadora y marca expresamente la casilla de consentimiento para compartir los datos agronómicos de sus parcelas en modo solo lectura (\texttt{P05b}) bajo la Ley N° 29733. \textbf{Then} el sistema activa el plan patrocinado en la cuenta del productor, vincula su cartera de lotes a la supervisión de la organización y transiciona a la pantalla de felicitación (\texttt{P06}). \textbf{And} orienta al socio hacia la asignación del sector territorial de sus lotes (\texttt{P06b}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Advertencia preventiva por superficie de parcelas superior al cupo del código}\newline
\textbf{Given} un productor olivarero que dispone de parcelas registradas en la app cuya superficie total supera la cuota de hectáreas asignada al código ingresado. \textbf{When} intenta confirmar el canje en la pantalla de aceptación (\texttt{P05b}). \textbf{Then} el sistema detecta la discrepancia métrica y presenta una advertencia informativa (\texttt{P05b / Cupo menor}) alertando que la cobertura institucional cubre hasta el límite del código y recomendando solicitar al gestor una ampliación o ajuste de cupo. \textbf{And} permite al productor decidir si continúa con el canje parcial o cancela la operación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Bloqueo de canje por rechazo de la cláusula de consentimiento de datos}\newline
\textbf{Given} un productor olivarero en la pantalla de confirmación de patrocinio (\texttt{P05b}). \textbf{When} presiona la acción de canje sin marcar la aceptación obligatoria de los términos de compartición de datos personales y agronómicos. \textbf{Then} el sistema bloquea el procesamiento del canje. \textbf{And} resalta la cláusula legal de consentimiento indicando que la vinculación técnica a la organización requiere autorización expresa conforme al marco regulatorio de protección de datos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Rechazo por código de patrocinio inexistente, vencido o previamente canjeado}\newline
\textbf{Given} un productor olivarero ingresando un código en la vista \texttt{P05}. \textbf{When} proporciona una clave inválida, con vigencia expirada o que ya fue consumida por otro agricultor. \textbf{Then} el sistema rechaza la transacción de canje. \textbf{And} notifica que el código no es válido o ya no se encuentra disponible, conservando el estado de suscripción previo del usuario.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US47} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico de Cooperativa} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Revocación de códigos de patrocinio no canjeados y restitución de saldo de licencia} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} revocar códigos de activación emitidos que aún permanezcan en estado disponible (sin canjear por ningún socio) desde la aplicación móvil Flutter, \textbf{para} invalidar códigos entregados por error o extraviados y reincorporar inmediatamente las plazas y el cupo de hectáreas reservadas al saldo disponible de la licencia corporativa.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Revocación exitosa de código disponible y liberación inmediata de cupo}\newline
\textbf{Given} un gestor técnico en la pestaña de códigos corporativos (\texttt{G42}) visualizando un código no canjeado. \textbf{When} selecciona la opción de revocación de código y confirma la acción en el diálogo de verificación (\texttt{G42 / Revocar código}). \textbf{Then} el sistema cambia el estado del código a revocado en el backend, inhabilita su uso para cualquier solicitud de canje posterior y restituye automáticamente la plaza y el cupo de hectáreas al balance disponible de la licencia corporativa. \textbf{And} actualiza la vista mostrando la confirmación de código revocado (\texttt{G42 / Código revocado}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Restricción de revocación directa sobre códigos ya canjeados por socios}\newline
\textbf{Given} un gestor técnico navegando en la lista de códigos canjeados (\texttt{G42 / Canjeados}). \textbf{When} visualiza un código que ya se encuentra asociado a un socio productor activo. \textbf{Then} el sistema oculta o deshabilita la opción de revocación simple de código. \textbf{And} orienta al gestor técnico a utilizar el flujo formal de retiro de acceso y desvinculación desde la ficha individual del socio (\texttt{G41}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo de canje en aplicación Android sobre un código previamente revocado}\newline
\textbf{Given} un productor olivarero que intenta canjear en la app Android un código corporativo que fue revocado por el gestor técnico. \textbf{When} envía la clave de patrocinio en la pantalla \texttt{P05}. \textbf{Then} el sistema deniega el canje con mensaje de error específico. \textbf{And} notifica al agricultor que el código fue cancelado por la entidad emisora, solicitando contactar a su gestor técnico.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US48} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP02} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Desvinculación de supervisión agronómica y cese de compartición de datos de parcelas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero o Gestor Técnico de Cooperativa, \textbf{quiero} rescindir voluntariamente la vinculación de patrocinio en cualquier momento (mediante la acción "Dejar de compartir" del productor o "Retirar acceso" del gestor técnico), \textbf{para} revocar el acceso de lectura a los lotes y monitoreos del olivar, liberar la plaza y hectáreas en la licencia corporativa y salvaguardar la privacidad de los datos conforme a la Ley N° 29733.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Productor cesa voluntariamente la compartición de datos con la organización}\newline
\textbf{Given} un productor olivarero con membresía patrocinada activa que accede a la configuración de su suscripción en la app Android (\texttt{P99 / Mi plan activado con código}). \textbf{When} selecciona la opción "Dejar de compartir", revisa las consecuencias informativas de la revocación de consentimiento y confirma la desvinculación en el diálogo modal (\texttt{P99 / Dejar de compartir}). \textbf{Then} el sistema revoca inmediatamente el acceso de lectura del gestor sobre sus parcelas, desasocia el patrocinio corporativo y transiciona a la pantalla informativa (\texttt{P99 / Ya no compartes}). \textbf{And} reintegra la plaza y las hectáreas a la licencia corporativa de la entidad.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Gestor técnico retira el acceso de supervisión a un socio productor}\newline
\textbf{Given} un gestor técnico consultando la ficha de detalle de un socio productor en la app Flutter (\texttt{G41 / Socio}). \textbf{When} pulsa la acción administrativa "Retirar acceso" y valida la confirmación de desvinculación. \textbf{Then} el sistema finaliza el vínculo institucional con dicho productor, retira sus lotes del semáforo y del mapa técnico, y actualiza la ficha del socio indicando el cese de supervisión (\texttt{G41 / Retiró el acceso}). \textbf{And} notifica en la cuenta del productor que el patrocinio corporativo ha finalizado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Pérdida inmediata de visualización de parcelas en mapa y semáforo del gestor}\newline
\textbf{Given} una relación de patrocinio desvinculada entre un productor y la organización. \textbf{When} el gestor técnico abre las vistas de inteligencia territorial (\texttt{G20}) o detalle sectorial (\texttt{G22}). \textbf{Then} el sistema omite completamente los polígonos, índices de vecería y alertas de los lotes del productor desvinculado. \textbf{And} actualiza las métricas consolidadas del sector reflejando únicamente a los socios vigentes.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Preservación de registros históricos consolidados de acopio sin datos personales}\newline
\textbf{Given} una cooperativa que contó con un socio desvinculado durante la campaña. \textbf{When} el gestor técnico consulta los balances históricos de acopio o entregas pasadas (\texttt{G30}). \textbf{Then} el sistema conserva los totales cuantitativos de cosechas registradas para no desvirtuar el consolidado global de la campaña. \textbf{And} anonimiza la procedencia eliminando nombres y datos identificatorios del agricultor desvinculado.} \\ \hline
\end{longtable}
\endgroup
\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US49} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Gestor Técnico / Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP03} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Gestión y asignación de sectores territoriales editables para agrupación y filtrado de lotes} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa o Productor Olivarero, \textbf{quiero} administrar una nómina dinámica de sectores territoriales (crear, renombrar y listar etiquetas del valle olivarero) y asignar o confirmar el sector correspondiente a cada parcela socia, \textbf{para} estructurar la cartera de predios por zonas agroecológicas, agilizar las rutas de asistencia técnica en campo y filtrar el semáforo de riesgo y las proyecciones de acopio por sector sin depender de fronteras poligonales rígidas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación y edición de sectores territoriales por el Gestor Técnico}\newline
\textbf{Given} un gestor técnico en el módulo de configuración territorial de la app Flutter (\texttt{G45 / Sectores}). \textbf{When} pulsa la acción de añadir sector (\texttt{G47}), ingresa un nombre representativo de la zona del valle (por ejemplo, "La Yarada Los Palos") y guarda los cambios, o selecciona un sector existente para renombrarlo (\texttt{G46 / Revisar sector}). \textbf{Then} el sistema persiste la etiqueta del sector en el catálogo institucional de la organización. \textbf{And} actualiza inmediatamente la lista de sectores disponibles para filtrado y asignación en todo el ecosistema.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Asignación o selección de sector territorial por el Productor en sus lotes}\newline
\textbf{Given} un productor olivarero vinculado a una cooperativa que registra o edita una parcela en la app Android (\texttt{P24}). \textbf{When} accede al campo de sector territorial y selecciona una etiqueta de la lista sugerida por su organización (\texttt{P24 / Elegir sector}) o ingresa una denominación personalizada (\texttt{P24 / Escribir mi sector}). \textbf{Then} el sistema vincula la etiqueta del sector a los metadatos de la parcela (\texttt{P24 / Socio con sector}). \textbf{And} sincroniza dicha categorización hacia las vistas de consulta del gestor técnico.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Filtrado y navegación de parcelas y semáforo de riesgo por sector en el panel del Gestor}\newline
\textbf{Given} un gestor técnico consultando la matriz de inteligencia territorial en la app Flutter (\texttt{G20}). \textbf{When} aplica un filtro seleccionando un sector territorial específico (\texttt{G21 / Elegir sector}). \textbf{Then} el sistema enfoca el mapa y filtra la lista de parcelas mostrando únicamente los predios pertenecientes a ese sector (\texttt{G20 / Sector elegido}). \textbf{And} recalcula el semáforo fenológico y las alertas críticas correspondientes a dicha zona en la vista de detalle (\texttt{G22 / Detalle del sector}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Agrupación y tratamiento de parcelas socias sin sector asignado}\newline
\textbf{Given} socios vinculados que aún no han etiquetado el sector de sus parcelas registradas. \textbf{When} el gestor técnico consulta el directorio territorial o aplica filtros en \texttt{G20}. \textbf{Then} el sistema agrupa dichas parcelas bajo la categoría transitoria "Por confirmar" o "Sin clasificar". \textbf{And} permite al gestor visualizar los predios en el mapa para coordinar con el agricultor la confirmación de su sector.} \\ \hline
\end{longtable}
\endgroup

\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US50} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de preguntas disponibles según el contexto agronómico} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} conocer las preguntas que puedo realizar sobre la situación que estoy revisando, \textbf{para} resolver mis dudas sin tener que formularlas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Preguntas con datos de la parcela}\newline
\textbf{Given} un productor con plan activo que revisa una parcela de su propiedad.\newline
\textbf{When} solicita las preguntas disponibles.\newline
\textbf{Then} el sistema presenta las preguntas de ese contexto en orden, con las cifras reales de la parcela.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Preguntas sobre todo el campo}\newline
\textbf{Given} un productor con plan activo que no ha seleccionado una parcela en su resumen general.\newline
\textbf{When} solicita las preguntas disponibles.\newline
\textbf{Then} el sistema presenta preguntas referidas al conjunto de sus parcelas activas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Pregunta no disponible por falta de datos}\newline
\textbf{Given} una parcela que no cuenta con los datos necesarios para responder una pregunta.\newline
\textbf{When} el productor consulta las preguntas disponibles.\newline
\textbf{Then} el sistema indica que esa pregunta no está disponible y explica el motivo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Acceso sin plan activo}\newline
\textbf{Given} un productor cuyo plan no se encuentra activo.\newline
\textbf{When} intenta consultar las preguntas disponibles.\newline
\textbf{Then} el sistema deniega el acceso a la funcionalidad.} \\ \hline
\end{longtable}
\endgroup

\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US51} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Obtención de respuesta sustentada en datos reales} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} recibir una respuesta breve a la pregunta elegida con las cifras y la fuente que la respaldan, \textbf{para} comprender la razón de cada recomendación.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Respuesta exitosa con datos de la parcela}\newline
\textbf{Given} una pregunta disponible sobre una parcela del productor.\newline
\textbf{When} el productor la realiza.\newline
\textbf{Then} el sistema entrega una explicación breve en su idioma, dos indicadores y la fuente de los datos utilizados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Acceso a la labor relacionada}\newline
\textbf{Given} una respuesta asociada a una labor agronómica vigente.\newline
\textbf{When} el sistema entrega la respuesta.\newline
\textbf{Then} ofrece acceder a la funcionalidad correspondiente sin modificar los datos del productor.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Datos insuficientes para responder}\newline
\textbf{Given} una pregunta cuyas cifras necesarias no están registradas.\newline
\textbf{When} el productor la realiza.\newline
\textbf{Then} el sistema informa que faltan datos y no estima valores.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Respuesta generada no verificable}\newline
\textbf{Given} un texto generado que contiene cifras ajenas a los datos del productor o que no puede obtenerse.\newline
\textbf{When} el sistema valida la respuesta.\newline
\textbf{Then} entrega una respuesta predefinida construida con los datos reales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Límite de uso alcanzado}\newline
\textbf{Given} un productor que alcanzó 20 respuestas nuevas en una hora.\newline
\textbf{When} realiza otra pregunta.\newline
\textbf{Then} el sistema rechaza la consulta e informa cuándo puede volver a intentarlo.} \\ \hline
\end{longtable}
\endgroup

\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US52} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del historial de respuestas recientes} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} revisar mis últimas respuestas, incluso sin conexión, \textbf{para} recuperar una orientación recibida mientras estoy en campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Historial de respuestas disponible}\newline
\textbf{Given} un productor con respuestas emitidas en los últimos 10 días.\newline
\textbf{When} consulta su historial.\newline
\textbf{Then} el sistema presenta hasta 10 respuestas, de la más reciente a la más antigua, indicando su vigencia.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta sin conexión}\newline
\textbf{Given} un productor sin conexión que tiene respuestas guardadas en su dispositivo.\newline
\textbf{When} consulta su historial.\newline
\textbf{Then} el sistema presenta las respuestas guardadas e indica que realizar nuevas preguntas requiere conexión.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Historial sin respuestas}\newline
\textbf{Given} un productor sin respuestas vigentes.\newline
\textbf{When} consulta su historial.\newline
\textbf{Then} el sistema informa que aún no existen consultas registradas.} \\ \hline
\end{longtable}
\endgroup

\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US53} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Actualización de respuestas ante cambios en los datos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} saber si una respuesta quedó desactualizada y poder solicitarla de nuevo, \textbf{para} no tomar decisiones con información anterior.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Recuperación de la última respuesta}\newline
\textbf{Given} un productor con una respuesta previa en un contexto de consulta.\newline
\textbf{When} regresa a ese contexto.\newline
\textbf{Then} el sistema presenta esa respuesta hasta que el productor decida realizar otra pregunta.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Identificación de datos modificados}\newline
\textbf{Given} una respuesta cuyos datos de origen cambiaron después de emitirse.\newline
\textbf{When} el productor la consulta.\newline
\textbf{Then} el sistema la identifica como desactualizada y permite solicitarla nuevamente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Nueva respuesta con datos vigentes}\newline
\textbf{Given} una respuesta desactualizada.\newline
\textbf{When} el productor la solicita nuevamente.\newline
\textbf{Then} el sistema genera una respuesta con los datos vigentes.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Límite de actualizaciones alcanzado}\newline
\textbf{Given} un productor que alcanzó 5 actualizaciones de respuesta en una hora.\newline
\textbf{When} solicita otra actualización.\newline
\textbf{Then} el sistema la rechaza e informa cuándo puede volver a intentarlo.} \\ \hline
\end{longtable}
\endgroup

\vspace{0.35em}

\begingroup
\renewcommand{\arraystretch}{1.08}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US54} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Resumen diario de prioridades del campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero, \textbf{quiero} recibir cada día un resumen de mi campo, \textbf{para} identificar rápidamente la ventana de aclareo, las temperaturas y las alertas relevantes.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Resumen del día disponible}\newline
\textbf{Given} un productor con plan activo y parcelas activas.\newline
\textbf{When} consulta su resumen del día.\newline
\textbf{Then} el sistema presenta una explicación con tres indicadores: ventana de aclareo, temperatura máxima de la semana y alertas abiertas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Recordatorio matutino}\newline
\textbf{Given} un productor que utiliza la aplicación móvil.\newline
\textbf{When} llega la mañana.\newline
\textbf{Then} el sistema le recuerda que su resumen del día está disponible.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Consulta sin conexión}\newline
\textbf{Given} un productor sin conexión que tiene guardado el resumen del día.\newline
\textbf{When} lo consulta.\newline
\textbf{Then} el sistema presenta el resumen guardado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Productor sin parcelas activas}\newline
\textbf{Given} un productor sin parcelas activas.\newline
\textbf{When} solicita su resumen del día.\newline
\textbf{Then} el sistema informa que no existe información por resumir.} \\ \hline
\end{longtable}
\endgroup



\clearpage

A continuación, se presentan las Historias Técnicas (\textit{Technical Stories}) orientadas al equipo de desarrollo de backend, correspondientes a los servicios de integración RESTful y arquitectura de soporte (\textbf{EP10}, \textbf{EP11}, \textbf{EP12}, \textbf{EP13}, \textbf{EP15} y \textbf{EP16}), así como los Spikes técnicos de investigación (\textbf{EP14}). Conforme a las buenas prácticas de diseño de software y directrices de desarrollo, cada historia técnica comprende exactamente un único endpoint HTTP con sus respectivos escenarios BDD basados en los códigos de respuesta RESTful:

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS01} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de credenciales de cuenta de usuario y asignación de rol en IAM} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar las credenciales de registro (correo electrónico, contraseña, nombre completo, teléfono en formato E.164 y rol institucional) al servicio de autenticación IAM, \textbf{para} crear la cuenta de usuario con contraseña cifrada, validación telefónica y rol asignado (\texttt{ROLE\_PRODUCER} o \texttt{ROLE\_TECHNICAL\_MANAGER}).} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de cuenta de usuario con rol de gestor técnico o productor}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-up} con un payload JSON que contiene: \texttt{email}, \texttt{password}, \texttt{fullName}, \texttt{phoneNumber} (bajo estándar E.164) y \texttt{role} (\texttt{ROLE\_PRODUCER} o \texttt{ROLE\_TECHNICAL\_MANAGER}).\newline
\textbf{When} la API valida la sintaxis, comprueba que el correo y teléfono no estén registrados previamente y cifra la contraseña mediante BCrypt con factor de costo 12.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando \texttt{UserAccountResource} con \texttt{id}, \texttt{email}, \texttt{fullName}, \texttt{phoneNumber}, \texttt{role}, \texttt{status: ACTIVE} y timestamp de creación.\newline
\textbf{And} persiste la identidad en el almacén de usuarios e inicia el ciclo de vida del perfil institucional.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Correo electrónico o teléfono ya registrado en el sistema}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-up} con un correo electrónico o teléfono que ya figura en el repositorio de cuentas.\newline
\textbf{When} la API evalúa la restricción de unicidad en la base de datos de identidades.\newline
\textbf{Then} la API responde \texttt{409 Conflict} bajo el estándar RFC 7807 especificando el conflicto de identidad en el atributo duplicado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Contraseña o número telefónico no cumplen con las políticas de validación}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-up} donde la contraseña no satisface la longitud mínima o el teléfono no respeta la estructura E.164.\newline
\textbf{When} el validador de payload procesa los atributos del registro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} retornando el detalle de las violaciones de restricción en el cuerpo de la respuesta.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS02} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Autenticación de usuarios y emisión de tokens de acceso con rol} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar las credenciales de acceso a la API, \textbf{para} autenticar al usuario y recibir un token de acceso JWT con sus respectivos claims de autorización.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Autenticación exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-in} es recibida con email y password válidos.\newline
\textbf{When} la API verifica el hash criptográfico de la contraseña.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{AuthResource} conteniendo accessToken (JWT con vigencia de 15 minutos y claims de rol), refreshToken con rotación y tokenType Bearer.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Credenciales incorrectas}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-in} con contraseña incorrecta o correo no registrado.\newline
\textbf{When} la API valida las credenciales.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized} con mensaje genérico de error de autenticación.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS03} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Renovación periódica de tokens de sesión mediante Refresh Token} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar el refresh token a la API, \textbf{para} renovar el token de acceso JWT expirado sin requerir que el usuario vuelva a ingresar sus credenciales.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Renovación exitosa de token}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/refresh-tokens} es recibida con un refreshToken vigente y no revocado.\newline
\textbf{When} la API valida la firma y el estado de la sesión en el almacén de tokens.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{AuthResource} con un nuevo accessToken y un nuevo refreshToken rotado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Refresh token expirado o revocado}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/refresh-tokens} con un token revocado o caducado.\newline
\textbf{When} la API valida el token.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized} exigiendo nueva autenticación interactiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS04} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de información de perfil del usuario autenticado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consumir el endpoint GET del perfil de usuario, \textbf{para} obtener los datos personales, de membresía y contacto del usuario autenticado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de perfil propio}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/profiles/{userId}} con cabecera Authorization Bearer.\newline
\textbf{When} la API valida que el \texttt{userId} solicitado coincide con el claim del token JWT o el solicitante es administrador.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{ProfileResource} con id, userId, fullName, country, phoneNumber y createdAt.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Intento de consulta de perfil de otro usuario}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/profiles/{userId}} con un identificador ajeno al usuario autenticado.\newline
\textbf{When} la API evalúa la correspondencia de propiedad de la cuenta.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Usuario inexistente}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/profiles/{userId}} con un identificador no registrado.\newline
\textbf{When} la API consulta la persistencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS05} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Actualización parcial de datos de perfil con validación telefónica} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar actualizaciones parciales del perfil a la API, \textbf{para} modificar el nombre de contacto o el número de teléfono operativo validado bajo el estándar E.164.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/profiles/{userId}} con cuerpo JSON que incluye fullName y/o phoneNumber y país.\newline
\textbf{When} la API valida la propiedad de la cuenta y verifica el nuevo teléfono.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{ProfileResource} con los datos actualizados y persistidos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Teléfono inválido en actualización}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/profiles/{userId}} con un teléfono que no cumple la norma E.164.\newline
\textbf{When} la API valida los campos provistos.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} sin alterar la información previa.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Permiso denegado sobre cuenta ajena}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/profiles/{userId}} dirigida a un identificador distinto al token autenticado.\newline
\textbf{When} la API evalúa la correspondencia.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS06} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Generación de preferencia de checkout para suscripción de productor independiente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar a la API la creación de una orden de suscripción SaaS, \textbf{para} obtener el identificador de preferencia y la URL de redirección a la pasarela digital de pagos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de preferencia de suscripción}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/subscriptions} con cuerpo JSON: planType: PRODUCER y hectares: number.\newline
\textbf{When} la API calcula el monto en Soles (PEN) según la superficie y genera la orden en la pasarela de pagos configurada.\newline
\textbf{Then} la API responde \texttt{201 Created} y retorna \texttt{SubscriptionPreferenceResource} con preferenceId, checkoutUrl y externalReference.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Datos de suscripción inválidos}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/subscriptions} con hectares menor o igual a cero o plan inexistente.\newline
\textbf{When} la API valida la solicitud de cobro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} con la especificación del error.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS07} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Recepción y procesamiento de webhooks de notificación de pagos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de plataforma backend, \textbf{quiero} exponer un endpoint webhook para la pasarela de pagos, \textbf{para} procesar asíncronamente las confirmaciones de transacción y activar la suscripción del productor de manera inmediata.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Procesamiento exitoso de pago confirmado}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/payment-notifications/mercado-pago} recibida desde la pasarela con cabecera \texttt{x-signature} conteniendo la firma criptográfica HMAC-SHA256 válida y estado approved.\newline
\textbf{When} la API valida la firma de autenticidad, recupera la orden y actualiza el estado de la suscripción del usuario.\newline
\textbf{Then} la API responde \texttt{200 OK} y transiciona el estado de la suscripción a ACTIVE, asignando la fecha de vigencia correspondiente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Firma de webhook inválida}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/payment-notifications/mercado-pago} con cabecera \texttt{x-signature} ausente o alterada.\newline
\textbf{When} el validador criptográfico de webhooks detecta discrepancia en la firma HMAC.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo RFC 7807 y descarta el procesamiento.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS08} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Generación de lote de códigos de activación para socios cooperativos con reserva de cuota} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar la solicitud de generación de un lote de códigos de activación especificando cantidad, vigencia en días y cuota de hectáreas por código mediante POST a \url{/api/v1/invitation-codes}, \textbf{para} emitir invitaciones innominadas y reservar atómicamente plazas y hectáreas en la licencia institucional.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación exitosa de lote con reserva atómica de plazas y hectáreas}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/invitation-codes} con cabecera \texttt{Authorization: Bearer <token>} de un gestor técnico y cuerpo JSON conteniendo \texttt{quantity}, \texttt{validDays} y \texttt{quotaHaPerCode}.\newline
\textbf{When} la API verifica que el gestor posee \texttt{ROLE\_TECHNICAL\_MANAGER}, pertenece a la cooperativa y la licencia dispone de plazas y saldo de hectáreas suficientes para cubrir el lote.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando \texttt{InvitationCodeBatchResource} con \texttt{batchId}, \texttt{quantity}, \texttt{validDays}, \texttt{quotaHaPerCode}, array de códigos innominados generados con formato \texttt{COOP-XXXX}, \texttt{expiresAt} y balance restante de la licencia.\newline
\textbf{And} reserva atómicamente las plazas y hectáreas correspondientes en \texttt{CooperativeLicense}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cupo o hectáreas insuficientes en la licencia colectiva}\newline
\textbf{Given} una solicitud POST para emitir un lote cuya cantidad de plazas o suma de hectáreas excede el saldo disponible en la suscripción corporativa.\newline
\textbf{When} la API valida los límites contractuales del agregado \texttt{CooperativeLicense}.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando que no se cuenta con cupo institucional suficiente para completar la emisión.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso no autorizado para usuarios sin rol de gestor técnico}\newline
\textbf{Given} una solicitud POST emitida por un usuario no autenticado, con rol ajeno o sin una licencia vigente.\newline
\textbf{When} el filtro de seguridad evalúa las credenciales y la pertenencia institucional.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} bloqueando la generación de códigos.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS09} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta y auditoría de inventario de lotes y códigos de activación de cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el inventario de lotes y códigos de activación mediante GET a \url{/api/v1/invitation-codes} con soporte de filtros por estado y almacenamiento recuperable protegido, \textbf{para} permitir al gestor auditar las invitaciones y copiar o compartir códigos disponibles.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de códigos de activación}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/invitation-codes} con parámetro opcional \texttt{status}, autorizada con token de \texttt{ROLE\_TECHNICAL\_MANAGER}.\newline
\textbf{When} la API consulta el repositorio de códigos y calcula los totales globales de la cooperativa.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la lista de códigos de la licencia, con códigos legibles para los estados \texttt{AVAILABLE}, \texttt{expiresAt}, fecha de emisión y resumen de balance institucional.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Recuperación de código utilizable protegido}\newline
\textbf{Given} un código generado en estado \texttt{AVAILABLE} que se encuentra dentro de su período de vigencia.\newline
\textbf{When} el gestor técnico autorizado solicita su detalle para compartirlo desde la aplicación móvil.\newline
\textbf{Then} la API devuelve la representación utilizable del código permitiendo su copia al portapapeles sin exponer secretos del sistema.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso denegado a usuarios externos o sin privilegios de gestión}\newline
\textbf{Given} una petición GET enviada por una cuenta sin rol de gestor técnico.\newline
\textbf{When} el servicio comprueba el ámbito de autorización.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} resguardando la confidencialidad de los códigos institucionales.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS10} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Canje atómico de código de activación institucional con validación de cuota y consentimiento} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar el código de activación corporativo provisto por el productor y su consentimiento de compartición de datos mediante POST a \url{/api/v1/cooperative-code-redemptions}, \textbf{para} validar atómicamente la cuota, afiliar la cuenta a la cooperativa y activar los beneficios patrocinados sin cobro individual.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso, validación de cuota y vinculación 1:N}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/cooperative-code-redemptions} con cuerpo JSON conteniendo \texttt{invitationCode} (formato \texttt{COOP-XXXX}) y \texttt{shareDataConsent: true} emitida por un productor olivarero autenticado.\newline
\textbf{When} la API valida que el código existe, se encuentra en estado \texttt{AVAILABLE}, no ha expirado y la cooperativa dispone de cuota de hectáreas para la superficie del socio.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando \texttt{CooperativeCodeRedemptionResource} con la confirmación de afiliación, nombre de la cooperativa y estado de membresía patrocinada activa.\newline
\textbf{And} transiciona el código a \texttt{REDEEMED}, emite \texttt{CooperativeCodeRedeemedEvent} y vincula al productor al padrón del gestor técnico.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código inválido, expirado o revocado}\newline
\textbf{Given} una solicitud POST con un código que no existe en el sistema o cuyo estado es \texttt{REDEEMED}, \texttt{EXPIRED} o \texttt{REVOKED}.\newline
\textbf{When} el servicio procesa la transacción de canje.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807 indicando el motivo del rechazo sin alterar el estado del usuario.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Productor ya vinculado a una cooperativa activa}\newline
\textbf{Given} un usuario que ya cuenta con una afiliación corporativa activa intentando redimir otro código de activación.\newline
\textbf{When} el agregador de suscripciones verifica la política de vinculación única por campaña.\newline
\textbf{Then} la API responde \texttt{409 Conflict} señalando que la cuenta ya posee patrocinio cooperativo vigente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud POST emitida por un usuario que no tiene rol de productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Exceso de intentos fallidos}\newline
\textbf{Given} un usuario que acumuló demasiados intentos fallidos de canje.\newline
\textbf{When} envía una nueva solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS11} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Creación y delimitación poligonal de parcelas georreferenciadas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los vértices poligonales en formato WGS84 a la API, \textbf{para} registrar una nueva parcela y persistir sus propiedades agronómicas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de parcela}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots} con cuerpo JSON conteniendo: name, polygonCoordinates, variety, plantDensity y plantationYear.\newline
\textbf{When} la API verifica que el polígono esté cerrado, calcula la superficie en hectáreas y valida la densidad biológica.\newline
\textbf{Then} la API responde \texttt{201 Created} y retorna \texttt{PlotResource} con el identificador asignado y el área calculada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Geometría poligonal inválida}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots} con menos de 3 vértices o con un polígono que no cierra.\newline
\textbf{When} la API valida la geometría espacial.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando la inconsistencia en las coordenadas.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS12} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Listado y sincronización incremental delta de parcelas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el inventario de parcelas con soporte de marcas temporales, \textbf{para} actualizar la base de datos local SQLite mediante sincronización delta eficiente.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta y sincronización incremental}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots} con parámetro opcional \texttt{?updatedSince=\{timestamp\}}.\newline
\textbf{When} la API filtra las parcelas del usuario modificadas posteriormente a dicha marca temporal.\newline
\textbf{Then} la API responde \texttt{200 OK} con un arreglo de objetos \texttt{PlotResource} actualizados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Acceso no autorizado a predios ajenos}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots} con parámetro \texttt{?userId=\{id\}} perteneciente a otro agricultor sin ser gestor técnico.\newline
\textbf{When} la API valida los permisos de acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS13} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta detallada de información agronómica y espacial de parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el detalle de una parcela mediante su ID, \textbf{para} visualizar la ficha agronómica completa del predio en la interfaz de usuario.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Obtención de detalle de parcela}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}} con token autorizado.\newline
\textbf{When} la API verifica la titularidad y recupera la parcela.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{PlotDetailResource} con geometría, variedad, densidad, año de siembra y sensores vinculados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela inexistente}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}} con un identificador no existente.\newline
\textbf{When} la API busca en la base de datos.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS14} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Actualización y rectificación integral de parcela con bloqueo optimista} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los datos actualizados de la parcela mediante el método PUT junto con el parámetro de ruta \texttt{{plotId}}, la cabecera \texttt{If-Match} y los datos en el cuerpo JSON, \textbf{para} rectificar linderos poligonales, marco de plantación o atributos agronómicos previniendo colisiones de concurrencia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa con control de concurrencia (HTTP 200 OK)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}} con parámetro de ruta \texttt{plotId}, cabecera \texttt{If-Match} conteniendo el ETag de la versión actual y cuerpo JSON con \texttt{name}, \texttt{cultivar}, \texttt{plantingYear}, \texttt{spacing}, \texttt{coordinates} e \texttt{irrigationType}.\newline
\textbf{When} la API valida la titularidad del predio, comprueba que la versión en \texttt{If-Match} coincida con la persistida, recalcula la superficie geodésica si variaron las coordenadas y persiste los cambios.\newline
\textbf{Then} la API responde \texttt{200 OK}, retorna \texttt{PlotResponse} actualizado y emite una nueva cabecera \texttt{ETag} con la versión incrementada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Conflicto de concurrencia optimista por versión desactualizada (HTTP 412 Precondition Failed)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}} donde el valor de la cabecera \texttt{If-Match} no coincide con la versión actual del recurso en la base de datos.\newline
\textbf{When} el interceptor de concurrencia optimista detecta el conflicto de modificación concurrente.\newline
\textbf{Then} la API responde \texttt{412 Precondition Failed} bajo el estándar RFC 7807 (\texttt{ProblemDetail}), impidiendo sobreescrituras simultáneas y preservando la integridad del registro.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parámetros inválidos o inconsistencia en linderos geométricos (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}} cuyo cuerpo contiene coordenadas poligonales no cerradas, valores nulos requeridos o datos agronómicos fuera de rango admisible.\newline
\textbf{When} el validador de contratos procesa el cuerpo de la petición.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} detallando las violaciones de validación de campos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Cuartel no encontrado en el inventario (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}} con un identificador \texttt{plotId} inexistente o archivado.\newline
\textbf{When} el servicio de dominio consulta el repositorio parcelario.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Nombre duplicado (HTTP 409 Conflict)}\newline
\textbf{Given} una solicitud PUT con un nombre ya utilizado por otra parcela del productor.\newline
\textbf{When} la API valida la unicidad del nombre.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS15} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Eliminación y baja lógica de parcela del inventario} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar a la API la remoción de una parcela, \textbf{para} dar de baja predios registrados por error o desafectados de la producción.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Eliminación exitosa}\newline
\textbf{Given} una solicitud DELETE a \url{/api/v1/plots/{plotId}} emitida por el propietario del lote.\newline
\textbf{When} la API valida la propiedad y ejecuta la baja lógica del predio.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela ajena}\newline
\textbf{Given} una solicitud DELETE a un lote perteneciente a otro usuario.\newline
\textbf{When} la API verifica permisos.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS16} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Alta y vinculación de nodo sensor virtual a parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} registrar un nodo sensor virtual (microclima o sonda de suelo a 30/60 cm) en la API, \textbf{para} activar la simulación de telemetría agroclimática en la parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Alta exitosa de nodo sensor virtual}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/iot-devices} con cuerpo JSON conteniendo name, type (MICROCLIMATE o SOIL\_PROBE) y depthCm.\newline
\textbf{When} la API valida que el tipo sea válido y la profundidad corresponda a 30 o 60 cm para sondas.\newline
\textbf{Then} la API responde \texttt{201 Created} y retorna \texttt{IotDeviceResource} con id asignado y estado ACTIVE.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Nombre duplicado de sensor en la misma parcela}\newline
\textbf{Given} una solicitud POST con un nombre de sensor ya existente en dicho lote.\newline
\textbf{When} la API comprueba unicidad dentro del predio.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parámetros de nodo inválidos}\newline
\textbf{Given} una solicitud POST con tipo desconocido o profundidad distinta a 30 o 60 cm.\newline
\textbf{When} la API evalúa la configuración técnica.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS17} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de inventario de nodos virtuales vinculados a parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el listado de nodos virtuales de una parcela a la API, \textbf{para} desplegar su estado operativo y última lectura simulada en la interfaz.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de dispositivos vinculados}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/iot-devices} con token de usuario autorizado.\newline
\textbf{When} la API recupera los dispositivos asociados a la parcela.\newline
\textbf{Then} la API responde \texttt{200 OK} con un arreglo de objetos \texttt{IotDeviceResource} detallando id, name, type, depthCm, status y lastReadingTimestamp.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela inexistente}\newline
\textbf{Given} una solicitud GET con un plotId inexistente.\newline
\textbf{When} la API consulta la persistencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS18} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Desvinculación de nodo virtual preservando trazabilidad histórica} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la desvinculación de un nodo virtual a la API, \textbf{para} retirar sensores obsoletos preservando las lecturas históricas asociadas al lote.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Desvinculación exitosa}\newline
\textbf{Given} una solicitud DELETE a \url{/api/v1/plots/{plotId}/iot-devices/{deviceId}} emitida por el titular de la parcela.\newline
\textbf{When} la API verifica la pertenencia y ejecuta la baja lógica del nodo.\newline
\textbf{Then} la API responde \texttt{200 OK} manteniendo la integridad de las series cronológicas previas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Dispositivo no encontrado}\newline
\textbf{Given} una solicitud DELETE con identificador de dispositivo inexistente.\newline
\textbf{When} la API busca el registro.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Revisión desactualizada del dispositivo}\newline
\textbf{Given} una solicitud DELETE con cabecera \texttt{If-Match} que no coincide con la versión actual del dispositivo.\newline
\textbf{When} la API compara la revisión.\newline
\textbf{Then} la API responde \texttt{412 Precondition Failed}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS19} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de series temporales de telemetría ambiental y de suelo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar las lecturas horarias de microclima y humedad de suelo a la API, \textbf{para} graficar las curvas térmicas e hídricas en los paneles de control de la parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de series históricas}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/telemetries} con parámetros \texttt{?startDate=\{ISO\}\&endDate=\{ISO\}}.\newline
\textbf{When} la API valida el rango temporal y recupera las series horarias continuas.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{TelemetrySeriesResource} con arreglos de temperatura, humedad relativa y humedad volumétrica a 30 y 60 cm.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rango temporal ilógico}\newline
\textbf{Given} una solicitud GET con una fecha inicial posterior a la fecha final.\newline
\textbf{When} la API valida la coherencia de las fechas.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS20} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de pronóstico meteorológico geolocalizado a 7 días} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el pronóstico meteorológico para la coordenada centroide de la parcela, \textbf{para} advertir al productor sobre olas de calor, heladas o vientos desecantes.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Entrega de pronóstico geolocalizado}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/forecasts} con token autorizado.\newline
\textbf{When} la API resuelve el centroide del lote y obtiene el pronóstico a 7 días desde el servicio climático externo con almacenamiento en caché local por 3 horas.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{ForecastResource} con temperaturas máximas y mínimas, probabilidad de precipitación, velocidad de viento y timestamp de actualización.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela sin geometría definida}\newline
\textbf{Given} una solicitud GET dirigida a una parcela sin coordenadas válidas.\newline
\textbf{When} la API intenta calcular el centroide geográfico.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando la ausencia de georreferenciación.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS21} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Asentamiento de cosecha anual por campaña para auditoría productiva} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los kilogramos cosechados al cierre de la temporada a la API, \textbf{para} registrar la producción anual del lote y alimentar el cálculo del índice BBI.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Asentamiento exitoso de cosecha}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/harvest-records} con cuerpo JSON: campaignYear, totalYieldKg, greenKg y blackKg.\newline
\textbf{When} la API valida la propiedad del lote, verifica que la suma de calidades coincida con el total y persiste el registro.\newline
\textbf{Then} la API responde \texttt{201 Created} y retorna \texttt{HarvestRecordResource} con el registro auditado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Campaña ya registrada previamente}\newline
\textbf{Given} una solicitud POST para una campaña agrícola ya asentada en dicho lote.\newline
\textbf{When} la API comprueba la existencia del año agrícola.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Valores de cosecha inconsistentes}\newline
\textbf{Given} una solicitud POST con rendimientos negativos o año futuro.\newline
\textbf{When} la API valida los campos numéricos.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS22} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del historial plurianual de cosechas de la parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el historial de cosechas de una parcela a la API, \textbf{para} renderizar la curva interanual de rendimiento productivo en la interfaz.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado cronológico de cosechas}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/harvest-records} con token de usuario autorizado.\newline
\textbf{When} la API recupera los registros productivos históricos del lote.\newline
\textbf{Then} la API responde \texttt{200 OK} con un arreglo de objetos \texttt{HarvestRecordResource} ordenados cronológicamente por año agrícola.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela no encontrada}\newline
\textbf{Given} una solicitud GET con un plotId inexistente.\newline
\textbf{When} la API consulta la base de datos.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS23} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar los indicadores matemáticos de vecería y frío invernal a la API, \textbf{para} desplegar el índice BBI y las porciones de frío acumuladas con alertas térmicas ENOS.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Cálculo exitoso de índice BBI o frío de Erez}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/metrics} con parámetro \texttt{?name=BBI} o \texttt{?name=CHILLING}.\newline
\textbf{When} la API computa la fórmula de Hoblyn ($\ge 3$ campañas) o ejecuta el modelo dinámico de Erez sobre las temperaturas horarias.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{MetricResource} con el valor numérico, categoría de severidad y el flag \texttt{enosAnomalyDetected: boolean}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Datos insuficientes para el cálculo}\newline
\textbf{Given} una solicitud GET para BBI en un lote con menos de 3 campañas registradas.\newline
\textbf{When} la API valida los requisitos estadísticos.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando que se requieren al menos 3 campañas agrícolas.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS24} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro y sincronización de muestreos guiados de cuajado en campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los registros de conteo de frutos y brotes tomados a pie de árbol mediante el método POST con parámetro de ruta \texttt{{plotId}} y cuerpo JSON con árboles evaluados (incluyendo el diámetro de tronco como atributo opcional nullable), \textbf{para} sincronizar los muestreos offline y calcular la carga frutal del predio sin bloquear el proceso si no se midió el tronco.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Sincronización exitosa de lote de muestreos con o sin diámetro de tronco (HTTP 201 Created)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/samplings} con parámetro de ruta \texttt{plotId} y cuerpo JSON con \texttt{campaignYear}, \texttt{samplingDate} y el arreglo \texttt{trees} (\texttt{treeNumber}, \texttt{shootsCount}, \texttt{fruitsCount}, y \texttt{trunkDiameterMm} como atributo opcional nullable).\newline
\textbf{When} la API valida los conteos, comprueba la existencia de la parcela, procesa los registros admitiendo la presencia o ausencia de \texttt{trunkDiameterMm} sin exigir su medición obligatoria y computa la tasa promedio de frutos por brote.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando \texttt{SamplingBatchResponse} con \texttt{treesSampled}, \texttt{averageFruitPerShoot}, \texttt{cropLoadIndex} y el estado de suficiencia estadística.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por conteos negativos o incongruencia biológica (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/samplings} con conteos negativos, números de árbol duplicados en el mismo lote o valores de frutos por brote biológicamente inverosímiles.\newline
\textbf{When} el servicio de validación evalúa la integridad agronómica del lote.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando las violaciones de restricción del lote de muestreo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela no encontrada en el repositorio (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/samplings} con un parámetro de ruta \texttt{plotId} inexistente en el sistema.\newline
\textbf{When} la API intenta asociar el lote de muestreo al predio.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Árboles duplicados o lote en conflicto (HTTP 409 Conflict)}\newline
\textbf{Given} una solicitud POST con identificadores de árbol duplicados dentro de la ronda o un lote en conflicto.\newline
\textbf{When} la API valida la ronda de muestreo.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS25} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de representatividad estadística y estado de muestreo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el estado de representatividad de muestreos a la API, \textbf{para} notificar al usuario si ha evaluado suficientes árboles para generar prescripciones confiables.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de cobertura de muestreos}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/samplings} con token autorizado.\newline
\textbf{When} la API consolida los árboles evaluados en la campaña activa.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{SamplingSummaryResource} con total de árboles evaluados, representatividad porcentual y el indicador \texttt{isSampleSufficient: boolean} ($\ge 5$ árboles).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela no encontrada}\newline
\textbf{Given} una solicitud GET con plotId inválido o inexistente.\newline
\textbf{When} la API busca en persistencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS26} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de prescripción técnica de aclareo y ventana fenológica} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar la prescripción agronómica activa mediante el método GET al endpoint \url{/api/v1/plots/{plotId}/thinning-prescriptions} con parámetro de ruta \texttt{{plotId}}, \textbf{para} desplegar el porcentaje de remoción recomendado, la ventana fenológica de intervención y la lista explícita de bloqueadores en caso de información faltante.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de prescripción activa o bloqueadores diagnósticos (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/thinning-prescriptions} con parámetro de ruta \texttt{plotId}.\newline
\textbf{When} la API evalúa la representatividad del muestreo y la fecha de plena floración registrada para el cuartel.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{ThinningPrescriptionResponse} conteniendo: \texttt{status}, \texttt{targetRemovalPercentage}, \texttt{recommendedWindowStart}, \texttt{recommendedWindowEnd}, \texttt{phenologicalStage}, \texttt{isOverloaded}, la lista explícita \texttt{blockers} (por ejemplo, \texttt{SAMPLING\_NOT\_REPRESENTATIVE} o \texttt{FULL\_BLOOM\_MISSING}) e instrucciones operativas de manejo.\newline
\textbf{And} entrega las orientaciones técnicas para desbloquear la prescripción en caso de requerir mediciones adicionales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cuartel no encontrado o sin prescripción activa (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/thinning-prescriptions} con un identificador \texttt{plotId} inexistente o que no posee ninguna prescripción emitida en la campaña.\newline
\textbf{When} el servicio de aplicación consulta el contexto de aclareo.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS27} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Confirmación y registro de ejecución de labor de aclareo en campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar la confirmación de ejecución de aclareo mediante el método POST a \url{/api/v1/thinning-prescriptions/{id}/execution-confirmations} con parámetro de ruta \texttt{{id}} y cuerpo JSON (\texttt{executedDate}, \texttt{actualRemovalPercentage}, \texttt{removedKg}, \texttt{laborCrewSize}, \texttt{notes}), \textbf{para} asentar la práctica en la bitácora, actualizar el balance de carga residual y proyectar el calibre comercial COI.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Confirmación exitosa con balance de carga y proyección de calibre COI (HTTP 201 Created)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/thinning-prescriptions/{id}/execution-confirmations} con parámetro de ruta \texttt{id} y cuerpo JSON con \texttt{executedDate}, \texttt{actualRemovalPercentage} (entre 0 y 100), \texttt{removedKg}, \texttt{laborCrewSize} y \texttt{notes}.\newline
\textbf{When} la API valida los campos, registra la confirmación de aclareo en la bitácora del cuartel y evalúa la proyección de calibre según la calibración del modelo de la variedad.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando \texttt{ExecutionConfirmationResponse} conteniendo \texttt{id}, \texttt{executedDate}, \texttt{actualRemovalPercentage}, \texttt{loadBalance} (\texttt{residualLoadIndex}, \texttt{loadState}), \texttt{caliberProjection} (\texttt{status}: \texttt{ESTIMATED} o \texttt{IN\_CALIBRATION}, \texttt{probableGrade}, \texttt{confidenceInterval80}) y la marca temporal de confirmación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Confirmación con 100 \% de remoción y calibre no aplicable (HTTP 201 Created)}\newline
\textbf{Given} una solicitud POST donde \texttt{actualRemovalPercentage} es igual a 100.0 (defrutado total sanitario o severo).\newline
\textbf{When} la API registra la intervención en el predio.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando el balance con carga residual en cero y \texttt{caliberProjection.status} en \texttt{NOT\_APPLICABLE}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Porcentaje de remoción fuera de rango o fecha inválida (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST con un porcentaje de remoción negativo, mayor a 100 \% o una fecha de ejecución futura.\newline
\textbf{When} el servicio valida las restricciones de dominio agronómico.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Cuartel o prescripción activa inexistente (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST dirigida a un \texttt{id} de prescripción inexistente.\newline
\textbf{When} el servicio consulta el agregado en el contexto de Thinning.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS28} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta y exportación del expediente agronómico definitivo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el expediente agronómico sellado de una parcela mediante GET a \url{/api/v1/plots/{plotId}/agronomic-dossiers/{campaignYear}} con negociación de contenidos (\texttt{Accept: application/pdf} o \texttt{application/json}), \textbf{para} descargar el dossier sellado con hash SHA-256 de una campaña cerrada.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Descarga del expediente sellado en formato PDF}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/agronomic-dossiers/{campaignYear}} con cabecera \texttt{Accept: application/pdf}, el año de una campaña con dossier sellado y token autorizado.\newline
\textbf{When} la API recupera el dossier sellado de la campaña.\newline
\textbf{Then} la API responde \texttt{200 OK} con \texttt{Content-Type: application/pdf} y el documento del dossier sellado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta de expediente consolidado y metadatos con hash en campaña cerrada}\newline
\textbf{Given} una solicitud GET con cabecera \texttt{Accept: application/json} para una campaña agrícola concluida y liquidada formalmente.\newline
\textbf{When} la API recupera el agregado del dossier sellado definitivo.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{TechnicalDossierResource} con el resumen de rendimiento, balance de estabilización y la huella digital SHA-256 de integridad documental.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso no autorizado a expediente de parcela ajena}\newline
\textbf{Given} una solicitud emitida por un usuario sin permisos de supervisión técnica ni titularidad sobre la parcela.\newline
\textbf{When} la política de acceso institucional evalúa la pertenencia del predio.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} protegiendo los datos agronómicos del productor.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Campaña sin dossier sellado}\newline
\textbf{Given} una solicitud GET sobre una campaña que no cuenta con un dossier sellado.\newline
\textbf{When} la API busca el dossier.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS29} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el estado territorial consolidado de las parcelas socias mediante GET a \url{/api/v1/member-plots} con parámetros opcionales de geolocalización (\texttt{latitude}, \texttt{longitude}), \textbf{para} presentar el semáforo por mayor gravedad observada y orientar al gestor en campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de matriz territorial con ubicación del gestor}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/member-plots} con parámetros \texttt{latitude} y \texttt{longitude} autorizada con token de \texttt{ROLE\_TECHNICAL\_MANAGER}.\newline
\textbf{When} la API ubica al gestor en el mapa y evalúa los estados de sobrecarga frutal (> 30\%) y riesgo de helada radiativa ($\le 1.5^\circ\text{C}$) en las parcelas vinculadas.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{TerritorialRiskResource} conteniendo la lista de sectores con etiquetas editables, coordenadas de parcelas socias, el sector detectado por proximidad GPS y el semáforo consolidado calculado por mayor gravedad observada (crítico, moderado, óptimo y conteo independiente de \texttt{NO\_DATA}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consulta territorial global sin coordenadas GPS}\newline
\textbf{Given} una solicitud GET sin parámetros de latitud y longitud emitida por un gestor con GPS desactivado.\newline
\textbf{When} la API procesa la consulta para la organización.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando el mapa general y el semáforo macro de todos los sectores con estado \texttt{locationStatus: GLOBAL}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por falta de credenciales de gestor técnico}\newline
\textbf{Given} una petición GET emitida por un usuario no perteneciente al equipo técnico de la cooperativa.\newline
\textbf{When} se evalúa la autorización del solicitante.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS30} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la proyección agregada temprana de acopio a la API mediante GET a \url{/api/v1/intake-forecasts/{campaignYear}} con parámetro de ruta \texttt{campaignYear}, \textbf{para} consolidar únicamente las toneladas respaldadas por parcelas estimables y mostrar el desglose por aptitud comercial (verde para mesa y negra para almazara).} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Proyección agregada basada exclusivamente en parcelas evaluadas}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/intake-forecasts/{campaignYear}} con parámetro de ruta \texttt{campaignYear} y token de gestor técnico.\newline
\textbf{When} la API consolida la producción esperada sumando únicamente las parcelas socias que cuentan con muestreo válido de cuajado, sin aplicar extrapolaciones ni coeficientes arbitrarios de reducción.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{IntakeForecastResource} con \texttt{totalEstimatedTons}, desglose \texttt{greenOlivesTons}, \texttt{blackOlivesTons}, \texttt{unclassifiedTons}, \texttt{sampledPlots}, \texttt{totalPlots} y \texttt{coveragePercentage}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Notificación de cobertura muestral parcial}\newline
\textbf{Given} una cooperativa donde la cobertura de parcelas evaluadas es menor al 60\% del padrón.\newline
\textbf{When} la API calcula la proyección agregada.\newline
\textbf{Then} la API responde \texttt{200 OK} incluyendo \texttt{status: PRELIMINARY} y un indicador de representatividad insuficiente que advierte la necesidad de completar evaluaciones en campo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso no autorizado para usuarios sin rol institucional}\newline
\textbf{Given} una solicitud GET emitida por una cuenta que no posee \texttt{ROLE\_TECHNICAL\_MANAGER} en la entidad.\newline
\textbf{When} el servicio valida los permisos.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS31} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Ingeniero de Plataforma Core} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP13} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Manejo centralizado de excepciones y errores bajo estándar RFC 7807} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} ingeniero de plataforma core, \textbf{quiero} implementar un interceptor global de excepciones en el backend, \textbf{para} garantizar que todas las respuestas de error sigan el estándar RFC 7807 (Problem Details) con códigos HTTP semánticos y sin exponer trazas internas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Intercepción de excepciones de validación y dominio}\newline
\textbf{Given} una solicitud a cualquier endpoint que dispara una excepción de validación o regla de negocio.\newline
\textbf{When} el interceptor centralizado captura la excepción.\newline
\textbf{Then} responde con el código HTTP correspondiente (\texttt{400}, \texttt{404} o \texttt{409}) y cuerpo \texttt{application/problem+json} conteniendo \texttt{type}, \texttt{title}, \texttt{status}, \texttt{detail}, \texttt{instance} y \texttt{timestamp}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Protección ante fallas no controladas}\newline
\textbf{Given} un error interno no previsto en el servidor.\newline
\textbf{When} el interceptor procesa el fallo.\newline
\textbf{Then} responde \texttt{500 Internal Server Error} con un mensaje seguro sin divulgar stacktraces de la base de datos o sistema operativo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS32} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Ingeniero de Plataforma Core} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP13} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} ingeniero de plataforma core, \textbf{quiero} configurar la estrategia de mapeo objeto-relacional en el ORM, \textbf{para} normalizar la conversión automática de propiedades camelCase a snake\_case y persistir tipos geométricos espaciales WGS84 de forma consistente.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Mapeo automático de entidades y convenciones}\newline
\textbf{Given} la capa de persistencia interactuando con el motor relacional.\newline
\textbf{When} se ejecutan las migraciones y consultas del ORM.\newline
\textbf{Then} las tablas son nombradas en plural en minúsculas, las columnas se persisten en formato \texttt{snake\_case} y las claves foráneas mantienen integridad referencial ACID.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Conversión bidireccional de geometrías espaciales}\newline
\textbf{Given} entidades con polígonos o coordenadas de geolocalización.\newline
\textbf{When} se persisten o recuperan desde la base de datos.\newline
\textbf{Then} el ORM serializa y deserializa transparentemente entre tipos espaciales nativos y GeoJSON conforme al elipsoide WGS84.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS33} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Ingeniero de Plataforma Core} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP13} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} ingeniero de plataforma core, \textbf{quiero} integrar el generador de contratos OpenAPI 3.0 en el backend, \textbf{para} exponer una interfaz Swagger UI interactiva y esquemas JSON que documenten exhaustivamente todos los endpoints del sistema.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Exposición de consola Swagger UI}\newline
\textbf{Given} el backend en ejecución.\newline
\textbf{When} un desarrollador accede a \url{/swagger-ui.html}.\newline
\textbf{Then} el sistema presenta la documentación viva interactiva con la totalidad de controladores, modelos de petición/respuesta y autenticación Bearer JWT configurada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Generación del esquema OpenAPI en formato JSON}\newline
\textbf{Given} una solicitud GET a \url{/v3/api-docs}.\newline
\textbf{When} se consulta el endpoint de especificación.\newline
\textbf{Then} la API responde \texttt{200 OK} con el documento OpenAPI 3.0 completo en formato JSON para pruebas automatizadas y generación de SDKs.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS34} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Ingeniero de Plataforma Core} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP15} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} ingeniero de plataforma core, \textbf{quiero} configurar el resolvedor de localización y los catálogos de recursos MessageSource en el backend, \textbf{para} interceptar el encabezado HTTP Accept-Language y entregar mensajes de validación y errores RFC 7807 traducidos en Español o Inglés.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Respuesta localizada en base a la cabecera HTTP}\newline
\textbf{Given} una solicitud a cualquier endpoint de la API con el encabezado \texttt{Accept-Language: en} que dispara una excepción de validación o dominio.\newline
\textbf{When} el interceptor centralizado captura la excepción e invoca el resolvedor de mensajes \texttt{MessageSource}.\newline
\textbf{Then} responde con el código HTTP correspondiente y cuerpo RFC 7807 conteniendo el detalle y descripción traducidos en idioma inglés.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Aplicación del idioma predeterminado ante omisión o valor no soportado}\newline
\textbf{Given} una solicitud HTTP recibida sin encabezado \texttt{Accept-Language} o con un código de idioma no configurado en el backend.\newline
\textbf{When} el interceptor procesa el fallo.\newline
\textbf{Then} el sistema aplica Español (\texttt{es}) como localización por defecto y entrega los mensajes en idioma español.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS35} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Completado inicial de perfil de usuario con validación telefónica} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los datos de perfil y contacto (nombre completo, país y número celular) a la API de perfiles junto con el token JWT de autenticación, \textbf{para} completar el registro de perfil vinculado al usuario y validar el teléfono.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Completado exitoso de perfil de usuario}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/profiles/{userId}} es recibida con el encabezado \texttt{Authorization: Bearer <JWT>} y un cuerpo JSON que contiene: \texttt{fullName}, \texttt{country} y \texttt{phoneNumber}.\newline
\textbf{When} la API extrae el identificador del usuario autenticado (\texttt{userId}), procesa el número telefónico verificando su validez para el país provisto y normalizándolo al formato E.164.\newline
\textbf{Then} la API responde \texttt{200 OK} y retorna \texttt{ProfileResource} con id, userId, fullName, country, phoneNumber normalizado y createdAt.\newline
\textbf{And} persiste el registro de perfil en la base de datos vinculado al usuario.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Número telefónico inválido}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/profiles/{userId}} con un número telefónico que no cumple con el formato o longitud requerida para el país seleccionado.\newline
\textbf{When} la API somete el teléfono a validación internacional.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807 indicando la invalidez del número telefónico.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud no autenticada o token inválido}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/profiles/{userId}} enviada sin la cabecera \texttt{Authorization} o con un token expirado o corrupto.\newline
\textbf{When} el filtro de seguridad intercepta la petición.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized} impidiendo la persistencia del perfil.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS36} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Actualización de contraseña para sesión de usuario autenticado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar la contraseña actual y la nueva contraseña confirmada a la API de autenticación, \textbf{para} que el usuario con sesión activa modifique sus credenciales de acceso de forma segura.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Actualización exitosa de contraseña}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/auth/passwords} con cabecera \texttt{Authorization: Bearer <JWT>} y cuerpo JSON con \texttt{currentPassword}, \texttt{newPassword} y \texttt{confirmPassword}.\newline
\textbf{When} la API valida la identidad del token, verifica que el hash de \texttt{currentPassword} coincida con el almacenado y que \texttt{newPassword} cumpla las políticas de complejidad.\newline
\textbf{Then} la API responde \texttt{204 No Content} y persiste el nuevo hash criptográfico BCrypt.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Contraseña actual incorrecta}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/auth/passwords} con una contraseña actual errónea.\newline
\textbf{When} el servicio de autenticación compara los hashes criptográficos.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807 indicando credencial previa no coincidente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Nueva contraseña no cumple políticas de complejidad}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/auth/passwords} con una nueva clave que no satisface longitud mínima o variedad de caracteres.\newline
\textbf{When} el validador de seguridad procesa la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} detallando la regla de complejidad incumplida.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS37} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Solicitud de código de restablecimiento de contraseña olvidada vía correo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar la dirección de correo del usuario al servicio de recuperación de contraseñas, \textbf{para} que el sistema despache de manera asíncrona un token temporal seguro sin revelar la existencia previa del correo en la base de datos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Solicitud exitosa de restablecimiento}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/password-reset-tokens} con cuerpo JSON conteniendo: \texttt{email}.\newline
\textbf{When} la API valida la sintaxis del correo, genera un token criptográfico unívoco de 6 dígitos con expiración a 15 minutos y encola el evento para despacho seguro de correo.\newline
\textbf{Then} la API responde \texttt{202 Accepted} bajo el patrón de procesamiento asíncrono.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Dirección de correo con formato inválido}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/password-reset-tokens} con una cadena que no conforma un correo electrónico válido.\newline
\textbf{When} el validador sintáctico analiza el cuerpo de la petición.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS38} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Restablecimiento de contraseña mediante token temporal de un solo uso} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar el token temporal recibido por correo y la nueva contraseña a la API, \textbf{para} restablecer el acceso a la cuenta del usuario y revocar el token consumido.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Restablecimiento exitoso de contraseña}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/auth/password-reset-tokens/{token}} con cuerpo JSON conteniendo \texttt{newPassword} y \texttt{confirmPassword}.\newline
\textbf{When} la API valida que el token exista, no haya expirado, no haya sido consumido previamente y aplica el nuevo hash criptográfico BCrypt.\newline
\textbf{Then} la API responde \texttt{204 No Content}, marca el token como CONSUMED y revoca todas las sesiones activas previas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Token expirado, inexistente o consumido previamente}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/auth/password-reset-tokens/{token}} con un token inválido o vencido.\newline
\textbf{When} la API consulta el almacén de tokens temporales.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807 exigiendo reiniciar el flujo de recuperación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Nueva contraseña idéntica a la anterior o sin complejidad}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/auth/password-reset-tokens/{token}} con una clave que coincide con el hash previo o incumple las reglas de seguridad.\newline
\textbf{When} la API valida la política de credenciales.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS39} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Asentamiento formal y balance de liquidación de cosecha de fin de campaña} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar la liquidación formal de cosecha mediante el método POST a \url{/api/v1/plots/{plotId}/harvest-settlements} con parámetro de ruta \texttt{{plotId}} y cuerpo JSON (\texttt{campaignYear}, \texttt{greenOlivesKg}, \texttt{blackOlivesKg}, \texttt{commercialFruitsPerKg}, \texttt{notes}), \textbf{para} asentar la balanza oficial de fin de campaña, computar el balance frente a la prescripción y congelar la curva de estabilización interanual.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Asentamiento exitoso de liquidación de cosecha con balance y estabilización (HTTP 201 Created)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/harvest-settlements} con parámetro de ruta \texttt{plotId} y cuerpo JSON con \texttt{campaignYear}, \texttt{greenOlivesKg}, \texttt{blackOlivesKg}, \texttt{commercialFruitsPerKg} opcional y \texttt{notes}.\newline
\textbf{When} la API valida la titularidad, comprueba que la suma total de kilos sea estrictamente positiva, comprueba que la campaña no haya sido liquidada previamente, computa el balance frente a la prescripción de aclareo (\texttt{thinningBalance}) y calcula la curva de estabilización de vecería (\texttt{stabilization}: índice de Hoblyn y ARR).\newline
\textbf{Then} la API responde \texttt{201 Created}, retorna \texttt{HarvestSettlementResource} con el desglose auditado y publica el evento de dominio \texttt{CampaignHarvestSettledEvent}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parámetros inválidos o inconsistencia en pesajes (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST con kilogramos negativos, total de cosecha igual a cero, año de campaña fuera de rango (2000–2100) o calibre comercial menor o igual a cero.\newline
\textbf{When} el validador de dominio procesa el cuerpo del mensaje.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando los errores de restricción de datos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela no encontrada o inactiva (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST con un identificador \texttt{plotId} inexistente en el contexto de inventario parcelario.\newline
\textbf{When} la API busca el cuartel en el repositorio.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Conflicto por campaña ya liquidada previamente (HTTP 409 Conflict)}\newline
\textbf{Given} una solicitud POST dirigida a un año de campaña agrícola que ya cuenta con una liquidación formal registrada e inmutable para dicha parcela.\newline
\textbf{When} el servicio de aplicación valida la regla de unicidad anual de cierre de campaña.\newline
\textbf{Then} la API responde \texttt{409 Conflict} impidiendo la sobreescritura de los pesajes oficiales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Parcela de otro productor (HTTP 403 Forbidden)}\newline
\textbf{Given} una solicitud POST sobre una parcela que no pertenece al solicitante.\newline
\textbf{When} la API verifica la titularidad.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Clave de idempotencia reutilizada (HTTP 422 Unprocessable Entity)}\newline
\textbf{Given} una solicitud POST con una cabecera \texttt{Idempotency-Key} ya utilizada para otra parcela o campaña.\newline
\textbf{When} la API evalúa la clave.\newline
\textbf{Then} la API responde \texttt{422 Unprocessable Entity}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS40} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Certificación criptográfica colegiada del expediente agronómico inmutable} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} registrar la certificación colegiada del expediente mediante el método POST a \url{/api/v1/plots/{plotId}/certifications} con parámetro de ruta \texttt{{plotId}} y cuerpo JSON (\texttt{campaignYear}, \texttt{auditorSignature}, \texttt{certifiedBy}, \texttt{cipNumber}, \texttt{notes}), \textbf{para} sellar el dossier técnico de la campaña y generar la huella criptográfica SHA-256 inmutable de no repudiación.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Emisión exitosa de certificación colegiada y hash SHA-256 (HTTP 201 Created)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/certifications} con parámetro de ruta \texttt{plotId} y cuerpo JSON con \texttt{campaignYear}, \texttt{auditorSignature}, \texttt{certifiedBy}, \texttt{cipNumber} y \texttt{notes}.\newline
\textbf{When} la API comprueba que la campaña especificada cuenta con liquidación oficial previa, compila el expediente documental y calcula la huella criptográfica SHA-256 inmutable.\newline
\textbf{Then} la API responde \texttt{201 Created}, retorna \texttt{DossierCertificationResource} conteniendo \texttt{certificationId}, \texttt{plotId}, \texttt{campaignYear}, \texttt{verificationHash}, \texttt{auditorSignature}, \texttt{certifiedBy}, \texttt{cipNumber} y \texttt{certifiedAt}, y emite el evento \texttt{AgronomicDossierGeneratedEvent}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Datos de firma o colegiatura inválidos (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST con campos de firma en blanco, número CIP que excede los 20 caracteres o notas mayores a 1000 caracteres.\newline
\textbf{When} la API procesa y valida los atributos del comando.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} detallando las inconsistencias de validación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela no encontrada o inactiva (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST dirigida a un \texttt{plotId} que no existe en el catálogo parcelario.\newline
\textbf{When} la API evalúa la existencia del cuartel.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Precondición incumplida por campaña sin liquidación formal (HTTP 422 Unprocessable Content)}\newline
\textbf{Given} una solicitud POST sobre una campaña agrícola que aún no ha completado su proceso de liquidación oficial de cosecha.\newline
\textbf{When} el servicio de dominio valida las precondiciones de certificación documental.\newline
\textbf{Then} la API responde \texttt{422 Unprocessable Content} indicando la violación de regla de negocio.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Conflicto por expediente previamente certificado (HTTP 409 Conflict)}\newline
\textbf{Given} una solicitud POST sobre una campaña que ya dispone de un expediente colegiado certificado e inmutable.\newline
\textbf{When} el sistema verifica la unicidad de certificación de la campaña.\newline
\textbf{Then} la API responde \texttt{409 Conflict} preservando la no repudiación del expediente.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS41} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Revocación anticipada de código de activación cooperativo y restitución de cuota} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar una solicitud de revocación inmediata para un código de activación disponible mediante POST a \url{/api/v1/invitation-codes/{id}/revocations}, \textbf{para} anular la invitación y restituir de forma atómica la plaza y las hectáreas reservadas al balance de la licencia institucional.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Revocación exitosa y restitución de cupo a la licencia}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/invitation-codes/{id}/revocations} autorizada con token de \texttt{ROLE\_TECHNICAL\_MANAGER}.\newline
\textbf{When} la API verifica que el código pertenece a la cooperativa y se encuentra en estado \texttt{AVAILABLE}.\newline
\textbf{Then} la API responde \texttt{200 OK}, actualiza el estado del código a \texttt{REVOKED}, emite \texttt{InvitationCodeRevokedEvent} y reintegra la plaza y la cuota de hectáreas correspondientes al saldo disponible en \texttt{CooperativeLicense}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código ya canjeado o inactivo}\newline
\textbf{Given} una solicitud POST para un código que ya fue canjeado (\texttt{REDEEMED}) o previamente anulado (\texttt{REVOKED}/\texttt{EXPIRED}).\newline
\textbf{When} la API procesa la regla de ciclo de vida del código.\newline
\textbf{Then} la API responde \texttt{409 Conflict} indicando que no se pueden revocar códigos consumidos o inactivos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Denegación de acceso para usuarios no gestores}\newline
\textbf{Given} una petición POST remitida por un usuario sin rol de gestor técnico en la cooperativa.\newline
\textbf{When} el servicio evalúa la autorización.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS42} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar los parámetros de calibración mediante el método PUT al endpoint \url{/api/v1/plots/{plotId}/iot-devices/{deviceId}} con parámetros de ruta \texttt{{plotId}}, \texttt{{deviceId}} y cabecera \texttt{If-Match}, \textbf{para} ajustar las lecturas telemétricas según las condiciones edafoclimáticas del predio previniendo inconsistencias de concurrencia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Calibración exitosa de sonda IoT con concurrencia optimista (HTTP 200 OK)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}/iot-devices/{deviceId}} con parámetros de ruta \texttt{plotId} y \texttt{deviceId}, cabecera \texttt{If-Match} con el ETag de versión actual y cuerpo JSON con \texttt{multiplier}, \texttt{temperatureOffset}, \texttt{humidityOffset} y \texttt{soilCorrectionFactor}.\newline
\textbf{When} la API valida la titularidad del cuartel, verifica la coincidencia del ETag de versión, comprueba que el dispositivo esté activo y persiste los nuevos coeficientes de calibración.\newline
\textbf{Then} la API responde \texttt{200 OK}, retorna \texttt{IoTDeviceResponse} actualizado y emite una nueva cabecera \texttt{ETag}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parámetros de calibración fuera de rangos admisibles (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud PUT con un multiplicador menor o igual a cero o valores de offset que exceden los límites físicos de medición de la sonda.\newline
\textbf{When} el validador de dominio procesa la carga útil.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando las restricciones físicas violadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Dispositivo o cuartel no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud PUT con un \texttt{plotId} o \texttt{deviceId} inexistente o donde el dispositivo no pertenece a la parcela indicada.\newline
\textbf{When} la API busca el dispositivo en el catálogo telemétrico.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Conflicto de versión por concurrencia optimista (HTTP 412 Precondition Failed)}\newline
\textbf{Given} una solicitud PUT donde el valor de la cabecera \texttt{If-Match} no coincide con la versión actual de la sonda en la base de datos.\newline
\textbf{When} el interceptor de concurrencia detecta una modificación simultánea previa.\newline
\textbf{Then} la API responde \texttt{412 Precondition Failed} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS43} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Rectificación de pesaje de cosecha anual con bloqueo optimista} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar una solicitud de rectificación de pesaje mediante el método PUT a \url{/api/v1/plots/{plotId}/harvest-records/{recordId}} con parámetros de ruta \texttt{{plotId}}, \texttt{{recordId}}, cabecera \texttt{If-Match} y cuerpo JSON (\texttt{rectifiedYieldKg}, \texttt{rectificationReason}), \textbf{para} corregir inconsistencias en pesajes históricos y recomputar reactivamente el Índice de Vecería (BBI).} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Rectificación exitosa de pesaje histórico con recálculo de BBI (HTTP 200 OK)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}/harvest-records/{recordId}} con parámetros de ruta \texttt{plotId} y \texttt{recordId}, cabecera \texttt{If-Match} con la versión actual y cuerpo JSON con \texttt{rectifiedYieldKg} y \texttt{rectificationReason}.\newline
\textbf{When} la API valida la titularidad, verifica que el pesaje sea estrictamente positivo, actualiza la serie histórica fenológica, recálcula reactivamente el Índice de Vecería (BBI) del cuartel y persiste la auditoría de rectificación.\newline
\textbf{Then} la API responde \texttt{200 OK}, retorna \texttt{HarvestRecordResponse} actualizado y emite la cabecera \texttt{ETag} con la versión actualizada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Datos de rectificación inconsistentes o motivo insuficiente (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud PUT con \texttt{rectifiedYieldKg} menor o igual a cero o con un motivo de rectificación ausente o con menos de 10 caracteres.\newline
\textbf{When} el validador procesa el cuerpo de la petición.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Registro de cosecha o cuartel no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud PUT hacia un \texttt{plotId} o \texttt{recordId} inexistente en el repositorio fenológico.\newline
\textbf{When} el servicio consulta la persistencia de cosechas.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Conflicto de concurrencia optimista en rectificación (HTTP 412 Precondition Failed)}\newline
\textbf{Given} una solicitud PUT donde la cabecera \texttt{If-Match} no coincide con la versión actual del registro de cosecha.\newline
\textbf{When} el interceptor detecta colisión de modificaciones concurrentes.\newline
\textbf{Then} la API responde \texttt{412 Precondition Failed} previniendo sobreescrituras desfasadas.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS44} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Restauración de cuartel olivícola archivado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la restauración de una parcela dada de baja mediante el método POST a \url{/api/v1/plots/{plotId}/restore} con parámetro de ruta \texttt{{plotId}}, \textbf{para} reintegrar el cuartel al inventario productivo activo sin pérdida de historial ni geometrías.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Restauración exitosa de cuartel archivado (HTTP 200 OK)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/restore} con parámetro de ruta \texttt{plotId} correspondiente a un cuartel previamente eliminado de manera lógica (\texttt{ARCHIVED}).\newline
\textbf{When} la API valida la titularidad del predio y reactiva el estado operativo del cuartel a \texttt{ACTIVE}.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{PlotResponse} con estado activo y emite una cabecera \texttt{ETag} actualizada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cuartel no encontrado en el sistema (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/restore} con un identificador \texttt{plotId} que no existe en el repositorio.\newline
\textbf{When} la API busca el cuartel en el almacén de datos.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Conflicto por cuartel que ya se encuentra activo (HTTP 409 Conflict)}\newline
\textbf{Given} una solicitud POST dirigida a un cuartel cuyo estado actual ya es \texttt{ACTIVE}.\newline
\textbf{When} el servicio evalúa las transiciones de ciclo de vida del predio.\newline
\textbf{Then} la API responde \texttt{409 Conflict} notificando que el cuartel no se encuentra archivado.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS45} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Eliminación de registro erróneo de cosecha en histórico fenológico} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} eliminar un pesaje de cosecha asentado por error mediante el método DELETE a \url{/api/v1/plots/{plotId}/harvest-records/{recordId}} con parámetros de ruta \texttt{{plotId}} y \texttt{{recordId}}, \textbf{para} purgar datos anómalos del historial y recalcular el Índice de Vecería (BBI) del cuartel.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Eliminación exitosa de registro de cosecha (HTTP 200 OK)}\newline
\textbf{Given} una solicitud DELETE a \url{/api/v1/plots/{plotId}/harvest-records/{recordId}} con parámetros de ruta \texttt{plotId} y \texttt{recordId}.\newline
\textbf{When} la API valida la titularidad del predio, elimina el registro erróneo del histórico plurianual y recomputa reactivamente el balance y el índice BBI del cuartel.\newline
\textbf{Then} la API responde \texttt{200 OK} confirmando la remoción definitiva del registro.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Registro de cosecha o cuartel no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud DELETE con un identificador \texttt{plotId} o \texttt{recordId} inexistente en el repositorio fenológico.\newline
\textbf{When} la API verifica la existencia del registro en la base de datos.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Revisión desactualizada del registro (HTTP 412 Precondition Failed)}\newline
\textbf{Given} una solicitud DELETE con cabecera \texttt{If-Match} que no coincide con la versión actual del registro.\newline
\textbf{When} la API compara la revisión.\newline
\textbf{Then} la API responde \texttt{412 Precondition Failed}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS46} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta global de incidentes agroclimáticos con contadores y filtrado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar la lista general de incidentes mediante el método GET al endpoint \url{/api/v1/agroclimatic-incidents} con parámetros de consulta de estado y paginación, \textbf{para} poblar el centro de alertas de la aplicación móvil y desplegar los contadores de severidad territorial.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta paginada exitosa con contadores de severidad (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/agroclimatic-incidents} con parámetros de consulta opcionales \texttt{activeOnly}, \texttt{status}, \texttt{page} y \texttt{size}.\newline
\textbf{When} la API consulta el contexto de telemetría y evalúa los incidentes de helada, ola de calor y estrés hídrico registrados para las parcelas del usuario.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una lista paginada de \texttt{AgroclimaticIncidentResponse} junto con contadores consolidados por nivel de severidad (\texttt{CRITICAL}, \texttt{WARNING}, \texttt{INFO}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parámetros de consulta con formato inválido (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/agroclimatic-incidents} con un valor no reconocido para \texttt{status} o paginación negativa.\newline
\textbf{When} la capa de transporte valida los parámetros de consulta.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} detallando el error de sintaxis en los parámetros.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS47} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de incidentes agroclimáticos asociados a un cuartel específico} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar los incidentes agroclimáticos de una parcela mediante el método GET a \url{/api/v1/plots/{plotId}/agroclimatic-incidents} con parámetro de ruta \texttt{{plotId}} y filtros de consulta, \textbf{para} desplegar los riesgos agroclimáticos y recomendaciones en la ficha individual del cuartel.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado exitoso de incidentes del cuartel (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/agroclimatic-incidents} con parámetro de ruta \texttt{plotId} y parámetros de consulta opcionales \texttt{activeOnly} y \texttt{status}.\newline
\textbf{When} la API valida la titularidad del cuartel y recupera los eventos de anomalía climática asociados al predio.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una colección de \texttt{AgroclimaticIncidentResponse} con la tipología de riesgo, valores medidos, umbrales y estado de mitigación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cuartel no encontrado en inventario (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/agroclimatic-incidents} con un identificador \texttt{plotId} inexistente.\newline
\textbf{When} el servicio consulta la existencia de la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS48} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el detalle exhaustivo de una alerta mediante el método GET a \url{/api/v1/agroclimatic-incidents/{incidentId}} con parámetro de ruta \texttt{{incidentId}}, \textbf{para} visualizar la serie temporal de la anomalía, el checklist interactivo de mitigación y el diagnóstico agronómico.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta detallada de incidente con checklist y curva histórica (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/agroclimatic-incidents/{incidentId}} con parámetro de ruta \texttt{incidentId}.\newline
\textbf{When} la API valida la existencia del incidente y consolida los datos de telemetría que originaron la alarma junto con las recomendaciones agronómicas.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AgroclimaticIncidentDetailResponse} conteniendo: descripción de la anomalía, serie temporal de tendencia climática, indicador de helada o estrés hídrico y la lista ordenada de pasos de mitigación agronómica con sus respectivos estados (\texttt{PENDING}, \texttt{COMPLETED}).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Incidente no encontrado en el sistema (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET hacia un \texttt{incidentId} inexistente en el catálogo de alertas.\newline
\textbf{When} la API busca el incidente en persistencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS49} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Postergación temporal de notificaciones de incidente agroclimático (Snooze)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} postergar las notificaciones de un incidente mediante el método POST a \url{/api/v1/agroclimatic-incidents/{incidentId}/postponements} con parámetro de ruta \texttt{{incidentId}} y cuerpo JSON (\texttt{snoozeHours}), \textbf{para} silenciar temporalmente los avisos push durante la ventana horaria definida sin resolver la alerta en el lote.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Postergación exitosa de notificaciones del incidente (HTTP 200 OK)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/agroclimatic-incidents/{incidentId}/postponements} con parámetro de ruta \texttt{incidentId} y cuerpo JSON con \texttt{snoozeHours} (entre 1 y 72).\newline
\textbf{When} la API valida el estado del incidente, calcula la marca temporal de expiración del snooze y suspende el despacho de notificaciones push recurrentes hasta dicho momento.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AgroclimaticIncidentResponse} con el estado actualizado a \texttt{SNOOZED} y la fecha de reactivación programada \texttt{snoozeUntil}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Duración de postergación fuera de rango permitido (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST con \texttt{snoozeHours} menor a 1 o mayor a 72 horas.\newline
\textbf{When} la API valida el valor de las horas solicitadas.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando que el tiempo de postergación debe encontrarse entre 1 y 72 horas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Incidente no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/agroclimatic-incidents/{incidentId}/postponements} con un identificador \texttt{incidentId} que no existe.\newline
\textbf{When} el servicio consulta el repositorio de incidentes.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS50} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Completado de paso de mitigación agronómica de incidente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} asentar la ejecución de un paso del protocolo de mitigación mediante el método PUT a \url{/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}} con parámetros de ruta \texttt{{incidentId}} y \texttt{{stepId}}, \textbf{para} registrar las labores de respuesta en campo y actualizar el estado de resolución del incidente.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Completado exitoso de paso y avance del incidente (HTTP 200 OK)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/agroclimatic-incidents/{incidentId}/mitigation-steps/{stepId}} con parámetros de ruta \texttt{incidentId} y \texttt{stepId}, y cuerpo JSON opcional con \texttt{notes}.\newline
\textbf{When} la API valida que el paso pertenezca al incidente, lo marca como \texttt{COMPLETED} con su marca temporal de ejecución y evalúa si todos los pasos han sido concluidos para transicionar el incidente a \texttt{RESOLVED} o mantenerlo en \texttt{IN\_MITIGATION}.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AgroclimaticIncidentDetailResponse} con el paso marcado como completado y el progreso actualizado de la mitigación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Notas de ejecución exceden la longitud permitida (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud POST cuyo campo \texttt{notes} contiene más de 500 caracteres.\newline
\textbf{When} la capa de validación procesa el cuerpo.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} con el mensaje de violación de longitud.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Incidente o paso no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud POST hacia un \texttt{incidentId} o \texttt{stepId} inexistente o cuando el paso no forma parte del incidente referenciado.\newline
\textbf{When} la API realiza la búsqueda en persistencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS51} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de estado global de muestreos de cuarteles (Plot Picker)} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el estado consolidado de muestreos de todos los cuarteles mediante el método GET al endpoint \url{/api/v1/samplings} con parámetro de consulta de campaña, \textbf{para} renderizar el selector de predios (Plot Picker) en la interfaz móvil destacando el avance y suficiencia de cada lote.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de cobertura y estado de muestreo de los cuarteles (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/samplings} con parámetro de consulta opcional \texttt{campaignYear}.\newline
\textbf{When} la API consolida la totalidad de parcelas activas del productor y computa para cada una el avance muestreal, árboles registrados y si se ha alcanzado la suficiencia estadística (≥ 5 árboles).\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una lista de \texttt{PlotSamplingOverviewResponse} optimizada para el selector de parcelas (Plot Picker) en la aplicación móvil.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Formato inválido en año de campaña o filtro de estado (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/samplings} con un año de campaña menor a 2000.\newline
\textbf{When} el controlador procesa los parámetros de consulta.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS52} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de fecha de plena floración observada en cuartel} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} registrar la fecha de plena floración del olivar mediante el método PUT a \url{/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom} con parámetro de ruta \texttt{{plotId}} y cuerpo JSON (\texttt{campaignYear}, \texttt{fullBloomDate}), \textbf{para} calibrar la base cronológica y calcular con precisión la ventana fenológica de aclareo antes del endurecimiento del carozo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Registro exitoso de plena floración y actualización de ventana de aclareo (HTTP 200 OK)}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}/thinning-prescriptions/full-bloom} con parámetro de ruta \texttt{plotId} y cuerpo JSON con \texttt{campaignYear} y \texttt{fullBloomDate} válida.\newline
\textbf{When} la API valida la titularidad, comprueba que la fecha no sea futura y pertenezca al año de la campaña, asienta el hito fenológico y recalcula automáticamente los límites temporales de la ventana de aclareo (\texttt{windowOpensOn} y \texttt{windowClosesOn}) para la prescripción del cuartel.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{ThinningPrescriptionResponse} con las nuevas fechas de apertura y cierre de intervención agronómica.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Fecha de plena floración futura o fuera del año de campaña (HTTP 400 Bad Request)}\newline
\textbf{Given} una solicitud PUT con una fecha \texttt{fullBloomDate} posterior a la fecha actual o que no corresponde al año agrícola de \texttt{campaignYear}.\newline
\textbf{When} la API valida las restricciones cronológicas y biológicas.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} indicando la inconsistencia temporal.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Cuartel no encontrado en el sistema (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud PUT con un identificador \texttt{plotId} inexistente en el inventario.\newline
\textbf{When} el servicio consulta el repositorio parcelario.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS53} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de eventos cronológicos y bitácora agronómica de raleo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar la bitácora histórica de intervenciones de aclareo mediante el método GET a \url{/api/v1/thinning-events} con parámetros de consulta \texttt{plotId} y \texttt{campaignYear}, \textbf{para} visualizar en orden cronológico todos los eventos de muestreo, prescripción y confirmación ejecutados en el predio.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta cronológica exitosa de bitácora de intervenciones (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/thinning-events} con parámetros de consulta opcionales \texttt{plotId} y \texttt{campaignYear}.\newline
\textbf{When} la API recupera la secuencia de eventos de muestreo, cálculo de prescripción, registro de floración y confirmaciones de aclareo ordenados cronológicamente.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una colección de \texttt{ThinningEventResponse} con el tipo de evento, fecha de ocurrencia, actores, datos cuantificados y notas asociadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cuartel no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET con un \texttt{plotId} inexistente.\newline
\textbf{When} la API evalúa la existencia de la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS54} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Listado de liquidaciones oficiales de cosecha por cuartel} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el historial de cierres formales de cosecha mediante el método GET a \url{/api/v1/plots/{plotId}/harvest-settlements} con parámetro de ruta \texttt{{plotId}} y parámetros de consulta de paginación, \textbf{para} desplegar la serie plurianual de pesajes oficiales y balance de entrega en la ficha del cuartel.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado paginado exitoso de liquidaciones de cosecha (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/harvest-settlements} con parámetro de ruta \texttt{plotId} y parámetros de consulta opcionales \texttt{page} y \texttt{size}.\newline
\textbf{When} la API valida la titularidad del predio y recupera el historial de liquidaciones formales de fin de campaña ordenadas descendentemente por año agrícola.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una lista paginada de \texttt{HarvestSettlementResource} con el desglose de kilogramos verdes y negros, total cosechado, calibre comercial registrado y estado de auditoría.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Cuartel no encontrado en inventario (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET con un identificador \texttt{plotId} que no existe en el repositorio parcelario.\newline
\textbf{When} la API busca el cuartel en la base de datos.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS55} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta detallada de liquidación de cosecha por campaña individual} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el comprobante formal de una liquidación específica mediante el método GET a \url{/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}} con parámetros de ruta \texttt{{plotId}} y \texttt{{campaignYear}}, \textbf{para} visualizar el pesaje certificado, el balance frente a la prescripción y el Índice de Reducción de Alternancia (ARR).} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de liquidación de campaña con balance y métricas (HTTP 200 OK)}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/harvest-settlements/{campaignYear}} con parámetros de ruta \texttt{plotId} y \texttt{campaignYear}.\newline
\textbf{When} la API valida la existencia de la liquidación formal para el año agrícola indicado en dicho cuartel.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{HarvestSettlementResource} conteniendo: identidad del reporte, kilogramos recolectados (\texttt{greenOlivesKg} y \texttt{blackOlivesKg}), \texttt{totalYieldKg}, \texttt{commercialFruitsPerKg}, fecha de liquidación, balance de aclareo (\texttt{thinningBalance}) y el estado de la curva de estabilización (\texttt{stabilization} con ARR e índice de alternancia).} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Liquidación de campaña o cuartel no encontrado (HTTP 404 Not Found)}\newline
\textbf{Given} una solicitud GET con un \texttt{plotId} inexistente o para un año de campaña agrícola que no ha sido formalmente liquidado.\newline
\textbf{When} el servicio consulta el almacén de datos de liquidaciones.\newline
\textbf{Then} la API responde \texttt{404 Not Found} bajo el estándar RFC 7807.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS56} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la licencia institucional a cargo del gestor técnico} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar las licencias del gestor técnico autenticado mediante GET a \url{/api/v1/cooperative-licenses}, \textbf{para} determinar si tiene una licencia a su cargo y si esta permanece vigente.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de la licencia del gestor}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/cooperative-licenses} autenticada como gestor técnico.\newline
\textbf{When} la API consulta las licencias a su cargo.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una lista con una licencia como máximo, que indica si permanece vigente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Gestor sin licencia asignada}\newline
\textbf{Given} un gestor técnico que no tiene una licencia a su cargo.\newline
\textbf{When} consulta sus licencias.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando una lista vacía.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin rol de gestor técnico}\newline
\textbf{Given} una solicitud emitida por un usuario que no es gestor técnico.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS57} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de balance de licencia institucional y cuota corporativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar una licencia corporativa mediante GET a \url{/api/v1/cooperative-licenses/{id}}, \textbf{para} presentar el balance de plazas y hectáreas de la cooperativa.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de la licencia}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/cooperative-licenses/{id}} autenticada como gestor técnico sobre una licencia a su cargo.\newline
\textbf{When} la API recupera la licencia.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su información y balance.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Licencia inexistente o ajena}\newline
\textbf{Given} un identificador que no corresponde a una licencia del gestor.\newline
\textbf{When} la API busca la licencia.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin rol de gestor técnico}\newline
\textbf{Given} una solicitud emitida por un usuario que no es gestor técnico.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS58} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de padrón de socios productores agremiados} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el padrón de socios productores de una cooperativa mediante GET a \url{/api/v1/cooperative-members}, \textbf{para} visualizar el directorio de agricultores, sus datos de contacto autorizado y sus parcelas supervisadas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta del directorio de socios vinculados}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/cooperative-members}.\newline
\textbf{When} la API valida los permisos del gestor y recupera los socios afiliados bajo la relación 1:N autorizada.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{PagedMemberListResource} con la lista de productores, teléfono E.164, correo, número de parcelas, superficie total declarada y contadores globales de socios activos y pendientes.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Acceso denegado a datos de socios de otra organización}\newline
\textbf{Given} una petición de detalle con un \texttt{memberId} que no está vinculado a la cooperativa del gestor.\newline
\textbf{When} la política de acceso evalúa la relación gremial.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} preservando la confidencialidad de los agricultores.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS59} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de sectores asignados a las parcelas socias} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar los sectores de las parcelas mediante GET a \url{/api/v1/plot-sector-assignments} con el parámetro opcional \texttt{status}, \textbf{para} agrupar las parcelas por sector e identificar las pendientes de confirmación.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta de sectores por parcela}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plot-sector-assignments} de un gestor técnico o de un socio.\newline
\textbf{When} la API evalúa el alcance del usuario.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando todas las parcelas socias de la licencia para el gestor y solo las propias para el socio.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Estado desconocido}\newline
\textbf{Given} una solicitud con un valor no reconocido en \texttt{status}.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Usuario sin licencia asociada}\newline
\textbf{Given} una solicitud de un usuario que no alcanza ninguna licencia.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS60} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el resumen agronómico de una parcela socia mediante GET a \url{/api/v1/member-plots/{id}}, \textbf{para} presentar al gestor técnico los datos de carga frutal, prescripción vigente y fenología en modo de solo lectura estricto.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de ficha técnica de parcela supervisada}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/member-plots/{id}} con token de gestor técnico.\newline
\textbf{When} la API verifica que la parcela pertenece a un socio vinculado y compila los modelos de muestreo, carga y prescripción vigentes.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{PlotAgronomicOverviewResource} conteniendo: nombre de la parcela, titular, variedad, marco de plantación, estado de sobrecarga frutal, prescripción de aclareo (porcentaje sugerido y frutos por brote), frío acumulado y nivel de riesgo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela con registros agronómicos insuficientes}\newline
\textbf{Given} una parcela socia que aún no ha completado el protocolo de muestreo de cuajado en la campaña activa.\newline
\textbf{When} la API genera el resumen técnico.\newline
\textbf{Then} la API responde \texttt{200 OK} con \texttt{riskLevel: NO\_DATA}, valores de carga y prescripción nulos, y el estado de progreso de muestreo indicando las observaciones pendientes sin simular datos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso no autorizado a parcela no vinculada a la cooperativa}\newline
\textbf{Given} una solicitud sobre un predio cuyo propietario no mantiene vínculo con la cooperativa solicitante.\newline
\textbf{When} la política de acceso institucional valida la relación de supervisión.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS61} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta y suscripción a alertas agroclimáticas y fitosanitarias territoriales internas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar las alertas agroclimáticas y fenológicas internas de la cooperativa mediante GET a \url{/api/v1/sector-alerts}, \textbf{para} desplegar en el centro de avisos del gestor las notificaciones de heladas, estrés hídrico y sobrecarga frutal de sus sectores.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de alertas territoriales activas y recientes}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/sector-alerts} autorizada con token de \texttt{ROLE\_TECHNICAL\_MANAGER}.\newline
\textbf{When} la API recupera los eventos de riesgo procesados para las parcelas socias y estaciones agroclimáticas del valle.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{TerritorialAlertListResource} conteniendo: array de alertas con \texttt{alertId}, tipo (\texttt{FROST\_WARNING}, \texttt{CRITICAL\_OVERLOAD}, \texttt{WATER\_STRESS}), \texttt{sectorId}, \texttt{sectorName}, \texttt{severity}, fecha de emisión y número de predios afectados.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Persistencia del aviso para el gestor independiente del estado silenciado del productor}\newline
\textbf{Given} una alerta de sobrecarga frutal sobre una parcela socia cuyo productor activó la opción de silenciar aviso (\texttt{SNOOZE}) en su aplicación móvil.\newline
\textbf{When} el gestor técnico consulta el endpoint de alertas territoriales de la cooperativa.\newline
\textbf{Then} la API incluye la alerta activa en la respuesta del gestor, garantizando que las preferencias locales del socio no oculten el estado de riesgo ante la supervisión técnica.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Denegación de acceso para solicitantes ajenos a la organización}\newline
\textbf{Given} una petición GET emitida por un usuario sin vinculación con la cooperativa.\newline
\textbf{When} se evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS62} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del histórico de acopio por campaña} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el acopio de cada campaña mediante GET a \url{/api/v1/intake-forecasts}, \textbf{para} comparar la campaña en curso con las cosechas liquidadas de campañas anteriores.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta del acopio por campaña}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/intake-forecasts} autenticada como gestor técnico con licencia vigente.\newline
\textbf{When} la API proyecta la campaña en curso desde las parcelas estimables de los socios que comparten datos y suma las cosechas liquidadas desde su incorporación.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando el acopio de cada campaña.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Gestor sin licencia vigente}\newline
\textbf{Given} una solicitud de un usuario que no es gestor técnico con licencia vigente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS63} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Generación de instantánea documental y metadatos de expediente agronómico provisional en campaña activa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la generación de una instantánea fechada del expediente agronómico en campaña abierta mediante GET a \url{/api/v1/member-plots/{id}/provisional-dossier}, \textbf{para} emitir un documento preliminar con los hechos observados y fecha de corte sin sellos criptográficos prematuros.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación de metadatos de instantánea técnica provisional}\newline
\textbf{Given} una solicitud GET con cabecera \texttt{Accept: application/json} sobre una parcela cuya campaña actual no ha sido liquidada.\newline
\textbf{When} el servicio documental compila la evidencia registrada (datos fenológicos, aclareos registrados y series meteorológicas hasta el instante de la consulta).\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{ProvisionalDossierResource} con \texttt{cutOffTimestamp}, \texttt{campaignYear}, resumen de intervenciones efectuadas, etiqueta explícita \texttt{documentType: PROVISIONAL} y los campos sin datos registrados rotulados como \texttt{NOT\_AVAILABLE}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Solicitud de PDF provisional con marca de corte temporal}\newline
\textbf{Given} una petición GET con cabecera \texttt{Accept: application/pdf}.\newline
\textbf{When} el motor de renderizado procesa la plantilla documental.\newline
\textbf{Then} la API genera y entrega el archivo PDF con marca de agua y encabezado «Expediente Provisional - Fecha de corte», omitiendo cualquier afirmación de certificación externa o hash SHA-256 definitivo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Acceso no autorizado}\newline
\textbf{Given} una solicitud sobre un predio que no pertenece a la cartera de la cooperativa.\newline
\textbf{When} la política de seguridad verifica los derechos de acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS64} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Baja} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Canje de código maestro para activación del gestor técnico} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar el código de activación del gestor mediante POST a \url{/api/v1/manager-code-redemptions}, \textbf{para} asignar al gestor técnico autenticado la responsabilidad de la licencia institucional.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso del código maestro}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/manager-code-redemptions} autenticada como gestor técnico, con \texttt{code} válido.\newline
\textbf{When} la API consume el código y asigna la licencia al gestor, reemplazando al anterior.\newline
\textbf{Then} la API responde \texttt{201 Created}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código no canjeable}\newline
\textbf{Given} un código inexistente, vencido, usado, revocado o asociado a una licencia no vigente.\newline
\textbf{When} la API procesa el canje.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Gestor con licencia vigente}\newline
\textbf{Given} un gestor técnico que ya está a cargo de una licencia vigente.\newline
\textbf{When} envía un código válido.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Usuario sin rol de gestor técnico}\newline
\textbf{Given} una solicitud emitida por un usuario que no es gestor técnico.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Exceso de intentos fallidos}\newline
\textbf{Given} un usuario que acumuló demasiados intentos fallidos.\newline
\textbf{When} envía una nueva solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS65} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Vista previa de código de invitación cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar lo que ofrece un código mediante POST a \url{/api/v1/cooperative-code-previews}, \textbf{para} mostrar al productor las condiciones y el consentimiento antes de canjearlo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Vista previa exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/cooperative-code-previews} autenticada como productor, con \texttt{code} válido.\newline
\textbf{When} la API evalúa el código sin consumirlo.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la organización, el gestor, la cuota, el fin del plan, las hectáreas registradas y la versión del texto de consentimiento.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código no utilizable}\newline
\textbf{Given} un código inexistente, vencido, canjeado o revocado.\newline
\textbf{When} la API evalúa el código.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Productor con suscripción activa}\newline
\textbf{Given} un productor que ya tiene una suscripción activa.\newline
\textbf{When} solicita la vista previa.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud emitida por un usuario que no es productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Exceso de intentos fallidos}\newline
\textbf{Given} un usuario que acumuló demasiados intentos fallidos.\newline
\textbf{When} envía una nueva solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS66} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del catálogo de preguntas por contexto de consulta} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar las preguntas del asistente mediante GET a \url{/api/v1/assistant/questions} con los parámetros \texttt{screen} y \texttt{plotId}, \textbf{para} presentar al productor las preguntas cerradas disponibles con sus cifras reales.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Catálogo de preguntas de una parcela}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/assistant/questions} con token válido de productor con plan activo, con \texttt{screen=ALTERNATION} y el \texttt{plotId} de una parcela propia.\newline
\textbf{When} la API evalúa los datos de la parcela.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{QuestionCatalogResource} con \texttt{screen}, \texttt{plotId} y \texttt{questions} en orden de presentación, cada una con \texttt{questionId}, \texttt{label} localizado según \texttt{Accept-Language}, \texttt{icon}, \texttt{enabled} y \texttt{disabledReason}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Catálogo sobre todo el campo}\newline
\textbf{Given} una solicitud GET con \texttt{screen=HOME} sin \texttt{plotId}.\newline
\textbf{When} la API procesa la solicitud.\newline
\textbf{Then} la API responde \texttt{200 OK} con \texttt{plotId} nulo y las preguntas referidas a todas las parcelas activas del productor.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parámetros inválidos}\newline
\textbf{Given} una solicitud con \texttt{screen} desconocido o ausente, un \texttt{plotId} con formato inválido, o sin \texttt{plotId} en un contexto de parcela.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Acceso denegado o parcela inexistente}\newline
\textbf{Given} una solicitud sobre una parcela ajena, de un productor sin plan activo o sobre una parcela inexistente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} ante parcela ajena o plan inactivo, y \texttt{404 Not Found} cuando la parcela no existe o está inactiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS67} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Solicitud idempotente de respuesta del asistente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar una pregunta del catálogo mediante POST a \url{/api/v1/assistant/answers}, \textbf{para} obtener una respuesta validada contra los datos reales del productor sin duplicarla ante reintentos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación exitosa de respuesta}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/assistant/answers} con token válido de productor con plan activo, con \texttt{questionId}, \texttt{plotId}, \texttt{clientRequestId} y \texttt{forceRefresh}.\newline
\textbf{When} la API obtiene los datos de la parcela y redacta la respuesta.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AssistantAnswerResource} con \texttt{answerId}, \texttt{questionId}, \texttt{question}, \texttt{plotId}, \texttt{createdAt}, \texttt{dataVersion}, \texttt{freshness}, \texttt{text}, exactamente dos \texttt{facts}, \texttt{sources}, \texttt{actions} y \texttt{model}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reintento con la misma clave de idempotencia}\newline
\textbf{Given} una solicitud que repite un \texttt{clientRequestId} ya procesado.\newline
\textbf{When} la API identifica la clave.\newline
\textbf{Then} la API responde \texttt{200 OK} con la misma respuesta guardada, sin generar una nueva.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Pregunta sin datos suficientes}\newline
\textbf{Given} una pregunta del catálogo que no puede responderse con los datos registrados.\newline
\textbf{When} la API evalúa su disponibilidad.\newline
\textbf{Then} la API responde \texttt{409 Conflict} indicando el motivo y no estima valores.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Texto generado rechazado o no disponible}\newline
\textbf{Given} un texto generado con cifras ausentes en los datos de origen o un servicio de redacción no disponible.\newline
\textbf{When} la API valida el resultado.\newline
\textbf{Then} la API responde \texttt{200 OK} con el texto predefinido e indica \texttt{model.fallback} en \texttt{true}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Límite de uso excedido}\newline
\textbf{Given} un productor que superó 20 respuestas nuevas o 5 solicitudes con \texttt{forceRefresh} en 60 minutos.\newline
\textbf{When} envía una nueva solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Solicitud inválida}\newline
\textbf{Given} una solicitud POST con una pregunta desconocida o un identificador con formato inválido.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 7: Acceso denegado o parcela inexistente}\newline
\textbf{Given} una solicitud sobre una parcela ajena, de un productor sin plan activo o sobre una parcela inexistente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} ante parcela ajena o plan inactivo, y \texttt{404 Not Found} cuando la parcela no existe o está inactiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS68} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del historial de respuestas del asistente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el historial mediante GET a \url{/api/v1/assistant/answers} con el parámetro \texttt{limit}, \textbf{para} presentar al productor sus respuestas recientes e indicar su vigencia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de respuestas vigentes}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/assistant/answers} con token válido de productor con plan activo y \texttt{limit=10}.\newline
\textbf{When} la API consulta las respuestas de los últimos 10 días.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AnswerHistoryResource} con \texttt{answers}, de la más reciente a la más antigua, cada una con \texttt{freshness} en \texttt{UP\_TO\_DATE} o \texttt{STALE}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Límite fuera de rango}\newline
\textbf{Given} una solicitud con \texttt{limit} fuera del rango de 1 a 10.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Productor sin plan activo}\newline
\textbf{Given} una solicitud de un productor sin plan activo.\newline
\textbf{When} la API verifica su suscripción.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS69} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la última respuesta de un contexto de consulta} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la última respuesta mediante GET a \url{/api/v1/assistant/answers/latest} con los parámetros \texttt{screen} y \texttt{plotId}, \textbf{para} retomar la respuesta anterior del productor en ese contexto.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Recuperación de la última respuesta}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/assistant/answers/latest} con token válido de productor con plan activo, sobre un contexto con una respuesta de los últimos 10 días.\newline
\textbf{When} la API localiza la respuesta.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AssistantAnswerResource}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Contexto sin respuesta previa}\newline
\textbf{Given} un contexto sin respuestas vigentes para el productor.\newline
\textbf{When} la API realiza la búsqueda.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parámetros inválidos o acceso denegado}\newline
\textbf{Given} una solicitud con \texttt{screen} o \texttt{plotId} inválidos, sobre una parcela ajena o de un productor sin plan activo.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} ante parámetros inválidos y \texttt{403 Forbidden} ante parcela ajena o plan inactivo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS70} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de una respuesta guardada del asistente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar una respuesta mediante GET a \url{/api/v1/assistant/answers/{answerId}}, \textbf{para} abrirla desde el historial con su vigencia actual.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa de la respuesta}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/assistant/answers/{answerId}} con token válido de productor con plan activo, sobre una respuesta propia de los últimos 10 días.\newline
\textbf{When} la API localiza la respuesta y compara sus datos de origen.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AssistantAnswerResource} con su \texttt{freshness} actualizado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Respuesta inexistente o vencida}\newline
\textbf{Given} un identificador sin respuesta vigente para el productor autenticado.\newline
\textbf{When} la API realiza la búsqueda.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Identificador inválido o plan inactivo}\newline
\textbf{Given} un \texttt{answerId} con formato inválido o un productor sin plan activo.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request} ante el formato inválido y \texttt{403 Forbidden} ante el plan inactivo.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS71} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP16} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del resumen diario del asistente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar el resumen mediante GET a \url{/api/v1/assistant/daily-summary} con el parámetro opcional \texttt{plotId}, \textbf{para} presentar al productor las prioridades del día de su campo o de una parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Resumen diario del campo}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/assistant/daily-summary} con token válido de productor con plan activo, sin \texttt{plotId}.\newline
\textbf{When} la API recupera o redacta el resumen del día.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando \texttt{AssistantDailySummaryResource} con \texttt{summaryId}, \texttt{questionId}, \texttt{plotId}, \texttt{createdAt}, \texttt{dataVersion}, \texttt{freshness} en \texttt{UP\_TO\_DATE}, \texttt{text}, exactamente tres \texttt{facts}, \texttt{sources} y \texttt{model}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reutilización del resumen en el mismo día}\newline
\textbf{Given} un resumen escrito en el día, según la hora de Lima, con las mismas cifras e idioma.\newline
\textbf{When} el productor lo solicita nuevamente.\newline
\textbf{Then} la API responde \texttt{200 OK} con el resumen existente, sin consumir el cupo de respuestas nuevas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Productor sin parcelas activas}\newline
\textbf{Given} un productor sin parcelas activas.\newline
\textbf{When} solicita el resumen.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Límite de uso excedido}\newline
\textbf{Given} un resumen que debe redactarse bajo demanda para un productor que agotó su cupo de respuestas nuevas.\newline
\textbf{When} envía la solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Identificador inválido}\newline
\textbf{Given} una solicitud GET con un \texttt{plotId} de formato inválido.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Acceso denegado o parcela inexistente}\newline
\textbf{Given} una solicitud sobre una parcela ajena, de un productor sin plan activo o sobre una parcela inexistente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden} ante parcela ajena o plan inactivo, y \texttt{404 Not Found} cuando la parcela no existe o está inactiva.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS72} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Cierre de sesión del usuario} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} cerrar la sesión mediante POST a \url{/api/v1/auth/sign-out} enviando \texttt{refreshToken}, \textbf{para} impedir que la sesión vuelva a renovarse.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Cierre de sesión}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/sign-out} con un \texttt{refreshToken} válido, desconocido o ya cerrado.\newline
\textbf{When} la API procesa el cierre.\newline
\textbf{Then} la API responde \texttt{204 No Content}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS73} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Eliminación definitiva de la cuenta} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar la eliminación de la cuenta mediante POST a \url{/api/v1/auth/account-deletions} enviando \texttt{password}, \textbf{para} retirar de forma definitiva los datos del usuario autenticado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Eliminación exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/account-deletions} autenticada y con la contraseña correcta.\newline
\textbf{When} la API elimina el perfil, las parcelas y sus registros, liquidaciones, expedientes, suscripciones y sesiones.\newline
\textbf{Then} la API responde \texttt{204 No Content}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Contraseña incorrecta}\newline
\textbf{Given} una solicitud con una contraseña incorrecta.\newline
\textbf{When} la API verifica la contraseña.\newline
\textbf{Then} la API responde \texttt{422 Unprocessable Entity}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS74} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Verificación del correo de la cuenta} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} enviar el código de verificación mediante POST a \url{/api/v1/auth/email-verifications} con \texttt{email} y \texttt{code}, \textbf{para} activar la cuenta y obtener la sesión.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Verificación exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/email-verifications} con el código de 6 dígitos enviado al registrarse.\newline
\textbf{When} la API valida el código.\newline
\textbf{Then} la API activa la cuenta y retorna la sesión del usuario.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código incorrecto}\newline
\textbf{Given} una solicitud con un código incorrecto.\newline
\textbf{When} la API valida el código.\newline
\textbf{Then} la API responde \texttt{422 Unprocessable Entity} indicando los intentos restantes.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS75} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Reenvío del código de verificación de correo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar un nuevo código mediante POST a \url{/api/v1/auth/email-verification-codes} con \texttt{email}, \textbf{para} completar la activación de una cuenta pendiente.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Solicitud de reenvío aceptada}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/auth/email-verification-codes} con un correo pendiente, desconocido o ya verificado.\newline
\textbf{When} la API procesa la solicitud.\newline
\textbf{Then} la API responde \texttt{202 Accepted} sin revelar si el correo existe.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reenvío antes de tiempo}\newline
\textbf{Given} una nueva solicitud realizada dentro de los 45 segundos posteriores a la anterior.\newline
\textbf{When} la API evalúa el intervalo.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS76} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Verificación de vigencia del enlace de restablecimiento de contraseña} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} comprobar un enlace mediante GET a \url{/api/v1/auth/password-reset-tokens/{token}}, \textbf{para} saber si puede utilizarse sin consumirlo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Enlace vigente}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/auth/password-reset-tokens/{token}} con un enlace utilizable.\newline
\textbf{When} la API valida el enlace sin consumirlo.\newline
\textbf{Then} la API responde \texttt{204 No Content}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Enlace no disponible}\newline
\textbf{Given} un enlace vencido, usado o reemplazado.\newline
\textbf{When} la API valida el enlace.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS77} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de planes de suscripción individual} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar los planes mediante GET a \url{/api/v1/subscription-plans}, \textbf{para} presentar al productor las opciones de suscripción disponibles.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de planes}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/subscription-plans}.\newline
\textbf{When} la API consulta el catálogo de planes individuales.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando los planes disponibles.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS78} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la suscripción actual del productor} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar la suscripción actual mediante GET a \url{/api/v1/subscriptions}, \textbf{para} conocer el estado del plan del productor autenticado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Productor con suscripción}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/subscriptions} de un productor con suscripción vigente.\newline
\textbf{When} la API recupera la suscripción.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su detalle.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Productor sin suscripción}\newline
\textbf{Given} un productor sin suscripción actual.\newline
\textbf{When} consulta su suscripción.\newline
\textbf{Then} la API responde \texttt{204 No Content}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS79} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de una suscripción del productor} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar una suscripción mediante GET a \url{/api/v1/subscriptions/{id}}, \textbf{para} recuperar el detalle de un plan propio.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/subscriptions/{id}} sobre una suscripción propia.\newline
\textbf{When} la API recupera la suscripción.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su detalle.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Suscripción no disponible}\newline
\textbf{Given} un identificador que no corresponde a una suscripción del productor.\newline
\textbf{When} la API busca la suscripción.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS80} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Preparación del pago de una suscripción} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} preparar o recuperar el pago mediante POST a \url{/api/v1/subscriptions/{id}/checkouts} con la cabecera \texttt{Idempotency-Key}, \textbf{para} permitir que el productor complete el pago de su plan sin duplicar la operación.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Preparación del pago}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/subscriptions/{id}/checkouts} sobre una suscripción propia pendiente de pago.\newline
\textbf{When} la API prepara o recupera el pago.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando los datos para completarlo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Suscripción no disponible}\newline
\textbf{Given} un identificador que no corresponde a una suscripción del productor.\newline
\textbf{When} la API busca la suscripción.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Clave de idempotencia en conflicto}\newline
\textbf{Given} una clave ya utilizada en una operación incompatible.\newline
\textbf{When} la API evalúa la clave.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS81} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de condiciones de ampliación del plan} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar las condiciones mediante GET a \url{/api/v1/subscriptions/{subscriptionId}/extension-terms}, \textbf{para} informar al productor cómo puede ampliar su plan.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/subscriptions/{subscriptionId}/extension-terms} sobre un plan propio.\newline
\textbf{When} la API evalúa el plan.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando las condiciones de ampliación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Plan no disponible}\newline
\textbf{Given} un plan que no corresponde al productor.\newline
\textbf{When} la API busca el plan.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS82} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Solicitud de ampliación pagada del plan individual} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} solicitar una ampliación mediante POST a \url{/api/v1/subscriptions/{subscriptionId}/extensions} con \texttt{addedHa} y la cabecera \texttt{Idempotency-Key}, \textbf{para} agregar hectáreas al plan individual del productor.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Ampliación solicitada}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/subscriptions/{subscriptionId}/extensions} válida sobre un plan propio.\newline
\textbf{When} la API registra la ampliación pendiente de pago.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando la ampliación.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reintento idempotente}\newline
\textbf{Given} una solicitud que repite una \texttt{Idempotency-Key} ya procesada.\newline
\textbf{When} la API identifica la clave.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la ampliación existente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Datos inválidos}\newline
\textbf{Given} una solicitud con hectáreas inválidas.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Operación en conflicto}\newline
\textbf{Given} una ampliación incompatible con el estado actual del plan.\newline
\textbf{When} la API evalúa la solicitud.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS83} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de una ampliación del plan} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar una ampliación mediante GET a \url{/api/v1/subscriptions/{subscriptionId}/extensions/{extensionId}}, \textbf{para} conocer su estado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/subscriptions/{subscriptionId}/extensions/{extensionId}} sobre una ampliación propia.\newline
\textbf{When} la API recupera la ampliación.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su detalle.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Ampliación no disponible}\newline
\textbf{Given} una ampliación que no corresponde al plan del productor.\newline
\textbf{When} la API busca la ampliación.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS84} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Preparación del pago de una ampliación} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} preparar o recuperar el pago mediante POST a \url{/api/v1/subscriptions/{subscriptionId}/extensions/{extensionId}/checkouts} con la cabecera \texttt{Idempotency-Key}, \textbf{para} completar el pago de una ampliación pendiente sin duplicar la operación.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Preparación del pago}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/subscriptions/{subscriptionId}/extensions/{extensionId}/checkouts} sobre una ampliación pendiente.\newline
\textbf{When} la API prepara o recupera el pago.\newline
\textbf{Then} la API responde \texttt{201 Created} retornando los datos para completarlo.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Ampliación no disponible}\newline
\textbf{Given} una ampliación que no corresponde al plan del productor.\newline
\textbf{When} la API busca la ampliación.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS85} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Canje de código de ampliación de hectáreas} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} canjear un código mediante POST a \url{/api/v1/quota-extension-redemptions} con \texttt{code}, \textbf{para} agregar hectáreas al plan patrocinado vigente del productor.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/quota-extension-redemptions} autenticada como productor con un código válido.\newline
\textbf{When} la API agrega las hectáreas al plan, una vez por productor, mientras la licencia tenga saldo.\newline
\textbf{Then} la API responde \texttt{201 Created}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Código no utilizable}\newline
\textbf{Given} un código que no puede utilizarse.\newline
\textbf{When} la API evalúa el código.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud emitida por un usuario que no es productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Exceso de intentos fallidos}\newline
\textbf{Given} un usuario que acumuló demasiados intentos fallidos.\newline
\textbf{When} envía una nueva solicitud.\newline
\textbf{Then} la API responde \texttt{429 Too Many Requests} con la cabecera \texttt{Retry-After}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS86} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Desvinculación de socio de la licencia institucional} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} desvincular a un socio mediante POST a \url{/api/v1/cooperative-licenses/{id}/member-releases} con \texttt{memberId}, \textbf{para} retirar el acceso del gestor a los datos del socio y liberar su cupo al terminar el periodo de gracia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Desvinculación exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/cooperative-licenses/{id}/member-releases} autenticada como gestor técnico sobre un socio de su licencia.\newline
\textbf{When} la API registra la desvinculación.\newline
\textbf{Then} la API responde \texttt{200 OK}. El gestor deja de acceder a los datos del socio de inmediato} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Socio inválido}\newline
\textbf{Given} un \texttt{memberId} inválido.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Licencia o socio no encontrados}\newline
\textbf{Given} una licencia ajena o un usuario que no es socio de la licencia.\newline
\textbf{When} la API busca el socio.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Socio ya desvinculado}\newline
\textbf{Given} un socio previamente desvinculado.\newline
\textbf{When} la API evalúa su estado.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Usuario sin rol de gestor técnico}\newline
\textbf{Given} una solicitud emitida por un usuario que no es gestor técnico.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS87} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de consentimientos de compartición de datos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar los consentimientos mediante GET a \url{/api/v1/data-sharing-consents}, \textbf{para} mostrar al productor con quién comparte sus datos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de consentimientos}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/data-sharing-consents} autenticada como productor.\newline
\textbf{When} la API recupera sus consentimientos.\newline
\textbf{Then} la API responde \texttt{200 OK} indicando para cada uno la organización, el gestor y su estado.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud emitida por un usuario que no es productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS88} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de un consentimiento de compartición de datos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar un consentimiento mediante GET a \url{/api/v1/data-sharing-consents/{id}}, \textbf{para} revisar el detalle de una autorización propia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/data-sharing-consents/{id}} sobre un consentimiento propio.\newline
\textbf{When} la API lo recupera.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consentimiento no disponible}\newline
\textbf{Given} un identificador que no corresponde a un consentimiento del productor.\newline
\textbf{When} la API lo busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud emitida por un usuario que no es productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS89} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Retiro del consentimiento de compartición de datos} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} retirar un consentimiento mediante POST a \url{/api/v1/data-sharing-consents/{id}/withdrawals}, \textbf{para} dejar de compartir los datos con la cooperativa.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Retiro exitoso}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/data-sharing-consents/{id}/withdrawals} sobre un consentimiento activo.\newline
\textbf{When} la API registra el retiro.\newline
\textbf{Then} la API responde \texttt{200 OK}. El gestor deja de acceder a los datos, y el plan patrocinado se mantiene hasta su fin} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Consentimiento no disponible}\newline
\textbf{Given} un identificador que no corresponde a un consentimiento del productor.\newline
\textbf{When} la API lo busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Consentimiento no activo}\newline
\textbf{Given} un consentimiento retirado o finalizado con su plan.\newline
\textbf{When} la API evalúa su estado.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Usuario sin rol de productor}\newline
\textbf{Given} una solicitud emitida por un usuario que no es productor.\newline
\textbf{When} la API verifica el rol.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS90} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de nota de campo de una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} registrar una nota mediante POST a \url{/api/v1/plots/{plotId}/field-notes} con \texttt{id}, \texttt{type}, \texttt{text} y \texttt{observedOn}, \textbf{para} conservar las observaciones del productor sin duplicarlas al reintentar.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Nota registrada}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/field-notes} válida sobre una parcela activa propia.\newline
\textbf{When} la API guarda la nota.\newline
\textbf{Then} la API responde \texttt{201 Created}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Reintento de la misma nota}\newline
\textbf{Given} una nota ya almacenada que se envía nuevamente.\newline
\textbf{When} la API identifica la nota.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la nota almacenada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Datos inválidos}\newline
\textbf{Given} un identificador, tipo o texto inválido, o una fecha futura.\newline
\textbf{When} la API valida la nota.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Identificador en uso}\newline
\textbf{Given} un identificador usado por otra nota.\newline
\textbf{When} la API valida el identificador.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Parcela de otro productor}\newline
\textbf{Given} una solicitud sobre una parcela de otro productor.\newline
\textbf{When} la API verifica la titularidad.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Parcela inexistente o inactiva}\newline
\textbf{Given} un identificador de parcela inexistente o inactiva.\newline
\textbf{When} la API busca la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS91} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de notas de campo de una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} listar las notas mediante GET a \url{/api/v1/plots/{plotId}/field-notes}, \textbf{para} revisar las observaciones registradas en la parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de notas}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/field-notes} sobre una parcela propia.\newline
\textbf{When} la API recupera las notas.\newline
\textbf{Then} la API responde \texttt{200 OK} retornándolas de la más reciente a la más antigua, o una lista vacía.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela de otro productor}\newline
\textbf{Given} una solicitud sobre una parcela de otro productor.\newline
\textbf{When} la API verifica la titularidad.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela no encontrada}\newline
\textbf{Given} un identificador de parcela inexistente.\newline
\textbf{When} la API busca la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS92} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Adjunto de fotografía a una nota de campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} adjuntar una fotografía mediante PUT a \url{/api/v1/plots/{plotId}/field-notes/{noteId}/photo}, \textbf{para} documentar visualmente una observación de campo.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Fotografía almacenada}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plots/{plotId}/field-notes/{noteId}/photo} con una imagen JPEG o PNG de hasta 1 MiB.\newline
\textbf{When} la API guarda la imagen y reemplaza la anterior.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la nota.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Imagen inválida}\newline
\textbf{Given} un contenido vacío, demasiado grande o que no es JPEG ni PNG.\newline
\textbf{When} la API valida la imagen.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela o nota no encontrada}\newline
\textbf{Given} una parcela o nota inexistente.\newline
\textbf{When} la API las busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS93} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Descarga de la fotografía de una nota de campo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} descargar una fotografía mediante GET a \url{/api/v1/plots/{plotId}/field-notes/{noteId}/photo}, \textbf{para} visualizar la evidencia registrada.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Descarga exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/field-notes/{noteId}/photo} sobre una nota con fotografía.\newline
\textbf{When} la API recupera la imagen.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su contenido.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Fotografía no disponible}\newline
\textbf{Given} una parcela o nota inexistente, o una nota sin fotografía.\newline
\textbf{When} la API busca la imagen.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS94} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de sectores territoriales de la licencia} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} listar los sectores mediante GET a \url{/api/v1/sector-zones}, \textbf{para} organizar las parcelas de la cooperativa por sector.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de sectores}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/sector-zones} de un gestor con licencia o de un socio con plan patrocinado.\newline
\textbf{When} la API recupera los sectores de su licencia.\newline
\textbf{Then} la API responde \texttt{200 OK} indicando las parcelas socias de cada sector.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Usuario sin licencia asociada}\newline
\textbf{Given} un gestor sin licencia vigente o un productor sin plan patrocinado.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS95} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de sector territorial} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} agregar un sector mediante POST a \url{/api/v1/sector-zones} con \texttt{name}, \textbf{para} ampliar la lista de sectores disponible para la licencia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Sector agregado}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/sector-zones} autenticada como gestor técnico con licencia vigente.\newline
\textbf{When} la API registra el sector.\newline
\textbf{Then} la API responde \texttt{201 Created}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Nombre inválido}\newline
\textbf{Given} un nombre vacío, demasiado corto o demasiado largo.\newline
\textbf{When} la API valida el nombre.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Nombre repetido}\newline
\textbf{Given} un nombre ya existente en la lista, sin distinguir tildes ni mayúsculas.\newline
\textbf{When} la API valida la unicidad.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Gestor sin licencia vigente}\newline
\textbf{Given} una solicitud de un usuario que no es gestor técnico con licencia vigente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS96} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de un sector territorial} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar un sector mediante GET a \url{/api/v1/sector-zones/{id}}, \textbf{para} recuperar su información.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/sector-zones/{id}} sobre un sector de la licencia.\newline
\textbf{When} la API recupera el sector.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Sector no encontrado}\newline
\textbf{Given} un identificador que no corresponde a un sector de la licencia.\newline
\textbf{When} la API lo busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin licencia asociada}\newline
\textbf{Given} un usuario que no alcanza ninguna licencia.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS97} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Renombrado de sector territorial} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} renombrar un sector mediante PATCH a \url{/api/v1/sector-zones/{id}} con \texttt{name}, \textbf{para} que todas sus parcelas muestren el nombre actualizado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Sector renombrado}\newline
\textbf{Given} una solicitud PATCH a \url{/api/v1/sector-zones/{id}} autenticada como gestor técnico con licencia vigente.\newline
\textbf{When} la API actualiza el nombre.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Nombre inválido}\newline
\textbf{Given} un nombre vacío, demasiado corto o demasiado largo.\newline
\textbf{When} la API valida el nombre.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Sector no encontrado}\newline
\textbf{Given} un identificador que no corresponde a un sector de la licencia.\newline
\textbf{When} la API lo busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Nombre repetido}\newline
\textbf{Given} un nombre usado por otro sector.\newline
\textbf{When} la API valida la unicidad.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Gestor sin licencia vigente}\newline
\textbf{Given} una solicitud de un usuario que no es gestor técnico con licencia vigente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS98} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del sector de una parcela socia} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar el sector mediante GET a \url{/api/v1/plot-sector-assignments/{plotId}}, \textbf{para} conocer la ubicación territorial de la parcela.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plot-sector-assignments/{plotId}} sobre una parcela alcanzada por el usuario.\newline
\textbf{When} la API recupera su sector.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela sin sector o fuera de alcance}\newline
\textbf{Given} una parcela sin sector o que el usuario no alcanza.\newline
\textbf{When} la API busca el sector.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Usuario sin licencia asociada}\newline
\textbf{Given} un usuario que no alcanza ninguna licencia.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS99} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Asignación de sector a una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} asignar un sector mediante PUT a \url{/api/v1/plot-sector-assignments/{plotId}} con \texttt{sectorZoneId} o \texttt{name}, \textbf{para} agrupar la parcela dentro de la organización territorial.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Sector asignado}\newline
\textbf{Given} una solicitud PUT a \url{/api/v1/plot-sector-assignments/{plotId}} con un sector de la lista o con un nombre que coincide con ella.\newline
\textbf{When} la API asigna el sector.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Nombre pendiente de confirmación}\newline
\textbf{Given} un nombre que no coincide con ningún sector de la lista.\newline
\textbf{When} la API procesa la asignación.\newline
\textbf{Then} la API responde \texttt{200 OK}. La parcela queda por confirmar hasta que el gestor la revise} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Datos inválidos}\newline
\textbf{Given} una solicitud sin ambos campos, con ambos o con un nombre inválido.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Productor sin plan patrocinado}\newline
\textbf{Given} un productor sin plan patrocinado.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Parcela o sector no encontrado}\newline
\textbf{Given} una parcela que no es activa del socio o un sector ajeno a la licencia.\newline
\textbf{When} la API los busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS100} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP11} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Revisión de sector pendiente de confirmación} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} resolver un sector pendiente mediante POST a \url{/api/v1/plot-sector-assignments/{plotId}/resolutions}, \textbf{para} consolidar la lista de sectores de la licencia.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Revisión exitosa}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plot-sector-assignments/{plotId}/resolutions} autenticada como gestor técnico sobre una parcela por confirmar.\newline
\textbf{When} la API agrega el nombre a la lista o vincula la parcela a un sector existente, y aplica la decisión a las parcelas con el mismo nombre.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela o sector no encontrado}\newline
\textbf{Given} una parcela o sector ajeno a la licencia.\newline
\textbf{When} la API los busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela ya revisada}\newline
\textbf{Given} una parcela que ya no está por confirmar.\newline
\textbf{When} la API evalúa su estado.\newline
\textbf{Then} la API responde \texttt{409 Conflict}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Gestor sin licencia vigente}\newline
\textbf{Given} una solicitud de un usuario que no es gestor técnico con licencia vigente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS101} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Sellado del expediente agronómico de una campaña liquidada} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} sellar el expediente mediante POST a \url{/api/v1/plots/{plotId}/agronomic-dossiers} con \texttt{campaignYear}, \textbf{para} conservar un documento definitivo verificable de la campaña.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Expediente sellado}\newline
\textbf{Given} una solicitud POST a \url{/api/v1/plots/{plotId}/agronomic-dossiers} sobre una campaña liquidada de una parcela propia.\newline
\textbf{When} la API reúne los datos de la campaña, genera el documento y almacena su huella SHA-256.\newline
\textbf{Then} la API responde \texttt{201 Created}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Expediente ya sellado}\newline
\textbf{Given} una campaña que ya cuenta con expediente.\newline
\textbf{When} se solicita sellarla nuevamente.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando el expediente existente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Parcela o campaña inválida}\newline
\textbf{Given} un identificador de parcela o una campaña inválidos.\newline
\textbf{When} la API valida la solicitud.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Parcela de otro productor}\newline
\textbf{Given} una solicitud sobre una parcela de otro productor.\newline
\textbf{When} la API verifica la titularidad.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Parcela inexistente o inactiva}\newline
\textbf{Given} un identificador de parcela inexistente o inactiva.\newline
\textbf{When} la API busca la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 6: Campaña sin liquidar}\newline
\textbf{Given} una campaña que no ha sido liquidada.\newline
\textbf{When} la API evalúa la campaña.\newline
\textbf{Then} la API responde \texttt{422 Unprocessable Entity}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS102} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de expedientes sellados de una parcela} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} listar los expedientes mediante GET a \url{/api/v1/plots/{plotId}/agronomic-dossiers}, \textbf{para} revisar los documentos definitivos por campaña.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de expedientes}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/plots/{plotId}/agronomic-dossiers} sobre una parcela activa.\newline
\textbf{When} la API recupera los expedientes.\newline
\textbf{Then} la API responde \texttt{200 OK} retornándolos desde la campaña más reciente, o una lista vacía.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Parcela inexistente o inactiva}\newline
\textbf{Given} un identificador de parcela inexistente o inactiva.\newline
\textbf{When} la API busca la parcela.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS103} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Verificación de autenticidad de un expediente} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} verificar un expediente mediante GET a \url{/api/v1/agronomic-dossiers/verifications/{verificationHash}}, \textbf{para} comprobar que el documento fue emitido por Viora y no fue modificado.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Código válido}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/agronomic-dossiers/verifications/{verificationHash}} con una huella que coincide con un expediente almacenado.\newline
\textbf{When} la API busca la huella.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando la parcela y la campaña.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Formato inválido}\newline
\textbf{Given} un código que no tiene 64 caracteres hexadecimales.\newline
\textbf{When} la API valida el código.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Código sin coincidencia}\newline
\textbf{Given} una huella que no coincide con ningún expediente.\newline
\textbf{When} la API busca la huella.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS104} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de prescripciones de aclareo del productor} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} listar las prescripciones mediante GET a \url{/api/v1/thinning-prescriptions} con el parámetro opcional \texttt{campaignYear}, \textbf{para} revisar el estado de aclareo de todas las parcelas activas.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Listado de prescripciones}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/thinning-prescriptions} de un productor.\newline
\textbf{When} la API recupera la prescripción de cada parcela activa de la campaña.\newline
\textbf{Then} la API responde \texttt{200 OK} sin incluir las parcelas nunca muestreadas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Año de campaña inválido}\newline
\textbf{Given} un valor inválido en \texttt{campaignYear}.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS105} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de una prescripción de aclareo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar una prescripción mediante GET a \url{/api/v1/thinning-prescriptions/{id}}, \textbf{para} recuperarla en cualquiera de sus estados.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/thinning-prescriptions/{id}} sobre una prescripción propia.\newline
\textbf{When} la API la recupera.\newline
\textbf{Then} la API responde \texttt{200 OK}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Identificador inválido}\newline
\textbf{Given} un identificador con formato inválido.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Prescripción de otro productor}\newline
\textbf{Given} una prescripción de otro productor.\newline
\textbf{When} la API verifica la titularidad.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Prescripción no encontrada}\newline
\textbf{Given} una prescripción inexistente o de una parcela inactiva.\newline
\textbf{When} la API la busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS106} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP12} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta de la ejecución registrada de un aclareo} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar la ejecución mediante GET a \url{/api/v1/thinning-prescriptions/{id}/execution-confirmations}, \textbf{para} revisar su balance de carga, proyección de calibre y rendimiento.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/thinning-prescriptions/{id}/execution-confirmations} sobre una labor registrada.\newline
\textbf{When} la API recupera la ejecución.\newline
\textbf{Then} la API responde \texttt{200 OK} retornando su balance de carga, proyección de calibre y rendimiento.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Identificador inválido}\newline
\textbf{Given} un identificador con formato inválido.\newline
\textbf{When} la API valida el parámetro.\newline
\textbf{Then} la API responde \texttt{400 Bad Request}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Ejecución no disponible}\newline
\textbf{Given} una prescripción inexistente o sin labor registrada.\newline
\textbf{When} la API la busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{TS107} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Desarrollador de Aplicaciones Cliente} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Media} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP10} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Consulta del detalle de socio productor agremiado} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} desarrollador de aplicaciones cliente, \textbf{quiero} consultar un socio mediante GET a \url{/api/v1/cooperative-members/{id}}, \textbf{para} revisar su ficha mientras comparte sus datos.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Consulta exitosa}\newline
\textbf{Given} una solicitud GET a \url{/api/v1/cooperative-members/{id}} autenticada como gestor técnico sobre un socio de su licencia.\newline
\textbf{When} la API recupera el socio.\newline
\textbf{Then} la API responde \texttt{200 OK} incluyendo teléfono, correo y parcelas solo mientras comparte sus datos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Socio no encontrado}\newline
\textbf{Given} un identificador que no corresponde a un socio de la licencia.\newline
\textbf{When} la API lo busca.\newline
\textbf{Then} la API responde \texttt{404 Not Found}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Solicitud sin autenticación}\newline
\textbf{Given} una solicitud sin token de acceso válido.\newline
\textbf{When} la API evalúa la identidad del solicitante.\newline
\textbf{Then} la API responde \texttt{401 Unauthorized}.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Gestor sin licencia vigente}\newline
\textbf{Given} una solicitud de un usuario que no es gestor técnico con licencia vigente.\newline
\textbf{When} la API verifica el acceso.\newline
\textbf{Then} la API responde \texttt{403 Forbidden}.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}



\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{SPK01} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Equipo de Desarrollo de Backend} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP14} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Investigación y modelado dinámico de Erez para cálculo de frío en backend} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} equipo de desarrollo de backend, \textbf{queremos} implementar un prototipo computacional del modelo dinámico de Erez en nuestro backend Spring Boot Java para la Plataforma Viora, \textbf{para} validar la viabilidad matemática de procesar series horarias de temperatura y calibrar el umbral invernal del olivo antes de su integración definitiva en los servicios RESTful.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Ejecución del algoritmo dinámico de dos etapas}\newline
\textbf{Given} series sintéticas de temperatura horaria correspondientes a los meses de reposo invernal.\newline
\textbf{When} el algoritmo procesa las fluctuaciones térmicas acumulando intermediarios termolábiles y porciones de frío fijadas.\newline
\textbf{Then} el prototipo computa con exactitud las porciones de frío de Erez contrastándolas contra el umbral agronómico de 25 a 30 porciones.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Informe de viabilidad y código reproducible}\newline
\textbf{Given} la conclusión de los ensayos de cálculo.\newline
\textbf{When} se evalúa el rendimiento computacional del algoritmo en el backend.\newline
\textbf{Then} el equipo emite un informe técnico de viabilidad y consolida la función matemática en el módulo de dominio del backend.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{SPK02} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Equipo de Desarrollo Móvil} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP14} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Investigación de persistencia local SQLite y protocolo offline-first} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} equipo de desarrollo móvil, \textbf{queremos} construir un prototipo de persistencia local en SQLite (Room / sqflite) para nuestras aplicaciones móviles Android (Kotlin) y Cross-Platform (Flutter) de la Plataforma Viora, \textbf{para} verificar la operatividad offline del muestreo a pie de árbol y comprobar la sincronización bidireccional idempotente con el backend.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Registro y almacenamiento local en modo desconectado}\newline
\textbf{Given} el prototipo móvil funcionando en un entorno simulado sin conexión a internet.\newline
\textbf{When} el usuario registra conteos de muestreo de frutos y brotes a pie de árbol.\newline
\textbf{Then} los datos se persisten de manera inmediata en la base de datos local SQLite y se encolan para su despacho.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Sincronización automática idempotente al recuperar red}\newline
\textbf{Given} un lote de registros pendientes en la cola local de SQLite.\newline
\textbf{When} se restablece la conectividad celular o Wi-Fi.\newline
\textbf{Then} el prototipo despacha los registros al backend y actualiza los identificadores remotos sin duplicar información.} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{SPK03} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Equipo de Desarrollo (Móvil y Backend)} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP14} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} equipo de desarrollo (móvil y backend),\newline \textbf{queremos} investigar y prototipar la integración de Mercado Pago Checkout Pro (Sandbox) y webhooks en nuestras aplicaciones móviles Android (Kotlin) / Flutter y backend Spring Boot Java para la Plataforma Viora,\newline \textbf{para} que podamos entender las implicaciones técnicas, riesgos potenciales de transacción y esfuerzo requerido para la implementación completa en los componentes móvil y backend.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Compatibilidad del backend y generación de preferencia Checkout Pro}\newline
\textbf{Given} el backend Spring Boot Java configurado con credenciales de prueba de Mercado Pago Sandbox.\newline
\textbf{When} el backend procesa una solicitud de suscripción en Soles (PEN) invocando el SDK oficial.\newline
\textbf{Then} genera la preferencia con éxito, retornando el enlace \texttt{init\_point} de Checkout Pro sin capturar datos sensibles de tarjetas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Integración del flujo de pago en la aplicación móvil}\newline
\textbf{Given} la aplicación móvil (Android Kotlin / Flutter) interactuando con el backend de Viora.\newline
\textbf{When} el usuario inicia el pago de su suscripción y la app móvil recibe el identificador \texttt{init\_point} desde el backend.\newline
\textbf{Then} la aplicación móvil abre de manera segura la pasarela de Checkout Pro mediante Custom Tabs o Deep Linking, permitiendo el abono en Soles (PEN) y retornando el control a la app tras la transacción.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Integración y verificación asíncrona de webhooks en el backend}\newline
\textbf{Given} una notificación asíncrona de pago enviada por el simulador de Mercado Pago Sandbox al endpoint \url{/api/v1/webhooks/payment}.\newline
\textbf{When} el backend Spring Boot verifica el encabezado criptográfico \texttt{x-signature} y valida el estado aprobado del pago.\newline
\textbf{Then} confirma la validez del evento y simula la activación de la suscripción SaaS en la base de datos PostgreSQL de forma idempotente.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Prototipo funcional integrado (PoC) y Definition of Done}\newline
\textbf{Given} la integración de los componentes móvil y backend en el entorno Sandbox.\newline
\textbf{When} el equipo valida el flujo end-to-end de pago y documenta los hallazgos técnicos y el esfuerzo requerido.\newline
\textbf{Then} el PoC funcional queda integrado y versionado en una rama del repositorio, y el spike se completa dentro del \textit{timebox} establecido (8 a 16 horas).} \\ \hline
\end{longtable}
\endgroup

\vspace{1em}

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{SPK04} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Equipo de Desarrollo (Móvil y Backend)} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP14} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Investigación de Spring AI para respuestas validadas y de persistencia y tareas en segundo plano en Android} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} equipo de desarrollo (móvil y backend),\newline \textbf{queremos} investigar y prototipar la redacción de respuestas con Spring AI en el backend Spring Boot y el uso de Room 3 y WorkManager en la aplicación móvil Android (Kotlin),\newline \textbf{para} que podamos entender las implicaciones técnicas, los riesgos de generar texto con un modelo de lenguaje y el esfuerzo requerido para implementar el asistente agronómico en los componentes móvil y backend.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Integración de Spring AI con un proveedor compatible}\newline
\textbf{Given} el backend Spring Boot configurado con Spring AI 2.0.2 y su starter compatible con OpenAI apuntando a la URL de Groq.\newline
\textbf{When} envía datos agronómicos de prueba en español e inglés.\newline
\textbf{Then} obtiene un texto estructurado y el equipo registra la compatibilidad de versiones, la latencia y los tokens consumidos.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Validación de cifras del texto generado}\newline
\textbf{Given} un texto generado que incluye un número ausente en los datos de origen.\newline
\textbf{When} el backend aplica la validación del texto.\newline
\textbf{Then} rechaza el texto y utiliza una respuesta predefinida construida con los datos reales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Tolerancia a fallas del proveedor}\newline
\textbf{Given} un proveedor del modelo que acumula 5 fallas consecutivas.\newline
\textbf{When} el backend recibe una nueva solicitud.\newline
\textbf{Then} abre el circuito durante 2 minutos, evita nuevas llamadas al proveedor y mantiene la respuesta mediante plantillas.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Historial local de respuestas con Room 3}\newline
\textbf{Given} la aplicación Android con respuestas del asistente persistidas mediante Room 3.\newline
\textbf{When} el dispositivo se encuentra sin conexión.\newline
\textbf{Then} la aplicación recupera hasta 10 respuestas de los últimos 10 días sin solicitarlas al backend.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 5: Programación del recordatorio con WorkManager}\newline
\textbf{Given} la aplicación Android con WorkManager 2.12 y una tarea periódica única para el recordatorio diario.\newline
\textbf{When} la aplicación solicita programar nuevamente el recordatorio.\newline
\textbf{Then} WorkManager conserva la tarea existente y evita recordatorios duplicados, incluso tras cerrar la aplicación.} \\ \hline
\end{longtable}
\endgroup



\clearpage

### Impact Mapping

En esta sección se presenta el Impact Mapping del ecosistema Viora, el cual articula los objetivos estratégicos de negocio con las funcionalidades y requisitos de software a desarrollar. Mediante este mapa se conectan las metas de validación comercial, tracción del modelo SaaS y fidelización de convenios institucionales con los User Personas definidos (Teodoro Mamani como productor olivarero y Rubén Ticona como gestor técnico de cooperativa), identificando los impactos conductuales y los entregables de software necesarios para mitigar la vecería prolongada y brindar soporte agronómico y logístico en campo (ver \autoref{fig:im-1-2}, \autoref{fig:im-3-4} y \autoref{fig:im-5-6}).

\begin{figure}[H]
\caption{Impact Mapping de Viora - Partes 1 y 2.} \label{fig:im-1-2}
\centering
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-1.png}\hfill
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-2.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Impact Mapping de Viora - Partes 3 y 4.} \label{fig:im-3-4}
\centering
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-3.png}\hfill
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-4.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Impact Mapping de Viora - Partes 5 y 6.} \label{fig:im-5-6}
\centering
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-5.png}\hfill
\includegraphics[width=0.48\textwidth,height=0.37\textheight,keepaspectratio]{report/assets/impact-mapping/im-6.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\clearpage

### Product Backlog

El Product Backlog de Viora consolida y prioriza los 165 ítems de trabajo del sistema (54 Historias de Usuario, 107 Technical Stories y 4 Spike Stories) estructurados rigurosamente bajo el criterio de valor para el negocio y mitigación temprana de riesgo técnico. La iteración inicial (Sprint 1) concentra el despliegue íntegro de la Landing Page para asegurar la captación comercial y la credibilidad agronómica (US33 a US41), los spikes críticos de campo (SPK01 sobre el modelo dinámico de Erez y SPK02 sobre persistencia offline-first con SQLite), la arquitectura base del backend bajo RFC 7807 y convenciones JPA (TS31 a TS34), la suite completa de servicios RESTful iniciales del backend (TS11 a TS27, TS39, TS40, TS42, TS43 y TS44 a TS55) que respaldan operativamente las funcionalidades nucleares del productor, y las Historias de Usuario móviles clave priorizadas según la asignación de responsabilidades del equipo de desarrollo. Siguiendo las buenas prácticas ágiles, las historias de pasarela de pagos digitales y los servicios de gestión corporativa de cooperativas se abordan en el Sprint 2 (junto con el spike de Mercado Pago Checkout Pro con SPK03, TS06 a TS10 y US06 a US08). Asimismo, el Sprint 2 culmina con la implementación integral de la seguridad e IAM (US01 a US05, US43, TS01 a TS05 y TS35 a TS38), la internacionalización (US42), los cuadros de mando avanzados de supervisión agronómica y patrocinio corporativo para el gestor técnico (US44 a US49, TS41 y TS56 a TS65), el semáforo reactivo (US31), la proyección agregada sustentada de acopio (US32) y la exportación documental de expedientes técnicos provisionales y definitivos en formato PDF (TS63, US30), junto con la asistencia agronómica basada en los datos del productor (SPK04, US50 a US54 y TS66 a TS71) y los servicios complementarios de cuenta, suscripción, consentimiento, sectores, notas de campo, expedientes y aclareo (TS72 a TS107). Finalmente, el Sprint 3 se reserva para la incorporación de las mejoras señaladas por los usuarios y para la entrega final del video *About the Product* y su publicación en la Landing Page, reutilizando el reproductor implementado en el Sprint 1 (US37), que ya cubre la funcionalidad de reproducción, por lo que no se le asignan ítems adicionales en la matriz.

A continuación, en la \autoref{tab:product-backlog} se presenta la matriz integral del Product Backlog del sistema Viora, detallando el orden de ejecución, identificador, denominación técnica, estimación de esfuerzo en puntos de historia (*Story Points*) y la asignación a su respectivo ciclo de iteración (*Sprint*).

\setcounter{table}{8}

\begin{center}
\small
\renewcommand{\arraystretch}{1.15}
\begin{longtable}{|>{\centering\arraybackslash}p{0.07\textwidth}|>{\centering\arraybackslash}p{0.11\textwidth}|p{0.50\textwidth}|>{\centering\arraybackslash}p{0.11\textwidth}|>{\centering\arraybackslash}p{0.13\textwidth}|}
\caption{Product Backlog priorizado del sistema Viora} \label{tab:product-backlog} \\
\hline
\textbf{\# Orden} & \textbf{Story ID} & \textbf{Título} & \textbf{Story Points} & \textbf{Sprint} \\ \hline
\endfirsthead
\hline
\textbf{\# Orden} & \textbf{Story ID} & \textbf{Título} & \textbf{Story Points} & \textbf{Sprint} \\ \hline
\endhead
\hline
\endfoot
\hline
\multicolumn{5}{l}{\parbox{16cm}{\vspace{0.1cm} \textit{Nota.} Elaboración propia.}} \\
\endlastfoot
1 & US33 & Presentación de la propuesta de valor central para la mitigación de la vecería prolongada en el olivar & 2 & Sprint 1 \\ \hline
2 & US34 & Exploración de beneficios y capacidades operativas para el productor olivarero & 2 & Sprint 1 \\ \hline
3 & US35 & Exploración de beneficios y herramientas de gestión territorial para cooperativas agrarias & 2 & Sprint 1 \\ \hline
4 & US36 & Visualización de planes de suscripción y tarifas transparentes en moneda nacional (PEN) & 2 & Sprint 1 \\ \hline
5 & US37 & Reproducción del video promocional y demostrativo del producto (''About the Product'') & 1 & Sprint 1 \\ \hline
6 & US38 & Reproducción del video institucional sobre el equipo y proceso de ingeniería (''About the Team'') & 1 & Sprint 1 \\ \hline
7 & US39 & Consulta de términos de servicio y política de privacidad y protección de datos (Ley N° 29733) & 1 & Sprint 1 \\ \hline
8 & US40 & Redirección y acceso a la descarga oficial de la aplicación móvil & 1 & Sprint 1 \\ \hline
9 & US41 & Selección de idioma y localización de contenidos en la Landing Page & 2 & Sprint 1 \\ \hline
10 & SPK01 & Investigación y modelado dinámico de Erez para cálculo de frío en backend & 3 & Sprint 1 \\ \hline
11 & SPK02 & Investigación de persistencia local SQLite y protocolo offline-first & 3 & Sprint 1 \\ \hline
12 & TS31 & Manejo centralizado de excepciones y errores bajo estándar RFC 7807 & 1 & Sprint 1 \\ \hline
13 & TS32 & Convenciones de persistencia relacional, nomenclatura ORM y tipado espacial & 1 & Sprint 1 \\ \hline
14 & TS33 & Generación dinámica y documentación interactiva de contratos de API con OpenAPI 3.0 & 1 & Sprint 1 \\ \hline
15 & TS34 & Resolución de localización y mensajes internacionalizados mediante cabecera Accept-Language & 1 & Sprint 1 \\ \hline
16 & TS11 & Creación y delimitación poligonal de parcelas georreferenciadas & 5 & Sprint 1 \\ \hline
17 & TS12 & Listado y sincronización incremental delta de parcelas & 3 & Sprint 1 \\ \hline
18 & TS13 & Consulta detallada de información agronómica y espacial de parcela & 2 & Sprint 1 \\ \hline
19 & TS14 & Actualización y rectificación integral de parcela con bloqueo optimista & 3 & Sprint 1 \\ \hline
20 & TS15 & Eliminación y baja lógica de parcela del inventario & 2 & Sprint 1 \\ \hline
21 & TS16 & Alta y vinculación de nodo sensor virtual a parcela & 3 & Sprint 1 \\ \hline
22 & TS17 & Consulta de inventario de nodos virtuales vinculados a parcela & 2 & Sprint 1 \\ \hline
23 & TS18 & Desvinculación de nodo virtual preservando trazabilidad histórica & 2 & Sprint 1 \\ \hline
24 & TS19 & Consulta de series temporales de telemetría ambiental y de suelo & 3 & Sprint 1 \\ \hline
25 & TS20 & Consulta de pronóstico meteorológico geolocalizado a 7 días & 3 & Sprint 1 \\ \hline
26 & TS21 & Asentamiento de cosecha anual por campaña para auditoría productiva & 3 & Sprint 1 \\ \hline
27 & TS22 & Consulta del historial plurianual de cosechas de la parcela & 2 & Sprint 1 \\ \hline
28 & TS23 & Cálculo y entrega de métricas de vecería BBI y frío dinámico de Erez & 5 & Sprint 1 \\ \hline
29 & TS24 & Registro y sincronización de muestreos guiados de cuajado en campo & 5 & Sprint 1 \\ \hline
30 & TS25 & Consulta de representatividad estadística y estado de muestreo & 3 & Sprint 1 \\ \hline
31 & TS26 & Consulta de prescripción técnica de aclareo y ventana fenológica & 3 & Sprint 1 \\ \hline
32 & TS27 & Confirmación y registro de ejecución de labor de aclareo en campo & 3 & Sprint 1 \\ \hline
33 & TS39 & Asentamiento formal y balance de liquidación de cosecha de fin de campaña & 3 & Sprint 1 \\ \hline
34 & TS40 & Certificación criptográfica colegiada del expediente agronómico inmutable & 3 & Sprint 1 \\ \hline
35 & TS42 & Calibración y ajuste de offset edafoclimático para nodo sensor IoT en parcela & 2 & Sprint 1 \\ \hline
36 & TS43 & Rectificación de pesaje de cosecha anual con bloqueo optimista & 2 & Sprint 1 \\ \hline
37 & TS44 & Restauración de cuartel olivícola archivado & 2 & Sprint 1 \\ \hline
38 & TS45 & Eliminación de registro erróneo de cosecha en histórico fenológico & 2 & Sprint 1 \\ \hline
39 & TS46 & Consulta global de incidentes agroclimáticos con contadores y filtrado & 3 & Sprint 1 \\ \hline
40 & TS47 & Consulta de incidentes agroclimáticos asociados a un cuartel específico & 2 & Sprint 1 \\ \hline
41 & TS48 & Consulta detallada de incidente agroclimático con tendencia y pasos de mitigación & 3 & Sprint 1 \\ \hline
42 & TS49 & Postergación temporal de notificaciones de incidente agroclimático (Snooze) & 2 & Sprint 1 \\ \hline
43 & TS50 & Completado de paso de mitigación agronómica de incidente & 2 & Sprint 1 \\ \hline
44 & TS51 & Consulta de estado global de muestreos de cuarteles (Plot Picker) & 3 & Sprint 1 \\ \hline
45 & TS52 & Registro de fecha de plena floración observada en cuartel & 3 & Sprint 1 \\ \hline
46 & TS53 & Consulta de eventos cronológicos y bitácora agronómica de raleo & 2 & Sprint 1 \\ \hline
47 & TS54 & Listado de liquidaciones oficiales de cosecha por cuartel & 2 & Sprint 1 \\ \hline
48 & TS55 & Consulta detallada de liquidación de cosecha por campaña individual & 2 & Sprint 1 \\ \hline
49 & US09 & Delimitación georreferenciada de parcela con GPS y caracterización agronómica inicial & 5 & Sprint 1 \\ \hline
50 & US10 & Consulta y modificación de linderos y datos dendrométricos de parcela & 3 & Sprint 1 \\ \hline
51 & US11 & Baja y remoción de parcela del inventario productivo & 2 & Sprint 1 \\ \hline
52 & US27 & Prescripción técnica in-app de porcentaje y ventana fenológica de aclareo & 5 & Sprint 1 \\ \hline
53 & US26 & Cálculo de carga frutal objetivo sostenible y rendimiento potencial de campaña & 5 & Sprint 1 \\ \hline
54 & US28 & Registro y confirmación de ejecución de aclareo en campo & 3 & Sprint 1 \\ \hline
55 & US18 & Alertas automáticas de estrés hídrico y umbral térmico crítico en parcela & 3 & Sprint 1 \\ \hline
56 & US24 & Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline & 5 & Sprint 1 \\ \hline
57 & US25 & Consulta de representatividad estadística e historial de árboles muestreados en campo & 3 & Sprint 1 \\ \hline
58 & US22 & Monitoreo dinámico de porciones de frío invernal acumuladas mediante el modelo de Erez & 5 & Sprint 1 \\ \hline
59 & US23 & Detección de anomalías térmicas invernales y advertencia de riesgo floral por efecto ENOS & 3 & Sprint 1 \\ \hline
60 & US19 & Consulta de pronóstico meteorológico geolocalizado a 7 días & 3 & Sprint 1 \\ \hline
61 & US13 & Vinculación y alta de nodo sensor virtual a una parcela & 3 & Sprint 1 \\ \hline
62 & US14 & Consulta de inventario y estado operativo de nodos sensores virtuales en parcela & 2 & Sprint 1 \\ \hline
63 & US15 & Configuración y calibración de nodo sensor virtual en parcela & 2 & Sprint 1 \\ \hline
64 & US16 & Desvinculación y baja de nodo sensor virtual de una parcela & 2 & Sprint 1 \\ \hline
65 & US17 & Monitoreo agroclimático y consulta de series temporales de suelo y microclima & 5 & Sprint 1 \\ \hline
66 & US20 & Registro retrospectivo de campañas históricas de cosecha y cálculo del Índice de Vecería (BBI) & 5 & Sprint 1 \\ \hline
67 & US21 & Modificación y rectificación de registros históricos de cosecha & 2 & Sprint 1 \\ \hline
68 & US29 & Asentamiento formal de cosecha de fin de campaña y balance de estabilización productiva & 3 & Sprint 1 \\ \hline
69 & SPK03 & Investigación e integración de Checkout Pro en Mercado Pago Sandbox y webhooks & 3 & Sprint 2 \\ \hline
70 & TS06 & Generación de preferencia de checkout para suscripción de productor independiente & 3 & Sprint 2 \\ \hline
71 & TS07 & Recepción y procesamiento de webhooks de notificación de pagos & 5 & Sprint 2 \\ \hline
72 & TS08 & Generación de lote de códigos de activación para socios cooperativos con reserva de cuota & 3 & Sprint 2 \\ \hline
73 & TS09 & Consulta y auditoría de inventario de lotes y códigos de activación de cooperativa & 2 & Sprint 2 \\ \hline
74 & TS10 & Canje atómico de código de activación institucional con validación de cuota y consentimiento & 3 & Sprint 2 \\ \hline
75 & US06 & Suscripción individual al Plan Productor mediante pasarela de pago digital & 5 & Sprint 2 \\ \hline
76 & US07 & Activación de membresía corporativa de socio mediante canje de código de cooperativa & 3 & Sprint 2 \\ \hline
77 & US08 & Administración de la cartera de socios productores y consulta de cuota corporativa & 3 & Sprint 2 \\ \hline
78 & US12 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & 5 & Sprint 2 \\ \hline
79 & TS28 & Consulta y exportación del expediente agronómico definitivo & 5 & Sprint 2 \\ \hline
80 & TS29 & Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS & 3 & Sprint 2 \\ \hline
81 & TS30 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra & 5 & Sprint 2 \\ \hline
82 & US01 & Registro de cuenta de acceso y credenciales seguras con asignación de rol & 3 & Sprint 2 \\ \hline
83 & US02 & Inicio de sesión y autenticación persistente mediante tokens & 3 & Sprint 2 \\ \hline
84 & US03 & Consulta y actualización de datos de perfil y contacto & 2 & Sprint 2 \\ \hline
85 & US04 & Cambio seguro de contraseña de acceso & 2 & Sprint 2 \\ \hline
86 & US05 & Recuperación de contraseña olvidada mediante enlace por correo & 3 & Sprint 2 \\ \hline
87 & US43 & Completado de perfil de usuario y contacto validado & 3 & Sprint 2 \\ \hline
88 & US42 & Configuración y cambio de idioma de la interfaz en la aplicación móvil & 2 & Sprint 2 \\ \hline
89 & TS01 & Registro de credenciales de cuenta de usuario y asignación de rol en IAM & 3 & Sprint 2 \\ \hline
90 & TS02 & Autenticación de usuarios y emisión de tokens de acceso con rol & 3 & Sprint 2 \\ \hline
91 & TS03 & Renovación periódica de tokens de sesión mediante Refresh Token & 2 & Sprint 2 \\ \hline
92 & TS04 & Consulta de información de perfil del usuario autenticado & 2 & Sprint 2 \\ \hline
93 & TS05 & Actualización parcial de datos de perfil con validación telefónica & 2 & Sprint 2 \\ \hline
94 & TS35 & Completado inicial de perfil de usuario con validación telefónica & 3 & Sprint 2 \\ \hline
95 & TS36 & Actualización de contraseña para sesión de usuario autenticado & 2 & Sprint 2 \\ \hline
96 & TS37 & Solicitud de código de restablecimiento de contraseña olvidada vía correo & 3 & Sprint 2 \\ \hline
97 & TS38 & Restablecimiento de contraseña mediante token temporal de un solo uso & 2 & Sprint 2 \\ \hline
98 & US44 & Habilitación institucional del gestor técnico y espera de confirmación corporativa & 3 & Sprint 2 \\ \hline
99 & TS56 & Consulta de la licencia institucional a cargo del gestor técnico & 2 & Sprint 2 \\ \hline
100 & TS57 & Consulta de balance de licencia institucional y cuota corporativa & 3 & Sprint 2 \\ \hline
101 & TS58 & Consulta de padrón de socios productores agremiados & 3 & Sprint 2 \\ \hline
102 & US45 & Generación y asignación de códigos de activación para socios productores & 3 & Sprint 2 \\ \hline
103 & US46 & Consentimiento explícito de compartición de datos agronómicos con la cooperativa & 2 & Sprint 2 \\ \hline
104 & US47 & Compartición y distribución multicanal de invitaciones corporativas & 2 & Sprint 2 \\ \hline
105 & TS41 & Revocación anticipada de código de activación cooperativo y restitución de cuota & 2 & Sprint 2 \\ \hline
106 & TS64 & Canje de código maestro para activación del gestor técnico & 2 & Sprint 2 \\ \hline
107 & TS59 & Consulta de sectores asignados a las parcelas socias & 3 & Sprint 2 \\ \hline
108 & US49 & Supervisión de parcela socia en modo de solo lectura con ficha técnica y prescripción & 3 & Sprint 2 \\ \hline
109 & TS60 & Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura & 3 & Sprint 2 \\ \hline
110 & US48 & Desvinculación institucional y cambio de cooperativa preservando datos del productor & 3 & Sprint 2 \\ \hline
111 & TS61 & Consulta y suscripción a alertas agroclimáticas y fitosanitarias territoriales internas & 3 & Sprint 2 \\ \hline
112 & US31 & Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica & 5 & Sprint 2 \\ \hline
113 & TS62 & Consulta del histórico de acopio por campaña & 2 & Sprint 2 \\ \hline
114 & TS65 & Vista previa de código de invitación cooperativa & 3 & Sprint 2 \\ \hline
115 & US32 & Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa & 5 & Sprint 2 \\ \hline
116 & TS63 & Generación de instantánea documental y metadatos de expediente agronómico provisional en campaña activa & 3 & Sprint 2 \\ \hline
117 & US30 & Generación y exportación del expediente agronómico de parcela & 5 & Sprint 2 \\ \hline
118 & SPK04 & Investigación de Spring AI para respuestas validadas y de persistencia y tareas en segundo plano en Android & 3 & Sprint 2 \\ \hline
119 & TS66 & Consulta del catálogo de preguntas por contexto de consulta & 3 & Sprint 2 \\ \hline
120 & US50 & Consulta de preguntas disponibles según el contexto agronómico & 3 & Sprint 2 \\ \hline
121 & TS67 & Solicitud idempotente de respuesta del asistente & 5 & Sprint 2 \\ \hline
122 & US51 & Obtención de respuesta sustentada en datos reales & 5 & Sprint 2 \\ \hline
123 & TS68 & Consulta del historial de respuestas del asistente & 2 & Sprint 2 \\ \hline
124 & TS69 & Consulta de la última respuesta de un contexto de consulta & 2 & Sprint 2 \\ \hline
125 & TS70 & Consulta de una respuesta guardada del asistente & 2 & Sprint 2 \\ \hline
126 & US52 & Consulta del historial de respuestas recientes & 3 & Sprint 2 \\ \hline
127 & US53 & Actualización de respuestas ante cambios en los datos & 3 & Sprint 2 \\ \hline
128 & TS71 & Consulta del resumen diario del asistente & 3 & Sprint 2 \\ \hline
129 & US54 & Resumen diario de prioridades del campo & 3 & Sprint 2 \\ \hline
130 & TS72 & Cierre de sesión del usuario & 1 & Sprint 2 \\ \hline
131 & TS73 & Eliminación definitiva de la cuenta & 2 & Sprint 2 \\ \hline
132 & TS74 & Verificación del correo de la cuenta & 2 & Sprint 2 \\ \hline
133 & TS75 & Reenvío del código de verificación de correo & 1 & Sprint 2 \\ \hline
134 & TS76 & Verificación de vigencia del enlace de restablecimiento de contraseña & 1 & Sprint 2 \\ \hline
135 & TS77 & Consulta de planes de suscripción individual & 1 & Sprint 2 \\ \hline
136 & TS78 & Consulta de la suscripción actual del productor & 1 & Sprint 2 \\ \hline
137 & TS79 & Consulta de una suscripción del productor & 1 & Sprint 2 \\ \hline
138 & TS80 & Preparación del pago de una suscripción & 3 & Sprint 2 \\ \hline
139 & TS81 & Consulta de condiciones de ampliación del plan & 1 & Sprint 2 \\ \hline
140 & TS82 & Solicitud de ampliación pagada del plan individual & 3 & Sprint 2 \\ \hline
141 & TS83 & Consulta de una ampliación del plan & 1 & Sprint 2 \\ \hline
142 & TS84 & Preparación del pago de una ampliación & 3 & Sprint 2 \\ \hline
143 & TS85 & Canje de código de ampliación de hectáreas & 2 & Sprint 2 \\ \hline
144 & TS86 & Desvinculación de socio de la licencia institucional & 2 & Sprint 2 \\ \hline
145 & TS87 & Consulta de consentimientos de compartición de datos & 1 & Sprint 2 \\ \hline
146 & TS88 & Consulta de un consentimiento de compartición de datos & 1 & Sprint 2 \\ \hline
147 & TS89 & Retiro del consentimiento de compartición de datos & 2 & Sprint 2 \\ \hline
148 & TS90 & Registro de nota de campo de una parcela & 2 & Sprint 2 \\ \hline
149 & TS91 & Consulta de notas de campo de una parcela & 2 & Sprint 2 \\ \hline
150 & TS92 & Adjunto de fotografía a una nota de campo & 2 & Sprint 2 \\ \hline
151 & TS93 & Descarga de la fotografía de una nota de campo & 1 & Sprint 2 \\ \hline
152 & TS94 & Consulta de sectores territoriales de la licencia & 1 & Sprint 2 \\ \hline
153 & TS95 & Registro de sector territorial & 2 & Sprint 2 \\ \hline
154 & TS96 & Consulta de un sector territorial & 1 & Sprint 2 \\ \hline
155 & TS97 & Renombrado de sector territorial & 2 & Sprint 2 \\ \hline
156 & TS98 & Consulta del sector de una parcela socia & 1 & Sprint 2 \\ \hline
157 & TS99 & Asignación de sector a una parcela & 2 & Sprint 2 \\ \hline
158 & TS100 & Revisión de sector pendiente de confirmación & 2 & Sprint 2 \\ \hline
159 & TS101 & Sellado del expediente agronómico de una campaña liquidada & 3 & Sprint 2 \\ \hline
160 & TS102 & Consulta de expedientes sellados de una parcela & 1 & Sprint 2 \\ \hline
161 & TS103 & Verificación de autenticidad de un expediente & 1 & Sprint 2 \\ \hline
162 & TS104 & Consulta de prescripciones de aclareo del productor & 1 & Sprint 2 \\ \hline
163 & TS105 & Consulta de una prescripción de aclareo & 1 & Sprint 2 \\ \hline
164 & TS106 & Consulta de la ejecución registrada de un aclareo & 1 & Sprint 2 \\ \hline
165 & TS107 & Consulta del detalle de socio productor agremiado & 1 & Sprint 2 \\ \hline
\end{longtable}
\end{center}



Para garantizar la visibilidad compartida, la trazabilidad ágil y la gestión continua del flujo de trabajo, los 165 ítems del Product Backlog han sido registrados y priorizados en la herramienta colaborativa Trello. La \autoref{fig:trello-product-backlog} ilustra el tablero del proyecto, donde cada tarjeta consolida su código de historia, denominación estandarizada, etiquetas visuales de esfuerzo y componente, así como la narrativa ágil de usuario.

\begin{figure}[H]
\caption{Product Backlog del proyecto Viora en Trello.} \label{fig:trello-product-backlog}
\centering
\includegraphics[width=0.95\textwidth,height=0.45\textheight,keepaspectratio]{report/assets/trello/product-backlog.png}
\caption*{\textit{Nota.} Elaboración propia a partir de la herramienta Trello. Disponible en: \url{https://tinyurl.com/1acc0238-product-backlog}.}
\end{figure}

\clearpage  