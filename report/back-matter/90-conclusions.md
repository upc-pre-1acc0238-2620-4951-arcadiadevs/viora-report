# Conclusiones {-}

En este capítulo final se consolidan los resultados globales derivados del proceso de investigación, modelado de negocio, diseño arquitectónico y del primer incremento de implementación y validación funcional (Sprint 1) del proyecto Viora. La sección integra la síntesis valorativa del trabajo de ingeniería ejecutado hasta el hito TB1 y proyecta las directrices estratégicas que guiarán la evolución continua de los productos digitales que conforman la solución.

## Conclusiones y recomendaciones {-}

La articulación entre el marco de trabajo ágil, los principios de Lean UX y la ejecución técnica en frontend, backend y plataformas móviles permitió validar y materializar la propuesta de valor de Viora. A partir del contraste sistemático entre la investigación de dominio, las pruebas empíricas con usuarios, la arquitectura de software construida y las métricas del primer incremento de desarrollo, se desprenden las siguientes conclusiones y recomendaciones analíticas para el proyecto.

A nivel de resultados, arquitectura y aprendizajes del proyecto (Hito TB1):

1. **Resolución del Problem Statement central y validación agronómica:** La investigación cualitativa y el modelado mediante Domain-Driven Design (DDD) y Big Picture EventStorming validaron que la vecería en el olivar de la cuenca sur no es una fatalidad inevitable ni un fenómeno meramente climático, sino la consecuencia directa de una sobrecarga frutal no gestionada en los años de alta producción. Viora resuelve esta brecha al transformar anotaciones empíricas dispersas en un cálculo riguroso del Índice de Vecería (*Biennial Bearing Index* - BBI) y en calendarios de prescripción de aclareo dentro de ventanas fenológicas críticas antes del endurecimiento del hueso del fruto.

2. **Validación empírica de supuestos mediante UX Research y evaluación heurística:** Las entrevistas de validación realizadas sobre la Landing Page desplegada con productores olivareros (como Alexandra Rosas en La Yarada-Los Palos) y jefes técnicos de cooperativas (como el Ing. Daniel Estrada) ratificaron de manera unánime el modelo de negocio SaaS (S/ 55 por hectárea/mes para el productor y planes corporativos para organizaciones). Asimismo, la inspección sistemática mediante heurísticas permitió optimizar la consistencia visual, la jerarquía de contenidos, la visibilidad del estado del sistema y la comprensión directa de las tarifas y la propuesta de valor comercial.

3. **Arquitectura desacoplada y robustez de contratos en el backend:** El desarrollo de la plataforma central (*viora-platform*) bajo arquitectura hexagonal y Domain-Driven Design táctico se consolidó con la implementación y despliegue en la nube de 33 servicios web RESTful desacoplados, documentados interactivamente mediante OpenAPI/Swagger UI y con manejo estandarizado de excepciones bajo el estándar RFC 7807. Esta infraestructura garantizó la estabilidad de los contratos de integración para las aplicaciones cliente móviles y web sin acoplamiento espurio.

4. **Resiliencia móvil offline-first para el entorno agrícola rural:** La investigación y resolución del Spike técnico SPK02 demostró la necesidad crítica y viabilidad de una arquitectura *offline-first* con persistencia local basada en SQLite/Room en la aplicación móvil Android. Esto permite al agricultor registrar muestras de cuajado, censos de carga y polígonos parcelarios directamente en zonas con nula cobertura celular, garantizando la integridad de los datos agronómicos para su sincronización posterior.

5. **Interoperabilidad abierta y geolocalización predial:** La integración exitosa de la API meteorológica pública de Open-Meteo, combinada con la administración rigurosa de permisos de geolocalización en tiempo de ejecución en Android (*Location Permissions*), validó que es factible alimentar modelos bioclimáticos avanzados (acumulación de frío invernal bajo el modelo dinámico de Erez y alertas de estrés térmico/heladas) sin incurrir en costos prohibitivos de infraestructura telemétrica propietaria en etapas tempranas.

En cuanto a las recomendaciones orientadas al roadmap y evolución de producto (Sprints 2 y 3):

1. **Implementación de un motor determinista de sincronización bidireccional:** Con la persistencia local *offline-first* operando en la aplicación cliente, se recomienda para el Sprint 2 desarrollar un protocolo de sincronización en segundo plano con políticas explícitas de resolución de conflictos de concurrencia (como *last-write-wins* contextual o marcas de tiempo distribuidas), asegurando consistencia transaccional absoluta entre el almacenamiento móvil local y la base de datos relacional PostgreSQL en la nube.

2. **Canales de asistencia y onboarding asistido para productores:** A partir del feedback directo recogido en las entrevistas de validación, se sugiere incorporar en la Landing Page y en la aplicación móvil accesos directos de comunicación, así como guías interactivas de primeros pasos (*onboarding tours*), facilitando la curva de aprendizaje de productores familiares con menor grado de alfabetización digital.

3. **Capa de almacenamiento en caché y tolerancia a fallos para telemetría externa:** Para optimizar el rendimiento y proteger la disponibilidad de las aplicaciones cliente frente a posibles intermitencias o latencias en servicios públicos, se recomienda incorporar una capa de caché local y de servidor (*caching layer*) para las respuestas telemétricas de Open-Meteo, alineada con las tasas reales de actualización meteorológica (intervalos de 1 a 3 horas).

4. **Automatización progresiva y visión computacional en parcela:** Para minimizar el esfuerzo operativo que representa el muestreo manual de frutos y racimos en campo, el roadmap a mediano plazo debe contemplar la incorporación de modelos ligeros de visión por computador en el dispositivo móvil (Edge AI), orientados a la estimación asistida de densidad de carga mediante captura fotográfica.

5. **Profundización en suites de pruebas automatizadas y aseguramiento de calidad:** Se recomienda incrementar progresivamente la cobertura de pruebas unitarias y de integración (JUnit, Mockito y Espresso) sobre los módulos de cálculo agronómico y regulación de carga, manteniendo las directrices de integración continua (CI/CD) para garantizar entregas limpias y sin regresiones en los siguientes hitos del proyecto.

\newpage