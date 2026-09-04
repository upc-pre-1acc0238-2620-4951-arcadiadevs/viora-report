# Matriz Unificada de Requisitos del Ecosistema Viora

Este documento consolida la matriz integral y trazable de todos los requisitos del ecosistema digital **Viora**: Requisitos Funcionales de la Aplicación Móvil, Requisitos de Backend y API para Developers, Fundamentos de Arquitectura Core, Requisitos de Investigación Técnica (Spikes), Requisitos de la Landing Page Web y la Matriz de Requisitos No Funcionales (ISO/IEC 25010 y DevOps).

---

## 1. Subdominios Genéricos de la Aplicación Móvil (RF-01 al RF-08)

Módulos transversales que gestionan la identidad, control de acceso por roles, pasarela de pagos multimoneda y servicios de notificación multicanal.

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-01** | **Registro y Perfil de Usuario**: Permitir a productores y gestores registrarse con país, teléfono internacional (E.164), correo y contraseña. | Identity & Access Management | `/api/v1/auth/sign-up`, `/api/v1/users/{userId}` | Captura normalizada del teléfono bajo estándar E.164, garantizando entrega de alertas sin errores y expansión regional a Chile y Argentina. |
| **RF-02** | **Autenticación y Recuperación de Acceso**: Autenticar credenciales con tokens JWT y permitir la recuperación de acceso vía correo o SMS. | Identity & Access Management | `/api/v1/auth/sign-in`, `/api/v1/auth/refresh-token` | Protege los registros agronómicos y comerciales frente a accesos no autorizados, reduciendo abandono por olvido de contraseña. |
| **RF-03** | **Control de Acceso Basado en Roles (RBAC)**: Segmentar permisos y vistas según roles: Productor Olivarero y Gestor Técnico. | Identity & Access Management | Claims en JWT: `ROLE_PRODUCTOR`, `ROLE_GESTOR` | Separa la gestión del predio familiar frente a la auditoría agregada de la cooperativa, evitando fugas de datos entre socios. |
| **RF-04** | **Gestión de Planes de Suscripción Multimoneda**: Administrar planes en Soles (PEN) y Dólares (USD): Plan Productor y Plan Cooperativo. | Subscription & Billing | `/api/v1/subscriptions` | Adapta la tarifa al tamaño productivo: cuotas accesibles por hectárea para agricultores y contratos corporativos a cooperativas. |
| **RF-05** | **Procesamiento de Pagos con Mercado Pago**: Integrar Mercado Pago Checkout Pro admitiendo Yape, Plin, PagoEfectivo y tarjetas en PEN y USD. | Subscription & Billing | `/api/v1/subscriptions` | Atiende la dualidad agrícola: costos locales pagados en soles y contratos de exportación negociados en dólares. |
| **RF-06** | **Facturación y Webhooks de Pago**: Procesar webhooks de Mercado Pago para renovar accesos, suspender por mora y emitir comprobantes. | Subscription & Billing | `/api/v1/webhooks/mercadopago`, `/api/v1/subscriptions/{id}` | Automatiza el ciclo de cobro y sincroniza los privilegios al instante, erradicando fraudes y cobranzas manuales. |
| **RF-07** | **Despacho de Notificaciones Push Móviles**: Enviar notificaciones push a la app móvil (FCM) alertando sobre estados agronómicos críticos. | Notifications | `/api/v1/users/{userId}/device-tokens` | Mantiene informado al agricultor de inmediato sin obligarlo a abrir la app, elevando la velocidad de respuesta ante heladas o aclareo. |
| **RF-08** | **Enrutamiento de Alertas por WhatsApp y SMS**: Integrar APIs de mensajería (Twilio / WhatsApp Business) para despachar avisos urgentes al teléfono. | Notifications | `DomainEventPublisher` (Cola asíncrona) | Atiende la realidad de Teodoro Mamani (WhatsApp como canal primario), asegurando tasa de apertura superior al 95% para emergencias. |

---

## 2. Subdominios de Soporte de la Aplicación Móvil (RF-09 al RF-21)

