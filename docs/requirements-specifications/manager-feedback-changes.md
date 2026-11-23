# Cambios en historias de usuario y technical stories por la validación de la aplicación del gestor

Este documento resume los cambios realizados en `report/chapters/20-requirements-development-software-solution-design/24-requirements-specification.md` a partir de los cinco problemas de la evaluación heurística de la aplicación móvil del gestor técnico (Flutter), registrados en las entrevistas de validación con Juan Maquera y el Ing. Daniel Estrada. El calibre de la proyección de acopio se obtiene del muestreo de frutos.

## Relación entre problemas e historias

| # | Problema heurístico | Historias afectadas |
|---|---|---|
| 1 | Códigos de activación mostrados con una letra por línea (severidad 2) | US45 |
| 2 | Detalle de la parcela sin identificar al socio productor (severidad 2) | US12, TS29, TS60 |
| 3 | Proyección de acopio sin desglose por calibre (severidad 2) | US32, TS30, US24, TS24, US55, TS108 |
| 4 | «Cobertura suficiente» con la mitad de las parcelas muestreadas (severidad 1) | US32, TS30 |
| 5 | Leyenda del semáforo con indicadores de tamaño reducido (severidad 1) | US31 |

## Resumen de cambios

| Historia | Título | Tipo de cambio | Escenarios |
|---|---|---|---|
| US12 | Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS | Escenarios agregados | 4 |
| US24 | Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline | Escenarios agregados | 4, 5 |
| US31 | Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica | Escenarios agregados | 4 |
| US32 | Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa | Escenarios agregados | 4, 5 |
| US45 | Emisión de códigos de patrocinio para socios con asignación de cupo de hectáreas y control de saldo | Escenarios agregados | 5 |
| US55 | Configuración de rangos de calibre de la cooperativa | Nueva | 1, 2, 3 |
| TS24 | Registro y sincronización de muestreos guiados de cuajado en campo | Escenarios agregados | 5, 6 |
| TS29 | Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS | Escenarios agregados | 4 |
| TS30 | Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra | Escenarios agregados | 4, 5 |
| TS60 | Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura | Escenarios agregados | 4 |
| TS108 | Consulta y actualización de rangos de calibre de la cooperativa | Nueva | 1, 2, 3, 4, 5 |

## Detalle por historia

### US12. Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS

- **Usuario:** Gestor Técnico de Cooperativa
- **Prioridad:** Alta
- **Épica:** EP03
- **Cambio:** escenarios agregados.

**Escenario 4: Identificación del socio productor en el detalle de la parcela**

**Given** un gestor técnico que abre el detalle de una parcela socia desde el mapa, la lista por prioridad o las visitas sugeridas. **When** el sistema presenta la parcela con su semáforo, sector y hectáreas. **Then** el encabezado identifica al socio productor con su nombre y su código de socio, rotulados de forma explícita. **And** las tarjetas de visitas sugeridas y de la lista por prioridad muestran el mismo dato, para que el gestor ubique al productor antes de la visita.

### US24. Muestreo guiado de cuajado en campo a pie de árbol con persistencia local offline

- **Usuario:** Productor Olivarero
- **Prioridad:** Alta
- **Épica:** EP06
- **Cambio:** escenarios agregados.

**Escenario 4: Registro opcional del calibre de los frutos**

**Given** un productor que completa una ronda de muestreo en una parcela con frutos en crecimiento. **When** pesa una muestra de frutos e ingresa la cantidad de frutos y su peso. **Then** el sistema calcula el calibre de la ronda en frutos por kilo y lo guarda junto con los conteos de cuajado. **And** el registro del calibre es opcional, de modo que la ronda puede guardarse sin él, también sin conexión a internet.

**Escenario 5: Rechazo de calibre fuera de rango**

**Given** un productor que registra la muestra de frutos de una ronda. **When** ingresa una cantidad de frutos o un peso nulos, o un calibre resultante fuera del rango admisible. **Then** el sistema no guarda el calibre y conserva los conteos de cuajado de la ronda. **And** indica los valores admisibles para la cantidad de frutos y el peso de la muestra.

