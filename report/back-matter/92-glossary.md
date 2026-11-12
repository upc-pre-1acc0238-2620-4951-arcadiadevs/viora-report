# Glosario {-}

El presente glosario define los conceptos técnicos, metodológicos, arquitectónicos y acrónimos empleados a lo largo del documento. Su finalidad es unificar el marco conceptual y facilitar la comprensión inequívoca de las soluciones de ingeniería de software implementadas en el proyecto Viora, tanto para lectores técnicos como multidisciplinarios. Los términos especializados del dominio agronómico del olivo se detallan en la sección de Ubiquitous Language.

### Términos Técnicos y de Arquitectura de Software {-}

- **Acceptance Criteria (Criterios de Aceptación):** Condiciones y reglas específicas de negocio que debe satisfacer una historia de usuario para ser aceptada por el equipo y los interesados, formuladas típicamente en lenguaje Gherkin.
- **Aggregate (Agregado):** Patrón táctico de Domain-Driven Design (DDD) que agrupa entidades y objetos de valor bajo una raíz (*Aggregate Root*) para garantizar la consistencia transaccional y las reglas de negocio en un límite determinado.
- **Atomic Design:** Metodología de diseño de interfaces que descompone las pantallas en niveles modulares jerárquicos: átomos, moléculas, organismos, plantillas y páginas.
- **Bounded Context (Contexto Delimitado):** Frontera explícita dentro de un modelo de dominio en la que un lenguaje ubicuo tiene un significado único y consistente, delimitando responsabilidades arquitectónicas y funcionales.
- **Domain Event (Evento de Dominio):** Suceso significativo ocurrido dentro del dominio del negocio en un momento específico en el tiempo, expresado en pasado gramatical e inmutable.
- **Domain-Driven Design (DDD):** Enfoque de diseño y desarrollo de software centrado en modelar la lógica de negocio compleja a partir de una estrecha colaboración entre expertos de dominio y desarrolladores.
- **Event Storming:** Metodología rápida y colaborativa de modelado visual orientada a descubrir y alinear el conocimiento de negocio explorando eventos de dominio a lo largo de una línea temporal.
- **Heurística de Usabilidad:** Principios generales de interacción y diseño de interfaces (como los diez principios de Nielsen) utilizados para evaluar la experiencia de usuario y prevenir errores operativos.
- **Impact Mapping:** Técnica gráfica de planificación estratégica que vincula los objetivos de negocio de una organización con los actores que interactúan, los impactos esperados y los entregables de software a construir.
- **Modelo C4:** Marco de visualización de arquitectura de software en cuatro niveles jerárquicos de abstracción: Contexto, Contenedores, Componentes y Código.
- **Offline-First (Primero Desconectado):** Estrategia de diseño y arquitectura de software donde la aplicación garantiza la operatividad local continua y la captura transaccional sin requerir conexión a internet activa, postergando la sincronización de datos para cuando exista enlace de red.
- **Pattern Partnership (Patrón de Asociación):** Patrón de relación en DDD donde dos contextos delimitados coordinan activamente sus lanzamientos y evoluciones de modelos debido a una dependencia mutua estrecha.
- **RESTful API (Interfaz de Programación de Aplicaciones REST):** Servicio web que se adhiere a los principios de transferencia de estado representacional (REST), empleando métodos HTTP estándares (GET, POST, PUT, DELETE) para la comunicación sin estado entre clientes y backend.
- **User Story (Historia de Usuario):** Descripción funcional breve y estructurada de un requisito desde la perspectiva del usuario final, siguiendo el formato estándar de rol, deseo y beneficio.

### Términos de Negocio y Membresía Cooperativa {-}

- **Customer (Cliente):** Persona u organización que contrata y paga por Viora: el productor olivarero con el Plan Productor o la cooperativa con una licencia. No debe confundirse con el usuario ni con la aplicación cliente que consume la API.
- **Holder (Titular):** Productor olivarero a cuyo nombre figura una parcela o una suscripción y que puede modificarla o darla de baja.
- **License (Licencia):** Acuerdo corporativo entre Viora y una cooperativa que fija las plazas y la superficie autorizadas, y que sustenta la afiliación de sus socios sin cobro individual.
- **Lot (Lote):** En las aplicaciones móviles, parcela registrada del productor; en suscripciones y operación cooperativa, lote de códigos de invitación emitido contra la licencia; en el muestreo sin conexión, conjunto de registros pendientes de sincronización.
- **Member (Socio):** Productor olivarero afiliado a una cooperativa que accede a Viora mediante un código de invitación y queda cubierto por la licencia colectiva.
- **Seat (Plaza):** Cupo de la licencia reservado para un socio productor; se compromete al emitir un lote de códigos y se restituye si el código expira o se revoca.
- **Sector (Sector):** Subdivisión geográfica del valle olivarero sobre la que se agrupan las parcelas y se calcula el semáforo de riesgo territorial.
- **Segment (Segmento):** Grupo de usuarios con perfil, necesidad y aplicación propios a los que Viora dirige su propuesta de valor: productores olivareros y gestores técnicos de organizaciones olivareras.

### Acrónimos y Abreviaturas {-}

- **a11y (Accessibility):** Numerónimo utilizado para designar la accesibilidad digital en diseño y desarrollo de software (11 letras entre la 'a' y la 'y').
- **API (Application Programming Interface):** Interfaz de programación de aplicaciones; conjunto de definiciones y protocolos que permiten la comunicación entre diferentes componentes de software.
- **BBI (Biennial Bearing Index):** Índice de alternancia productiva o vecería, métrica matemática que cuantifica la fluctuación de cosecha entre campañas sucesivas de un olivar.
- **CRUD (Create, Read, Update, Delete):** Cuatro operaciones básicas para la gestión persistente de datos en un sistema de almacenamiento.
- **DTO (Data Transfer Object):** Objeto de transferencia de datos; patrón de diseño estructural que encapsula datos para transmitirlos entre subsistemas o capas arquitectónicas reduciendo las llamadas remotas.
- **ENSO / ENOS (El Niño-Southern Oscillation / El Niño-Oscilación del Sur):** Fenómeno océano-atmosférico que altera periódicamente los regímenes térmicos y de precipitación en la costa del Pacífico.
- **i18n (Internationalization):** Numerónimo de internacionalización; proceso de diseño de software orientado a soportar múltiples idiomas y configuraciones regionales sin modificaciones estructurales de código.
- **JWT (JSON Web Token):** Estándar abierto y compacto para transmitir afirmaciones de seguridad cifradas de manera confiable entre partes mediante firmas digitales.
- **MVP (Minimum Viable Product):** Producto Mínimo Viable; versión inicial de una solución que contiene el conjunto mínimo de capacidades esenciales para validar hipótesis críticas con usuarios reales.
- **ORM (Object-Relational Mapping):** Técnica de mapeo objeto-relacional que permite consultar y manipular bases de datos relacionales mediante estructuras orientadas a objetos.
- **SWP (Stem Water Potential):** Potencial hídrico del tallo; medición fisiológica que refleja el estado de hidratación interno del cultivo.
- **UI (User Interface):** Interfaz de usuario; capas visuales y controles interactivos mediante los cuales una persona interactúa con un producto digital.
- **UX (User Experience):** Experiencia de usuario; conjunto de factores y percepciones relativas a la facilidad de uso, accesibilidad y satisfacción del usuario al interactuar con una solución tecnológica.

\newpage
