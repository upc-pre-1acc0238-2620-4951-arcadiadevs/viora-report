# Capítulo II: Requirements Development and Software Solution Design

## Competidores

### Análisis competitivo
\begin{center}
\small
\renewcommand{\arraystretch}{1.5}
\begin{longtable}{|p{0.8cm}|p{2.4cm}|p{2.7cm}|p{2.7cm}|p{2.7cm}|p{2.7cm}|}
\hline
\multicolumn{6}{|c|}{\textbf{Competitive analysis landscape}} \\ \hline
\multicolumn{2}{|p{3.2cm}|}{¿Por qué llevar a cabo este análisis?} & \multicolumn{4}{p{10.8cm}|}{\vspace{1.5cm}} \\ \hline
\multicolumn{2}{|c|}{Criterios} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Viora \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/viora-brand/viora-isologotipo-green.png} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Agrigenio Olivo \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/logos/competitors/agrigenio.png} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Agroptima \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/logos/competitors/agroptima.jpg} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} RawData \\ \vspace{0.15cm} \includegraphics[height=1.0cm]{report/assets/logos/competitors/rawData.jpg} \vspace{0.2cm}}} \\ \hline
\endfirsthead
\hline
\multicolumn{6}{|c|}{\textbf{Competitive analysis landscape (Continuación)}} \\ \hline
\multicolumn{2}{|c|}{Criterios} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Viora \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/viora-brand/viora-isologotipo-green.png} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Agrigenio Olivo \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/logos/competitors/agrigenio.png} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} Agroptima \\ \vspace{0.15cm} \includegraphics[width=2.0cm]{report/assets/logos/competitors/agroptima.jpg} \vspace{0.2cm}}} & \multicolumn{1}{c|}{\parbox{2.7cm}{\centering \vspace{0.2cm} RawData \\ \vspace{0.15cm} \includegraphics[height=1.0cm]{report/assets/logos/competitors/rawData.jpg} \vspace{0.2cm}}} \\ \hline
\endhead
\hline
\multirow{5}{0.8cm}{\centering\rotatebox{90}{Perfil}} & Overview & & & & \\ \cline{2-6} 
 & Ventaja competitiva ¿Qué valor ofrece a los clientes? & & & & \\ \hline
\multirow{4}{0.8cm}{\centering\rotatebox{90}{\parbox{2.0cm}{\centering Perfil de\\Marketing}}} & Mercado objetivo & & & & \\ \cline{2-6} 
 & Estrategias de marketing & & & & \\ \hline
\multirow{7.5}{0.8cm}{\centering\rotatebox{90}{\parbox{2.4cm}{\centering Perfil de\\Producto}}} & Productos \& Servicios & & & & \\ \cline{2-6} 
 & Precios \& Costos & & & & \\ \cline{2-6} 
 & Canales de distribución (Web y/o Móvil) & & & & \\ \hline
\multirow{4}{0.8cm}{\centering\rotatebox{90}{\parbox{2.2cm}{\centering Análisis\\SWOT}}} & Fortalezas & & & & \\ \cline{2-6} 
 & Debilidades & & & & \\ \cline{2-6} 
 & Oportunidades & & & & \\ \cline{2-6} 
 & Amenazas & & & & \\ \hline
\end{longtable}
\end{center}

### Estrategias y tácticas frente a competidores

Para viabilizar el ingreso de Viora al sector olivarero y posicionarnos frente a competidores establecidos, estructuramos una matriz de estrategias cruzadas. Esta matriz define las tácticas iniciales para mitigar la presencia de herramientas como Agrigenio, Agroptima y RawData, aprovechando sus limitaciones en soporte de campo y su enfoque en cultivos masivos para destacar la alta especialización de nuestra plataforma en la alternancia productiva del olivo.

\begin{center}
\small
\renewcommand{\arraystretch}{1.5}
\begin{longtable}{|p{3.0cm}|p{5.5cm}|p{5.5cm}|}
\hline
\textbf{Matriz FODA Cruzada} & \textbf{Fortalezas (F)} \par \vspace{0.1cm} \scriptsize - F1: Lorem ipsum dolor sit amet. \par - F2: Consectetur adipiscing elit. & \textbf{Debilidades (D)} \par \vspace{0.1cm} \scriptsize - D1: Sed do eiusmod tempor. \par - D2: Ut labore et dolore magna. \\ \hline
\textbf{Oportunidades (O)} \par \vspace{0.1cm} \scriptsize - O1: Quis nostrud exercitation. \par - O2: Ullamco laboris nisi ut. & \textbf{Estrategias FO (Ofensivas)} \par \vspace{0.1cm} \scriptsize - FO1 (F1, O1): Lorem ipsum dolor sit amet, consectetur adipiscing elit. \par - FO2 (F2, O2): Sed do eiusmod tempor incididunt ut labore et dolore. & \textbf{Estrategias DO (Reorientación)} \par \vspace{0.1cm} \scriptsize - DO1 (D1, O2): Ut enim ad minim veniam, quis nostrud exercitation. \par - DO2 (D2, O1): Ullamco laboris nisi ut aliquip ex ea commodo. \\ \hline
\textbf{Amenazas (A)} \par \vspace{0.1cm} \scriptsize - A1: Duis aute irure dolor in. \par - A2: Reprehenderit in voluptate. & \textbf{Estrategias FA (Defensivas)} \par \vspace{0.1cm} \scriptsize - FA1 (F1, A1): Lorem ipsum dolor sit amet, consectetur adipiscing. \par - FA2 (F2, A2): Ut enim ad minim veniam, quis nostrud. & \textbf{Estrategias DA (Supervivencia)} \par \vspace{0.1cm} \scriptsize - DA1 (D1, A1): Duis aute irure dolor in reprehenderit in voluptate. \par - DA2 (D2, A2): Excepteur sint occaecat cupidatat non proident. \\ \hline
\end{longtable}
\end{center}