Módulos cartográficos, de provisión de sensores IoT, diagnóstico fisiológico de la planta y persistencia offline-first para trabajo al pie del árbol.

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-09** | **Delimitación y Georreferenciación GIS**: Trazar polígonos vectoriales de parcelas sobre mapa satelital, calculando su área en hectáreas. | Plot Geospatial Tracking | `/api/v1/plots` | La gestión del olivar es espacial; el área exacta condiciona dosis de fertilizantes, aclareo y cálculos de microclima. |
| **RF-10** | **Visualización Espacial de la Cartera de Socios**: Mostrar al gestor técnico un mapa interactivo con la dispersión geográfica de todos los predios socios. | Plot Geospatial Tracking | `/api/v1/plots?cooperativeId={id}` | Optimiza rutas de inspección en La Yarada Los Palos, ahorrando tiempo y combustible al equipo agronómico de la cooperativa. |
| **RF-11** | **Ingesta de Pronóstico Meteorológico Externo**: Consultar APIs externas (SENAMHI / OpenWeather) para pronósticos a 7-14 días y alertas climáticas. | Weather & Telemetry | `/api/v1/plots/{plotId}/forecasts?days=7` | Democratiza el acceso a alertas climáticas preventivas aun cuando el lote no cuente con una estación física instalada. |
| **RF-12** | **Vinculación de Dispositivos IoT a Parcelas**: Registrar nodos sensores (microestación o sonda) asociándolos unívocamente a una parcela vía UUID/MAC. | IoT Device Provisioning | `/api/v1/plots/{plotId}/iot-devices` | Establece la relación unívoca entre la telemetría y el cultivo medido, permitiendo migrar de simulación a hardware físico. |
| **RF-13** | **Desvinculación y Reasignación de Nodos IoT**: Desvincular un sensor por mantenimiento o calibración sin perder el historial acumulado de lecturas. | IoT Device Provisioning | `/api/v1/plots/{plotId}/iot-devices/{deviceId}` | Protege la integridad histórica de datos agronómicos y flexibiliza la gestión de hardware de la cooperativa. |
| **RF-14** | **Monitoreo de Salud y Conectividad del Sensor**: Monitorear estado de conexión (Online/Offline), batería y timestamp de último ping (LWT). | IoT Device Provisioning | `/api/v1/plots/{plotId}/iot-devices?status=ONLINE` | Previene la ceguera informativa por sensores apagados en campo, asegurando decisiones basadas en datos vigentes. |
| **RF-15** | **Ingesta Estandarizada de Telemetría JSON**: Broker/endpoint para ingerir temperatura, humedad ambiental, radiación y humedad de suelo. | Weather & Telemetry | `/api/v1/plots/{plotId}/telemetries` | Desacopla la plataforma del hardware mediante un contrato JSON normalizado compatible con microcontroladores ESP32. |
| **RF-16** | **Simulador de Telemetría Agroclimática**: Motor en backend capaz de generar series temporales realistas de clima y suelo de La Yarada. | Weather & Telemetry | Worker en backend -> TimescaleDB | Viabiliza pruebas de integración, demos comerciales a cooperativas y evaluación académica sin depender de sensores físicos. |
| **RF-17** | **Potencial Hídrico y Análisis Foliar**: Registrar lecturas de potencial de tallo (Psi_stem) y análisis de nitrógeno y potasio (N, K). | Agronomic Diagnostics | `/api/v1/plots/{plotId}/foliar-analyses`, `/telemetries` | Sustituye el manejo empírico por datos directos del árbol, logrando que al menos el 40% de decisiones de riego sean científicas. |
| **RF-18** | **Prescripción Dinámica de Fertirriego N-P-K**: Generar planes de abonado ajustados a carga frutal, diagnóstico foliar y humedad del suelo. | Agronomic Diagnostics | `/api/v1/plots/{plotId}/agronomic-recommendations?category=FERTIGATION` | Ahorra hasta 25% en agroquímicos y evita la descompensación nutricional del olivo tras años de cosecha abundante. |
| **RF-19** | **Planificación de Poda de Despunte**: Recomendar intensidad y fecha oportuna de poda de despunte (tipping pruning) post-cosecha. | Agronomic Diagnostics | `/api/v1/plots/{plotId}/agronomic-recommendations?category=PRUNING` | Asegura la regeneración vegetativa del olivo, evitando que el árbol entre exhausto o sin madera fértil al nuevo ciclo. |
| **RF-20** | **Calendario de Cosecha y Fecha Límite**: Calcular fechas de recolección verde/negra y notificar fecha límite de cosecha para descanso del árbol. | Agronomic Diagnostics | `/api/v1/plots/{plotId}/agronomic-recommendations?category=HARVEST_CALENDAR` | Dejar fruta madura en el árbol hasta agosto bloquea la floración de primavera; fijar una fecha límite rompe este error común. |
| **RF-21** | **Operatividad Offline-First y Sincronización**: Registrar muestreos y consultar historiales sin conexión, sincronizándose al recuperar señal. | Data Synchronization | `GET /api/v1/plots?updatedSince={ISO}` + SQLite local | Garantiza que Teodoro Mamani pueda usar la app al pie del árbol en zonas sin cobertura, erradicando pérdida de datos. |

---

## 3. Core Domain de la Aplicación Móvil: Vecería y Acopio (RF-22 al RF-39)

Núcleo estratégico de Viora: cálculo del BBI de Hoblyn, cómputo de frío invernal de Erez, regulación algorítmica de carga, ventana de aclareo y proyección de acopio cooperativo.

