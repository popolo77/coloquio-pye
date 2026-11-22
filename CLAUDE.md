# Coloquio de Probabilidad y Estadística (TUPaD, UTN)

## ⚠️ Instrucciones para Claude al empezar cada sesión (en cualquier PC)

1. Este archivo es **la única memoria compartida** entre las dos PCs. La memoria automática de Claude es local de cada máquina: no la uses para nada de este proyecto.
2. Leé **"📍 Dónde quedamos"** (justo abajo) y retomá desde ahí **sin pedirme que repita contexto**. Arrancá diciéndome en una línea en qué punto estamos y cuál es el próximo paso.
3. **Al terminar cada bloque** (teoría, práctica o simulacro), actualizá "📍 Dónde quedamos": qué se vio, qué respondí bien o mal y cuál es el próximo paso exacto. Sumá una línea a la bitácora.
4. **`BIBLIA-COLOQUIO.md` es el documento maestro de estudio**: tiene toda la teoría (desde los PDF de la cátedra), tus resultados del TAI, el banco de preguntas reales con respuesta modelo y el machete. Las clases siguen sus capítulos en el orden de su plan (cap. 0). Si algo nuevo aparece (una pregunta del grupo, un error mío en un simulacro), se agrega ahí.
5. **Ejercicios: SIEMPRE del aula de la UTN**, nunca inventados. Después de cada concepto corto viene un ejercicio breve, citando su origen (guía y número). Fuentes, en orden: `ejercicios/SEMANA 10 -Práctico-Var Aleat-Bipuntual-Binomial.pdf` (ej. 1-4: E, V, DS; ej. 5: f y F; ej. 6-9: Bipuntual y Binomial), `SEMANA 11 - Ejercitación - Modelos Hipergeométrico y Poisson.pdf`, los repasos `Unidades 3 y 4 - Aula/U3 - S15 Repaso/` y los cuestionarios autocorregibles del aula (S10 a S14, que el usuario puede hacer en tup.sied.utn.edu.ar). Las guías de Drive de las S10 y S12 todavía no están descargadas.
6. **Método (pedido el 22/11): video de la cátedra → ejercicio de la UTN directo → explicar SOLO lo que falle.** No repetir en texto lo que el video ya explicó. Si respondo bien, se avanza rápido.
7. Sincronización con GitHub: si existe `.claude/settings.json`, los hooks hacen `git pull` al abrir la sesión y commit y push al terminar cada respuesta. Si no existe, recordame correr `git pull` al empezar y `git add -A`, `git commit` y `git push` al terminar.

## 📍 Dónde quedamos (actualizar siempre)