### US31. Semáforo fenológico reactivo y priorización técnica ante sobrecarga crítica

- **Usuario:** Gestor Técnico de Cooperativa
- **Prioridad:** Alta
- **Épica:** EP08
- **Cambio:** escenarios agregados.

**Escenario 4: Leyenda del semáforo legible en campo**

**Given** un gestor técnico que consulta el semáforo en Riesgo territorial. **When** el sistema presenta la leyenda de niveles del semáforo. **Then** cada nivel (crítico, moderado, óptimo y sin datos) se muestra con un ícono y una etiqueta además del color, con un tamaño de texto legible y contraste suficiente para su lectura al aire libre. **And** la leyenda usa textos breves, de modo que ningún nivel se distinga únicamente por su color.

### US32. Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra para la cooperativa

- **Usuario:** Gestor Técnico de Cooperativa
- **Prioridad:** Alta
- **Épica:** EP08
- **Cambio:** escenarios agregados.

**Escenario 4: Desglose de la proyección por rangos de calibre**

**Given** una cooperativa que configuró los rangos de calibre que emplea en su planta (por ejemplo, de 140 a 260 frutos por kilo) y parcelas socias con muestreo de frutos. **When** el gestor técnico consulta la proyección de acopio de la campaña. **Then** el sistema desglosa las toneladas proyectadas de aceituna verde y negra por rango de calibre. **And** indica como «Sin calibre» el volumen de las parcelas cuyo muestreo no permite estimarlo.

**Escenario 5: Nivel de confianza graduado según la cobertura muestral**

**Given** parcelas socias con distinta cobertura de muestreo en la campaña. **When** el gestor técnico consulta la proyección de acopio. **Then** el sistema muestra un nivel de confianza graduado (baja, media o alta) según el porcentaje de parcelas y hectáreas muestreadas, en lugar de una etiqueta única de cobertura suficiente. **And** indica cuántas parcelas y hectáreas faltan muestrear para alcanzar el siguiente nivel de confianza.

### US45. Emisión de códigos de patrocinio para socios con asignación de cupo de hectáreas y control de saldo

- **Usuario:** Gestor Técnico de Cooperativa
- **Prioridad:** Alta
- **Épica:** EP02
- **Cambio:** escenarios agregados.

**Escenario 5: Presentación legible de los códigos generados**

**Given** un gestor técnico que acaba de generar un lote de códigos de activación en la pantalla de confirmación (`G44`). **When** el sistema presenta los códigos listos para compartir. **Then** cada código se muestra completo en una sola línea, con tipografía de ancho fijo y un control para copiarlo. **And** el formato se mantiene legible en pantallas de distinto ancho, de modo que el gestor pueda dictar o anotar el código sin errores.

### US55. Configuración de rangos de calibre de la cooperativa

- **Usuario:** Gestor Técnico de Cooperativa
- **Prioridad:** Media
- **Épica:** EP08
- **Cambio:** historia nueva.

**Descripción:** **Como** Gestor Técnico de Cooperativa, **quiero** definir los rangos de calibre en frutos por kilo que emplea la planta de mi organización, **para** que la proyección de acopio se desglose con la misma clasificación con la que se recibe la aceituna.

**Escenario 1: Registro de los rangos de calibre de la planta**

**Given** un gestor técnico con licencia vigente que accede a la configuración de calibres de su organización. **When** define rangos consecutivos en frutos por kilo (por ejemplo, de 140 a 180, de 181 a 220 y de 221 a 260) y los guarda. **Then** el sistema registra los rangos para la organización. **And** la proyección de acopio de la campaña pasa a desglosarse con esos rangos.

**Escenario 2: Rechazo de rangos superpuestos o invertidos**

**Given** un gestor técnico editando los rangos de calibre de su organización. **When** ingresa un rango cuyo límite inferior supera al superior o que se superpone con otro rango. **Then** el sistema no guarda la configuración y conserva los rangos vigentes. **And** señala el rango en conflicto para que el gestor lo corrija.

**Escenario 3: Proyección sin rangos configurados**