| Código | Requisito Funcional | Bounded Context (BC) | Recurso RESTful | Valor para el Negocio |
| :--- | :--- | :--- | :--- | :--- |
| **RF-22** | **Caracterización Agronómica de Parcelas**: Registrar y actualizar parcelas tipificándolas por variedad (Sevillana, Criolla), densidad y riego. | Olive Crop Characterization | `/api/v1/plots`, `/api/v1/plots/{plotId}` | Modelo base sobre el cual se calibran los algoritmos de carga y vecería, manteniéndolos vigentes ante replantes. |
| **RF-23** | **Historial Plurianual de Cosechas**: Registrar y consultar el rendimiento de al menos 3 campañas previas (toneladas, kg/árbol, destino y calibres). | Historical Yield & BBI | `/api/v1/plots/{plotId}/harvest-records` | Transforma cuadernos físicos dispersos en un activo de datos estructurado y auditable para el socio y la cooperativa. |
| **RF-24** | **Cálculo Automatizado del BBI de Hoblyn**: Computar el índice BBI de alternancia (0 a 1) clasificándolo en vecería leve, moderada o severa. | Historical Yield & BBI | `/api/v1/plots/{plotId}/metrics?name=BBI` | Ofrece un estándar numérico verificable que dimensiona la gravedad de la alternancia y valida el impacto de Viora. |
| **RF-25** | **Cómputo Dinámico de Frío Invernal**: Acumular horas de frío (T menor a 7.2°C) y porciones de frío de Erez entre mayo y agosto. | Chilling & Phenology Engine | `/api/v1/plots/{plotId}/metrics?name=CHILLING` | El frío activa la floración; medirlo disipa la incertidumbre del agricultor sobre si invertir en fertilizantes de producción. |
| **RF-26** | **Detección de Anomalías Térmicas ENOS**: Identificar picos cálidos (T mayor a 25°C) o eventos El Niño en invierno que anulan el frío acumulado. | Chilling & Phenology Engine | `/api/v1/plots/{plotId}/forecasts`, `/metrics` | Otorga semanas de anticipación para ajustar presupuestos y corregir metas de acopio ante caídas de floración. |
| **RF-27** | **Muestreo Guiado de Cuajado en Campo**: Guiar el conteo sistemático de frutos por brote en árboles muestra, revisando y descartando errores. | Crop Load Regulation | `/api/v1/plots/{plotId}/samplings` | Elimina la estimación subjetiva al ojo, convirtiendo la variable crítica de carga frutal en un dato numérico fiable. |
| **RF-28** | **Cálculo Algorítmico de Carga Objetivo**: Calcular la carga máxima en kg/árbol y frutos/árbol que el olivo puede sostener sin agotar reservas. | Crop Load Regulation | `/api/v1/plots/{plotId}/samplings` (derivado) | Corazón del valor de Viora: define la meta científica de producción para romper la vecería y lograr calibres grandes. |
| **RF-29** | **Delimitación de la Ventana de Aclareo**: Calcular y alertar el rango de fechas límite post-cuajado antes del endurecimiento del carozo. | Crop Load Regulation | `/api/v1/plots/{plotId}/thinning-prescriptions` | El aclareo tardío es inútil; delimitar la ventana fisiológica evita gastar jornales cuando ya no salva flores del año siguiente. |
| **RF-30** | **Prescripción de Intensidad de Aclareo**: Indicar el porcentaje exacto de frutos a remover (20% a 50%) si la carga muestreada excede la meta. | Crop Load Regulation | `/api/v1/plots/{plotId}/thinning-prescriptions` | Vence el miedo del agricultor a botar fruta, asegurando aceitunas de mesa grandes y salvando la cosecha del año siguiente. |
| **RF-31** | **Cierre de Campaña y Recálculo de Línea Base**: Asentar cosechas finales y calibres, recalculando el BBI y retroalimentando los algoritmos. | Historical Yield & BBI | `/api/v1/plots/{plotId}/harvest-records` | Cierra el ciclo bianual de mejora continua, demostrando el retorno de inversión y la estabilización productiva. |
| **RF-32** | **Consolidación del Portafolio de Socios**: Proveer al gestor un panel analítico con el estado fenológico, frío y nivel de carga de cada socio. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/members` | Reduce en 80% el tiempo administrativo manual del gestor y permite priorizar la asistencia técnica donde hay mayor riesgo. |
| **RF-33** | **Modelo Predictivo de Acopio Agregado**: Proyectar el volumen total de acopio cooperativo (verde y negra) consolidando las parcelas socias. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/acopio-projections` | Aporta certidumbre logística: calibra turnos de almazara, compra de salmueras y permite cerrar contratos de exportación. |
| **RF-34** | **Emisión de Directivas Técnicas Segmentadas**: Permitir al gestor redactar directivas técnicas oficiales dirigidas a socios por sector o variedad. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/directives` | Homologa el manejo agronómico del valle y eleva la uniformidad del fruto recibido en planta de procesamiento. |
| **RF-35** | **Pesajes en Tolva y Monitoreo de Desvíos**: Registrar pesajes de recepción física en tolva y contrastarlos contra proyecciones, detectando desvíos. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/weighing-records`, `/reception-deviations` | Evalúa la precisión predictiva, detecta mermas anómalas y aporta trazabilidad comercial para exportación a Chile y Brasil. |
| **RF-36** | **Dashboard de Estabilización de Vecería**: Gráficas interactivas contrastando curvas de rendimiento, caída del BBI y calibres antes y después de Viora. | Economic & Biennial Impact | `/api/v1/plots/{plotId}/economic-balances` | Tangibiliza el valor de Viora frente al horizonte bianual, demostrando visualmente que la alternancia se está quebrando. |
| **RF-37** | **Balance Económico y Comparativa de Ingresos**: Calcular ingreso bruto estimado multiplicando volúmenes por precio liquidado según calibre y destino. | Economic & Biennial Impact | `/api/v1/plots/{plotId}/economic-balances?currency=PEN` | Demuestra que cosechas equilibradas con calibres comerciales mayores generan más rentabilidad neta acumulada. |
| **RF-38** | **Gestión de Membresía y Cartera de Socios**: Permitir al gestor invitar socios, consultar nómina, asignar parcelas y gestionar altas y bajas. | Cooperative Aggregation | `/api/v1/cooperatives/{coopId}/members` | Formaliza la estructura organizativa gremial, garantizando que solo socios activos alimenten el acopio cooperativo. |
| **RF-39** | **Generación de Reportes Técnicos (PDF / Excel)**: Generar reportes en PDF (bitácora y BBI de parcela) y Excel (balance consolidado de acopio). | Reporting & Certification | `/api/v1/plots/{plotId}?format=pdf`, `/acopio-projections?format=xlsx` | Respaldo documental para auditorías sanitarias de SENASA, compradores internacionales y asambleas de socios. |

---

## 4. Requisitos de Developer y Endpoints RESTful (RF-DEV-01 al RF-DEV-28)

Endpoints HTTP RESTful puros basados en sustantivos en plural, sin apéndices artificiales, operados por verbos semánticos y con trazabilidad a los RF móviles.

