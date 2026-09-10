# Bounded Context Canvas — Legend (Convención Visual y Notación)

Este documento formaliza la leyenda y nomenclatura visual utilizada en los tableros y transcripciones de los **Bounded Context Canvases** del ecosistema Viora, clasificando los tipos de mensajes y colaboradores que interactúan en las fronteras de cada contexto delimitado.

![Legend](00-legend.png)

---

## 1. Messages (Tipos de Mensajes)

Los mensajes modelan los intercambios de información e intenciones entre colaboradores y agregados:

| Elemento Visual | Tipo de Mensaje | Color / Notación | Semántica y Propósito en DDD |
| :---: | :--- | :--- | :--- |
| <img src="https://via.placeholder.com/15/3498DB/000000?text=+" width="15" height="15" /> 🟦 | **Commands** | Azul claro (`#3498DB` / `#D0E6FF`) | **Intenciones de Acción:** Solicitudes imperativas directas enviadas por un actor, sistema o política hacia un agregado para mutar su estado o ejecutar una operación de negocio. |
| <img src="https://via.placeholder.com/15/FF9F40/000000?text=+" width="15" height="15" /> 🟧 | **Events** | Naranja (`#FF9F40` / `#FFE0B2`) | **Hechos Consumados:** Notificaciones inmutables en tiempo pasado (*PascalCase*) que registran un cambio de estado efectivo o un hito agronómico verificado dentro del agregado. |
| <img src="https://via.placeholder.com/15/9B59B6/000000?text=+" width="15" height="15" /> 🟪 | **Policies** | Lila / Púrpura (`#9B59B6` / `#F3D9FF`) | **Reglas Reactivas y Sagas:** Orquestadores de comportamiento asíncrono bajo el patrón *"WHENEVER [Domain Event] THEN [Execute Command]"* que automatizan transiciones o coordinan procesos entre contextos. |

---

## 2. Collaborators (Tipos de Colaboradores)

Los colaboradores representan los orígenes (*Inbound*) y destinos (*Outbound*) de las comunicaciones del Bounded Context:

| Elemento Visual | Tipo de Colaborador | Notación Visual | Semántica y Rol en el Ecosistema |
| :---: | :--- | :---: | :--- |
| ☁️ | **Bounded Context / Internal Systems** | Nube delimitada morada / azul | **Contextos Delimitados Internos:** Módulos autónomos del dominio de Viora que colaboran mediante suscripción a eventos o despacho de comandos (e.g., *Phenology*, *Thinning*, *Harvest*). |
| ⚙️ | **External Systems** | Engranaje industrial gris | **Sistemas y Servicios Externos:** Plataformas de terceros situadas fuera de la frontera arquitectónica de Viora con las que se intercambian datos o se delegan pagos y notificaciones (e.g., *Mercado Pago Checkout Pro*, *SENAMHI Weather API*, *Mapbox GIS*, *Transactional Mail Service*). |

---

## 3. Resumen de Flujo de Interacción

```
+-----------------------------------+
|         INBOUND MESSAGES          |
|                                   |
|  [Command] Intención de acción    | ───┐
|  (Productor / Aplicación Móvil)   |    │
+-----------------------------------+    │
                                         ▼
                   +───────────────────────────────────────────+
                   │           BOUNDED CONTEXT (CORE)          │
                   │                                           │
                   │  - Agregados transaccionales              │
                   │  - Invariantes y decisiones de negocio    │
                   │  - Políticas reactivas (Whenever/Then)    │
                   +───────────────────────────────────────────+
                                         │
                                         ▼
+-----------------------------------+    │
|         OUTBOUND MESSAGES         |    │
|                                   | ───┘
|  [Event] Hecho inmutable emitido  | ───►  ☁️ Otros Bounded Contexts
|  (Notificación de cambio)         | ───►  ⚙️ Sistemas Externos
|                                   | ───►  📱 Aplicación Móvil
+-----------------------------------+
```