**Given** una organización que aún no definió sus rangos de calibre. **When** el gestor técnico consulta la proyección de acopio. **Then** el sistema muestra la proyección solo por aceituna verde y negra. **And** ofrece acceder a la configuración de rangos para habilitar el desglose por calibre.

### TS24. Registro y sincronización de muestreos guiados de cuajado en campo

- **Usuario:** Desarrollador de Aplicaciones Cliente
- **Prioridad:** Alta
- **Épica:** EP12
- **Cambio:** escenarios agregados.

**Escenario 5: Registro del calibre de la ronda de muestreo**

**Given** una solicitud POST a `/api/v1/plots/{plotId}/samplings` que incluye el objeto opcional `fruitSample` con `fruitCount` (de 1 a 1000) y `weightGrams` (mayor que 0 y hasta 10 000). **When** la API valida y persiste la ronda de muestreo. **Then** la API responde `201 Created` con `fruitsPerKg` calculado como `fruitCount` × 1000 / `weightGrams`. **And** el calibre de la última ronda que pesó frutos queda disponible para el desglose por calibre de la proyección de acopio.

**Escenario 6: Muestra de frutos inválida**

**Given** una solicitud POST con `fruitSample` cuyo `fruitCount` o `weightGrams` está fuera de sus límites o produce un calibre fuera de la escala comercial de 60 a 2000 frutos por kilo. **When** la API valida la muestra de frutos. **Then** la API responde `400 Bad Request` bajo el estándar RFC 7807 indicando el campo inválido. **And** no registra la ronda hasta que la muestra se corrija o se omita.

### TS29. Consulta de la matriz de riesgo territorial y semáforo sectorial con posicionamiento GPS

- **Usuario:** Desarrollador de Aplicaciones Cliente
- **Prioridad:** Alta
- **Épica:** EP11
- **Cambio:** escenarios agregados.

**Escenario 4: Identificación del socio productor de cada parcela**

**Given** una solicitud GET a `/api/v1/member-plots` autorizada con token de `ROLE_TECHNICAL_MANAGER`. **When** la API construye cada elemento de la respuesta. **Then** cada parcela incluye `producerId`, `producerName` y `memberCode`, el código de activación que canjeó el socio, enmascarado (por ejemplo, `COOP-••2Q`). **And** el detalle de la parcela socia expone los mismos campos, de modo que el cliente rotule al socio sin consultas adicionales.

### TS30. Proyección agregada temprana de volumen de acopio sustentado de aceituna verde y negra

- **Usuario:** Desarrollador de Aplicaciones Cliente
- **Prioridad:** Alta
- **Épica:** EP12
- **Cambio:** escenarios agregados.

**Escenario 4: Desglose por rangos de calibre en la proyección**

**Given** una solicitud GET a `/api/v1/intake-forecasts/{campaignYear}` de una organización con rangos de calibre configurados. **When** la API calcula la proyección agregada de la campaña. **Then** la respuesta incluye `caliberBreakdown` con las toneladas de aceituna verde y negra por rango (`minFruitsPerKg` y `maxFruitsPerKg`). **And** agrupa como `unsizedTons` el volumen de las parcelas estimables sin calibre y como `outOfRangeTons` el de las parcelas cuyo calibre no cae en ningún rango; sin rangos configurados, `caliberBreakdown` va vacío y ambos totales son nulos.

**Escenario 5: Nivel de confianza y muestreo pendiente**

**Given** una solicitud GET a `/api/v1/intake-forecasts/{campaignYear}` autorizada para el gestor técnico. **When** la API evalúa la menor de dos coberturas, la de parcelas muestreadas y la de hectáreas muestreadas, frente a los umbrales configurables de 50% y 80%. **Then** la respuesta incluye `confidenceLevel` (`LOW`, `MEDIUM` o `HIGH`) junto con `pendingPlots` y `pendingHectares` para alcanzar el siguiente nivel. **And** conserva `status` y `coveragePercent` por compatibilidad con los clientes existentes.

### TS60. Consulta de resumen agronómico y ficha técnica de parcela en modo supervisión de solo lectura

- **Usuario:** Desarrollador de Aplicaciones Cliente
- **Prioridad:** Alta
- **Épica:** EP12
- **Cambio:** escenarios agregados.