| Código | Requisito Técnico (API) | Método y URI RESTful | RF Móvil Cubierto | Contrato y Descripción de Arquitectura |
| :--- | :--- | :--- | :---: | :--- |
| **RF-DEV-01** | **Registro de Usuario** | `POST /api/v1/auth/sign-up` | **RF-01**, **RF-03** | Body: `{ email, password, role, country, phoneNumber }`. Valida rol y estándar telefónico E.164. |
| **RF-DEV-02** | **Inicio de Sesión** | `POST /api/v1/auth/sign-in` | **RF-02** | Body: `{ email, password }`. Emite Access Token JWT (15 min) con claims de rol y Refresh Token. |
| **RF-DEV-03** | **Renovación de Sesión** | `POST /api/v1/auth/refresh-token` | **RF-02**, **RF-21** | Body: `{ refreshToken }`. Rotación criptográfica para mantener la app activa en campo. |
| **RF-DEV-04** | **Perfil de Usuario** | `GET /api/v1/users/{userId}`, `PATCH /api/v1/users/{userId}` | **RF-01** | PATCH Body: `{ fullName, phoneNumber, country }`. Actualización parcial atómica de contacto. |
| **RF-DEV-05** | **Actualización de Contraseña** | `PATCH /api/v1/users/{userId}` | **RF-02** | PATCH Body: `{ currentPassword, newPassword }`. Sin apéndice `/password`. Atributo de entidad. |
| **RF-DEV-06** | **Token de Notificaciones Push** | `POST /api/v1/users/{userId}/device-tokens` | **RF-07** | Body: `{ deviceToken, platform: "ANDROID" o "IOS" }`. Registra el token FCM para alertas. |
| **RF-DEV-07** | **Crear Parcela GeoJSON** | `POST /api/v1/plots` | **RF-09**, **RF-22** | Body: `{ name, geometry: GeoJSON, plantDensity, variety, irrigationSystem }`. PostGIS calcula ha. |
| **RF-DEV-08** | **Listar Parcelas / Delta Sync** | `GET /api/v1/plots` | **RF-09**, **RF-10**, **RF-21** | Query Params: `?userId={id}&cooperativeId={id}&updatedSince={ISO}&page=1`. Resuelve mapa y offline. |
| **RF-DEV-09** | **Detalle y Edición de Parcela** | `GET /api/v1/plots/{plotId}`, `PATCH /api/v1/plots/{plotId}` | **RF-22** | PATCH Body: `{ name, geometry, plantDensity, variety }`. Actualización técnica del olivar. |
| **RF-DEV-10** | **Archivado Lógico de Parcela** | `DELETE /api/v1/plots/{plotId}` | **RF-22** | Retorna 204 No Content. Baja lógica (is_active=false) preservando histórico de cosechas. |
| **RF-DEV-11** | **Exportar Reporte de Parcela** | `GET /api/v1/plots/{plotId}` | **RF-39** | Query Param: `?format=pdf` (o `Accept: application/pdf`). Representación documental sin apéndices. |
| **RF-DEV-12** | **Gestión de Nodos Sensores** | `POST /api/v1/plots/{plotId}/iot-devices`, `GET .../iot-devices`, `DELETE .../{deviceId}` | **RF-12**, **RF-13**, **RF-14** | Sub-recurso legítimo. Query param `?status=ONLINE,OFFLINE`. Vinculación por UUID y monitoreo LWT. |
| **RF-DEV-13** | **Ingesta y Consulta Telemetría** | `POST /api/v1/plots/{plotId}/telemetries`, `GET .../telemetries` | **RF-15**, **RF-16**, **RF-17** | Query params: `?latest=true` o `?startDate={ISO}&endDate={ISO}`. Payload con T, humedad y Psi_stem. |
| **RF-DEV-14** | **Pronósticos Meteorológicos** | `GET /api/v1/plots/{plotId}/forecasts` | **RF-11**, **RF-26** | Query params: `?days=7` (soporta 7 o 14) y `?granularity=HOURLY,DAILY`. Previsión de olas de calor. |
| **RF-DEV-15** | **Histórico de Cosechas** | `POST /api/v1/plots/{plotId}/harvest-records`, `GET .../harvest-records` | **RF-23**, **RF-31** | Body: `{ campaignYear, totalYieldKg, areaHarvestedHa, greenKg, blackKg, calibres }`. Auditoría anual. |
| **RF-DEV-16** | **Métricas: BBI y Frío Invernal** | `GET /api/v1/plots/{plotId}/metrics` | **RF-24**, **RF-25**, **RF-26** | Query params: `?name=BBI&campaignCount=3` y `?name=CHILLING&model=erez,chill_hours`. Sin `/bbi`. |
| **RF-DEV-17** | **Muestreos de Cuajado en Campo** | `POST /api/v1/plots/{plotId}/samplings`, `GET .../samplings` | **RF-27**, **RF-28** | Body: conteo en ramas muestra. La respuesta deriva la carga objetivo (frutos/árbol). |
| **RF-DEV-18** | **Prescripciones de Aclareo** | `GET /api/v1/plots/{plotId}/thinning-prescriptions` | **RF-29**, **RF-30** | Query params: `?season=2026&status=ACTIVE`. Retorna dosis de remoción % y fecha límite biológica. |
| **RF-DEV-19** | **Diagnóstico Foliar Nutricional** | `POST /api/v1/plots/{plotId}/foliar-analyses`, `GET .../foliar-analyses` | **RF-17** | Body: `{ sampleDate, nitrogenPercentage, potassiumPercentage }`. Contraste contra umbrales. |
| **RF-DEV-20** | **Planes de Fertirriego y Poda** | `GET /api/v1/plots/{plotId}/agronomic-recommendations` | **RF-18**, **RF-19**, **RF-20** | Query params: `?category=FERTIGATION,PRUNING,HARVEST_CALENDAR`. Dosis N-P-K y calendario. |
| **RF-DEV-21** | **Balances Económicos y Calibres** | `GET /api/v1/plots/{plotId}/economic-balances` | **RF-36**, **RF-37** | Query params: `?currency=PEN,USD&campaigns=2024,2025,2026`. Curva de ingresos y caída del BBI. |
| **RF-DEV-22** | **Gestión de Socios Cooperativos** | `POST /api/v1/cooperatives/{coopId}/members`, `GET .../members`, `PATCH .../members/{id}` | **RF-32**, **RF-38** | Query params: `?status=ACTIVE&search={query}&page=1`. Padrón de socios y asignación de predios. |
| **RF-DEV-23** | **Proyecciones de Acopio y Excel** | `GET /api/v1/cooperatives/{coopId}/acopio-projections` | **RF-33**, **RF-39** | Query params: `?season=2026&oliveType=GREEN,BLACK&format=xlsx`. Proyección y descarga Excel. |
| **RF-DEV-24** | **Directivas Técnicas Agronómicas** | `POST /api/v1/cooperatives/{coopId}/directives`, `GET .../directives` | **RF-34** | Body: `{ title, content, category, targetSectorId, deadlineDate }`. Directivas segmentadas por zona. |
| **RF-DEV-25** | **Pesajes en Tolva y Desvíos** | `POST .../weighing-records`, `GET .../reception-deviations` | **RF-35** | Registra descargas en almazara y evalúa desviaciones porcentuales con `?minDeviationPercentage=15`. |
| **RF-DEV-26** | **Crear Suscripción (Checkout)** | `POST /api/v1/subscriptions` | **RF-04**, **RF-05** | Body: `{ planId, currency: "PEN" o "USD", cooperativeId?: string }`. Retorna `preferenceId`. |
| **RF-DEV-27** | **Webhook de Mercado Pago** | `POST /api/v1/webhooks/mercadopago` | **RF-06** | Receptor asíncrono con verificación de firmas de pasarela para activación inmediata del plan. |
| **RF-DEV-28** | **Ciclo de Vida de Suscripción** | `GET /api/v1/subscriptions`, `PATCH .../{id}`, `DELETE .../{id}` | **RF-04**, **RF-06** | Query param `?userId={id}&status=ACTIVE`. PATCH desactiva auto-renovación y DELETE cancela. |

