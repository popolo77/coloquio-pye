# Coloquio de Probabilidad y Estadística (TUPaD, UTN)

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
- Usa **solo** la terminología, la notación y los criterios del material de la cátedra (ver "Archivos").
- **La teoría se arma leyendo los PDF del repo, no de memoria.** Antes de explicar un tema, se abre el apunte de la cátedra que corresponde y se usan sus definiciones, fórmulas y ejemplos, citando el archivo y la página. Notación: n, P, N, K (o M), λ, μ, σ, E(x), V(x), DS(x), f(x), F(x).
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
- **Orden fijo de cada tema nuevo (siempre, en cualquier PC o sesión): teoría → video → pregunta.**
  1. **Teoría primero:** resumen con la estructura del Profe Alex: idea simple, cómo se escribe, ejemplo paso a paso y "ojo con...".
  2. **Después el video:** uno de YouTube del **Profe Alex** (canal "Matemáticas profe Alex"), que es mi preferido. Si no tiene video del tema, el más parecido en estilo (por ejemplo, **Matemóvil**), avisándome que no es del Profe Alex.
  3. **Al final, la pregunta de cierre.** La contesto yo antes de pasar al tema siguiente.

## Rutina de sesión (estudio en 2 PC: casa y laburo)

Este CLAUDE.md es la memoria compartida entre las dos PC. Es la fuente de verdad sobre dónde quedamos.

- **Al empezar:** hacer `git pull` (o clonar el repo si la sesión es nueva), leer este archivo y retomar desde "Próximo paso concreto".
- **Al cerrar** (cuando digo "cerramos" o al terminar un bloque importante):
  1. Actualizar "Lo que hicimos", la tabla del plan, la pregunta pendiente y el "Próximo paso concreto".
  2. Actualizar la **bitácora del día** en `Coloquio/sesiones/AAAA-MM-DD.md`: la teoría completa que vimos (tablas, ejemplos y código), el video, la pregunta de cierre, **mi respuesta** y la corrección. La bitácora guarda el contenido; el CLAUDE.md, solo el resumen.
  3. Hacer commit y push a `main`. Si no se puede pushear a `main`, subirlo a una rama y avisarme para que la mergee.
- En mi PC local: correr `git pull` antes de estudiar y `git push` si cambié algo.

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
4. **Bloque 1 visto (teoría):** variable aleatoria; discreta vs. continua; función de cuantía f(x) y acumulada F(x); E(x), V(x) y DS(x), con el ejemplo de requests por API (E = 2, V = 1,90, DS ≈ 1,378). Es el ejemplo de clientes de un restaurante del apunte de la Semana 10 (pág. 4), adaptado a requests. Video: Matemóvil, https://www.youtube.com/watch?v=oB48B-WUwJk
5. **Pregunta pendiente de responder:** "Si E(x) = 2, ¿llegan siempre 2 requests cada 10 s? ¿Cómo usarías la DS para dimensionar el servidor?"

## Plan de 7 días (lo que falta)

| Día | Tema | Estado |
|---|---|---|
| 20/11 | VA, distribución, E(x), V(x), DS(x) y mapa "¿qué modelo uso?" | Teoría vista; falta responder la pregunta de cierre |
| 21/11 | Binomial vs. Hipergeométrica: parámetros, rango de X, regla del 5% (consigna 5 del TAI) | Pendiente |
| 22/11 | Poisson (reescalar λ, consigna 7) y Normal (forma, μ, σ, colas, consigna 6) | Pendiente |
| 23/11 | U4: población/muestra, parámetro vs. estadístico, descriptiva vs. inferencial, tipos de muestreo | Pendiente |
| 24/11 | Error muestral, distribución muestral, error estándar, TLC | Pendiente |
| 25/11 | Intervalos de confianza: qué significa el 95% (y la consigna 8 del TAI) | Pendiente |
| 26/11 | Dos simulacros orales completos | Pendiente |
| 27/11 | Repaso de 20 minutos y coloquio | — |

**Próximo paso concreto:** responder la pregunta de cierre del Bloque 1 y después pasar a Binomial vs. Hipergeométrica, con video del Profe Alex.

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
| `Coloquio/sesiones/` | Bitácora por día: teoría vista, videos, preguntas, mis respuestas y correcciones |
| `Practicas en R/` | Scripts de práctica en R |

Estos archivos **no están en Git** (`.gitignore`): `RStudio-*.exe` (473 MB, supera el límite de GitHub), las grabaciones `.mkv` y los archivos de sesión de R.