**Escenario 4: Identificación del socio productor en el detalle de la parcela**

**Given** una solicitud GET a `/api/v1/member-plots/{id}` autorizada con token de `ROLE_TECHNICAL_MANAGER` sobre una parcela de un socio vinculado. **When** la API construye el resumen técnico de la parcela. **Then** la respuesta incluye `producerId`, `producerName` y `memberCode` del socio productor, este último enmascarado. **And** los mismos valores coinciden con los de la parcela en `/api/v1/member-plots`, de modo que el cliente rotule al socio de forma consistente.

### TS108. Consulta y actualización de rangos de calibre de la cooperativa

- **Usuario:** Desarrollador de Aplicaciones Cliente
- **Prioridad:** Media
- **Épica:** EP12
- **Cambio:** historia nueva.

**Descripción:** **Como** desarrollador de aplicaciones cliente, **quiero** consultar y reemplazar los rangos de calibre de la organización mediante GET y PUT a `/api/v1/caliber-ranges`, **para** configurar la clasificación que utiliza la proyección de acopio.

**Escenario 1: Reemplazo exitoso de los rangos de calibre**

**Given** una solicitud PUT a `/api/v1/caliber-ranges` autorizada con token de `ROLE_TECHNICAL_MANAGER` con una lista de hasta 20 rangos (`minFruitsPerKg` y `maxFruitsPerKg`) ordenados del fruto más grande al más chico, consecutivos, sin superposición ni huecos y dentro de la escala de 60 a 2000 frutos por kilo. **When** la API valida y persiste la configuración de la organización. **Then** la API responde `200 OK` con la lista de rangos registrada. **And** las siguientes consultas a `/api/v1/intake-forecasts/{campaignYear}` incluyen el desglose con esos rangos.

**Escenario 2: Rangos superpuestos o invertidos**

**Given** una solicitud PUT con un rango cuyo mínimo supera al máximo, que se superpone con otro, deja un hueco, sale de la escala o excede los 20 rangos. **When** la API valida la lista de rangos. **Then** la API responde `400 Bad Request` bajo el estándar RFC 7807 con `reason` y `rangeIndex` del rango en conflicto. **And** conserva la configuración vigente.

**Escenario 3: Consulta de los rangos configurados**

**Given** una solicitud GET a `/api/v1/caliber-ranges` de un gestor técnico autenticado. **When** la API consulta la configuración de su organización. **Then** la API responde `200 OK` con los rangos registrados, o con una lista vacía si aún no se configuraron.

**Escenario 4: Acceso no autorizado**

**Given** una solicitud GET o PUT emitida por un usuario sin rol de gestor técnico. **When** la API evalúa la autorización del solicitante. **Then** la API responde `403 Forbidden`.

**Escenario 5: Eliminación de la configuración con una lista vacía**

**Given** una solicitud PUT a `/api/v1/caliber-ranges` con una lista de rangos vacía. **When** la API procesa la configuración de la organización. **Then** la API responde `200 OK` y elimina los rangos registrados. **And** la proyección de acopio vuelve a mostrarse sin desglose por calibre.

## Product Backlog

Las historias nuevas se agregaron al Product Backlog para el Sprint 3. Los totales del capítulo pasaron a 167 ítems (55 historias de usuario, 108 technical stories y 4 spikes).

| # Orden | Story ID | Título | Story Points | Sprint |
|---|---|---|---|---|
| 166 | US55 | Configuración de rangos de calibre de la cooperativa | 3 | Sprint 3 |
| 167 | TS108 | Consulta y actualización de rangos de calibre de la cooperativa | 2 | Sprint 3 |

## Pendientes

- Registrar US55 y TS108 en el tablero de Trello del Product Backlog.
- Agregar o actualizar los archivos `.feature` de TS24, TS29, TS30, TS60 y TS108 en `viora-acceptance-tests`.
- Implementar en `viora-platform` los campos `memberCode`, `fruitSample`, `fruitsPerKg`, `caliberBreakdown`, `unsizedTons`, `confidenceLevel`, `pendingPlots` y `pendingHectares`, y el endpoint `/api/v1/caliber-ranges`.