---

## 5. Fundamentos de Arquitectura Core del Backend (RF-CORE-01 al RF-CORE-06)

Estándares técnicos y de diseño aplicados transversalmente en el backend para consistencia, manejo de errores y documentación viva.

| Código | Requisito de Arquitectura | Descripción Técnica y Estándar | Componente o Patrón |
| :--- | :--- | :--- | :--- |
| **RF-CORE-01** | **Nomenclatura Snake_Case y Pluralización Física** | Configuración automática en ORM mapeando clases PascalCase a tablas pluralizadas snake_case (ej. PlotSampling -> plot_samplings) y propiedades a columnas snake_case. | PhysicalNamingStrategyStandardImpl / Mapeo ORM |
| **RF-CORE-02** | **Manejo Centralizado de Excepciones** | Interceptor global (@RestControllerAdvice) que formatea errores bajo la norma RFC 7807 / RFC 9457 (Problem Details) sin exponer jamás trazas de pila (stacktraces). | GlobalExceptionHandler + Problem Details |
| **RF-CORE-03** | **Patrón Result Funcional** | Tipo contenedor monádico Result(T, E) (Success o Failure) para control de flujo explícito en casos de uso sin lanzar excepciones costosas. | Patrón de Diseño Funcional Result |
| **RF-CORE-04** | **Eventos de Dominio en Agregados** | Registro y despacho desacoplado de eventos durante cambios de estado (AggregateRoot -> DomainEventPublisher), soportando colas hacia WhatsApp (RF-08). | DomainEventPublisher + AbstractAggregateRoot |
| **RF-CORE-05** | **Internacionalización en Backend** | Interceptor que lee la cabecera Accept-Language y resuelve dinámicamente mensajes mediante catálogos de recursos (MessageSource) en Español (es) e Inglés (en). | AcceptHeaderLocaleResolver + MessageSource |
| **RF-CORE-06** | **Documentación Viva de APIs con Swagger** | Generación automatizada de contratos interactivos accesibles en `/swagger-ui.html` y `/v3/api-docs` con esquemas de datos, ejemplos y autenticación JWT. | SpringDoc OpenAPI 3.0 / Swagger UI |

---

## 6. Requisitos de Investigación Técnica: Spikes (RF-SPK-01 al RF-SPK-06)

Pruebas de concepto (PoC) e investigaciones técnicas que mitigan riesgos de arquitectura e integración de terceros previo al desarrollo.

