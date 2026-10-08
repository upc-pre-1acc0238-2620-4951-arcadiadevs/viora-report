# Instrucciones para Agente Local: Captura de Evidencias de Swagger UI

Este documento contiene la guía técnica paso a paso para que un agente local con acceso a navegador web (Playwright, Puppeteer, Selenium o interacción manual automatizada) capture las evidencias reales de la documentación interactiva OpenAPI / Swagger UI de **Viora Platform**.

---

## 1. Parámetros Generales y Destino de los Archivos

* **URL de Producción (Recomendada):** `https://viora-platform.onrender.com/swagger-ui/index.html`
* **URL Alternativa (Local si está corriendo):** `http://localhost:8080/swagger-ui/index.html`
* **Directorio de Destino:**  
  `report/assets/execution-evidence/sprint-1/web-services/`
* **Formato de Imagen:** PNG (resolución recomendada: 1280x720 o 1920x1080 con escala/zoom al 100% o 110% para máxima legibilidad).
* **Nombres de Archivo Requeridos:**
  1. `01-swagger-create-plot.png`
  2. `02-swagger-submit-sampling.png`
  3. `03-swagger-error-rfc7807.png`

---

## 2. Flujo Detallado de Captura Paso a Paso

### Captura 1: Delimitación y Registro de Cuartel Olivícola
* **Archivo de Salida:** `report/assets/execution-evidence/sprint-1/web-services/01-swagger-create-plot.png`
* **Objetivo:** Demostrar la interacción en vivo del método `POST /api/v1/plots` recibiendo geometría GeoJSON en WGS84 y obteniendo la respuesta exitosa `201 Created`.

#### Pasos de Ejecución:
1. Navega a `https://viora-platform.onrender.com/swagger-ui/index.html`.
2. Ubica la sección del controlador **`plot-controller`**.
3. Haz clic en el endpoint **`POST /api/v1/plots`** (Create Plot).
4. Haz clic en el botón **`Try it out`**.
5. En el área de texto del **Request body** (`application/json`), ingresa el siguiente JSON de prueba (Datos de La Yarada-Los Palos, Tacna):
```json
{
  "name": "Cuartel San Jeronimo - Tacna",
  "variety": "CRIOLLA",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0
}
```
6. Haz clic en el botón azul **`Execute`**.
7. En la sección **Responses**, verifica que aparezca **`Code 201`** con un cuerpo de respuesta similar a:
```json
{
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "name": "Cuartel San Jeronimo - Tacna",
  "variety": "CRIOLLA",
  "areaHa": 1.25,
  "treeDensity": 286,
  "rowSpacingM": 7.0,
  "treeSpacingM": 5.0,
  "status": "ACTIVE",
  "revision": 0
}
```
8. **Acción de Captura:** Desplaza la vista para que se aprecie con claridad la cabecera del método `POST /api/v1/plots`, el bloque del Request Body y el recuadro de Server response con el código `201` y el JSON de salida.
9. Guarda la captura como `01-swagger-create-plot.png` en la carpeta indicada.
10. **IMPORTANTE:** Copia el valor del campo `"id"` (UUID) retornado en la respuesta para usarlo en los siguientes dos pasos como `plotId`.

---

### Captura 2: Ingesta de Lote de Muestreo de Campo ($n \ge 5$)
* **Archivo de Salida:** `report/assets/execution-evidence/sprint-1/web-services/02-swagger-submit-sampling.png`
* **Objetivo:** Demostrar la sincronización de muestreo fenológico desde la app móvil cumpliendo el umbral estadístico de representatividad ($n \ge 5$ árboles).

