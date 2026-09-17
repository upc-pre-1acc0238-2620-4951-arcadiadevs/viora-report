# Conclusiones {-}

En este apartado final se consolidan los resultados globales derivados del proceso de investigación, modelado del negocio y diseño arquitectónico del proyecto Viora. La sección integra la síntesis valorativa del trabajo realizado y proyecta las directrices estratégicas que guiarán la evolución continua de los productos digitales que conforman la solución.

## Conclusiones y recomendaciones {-}

La contrastación entre los postulados teóricos del enfoque Lean UX y la evidencia empírica levantada en el campo permitió validar la propuesta de valor de Viora. A partir del contraste sistemático entre los problemas identificados, los supuestos de usuario y las hipótesis de negocio, se desprenden las siguientes reflexiones analíticas y recomendaciones clave para el roadmap del producto.

A nivel de resultados y aprendizaje del proyecto:

1. **Resolución del Problem Statement central:** La investigación cualitativa y el modelado mediante Big Picture Event Storming validaron que la vecería en el olivar de la macro-región sur no es un destino inevitable ni un fenómeno exclusivamente climático, sino la consecuencia directa de una sobrecarga frutal no gestionada en los años de alta producción. Viora aborda esta brecha al transformar la experiencia empírica y los cuadernos manuales en un cálculo sistemático del Biennial Bearing Index (BBI) y en planes fechados de regulación de carga dentro de ventanas fenológicas críticas.

2. **Validación de supuestos de usuario y comportamiento real:** Los supuestos iniciales respecto a los segmentos objetivo se confirmaron plenamente en las entrevistas. Los productores familiares (representados por Teodoro Mamani) reconocen la alternancia pero carecen de herramientas objetivas para intervenirla, dependiendo de la observación visual tardía. Asimismo, se corroboró la necesidad de un enfoque *offline-first* para dispositivos móviles debido a la precaria conectividad en las parcelas de Tacna. Por su parte, los gestores técnicos (representados por Rubén Ticona) ratificaron que descubren el volumen de cosecha recién cuando la fruta ingresa a planta, lo que genera penalizaciones contractuales y valida la pertinencia de un panel de inteligencia territorial agregado.

3. **Contraste de hipótesis y métricas de éxito Lean UX:** La priorización de hipótesis demostró que la propuesta de mayor valor y riesgo reside en lograr que el productor registre la carga frutal (H3) y ejecute el aclareo o poda en ventana (H4). Las entrevistas evidenciaron una alta disposición de adopción cuando el software traduce datos complejos en acciones operativas directas (número de frutos a retirar por rama o árbol), garantizando un retorno tangible en el mismo ciclo mediante un mayor calibre comercial y maduración uniforme.

4. **Robustez de la arquitectura de software:** La adopción de Domain-Driven Design (DDD) estratégico y táctico, estructurada en seis contextos delimitados (*Plot Management*, *Phenology*, *Thinning*, *Harvest Settlement*, *Cooperative Operations* y *Telemetry*), junto con la visualización C4, garantiza que el software refleje fielmente las reglas agronómicas sin acoplamiento espurio. El desacoplamiento entre las aplicaciones cliente (Android nativo y Flutter multiplataforma) y el backend en Spring Boot asegura escalabilidad e integridad operativa.

En cuanto a las recomendaciones orientadas al roadmap y evolución del producto digital:

1. **Estrategia de adopción B2B2C mediante alianzas institucionales:** Se recomienda canalizar la captación inicial a través de cooperativas, asociaciones de productores y entidades como ProOlivo o INIA. El gestor técnico actúa como facilitador de confianza y promotor de la digitalización, mitigando la resistencia al cambio y acelerando la construcción de la línea base histórica multianual.

2. **Automatización progresiva de la captura en campo:** Para reducir la fricción operativa del muestreo manual de carga en parcela, el roadmap debe incorporar en fases futuras módulos de visión por computador y procesamiento de imágenes en el dispositivo móvil, orientados al conteo asistido de frutos y ramas.

3. **Evolución del soporte agronómico contextual:** Conforme la plataforma acumule históricos bioclimáticos de múltiples campañas, se recomienda integrar modelos predictivos microclimáticos más granulares que refinen las alertas de frío invernal y correlacionen dinámicamente el estrés hídrico con el calibre proyectado.

4. **Aseguramiento continuo de la accesibilidad e internacionalización:** Se recomienda mantener como estándar de ingeniería la paridad funcional, el cumplimiento estricto de accesibilidad (WCAG 2.1 / a11y) y la preparación para internacionalización (i18n), asegurando la futura expansión de la solución hacia cuencas olivícolas de países vecinos con problemáticas productivas análogas.

\newpage