| Código | Requisito Spike (Investigación) | RFs Mitigados | Criterio de Aceptación / PoC Entregable | Valor para el Negocio / Mitigación de Riesgo |
| :--- | :--- | :---: | :--- | :--- |
| **RF-SPK-01** | **Generación de PDF y Excel en Docker** | **RF-39**, **RF-DEV-11**, **RF-DEV-23** | PoC que genere reportes PDF con mapas y libros Excel de 1,000 filas en menos de 1.5 s con memoria menor o igual a 80 MB. | Previene caídas del servidor por fugas de memoria al descargar reportes simultáneos de SENASA. |
| **RF-SPK-02** | **Integración Mercado Pago Multimoneda** | **RF-04**, **RF-05**, **RF-06**, **RF-DEV-26** | Prototipo Sandbox validado procesando cobros en PEN (Yape/Plin) y USD (tarjetas) con verificación de webhooks. | Mitiga riesgos de cobros fallidos, fraude o inconsistencias en la activación de planes. |
| **RF-SPK-03** | **Broker MQTTS y Resiliencia IoT** | **RF-14**, **RF-15**, **RF-DEV-12** | Broker Mosquitto con TLS (puerto 8883) y Last Will and Testament (LWT) que detecte caídas de nodo en menos de 30 s. | Asegura que la migración a sensores físicos en el siguiente ciclo sea transparente y resistente a cortes. |
| **RF-SPK-04** | **Calibración Modelo Erez en TimescaleDB** | **RF-25**, **RF-26**, **RF-DEV-16** | Algoritmo de porciones de frío con window functions contrastado con series históricas térmicas de SENAMHI Tacna. | Evita diagnósticos erróneos de floración ante inviernos cálidos provocados por El Niño. |
| **RF-SPK-05** | **Índices Espaciales PostGIS GIST** | **RF-09**, **RF-10**, **RF-DEV-07** | Consultas ST_Contains y ST_Area geodésicas comprobadas resolviendo contención de nodos en predios en menos de 20 ms. | Garantiza precisión milimétrica en el cálculo de hectáreas y renderizado fluido del mapa de cartera. |
| **RF-SPK-06** | **Sincronización Delta Offline-First Móvil** | **RF-21**, **RF-DEV-08** | PoC en cliente móvil con SQLite (Room/sqflite) registrando 20 muestras desconectadas y sincronizando sin duplicados al reconectar. | Garantiza que Teodoro Mamani trabaje con total tranquilidad sin temor a perder registros en campo. |

---

## 7. Requisitos de la Landing Page Web (RF-LP-01 al RF-LP-11)

Especificación de la presencia web pública de captación y redirección a tiendas de aplicaciones para Viora.

| Código | Requisito Funcional (Landing Page) | Adaptación y Razón Técnica | Valor para el Negocio / Impacto Comercial |
| :--- | :--- | :--- | :--- |
| **RF-LP-01** | **Propuesta de Valor (Hero Section)** | Comunica cómo romper la vecería olivarera mediante regulación de carga frutal y telemetría IoT. | Reduce la tasa de rebote (bounce rate) al explicar en 5 segundos el problema crítico que resuelve el SaaS. |
| **RF-LP-02** | **Redirección a Tiendas Móviles (CTAs)** | Botones de descarga y badges oficiales hacia Google Play Store y Apple App Store. | Canaliza el tráfico hacia la instalación de las aplicaciones móviles en smartphones y tablets. |
| **RF-LP-03** | **Beneficios para el Productor Olivarero** | Sección para Teodoro Mamani destacando carga objetivo, ventana de aclareo, horas de frío y calibres mayores. | Genera identificación inmediata con el agricultor familiar al abordar su angustia por el año sin cosecha. |
| **RF-LP-04** | **Beneficios para el Gestor Técnico** | Sección para Rubén Ticona explicando acopio agregado, mapa GIS de predios, pesajes y directivas técnicas. | Activa el canal de captación B2B, facilitando convenios comerciales con cooperativas de Tacna y la región sur. |
| **RF-LP-05** | **Métricas de Impacto Lean UX** | Panel cuantitativo: reducción esperada de BBI >= 0.10 tras 2 campañas, error acopio menor a 25% y estabilidad de caja. | Aporta sustento científico y credibilidad a las promesas del producto ante agricultores escépticos. |
| **RF-LP-06** | **Video Promocional del Producto** | Reproductor de video de alta definición mostrando la app operando al pie del olivo en La Yarada. | Demuestra la sencillez de uso en campo, elevando el tiempo de permanencia y la tasa de conversión a descargas. |
| **RF-LP-07** | **Presentación del Equipo y Video Fundadores** | Fichas del equipo fundador (roles y enlaces profesionales) y reproductor de video de presentación. | Humaniza la marca, transmite solvencia técnica y genera confianza ante directivas agrarias e inversores. |
| **RF-LP-08** | **Planes de Precios Multimoneda (PEN / USD)** | Tabla comparativa de precios del Plan Productor (por ha/año) y Plan Cooperativo con selector Soles/Dólares. | Transparenta los costos del software antes de la descarga, eliminando sorpresas o fricciones tarifarias. |
| **RF-LP-09** | **Llamado a la Acción Final y Redes Oficiales** | Bloque final (Try Viora now) con enlaces oficiales a YouTube, Facebook, X, Instagram y LinkedIn. | Consolida la conversión al final de la página y fomenta la comunidad sin saturar canales de soporte privado. |
| **RF-LP-10** | **Consulta de Términos de Servicio** | Acceso en pie de página a condiciones de uso del SaaS, licencias y delimitación de responsabilidades. | Otorga certeza jurídica contractual a Viora, a los productores y a las entidades cooperativas. |
| **RF-LP-11** | **Consulta de Política de Privacidad** | Acceso en pie de página a la política de tratamiento y confidencialidad de datos agrícolas (Ley N° 29733). | Mitiga el recelo de productores cautelosos sobre el uso o difusión de sus datos de cosecha y precios. |

---

## 8. Requisitos No Funcionales: Móvil y Backend (RNF-01 al RNF-20)

Atributos de calidad de arquitectura, plataforma y desempeño bajo el estándar internacional ISO/IEC 25010.