#### Pasos de Ejecución:
1. En la consola Swagger UI, ubica la sección **`thinning-logbook-controller`**.
2. Haz clic en el endpoint **`POST /api/v1/plots/{plotId}/samplings`** (Submit Sampling).
3. Haz clic en **`Try it out`**.
4. En el campo de parámetro **`plotId`** (en la tabla de parámetros), pega el UUID obtenido en la Captura 1.
5. En el área del **Request body**, ingresa el siguiente lote con 5 observaciones:
```json
{
  "clientBatchId": "c9e8a7b6-1234-4567-89ab-cdef01234567",
  "campaignYear": 2026,
  "samples": [
    { "treeNumber": 1, "shootsCount": 10, "fruitsCount": 85 },
    { "treeNumber": 2, "shootsCount": 10, "fruitsCount": 90 },
    { "treeNumber": 3, "shootsCount": 10, "fruitsCount": 88 },
    { "treeNumber": 4, "shootsCount": 10, "fruitsCount": 82 },
    { "treeNumber": 5, "shootsCount": 10, "fruitsCount": 93 }
  ]
}
```
6. Haz clic en **`Execute`**.
7. En **Responses**, verifica que aparezca **`Code 201`** (o `200`) mostrando en el JSON:
   * `"isRepresentative": true`
   * `"treesNeeded": 0`
   * `"sampledTreesCount": 5`
   * `"meanFruitsPerShoot": 8.76` (o similar valor calculado)
8. **Acción de Captura:** Encuadra la vista mostrando la ruta `POST /api/v1/plots/{plotId}/samplings`, el valor del parámetro `plotId` y la respuesta del servidor con `isRepresentative: true`.
9. Guarda la captura como `02-swagger-submit-sampling.png` en la carpeta indicada.

---

### Captura 3: Protección de Concurrencia Optimista (Error 412 RFC 7807)
* **Archivo de Salida:** `report/assets/execution-evidence/sprint-1/web-services/03-swagger-error-rfc7807.png`
* **Objetivo:** Demostrar el rechazo controlado ante colisiones concurrentes al mutar un cuartel con una cabecera `If-Match` desfasada, recibiendo `412 Precondition Failed` bajo el estándar RFC 7807 (*Problem Details*).

#### Pasos de Ejecución:
1. En la consola Swagger UI, regresa a la sección **`plot-controller`**.
2. Haz clic en el endpoint **`PUT /api/v1/plots/{plotId}`** (Update Plot).
3. Haz clic en **`Try it out`**.
4. En el campo **`plotId`**, pega el UUID del cuartel creado en el Paso 1.
5. En el campo de cabecera **`If-Match`**, escribe deliberadamente el valor desfasado:  
   `"999"` (o `999`).
6. En el **Request body**, ingresa datos de actualización de marco:
```json
{
  "name": "Cuartel San Jeronimo - Modificado",
  "variety": "CRIOLLA",
  "polygonGeoJson": "{\"type\":\"Polygon\",\"coordinates\":[[[-70.25,-18.05],[-70.24,-18.05],[-70.24,-18.06],[-70.25,-18.06],[-70.25,-18.05]]]}",
  "rowSpacingM": 6.0,
  "treeSpacingM": 4.0
}
```
7. Haz clic en **`Execute`**.
8. En **Responses**, verifica que aparezca **`Code 412`** (`Precondition Failed`) con la respuesta semántica estándar RFC 7807:
```json
{
  "type": "about:blank",
  "title": "Precondition Failed",
  "status": 412,
  "detail": "The plot revision has changed. Please reload.",
  "instance": "/api/v1/plots/..."
}
```
9. **Acción de Captura:** Encuadra la vista capturando el endpoint `PUT /api/v1/plots/{plotId}`, el parámetro de cabecera `If-Match` y la caja de respuesta roja/anaranjada con el código `412` y el JSON `ProblemDetail`.
10. Guarda la captura como `03-swagger-error-rfc7807.png` en la carpeta indicada.

---

## 3. Checklist de Validación Final para el Agente

Antes de finalizar la tarea, verifica:
- [ ] Los 3 archivos existen en `report/assets/execution-evidence/sprint-1/web-services/`.
- [ ] Tienen extensión `.png` y no están vacíos o corruptos.
- [ ] El texto de las capturas es nítido y legible (sin blur excesivo).
- [ ] Se ejecutaron sobre la interfaz real de Swagger UI (fondo blanco/gris con franjas verde para POST y azul para PUT).
