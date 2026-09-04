# Formato Estándar: User Journey Map (UXPressia Template)

Este documento define la estructura bidimensional, el orden estricto de lectura y las pautas de formateo para transcribir e interpretar diagramas de User Journey Map (UJM) basados en la plantilla estándar de UXPressia.

---

## 1. Estructura Matricial General

El mapa se compone de dos ejes:
* **Eje Horizontal (Fases y Pasos):** Representa el avance cronológico del usuario.
* **Eje Vertical (Capas / Swimlanes):** Representa las diferentes dimensiones de análisis para cada paso.

---

## 2. Eje Horizontal: Fases del Journey (Columnas)

El flujo cronológico se divide en 5 etapas secuenciales:

1. **AWARE (Búsqueda y captación):** El usuario identifica una necesidad y busca o atiende nuevas oportunidades/clientes.
2. **JOIN (Logística y preparación):** Planificación previa, consolidación de datos y preparación antes de la ejecución directa.
3. **USE (Inspección y muestreo):** Ejecución operativa en campo o uso directo del servicio/herramienta.
4. **DEVELOP (Análisis y recetario):** Procesamiento de datos recolectados, análisis técnico y emisión de soluciones/recomendaciones.
5. **LEAVE (Seguimiento y cierre):** Medición de resultados, fidelización, cierre administrativo y monitoreo posterior.

---

## 3. Eje Vertical: Capas de Información (Filas)

Para cada una de las 5 columnas, se deben extraer y clasificar los datos en el siguiente orden estricto:

### 1. User Actions (Acciones del Usuario)
* **Descripción:** Lista de actividades concretas, tareas y comportamientos observables que el usuario ejecuta en esa fase.
* **Formato:** Lista con viñetas (`*`).

### 2. Process and Channels (Procesos y Canales)
* **Descripción:** Los canales de contacto, medios físicos, herramientas o dispositivos involucrados en la interacción (ej. *In person, Smartphone, Phone, Laptop, PC, Recipe/Documento*).
* **Formato:** Diagrama circular/secuencial o lista de canales ordenados cronológicamente por interacción.

### 3. Goals & Experiences (Objetivos y Experiencias)
* **Descripción:** 
  * **Meta (Goal):** Propósito concreto que busca lograr en ese paso.
  * **Experiencia (Experience):** Narrativa cualitativa sobre cómo vivencia internamente ese momento.
* **Formato:** Párrafos diferenciados por etiquetas en negrita (**Meta:** / **Experiencia:**).

### 4. Feelings and Thoughts (Sentimientos y Curva Emocional)
* **Descripción:** Estado emocional a lo largo del recorrido.
  * **Curva emocional:** Gráfico de línea que sube o baja reflejando satisfacción vs. fricción.
  * **Emociones/Sentimientos clave:** Identificación del emoji y estado afectivo (ej. *Anticipation, Frustration, Annoyance, Despondence, Sadness*).
* **Formato:** Nivel emocional aproximado (Positivo / Neutro / Negativo / Crítico) + Etiqueta del sentimiento.

### 5. Pain Points (Puntos de Dolor)
* **Descripción:** Fricciones, barreras, incertidumbres, ineficiencias o riesgos identificados en cada paso.
* **Formato:** Lista con viñetas (`*`).

### 6. Opportunities (Oportunidades de Solución)
* **Descripción:** Iniciativas de diseño, funcionalidades de software o mejoras de proceso planteadas para resolver los puntos de dolor detectados.
* **Formato:** Lista con viñetas (`*`).

---

## 4. Plantilla de Salida (Markdown Recomendado)

Para procesar o generar un Journey Map completo, la IA debe estructurar el archivo siguiendo este esquema:

```markdown
# User Journey Map: [Nombre del Persona / Mapa]

## Metadatos
* **Mapa:** [Nombre del mapa]
* **Actor principal:** [Rol o arquetipo analizado]

---

## Fase: [AWARE | JOIN | USE | DEVELOP | LEAVE] - [Subtítulo del Paso]

### User Actions
* [Acción 1]
* [Acción 2]

### Process & Channels
* **Canales:** [Canal 1] -> [Canal 2] -> [Canal 3]

### Goals & Experiences
* **Meta:** [Objetivo del usuario]
* **Experiencia:** [Narrativa de la experiencia]

### Feelings & Thoughts
* **Nivel Emocional:** [Positivo / Neutral / Negativo / Valle crítico]
* **Sentimiento clave:** [Ej. Anticipación / Frustración / Tristeza]

### Pain Points
* [Punto de dolor 1]
* [Punto de dolor 2]

### Opportunities
* [Oportunidad / Feature 1]
* [Oportunidad / Feature 2]