| Código | Atributo ISO 25010 | Requisito No Funcional | Métrica / Umbral Aceptable | Justificación Técnica |
| :--- | :--- | :--- | :--- | :--- |
| **RNF-01** | Internacionalización | Soporte multilingüe en recursos i18n soportando Español (es) e Inglés (en). | 100% de textos parametrizados; cambio de idioma en caliente. | Habilita la expansión comercial hacia Chile, Argentina y mercados globales. |
| **RNF-02** | Formato Temporal | Almacenamiento universal en UTC (ISO 8601) con visualización en hora local (America/Lima). | Precisión en milisegundos (TIMESTAMPTZ); formato DD/MM/AAAA HH:mm. | Los modelos de frío y fertirriego dependen de la hora solar astronómica exacta. |
| **RNF-03** | Multimoneda | Formateo dinámico en Soles (S/ PEN) y Dólares ($ USD) con aritmética de 4 decimales. | Cero errores de redondeo en liquidaciones y pasarelas de pago. | Atiende gastos locales en soles y contratos de exportación en dólares. |
| **RNF-04** | Unidades de Medida | Normalización bajo el Sistema Internacional de Unidades (SI): ha, kg, t, °C, MPa y % vol. | Cero ambigüedad en magnitudes en reportes, gráficas y fórmulas. | Coherencia científica de modelos matemáticos (Hoblyn, Erez, Shackel). |
| **RNF-05** | Plataforma Productor | App Nativa Android (Kotlin + Jetpack Compose) optimizada para gama media/baja rural. | Android 10.0+ (API 29); RAM menor o igual a 120 MB; huella digital menor a 1 s; alto contraste. | Agricultores operan bajo sol intenso con teléfonos económicos de campo. |
| **RNF-06** | Plataforma Gestor | App Cross-Platform (Flutter / React Native) para Android e iOS en smartphones y tablets. | iOS 15.0+ y Android 10.0+; renderizado a 60 FPS; vista Master-Detail. | Permite al gestor alternar entre visitas a campo y análisis denso en tablets. |
| **RNF-07** | Persistencia Offline | Persistencia local en SQLite (Room ORM en Android / sqflite en Cross-Platform) con SQLCipher. | Integridad referencial local; retención de caché 30 días; 0 pérdida de datos. | Permite operar en sectores de La Yarada sin cobertura celular. |
| **RNF-08** | Persistencia Espacial | Base de datos central PostgreSQL con extensión geoespacial PostGIS. | Índices espaciales GIST; consultas geodésicas en microsegundos; ACID. | Las parcelas son polígonos vectoriales geodésicos reales. |
| **RNF-09** | Persistencia IoT | Almacenamiento de telemetría de sensores mediante particionamiento temporal o TimescaleDB. | Ingesta de 5,000 métricas/minuto; agregaciones de frío en menos de 150 ms. | Lecturas continuas saturarían una base relacional estándar sin particiones. |
| **RNF-10** | Caché en Memoria | Uso de Redis para sesiones de usuario, listas negras de JWT y colas de tareas. | Latencia en caché menor a 5 ms; desacopla tareas pesadas del ciclo HTTP. | Evita saturar la base de datos ante picos de consultas concurrentes. |
| **RNF-11** | Sincronización Delta | Protocolo delta basado en timestamps UTC y resolución de conflictos Last-Write-Wins. | Sincronización automática en segundo plano al recuperar red celular. | Optimiza planes de datos rurales al transmitir solo registros modificados. |
| **RNF-12** | Tolerancia Offline | 100% de las funciones de campo (muestreos, podas, consultas) operables sin internet. | Cero pantallas de error bloqueantes por falta de conectividad en campo. | Erradica la frustración del productor olivarero al trabajar en el predio. |
| **RNF-13** | Eficiencia de Red | Compresión Gzip/Brotli y paginación estricta en respuestas de la API REST. | Payload de sincronización menor a 50 KB; bundle inicial de la app menor a 25 MB. | Facilita descargas sobre redes móviles 3G/4G rurales inestables. |
| **RNF-14** | Rendimiento de API | Latencia de respuesta en endpoints bajo condiciones normales de carga de red. | CRUD simple p95 menor a 300 ms; consultas analíticas complejas p95 menor a 1.5 s. | Provee una experiencia ágil y sin congelamientos de interfaz. |
| **RNF-15** | Arranque de Apps | Tiempos de carga y renderizado de interfaces móviles nativas y cross-platform. | Cold Start menor a 2.0 s; Warm Start menor a 1.0 s; transiciones menor a 100 ms. | Vital para que usuarios no tecnificados perciban la app como ligera y ágil. |
| **RNF-16** | Cifrado en Tránsito | Comunicaciones seguras mediante HTTPS con TLS 1.3 y MQTTS con TLS (puerto 8883). | Calificación mínima SSL Labs: Grado A; certificados oficiales válidos. | Previene ataques de interceptación (Man-in-the-Middle) de datos o pagos. |
| **RNF-17** | Autenticación Segura | Tokens criptográficos JWT firmados asimétricamente con rotación de credenciales. | Access Token con vida de 15 min; Refresh Token seguro con rotación. | Protege las cuentas contra secuestro de sesión y revocación inmediata. |
| **RNF-18** | Aislamiento de Datos | Políticas de aislamiento multinquilino en base de datos (Row-Level Security - RLS). | Imposibilidad matemática de que un productor acceda a datos de otro socio. | Garantiza confidencialidad absoluta de volúmenes y precios entre socios. |
| **RNF-19** | Disponibilidad (SLA) | Nivel de servicio operativo de la plataforma en la nube durante el ciclo productivo. | SLA mayor o igual a 99.5% en horario agrícola (06:00 a 20:00 UTC-5); paradas nocturnas. | La plataforma es crítica en la corta ventana de aclareo (3 semanas al año). |
| **RNF-20** | Mantenibilidad | Arquitectura limpia desacoplada (Clean Architecture) documentada con OpenAPI 3.0. | Cobertura de pruebas unitarias mayor o igual a 70% en capa de dominio y casos de uso. | Asegura mantenibilidad a largo plazo y desacople entre módulos de software. |

