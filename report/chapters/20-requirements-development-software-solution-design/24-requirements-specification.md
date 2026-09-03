## Requirements specification

Esta sección permite que el equipo realice, en base al análisis de la información obtenida en las investigaciones de campo, el Needfinding y el taller de Big Picture Event Storming, la especificación formal de los requisitos de los productos digitales que integran el ecosistema Viora. La especificación articula las necesidades de los productores olivareros independientes y de los gestores técnicos de organizaciones olivareras con los servicios de backend y la presencia digital del negocio.

### User Stories

En esta sección se definen los requisitos del ecosistema mediante Épicas e Historias de Usuario, estructuradas a partir de la línea de tiempo agronómica y los focos de mayor incertidumbre identificados en el Big Picture Event Storming (especialmente "Unmeasured Crop Load" y "Lack of History"). Los requisitos abarcan las funcionalidades del dominio transaccional de las aplicaciones móviles (Android nativa y multiplataforma), el sitio web estático (*Landing Page*) orientado a la conversión y transparencia de tarifas, las Technical Stories desde la perspectiva del desarrollador cliente para la integración de contratos RESTful, y las *Spike Stories* destinadas a reducir riesgos técnicos mediante aprendizaje autónomo.

Todos los criterios de aceptación son comprobables y siguen estrictamente la estructura BDD (*Behavior-Driven Development*) con sintaxis Gherkin (*Given-When-Then*) en tiempo presente y tercera persona, sin hacer referencia a detalles efímeros de interfaz gráfica y modelando escenarios representativos de éxito, validación y control de excepciones.

A continuación, se presentan las 14 Épicas definidas para el ecosistema Viora, estructuradas bajo el formato estándar establecido:

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

\clearpage

A continuación, se presentan las Historias de Usuario desarrolladas para el ecosistema Viora, formuladas con sus respectivos criterios de aceptación BDD:

\begingroup
\renewcommand{\arraystretch}{1.15}
\linespread{1.0}\selectfont
\begin{longtable}{|m{0.18\textwidth}|m{0.32\textwidth}|m{0.18\textwidth}|m{0.22\textwidth}|}
\hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Story ID}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{\textbf{User}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Priority}} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{\textbf{Epic}} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{US01} & \multicolumn{1}{>{\centering\arraybackslash}m{0.32\textwidth}|}{Productor Olivarero / Gestor Técnico} & \multicolumn{1}{>{\centering\arraybackslash}m{0.18\textwidth}|}{Alta} & \multicolumn{1}{>{\centering\arraybackslash}m{0.22\textwidth}|}{EP01} \\ \hline
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Registro de cuenta de usuario con país, teléfono y asignación de rol} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} usuario nuevo de Viora (Productor Olivarero o Gestor Técnico), \textbf{quiero} registrar una cuenta en la plataforma ingresando mis datos de contacto, país de residencia y seleccionando mi rol de trabajo, \textbf{para} darme de alta en el sistema y disponer de una identidad de acceso que me permita autenticarme.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Creación exitosa de cuenta con asignación de rol}\newline
\textbf{Given} un usuario que no posee una cuenta registrada en la plataforma.\newline
\textbf{When} solicita su registro proporcionando su nombre completo, país de residencia, número celular con prefijo internacional, correo electrónico válido, una contraseña segura y su rol de trabajo (Productor Olivarero o Gestor Técnico).\newline
\textbf{Then} el sistema crea la cuenta de usuario en estado activo con el número telefónico normalizado bajo el estándar E.164 y el rol correspondiente asignado.\newline
\textbf{And} el usuario puede autenticarse satisfactoriamente con esas credenciales.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por número telefónico incompatible con el país seleccionado}\newline
\textbf{Given} un usuario que solicita el registro de una cuenta.\newline
\textbf{When} proporciona un número telefónico que no cumple con el formato E.164 o cuya longitud no corresponde al estándar del país seleccionado.\newline
\textbf{Then} el sistema deniega el registro sin persistir información.\newline
\textbf{And} notifica la inconsistencia indicando el formato telefónico requerido para dicho país.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por correo electrónico ya registrado}\newline
\textbf{Given} un usuario que intenta registrarse en el sistema.\newline
\textbf{When} ingresa una dirección de correo electrónico que ya se encuentra asociada a una cuenta existente.\newline
\textbf{Then} el sistema rechaza la solicitud impidiendo duplicar identidades.\newline
\textbf{And} notifica que el correo electrónico ya se encuentra registrado en la plataforma.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 4: Rechazo por contraseña que incumple estándar de seguridad}\newline
\textbf{Given} un usuario que solicita el registro de una nueva cuenta.\newline
\textbf{When} ingresa una contraseña que posee menos de 8 caracteres o carece de combinación alfanumérica.\newline
\textbf{Then} el sistema rechaza la operación sin registrar la cuenta.\newline
\textbf{And} notifica el incumplimiento de las políticas de complejidad requeridas para la contraseña.} \\ \hline
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
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Activación de cuenta de socio mediante canje de código de cooperativa} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Productor Olivarero socio de una cooperativa agraria, \textbf{quiero} canjear un código de activación proporcionado por mi organización, \textbf{para} habilitar el acceso completo a los servicios de Viora bajo la membresía corporativa de la cooperativa sin asumir costos individuales de suscripción.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Canje exitoso de código de activación de cooperativa}\newline
\textbf{Given} un productor olivarero autenticado que no cuenta con una membresía activa.\newline
\textbf{When} ingresa un código de invitación válido emitido por su cooperativa agraria.\newline
\textbf{Then} el sistema vincula al productor con la cooperativa correspondiente y marca el código como utilizado.\newline
\textbf{And} el usuario accede a las herramientas del sistema con estado de membresía corporativa activa.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Rechazo por código de invitación inexistente o inválido}\newline
\textbf{Given} un productor ingresando un código de activación.\newline
\textbf{When} proporciona un código que no existe en el registro de invitaciones del sistema.\newline
\textbf{Then} el sistema deniega la vinculación sin alterar el estado de la cuenta.\newline
\textbf{And} notifica que el código ingresado no es válido.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Rechazo por código de invitación expirado o ya canjeado}\newline
\textbf{Given} un productor intentando vincularse a una cooperativa.\newline
\textbf{When} ingresa un código cuya fecha de vigencia caducó o que ya fue consumido por otro usuario.\newline
\textbf{Then} el sistema rechaza el canje impidiendo la activación de la membresía.\newline
\textbf{And} notifica que el código ha expirado o ya no cuenta con cupos disponibles.} \\ \hline
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
\multicolumn{1}{|>{\centering\arraybackslash}m{0.18\textwidth}|}{\textbf{Title}} & \multicolumn{3}{m{\dimexpr 0.72\textwidth + 4\tabcolsep\relax}|}{Administración de cartera de socios y generación de códigos de invitación} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Description}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Como} Gestor Técnico de Cooperativa, \textbf{quiero} consultar los cupos corporativos contratados y generar códigos de activación únicos para los agricultores socios, \textbf{para} administrar formalmente la nómina de fundos agremiados y facilitar la incorporación técnica de los productores a la red de monitoreo y acopio.} \\ \hline
\multicolumn{4}{|>{\centering\arraybackslash}m{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\textbf{Acceptance Criteria}} \\ \hline
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 1: Generación exitosa de códigos de invitación con cupos disponibles}\newline
\textbf{Given} un gestor técnico autenticado de una cooperativa que posee cupos disponibles en su plan corporativo.\newline
\textbf{When} solicita la generación de un código de invitación para un nuevo socio.\newline
\textbf{Then} el sistema genera un código alfanumérico único con fecha de expiración asociada a la cooperativa.\newline
\textbf{And} descuenta un cupo disponible de la bolsa corporativa contratada.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 2: Bloqueo de generación por límite de cupos alcanzado}\newline
\textbf{Given} un gestor técnico cuya cooperativa ha consumido la totalidad de cupos de su plan contratado.\newline
\textbf{When} intenta generar un nuevo código de activación.\newline
\textbf{Then} el sistema bloquea la emisión de códigos sin modificar el balance de licencias.\newline
\textbf{And} notifica que se ha alcanzado el límite máximo de socios permitidos por la suscripción corporativa actual.} \\
\multicolumn{4}{|p{\dimexpr 0.90\textwidth + 6\tabcolsep\relax}|}{\raggedright\noindent \textbf{Escenario 3: Consulta de nómina de socios vinculados y estado de membresía}\newline
\textbf{Given} un gestor técnico accediendo a la administración de socios de su cooperativa.\newline
\textbf{When} consulta la lista de socios agremiados.\newline
\textbf{Then} el sistema muestra el detalle de los productores vinculados, los códigos canjeados y los códigos pendientes de activación.} \\ \hline
\end{longtable}
\endgroup