- **Última actualización:** dom 22/11/2026.
- **Estado:** el plan se reinicia **desde cero**. Me siento "al horno": la pregunta de E(x) y DS me resultó demasiado avanzada.
- **Se volvió a la versión de esta PC.** Lo que había subido la otra PC el 20/11 (bitácora en `Coloquio/sesiones/`) se descartó, pero queda en el historial de Git.
- **Se creó `BIBLIA-COLOQUIO.md`** (22/11): el documento maestro.
- **Próximo paso exacto:** Día 1 (dom 22) = Biblia, caps. 1, 2 y 3.
  1. Ver el video de la cátedra [S10 · VA y distribución de probabilidades](https://youtu.be/widHBL3nnB8).
  2. Leer los caps. 1 a 3 de la Biblia. Claude los explica **desde lo más básico**, con visuales: experimento aleatorio, variable aleatoria, discreta vs. continua.
  3. Preguntas fáciles de a una (preguntas 1 y 5 del cap. 20).
- **Ritmo:** ir más despacio. Primero el video, después la teoría de Claude, una pregunta fácil, y avanzar solo cuando confirme que entendí.

### Bitácora

| Fecha | Qué hicimos | Resultado |
|---|---|---|
| 20/11 | Programa, descarga del material del aula, preguntas de WhatsApp, teoría del Bloque 1 (VA, E, V, DS) | La teoría quedó muy densa; no respondí la pregunta de cierre |
| 22/11 | Plan de 5 días; temario oficial (sección 16 del aula); 18 videos de la cátedra; preguntas nuevas del grupo; estilo de Daniela | Decidimos empezar desde cero con el video de la cátedra |
| 22/11 | Sync automático con GitHub (hooks); volvimos a la versión de esta PC; **Biblia del coloquio** armada con los PDF de las U3 y U4, el TAI y las preguntas reales | Lista para estudiar por capítulos |
| 22/11 | Día 1: vi el video de la S10 y expliqué VA, discreta/continua y tabla | Bien en general. A corregir: dije "asigna un valor **aleatorio**" (lo aleatorio es el resultado, el número asignado es fijo) y usé "enteros/decimales" o "infinitos" como criterio (el criterio es **cuenta vs. mide**; Poisson es discreta e infinita). Pendiente: reformular la definición de VA |
| 22/11 | Reformulé la definición de VA con el ejemplo de los 2 tests | ✅ Entendido al segundo intento: lo aleatorio es el resultado, lo fijo es la regla de X. Discreta porque cuenta ✅. Próximo: f(x), F(x) y E(x) con el mismo ejemplo |

## Objetivo

Preparar el **coloquio oral del 2.º parcial** (recuperatorio) de Probabilidad y Estadística, de la Tecnicatura Universitaria en Programación a Distancia (UTN).

- **Fecha:** 27/11/2026
- **Temas:** Unidad 3 (variables aleatorias y modelos de probabilidad) y Unidad 4 (introducción a la inferencia).
- **Formato** (según compañeros que ya rindieron entre el 18 y el 20/11):
  - Son 3 o 4 preguntas: 2 de la U3 y 1 o 2 de la U4.
  - Es una charla guiada. **No piden cálculos ni fórmulas**: hay que justificar qué modelo elegís, explicar el procedimiento e interpretar el resultado.
  - Los casos salen del TAI: hogares de la EPH, formularios por hora y el ITF.
- **Meta:** poder explicar con palabras propias (1) qué calculo y por qué elijo ese modelo, (2) qué significa el resultado y (3) cómo lo uso para fundamentar una decisión técnica en sistemas.

## Rol del tutor (Claude)

- Tutor y evaluador. Habla en español rioplatense (vos), directo y bajado a tierra.
- Usa **solo** la terminología, la notación y los criterios del material de la cátedra (ver "Archivos"). Notación: n, P, N, K (o M), λ, μ, σ, E(x), V(x), DS(x), f(x), F(x).
- Cada concepto se conecta con un caso de sistemas: QA, tasa de bugs, latencia de APIs, requests por segundo, logs.
- **No regala respuestas.** Primero contesto yo. Si la respuesta es vaga o errónea, me corrige de frente y me hace reformularla.
- Remarca las condiciones que separan un modelo de otro: independencia, reposición, población finita o infinita, discreta o continua, la regla n/N ≤ 0,05.
- **Modos:**
  - **Teoría:** resumen, video y una pregunta de comprensión.
  - **Práctica:** yo identifico variable, parámetros y planteo; después se valida.
  - **Simulacro Oral:** una pregunta por turno y devolución en 3 puntos (precisión conceptual, interpretación, criterio técnico en sistemas).

## Cómo prefiero estudiar

- **Ejemplos concretos y código comentado (R / Python) antes que teoría abstracta.**
- **Listas y tablas**, no paredes de texto.
- **Soy visual:** cada concepto con un gráfico o diagrama (si se puede, interactivo).
- Un bloque corto por mensaje. Se espera mi confirmación antes de avanzar.
- Cuando pido teoría, el formato es este:
  1. Resumen teórico con la estructura del Profe Alex: idea simple, cómo se escribe, ejemplo paso a paso y "ojo con...".
  2. Un video de YouTube del **Profe Alex** (canal "Matemáticas profe Alex"). Si no tiene video del tema, el más parecido en estilo (por ejemplo, **Matemóvil**), avisándome.
  3. Una pregunta de cierre.

## Lo que hicimos en la sesión del 20/11/2026

1. Leímos el programa: U3 = VA, Binomial, Binomial Negativa, Hipergeométrica, Poisson, Normal y funciones de R. U4 = muestreo, error estándar, TLC, estimación puntual y por intervalos (media con varianza conocida).
2. Descargamos del aula (tup.sied.utn.edu.ar, curso id=79) todo el material de las semanas 10 a 15 que faltaba. Está en `Unidades 3 y 4 - Aula/`.
3. Juntamos de WhatsApp lo que les preguntaron a los compañeros en el coloquio:
   - Caso: "300 hogares, tomo 20, ¿cuántos son propietarios? ¿Qué modelo usás?". Es **Hipergeométrica**, porque 20/300 = 0,067 > 0,05. Un compañero dijo Binomial y lo corrigieron.
   - Hipergeométrica: qué es N, n y K; por qué los fracasos son N − K; rango de X.
   - Parámetros de la Binomial (n, P) y de la Normal (μ, σ). Qué hace μ en el gráfico.
   - Poisson: 12 formularios por hora, ¿cuántos en 15 min? Reescalar λ (λ = 3). Cómo se escribe P(X = 4).
   - Normal: ITF > 350.000. Forma de campana, centro en μ, qué cola se toma.
   - Qué es una variable aleatoria.
   - U4: descriptiva vs. inferencial; para qué sirve una muestra; parámetro vs. estadístico; error muestral; ¿la media muestral es igual a la poblacional?; TLC (n ≥ 30); **qué significa realmente una confianza del 95%**.
4. **Bloque 1 visto (teoría):** variable aleatoria; discreta vs. continua; función de cuantía f(x) y acumulada F(x); E(x), V(x) y DS(x), con el ejemplo de requests por API (E = 2, V = 1,90, DS ≈ 1,378). Video: Matemóvil, https://www.youtube.com/watch?v=oB48B-WUwJk
5. **Pregunta pendiente de responder:** "Si E(x) = 2, ¿llegan siempre 2 requests cada 10 s? ¿Cómo usarías la DS para dimensionar el servidor?"

## Plan de 5 días (rehecho el 22/11; el coloquio es el viernes 27 a la mañana)

Cada día tiene unas 2 h, en 4 bloques:

1. **Calentamiento (10 min):** explicar en voz alta el tema del día anterior, sin mirar.
2. **Teoría (40 min):** resumen, video y pregunta de cierre.
3. **Práctica (40 min):** un caso del TAI. Identifico modelo, parámetros y qué significa el resultado.
4. **Defensa oral (20 min):** Claude hace de profesor con las preguntas reales que les hicieron a los compañeros.

| Día | Temas | Preguntas reales que tengo que poder defender | Estado |
|---|---|---|---|
| **Dom 22** | Cerrar el Bloque 1 (VA, E(x), DS). Mapa "¿qué modelo uso?". Binomial vs. Hipergeométrica (n/N ≤ 0,05, N, K, n, rango de X) | "300 hogares, tomo 20, propietarios: ¿qué modelo?" · ¿Qué es una VA? · ¿Por qué los fracasos son N − K? | Pendiente |
| **Lun 23** | Poisson (λ, reescalar el intervalo). Normal (campana, μ, σ, qué cola, estandarización Z). Consignas 6 y 7 del TAI | "12 formularios por hora, ¿cuántos en 15 min?" · "ITF > 350.000: ¿qué forma tiene, qué es el centro, qué lado tomo?" | Pendiente |
| **Mar 24** | U4: descriptiva vs. inferencial, población y muestra, **criterios de notación** (μ/x̄, σ/s, N/n), parámetro vs. estadístico, muestreo aleatorio **simple y sistemático**, estimación puntual, **insesgadez y eficiencia** | "¿Este dato es parámetro o estadístico?" · "¿Para qué se usa una muestra?" · ¿Qué es un buen estimador? | Pendiente |
| **Mié 25** | Error muestral, **distribución de la media muestral**, error estándar, TLC, Z de la media. **Intervalos de confianza para la media**: qué significa el 95%, qué pasa con el ancho si cambian n y la confianza. Consigna 8 del TAI | "¿La media muestral es igual a la poblacional?" · ¿Por qué n ≥ 30? · "¿95% de confianza significa 95% de probabilidad de acertar?" | Pendiente |
| **Jue 26** | Dos simulacros orales completos (4 preguntas cada uno). Arreglar los puntos flojos. Armar el machete de una página con las frases clave | Todas, mezcladas | Pendiente |
| **Vie 27** | 20 min con el machete y a rendir | — | — |

### Temario oficial del 2.º parcial (aula, sección 16)

- **U3:** Binomial, Hipergeométrica, Poisson y Normal. *(La Binomial Negativa no entra.)*
- **U4:** muestreo probabilístico aleatorio simple y sistemático; población y muestra; criterios de notación; estimación puntual; insesgadez; eficiencia; TLC; distribución de la media muestral; estandarización Z; intervalos de confianza para la media.
- **Formato:** unos 15 min por videollamada con el tutor o tutora (comisión de Daniela Isla Zuvialde). Conceptos, elección de procedimiento, interpretación y fundamentación, con vínculos al TAI. **No se evalúa R.** Hay que tener cámara y micrófono.
- **Requisito:** consignas 5 a 8 del TAI aprobadas.

### Mi tutora: Daniela (Isla Zuvialde)

- Ya rendí el 1.er coloquio con ella y fue muy bien. **Busca que entienda el concepto y por qué lo aplico, no las fórmulas.**
- Al 22/11 nadie del grupo había rendido el 2.º parcial con ella. Su estilo se estima por el de los otros tutores.

### Preguntas nuevas del grupo (20/11)

- **Patrón general:** 4 preguntas (2 de la U3 y 2 de la U4). En la U3 te dan **un caso y tenés que decir qué modelo usás, por qué, y cuáles son los parámetros y la variable**. En la U4 es más teoría.
- Una tutora **compartió pantalla con un formulario de 10 preguntas y eligió 4 al azar**, "tipo los exámenes de las unidades". Los **cuestionarios autocorregibles del aula** (S10 a S14) son el mejor banco de preguntas para practicar.
- Caso Hipergeométrico: leer el enunciado, elegir el modelo e **identificar parámetros y variable**. Caso Normal: lo mismo.
- **Sesgo de muestreo:** "Se hace una encuesta a usuarios, pero se publica solo en un foro de expertos. ¿Cuál es el problema y cómo lo arreglarías?" (muestra no representativa, hace falta muestreo aleatorio).
- "Con una muestra de 50 datos, ¿qué hace la estadística descriptiva y qué la inferencial?"
- Normal: parámetros, en qué casos se usa, **estandarización (Z)**. Biondi pidió la fórmula de Z ("¿qué va en el denominador?").
- **Consigna 8 del TAI:** qué pasa con las medias muestrales respecto de la poblacional, qué significa que algunas queden por encima y otras por debajo, y qué pasaría si coincidieran. A dos compañeros se les borró: **repasarla sí o sí.**
- "En una app se registraron 300 clicks. ¿Qué podés decir o inferir?" Apuntaba a que un dato suelto no alcanza: hace falta definir la población y la unidad (clicks ≠ usuarios; con login identificás usuarios), el tamaño de muestra y el intervalo de tiempo.
- Biondi: "¿Qué valores puede tomar X?" (rango de la variable en cada modelo).

### Videos de la cátedra (verlos antes que YouTube)

| Día | Video |
|---|---|
| Dom 22 | [S10 · VA y distribución de probabilidades](https://youtu.be/widHBL3nnB8) · [S10 · video 2](https://youtu.be/QOTy-gSDg18) · [S11 · Binomial](https://youtu.be/ntMW0p_vPr8) · [S11 · Hipergeométrico](https://youtu.be/olCQZs68oAQ) |
| Lun 23 | [S11 · video 3 (Poisson)](https://youtu.be/nNhow4oKJsQ) · [S12 · Normal, video 1](https://youtu.be/b4udD8N2FYs) · [S12 · Normal, video 2](https://youtu.be/VgB9aFbR6a4) · [Ejercicio Normal](https://youtu.be/z3RYtIz4qQw) |
| Mar 24 | [¿Qué es la inferencia estadística?](https://youtu.be/M7Q7E8no6SI) · [Estimadores](https://youtu.be/aVAoItA1ci8) |
| Mié 25 | [Distribuciones muestrales](https://youtu.be/zem2oenVOAg) · [TLC](https://youtu.be/rIVRe9VQLJA) · [Construcción de IC](https://youtu.be/2kAuiMyKqns) · [Interpretación de IC](https://youtu.be/-x165C0nM3s) · [Tutorial consigna 8 del TAI](https://youtu.be/5nepICa3uH4) |
| Opcional (R) | [Binomial en R](https://youtu.be/LIpue4wZqAI) · [Poisson en R](https://youtu.be/xGpZq7hEqew) · [Normal en R](https://youtu.be/NeMArVS2VGI) |

**Próximo paso concreto:** ver "📍 Dónde quedamos" al principio de este archivo.

## Archivos y carpetas importantes

| Ruta | Qué es |
|---|---|
| `Programa de Probabilidad y Estadística TUPaD - 2026.pdf` | Programa oficial: unidades, evaluación, bibliografía |
| `PYE 2C 2026 - PLANIFICACIÓN SEMANAL DE TEMAS.pdf` | Qué tema va en cada semana |
| `Cap 3 y 4 - Devore.pdf` | Bibliografía: VA discretas y continuas |
| `SEMANA 10 -Var. Aleatorias-Modelos Bipuntual y Binomial.pdf` | Apunte de la cátedra: VA, E(x), V(x), Bernoulli, Binomial |
| `SEMANA 11-Hipergeométrico-Poisson.pdf` y `POWERPOINT-semana11-*.pdf` | Teoría y diapositivas de Hipergeométrico, Poisson y Binomial |
| `tablas-Binomial-Poisson-Hiperg-Normal.pdf` | Tablas estadísticas |
| `Unidades 3 y 4 - Aula/U3 - S11 Modelos discretos/` | Resumen de modelos discretos (cuándo usar cada uno, parámetros, R), repaso y aplicación en R |
| `Unidades 3 y 4 - Aula/U3 - S12 Normal/` | Modelo Normal: teoría, apuntes de los videos, Normal en R |
| `Unidades 3 y 4 - Aula/U3 - S15 Repaso/` | Repaso de la cátedra: binomial, hipergeométrico, Poisson y normal |
| `Unidades 3 y 4 - Aula/U4 - S13 y S14 Inferencia/` | Inferencia, muestreo y TLC, intervalos de confianza con varianza conocida |
| `Unidades 3 y 4 - Aula/Infografias/` | Infografías de la cátedra (PNG) |
| `TPI/` | TAI: consignas 1-4, 5-7 y 8; dataset EPH (`TAI-aglomerado4.xlsx`, Gran Rosario) |
| `TPI/Entrega/` | Mis entregas del TAI en R (entregas 1 a 3 y consignas 5 a 7) |
| `ejercicios/` | Guías y actividades entregadas (incluida la Actividad Obligatoria U3) |
| `apuntes/` | Apuntes de las Unidades 1 y 2, Devore y Walpole |
| `Coloquio/Notebook/` | Documento de síntesis de VA y distribuciones |
| `Practicas en R/` | Scripts de práctica en R |

Estos archivos **no están en Git** (`.gitignore`): `RStudio-*.exe` (473 MB, supera el límite de GitHub), las grabaciones `.mkv` y los archivos de sesión de R.