---

## 9. Requisitos No Funcionales: Landing Page y DevOps

### Landing Page Web (RNF-LP-01 al RNF-LP-06)

| Código | Atributo de Calidad | Requisito No Funcional | Métrica / Umbral Aceptable | Justificación Técnica |
| :--- | :--- | :--- | :--- | :--- |
| **RNF-LP-01** | Internacionalización | Selector de idioma (Español / Inglés) con detección automática y persistencia. | 100% de textos parametrizados; cambio de idioma instantáneo en cliente. | Permite la lectura a compradores extranjeros de aceituna e inversores. |
| **RNF-LP-02** | Diseño Responsivo | Adaptabilidad Mobile-First fluida en smartphones, tablets, laptops y desktop. | Breakpoints 480px, 768px, 1200px; 0 scroll horizontal; botones mayor o igual a 48 px. | Más del 75% del tráfico agrícola proviene de enlaces en WhatsApp móvil. |
| **RNF-LP-03** | Accesibilidad (a11y) | Cumplimiento estricto de la norma internacional W3C WCAG 2.1 Nivel AA. | Contraste de color mayor o igual a 4.5:1; navegación por teclado; textos alternativos alt. | Agricultores mayores (como Teodoro, 58 años) tienen fatiga visual bajo el sol. |
| **RNF-LP-04** | Rendimiento Web | Optimización de activos estáticos, minificación y carga diferida (lazy loading). | LCP menor o igual a 2.0 s en 4G; INP menor o igual a 100 ms; Lighthouse mayor o igual a 90/100. | Sitios pesados no cargan en zonas rurales intermitentes, provocando abandono. |
| **RNF-LP-05** | Redirección Smart | Detección automática del sistema operativo móvil para destacar la tienda respectiva. | En Android destaca Google Play; en iOS destaca App Store; en PC badges/QR. | Reduce la fricción de descarga al mínimo: un clic lleva a la tienda del usuario. |
| **RNF-LP-06** | Posicionamiento SEO | HTML5 semántico, metadatos descriptivos y etiquetas Open Graph para WhatsApp y redes. | Metadescripción atractiva; marcado semántico; Lighthouse SEO mayor o igual a 95/100. | Posiciona orgánicamente en búsquedas de vecería y acopio en Tacna y Perú. |

### DevOps y Plataforma Backend (RNF-DEV-01 al RNF-DEV-05)

| Código | Atributo de Calidad | Requisito No Funcional | Métrica / Umbral Aceptable | Justificación Técnica |
| :--- | :--- | :--- | :--- | :--- |
| **RNF-DEV-01** | Portabilidad y DevOps | Contenerización multi-entorno con Docker y Docker Compose orquestando API, BD, Caché y MQTT. | Despliegue con un único comando: `docker compose up -d`; imagen final menor a 180 MB. | Elimina el clásico problema en mi máquina sí funciona entre desarrollo y producción. |
| **RNF-DEV-02** | Arquitectura RESTful | Cumplimiento del estándar RESTful Nivel 2 de Richardson con códigos de estado semánticos. | 100% endpoints con verbos correctos; respuestas estándar (200, 201, 204, 400, 404). | Facilita la integración predecible con clientes móviles y librerías de red (Retrofit / Dio). |
| **RNF-DEV-03** | Seguridad Web | Políticas de CORS restrictivas y cabeceras de protección HTTP (HSTS, X-Frame-Options: DENY). | Cabeceras de seguridad activas; rechazo de llamadas de orígenes no autorizados. | Previene ataques de falsificación de peticiones (CSRF) y accesos indebidos. |
| **RNF-DEV-04** | Configuración Segura | Gestión de secretos mediante variables de entorno (.env no versionados) bajo The Twelve-Factor App. | 0 credenciales en código fuente (git-secrets); fallo fail-fast al arranque si faltan variables. | Previene fugas de claves de pasarelas de pago o base de datos en repositorios. |
| **RNF-DEV-05** | Observabilidad | Sondas de diagnóstico (Health Checks) accesibles en `/actuator/health` o `/healthz`. | Tiempo de respuesta menor a 50 ms; HTTP 200 OK si PostgreSQL/Redis/MQTT están vivos. | Permite que Docker o Kubernetes reinicien contenedores caídos automáticamente. |

---

## 10. Resumen Cuantitativo del Ecosistema

* **Total de Requisitos Funcionales:** **90 RF**
  * Aplicación Móvil: 39 RF (`RF-01` al `RF-39`).
  * Developer / API RESTful: 28 RF (`RF-DEV-01` al `RF-DEV-28`).
  * Arquitectura Core: 6 RF (`RF-CORE-01` al `RF-CORE-06`).
  * Spikes / Investigación Técnica: 6 RF (`RF-SPK-01` al `RF-SPK-06`).
  * Landing Page: 11 RF (`RF-LP-01` al `RF-LP-11`).
* **Total de Requisitos No Funcionales:** **31 RNF**
  * Plataforma Móvil y Backend (ISO 25010): 20 RNF (`RNF-01` al `RNF-20`).
  * Landing Page Web: 6 RNF (`RNF-LP-01` al `RNF-LP-06`).
  * DevOps y Plataforma: 5 RNF (`RNF-DEV-01` al `RNF-DEV-05`).
* **Gran Total Consolidado:** **121 Requisitos** estructurados, trazables y clasificados.
