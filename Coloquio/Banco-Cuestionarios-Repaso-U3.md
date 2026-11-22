# Banco de práctica: cuestionarios de repaso de la Unidad 3 (aula, semana 15)

> **Fuente:** aula de la UTN, sección "Repaso Unidad N° 3": *S15-Repaso de la Unidad 3, Cuestionarios 1, 2 y 3* (20 preguntas). Las leímos el 22/11 abriendo un intento de cada uno, **sin responder ni enviar**. Los intentos quedaron abiertos en el aula para que los termines vos.
>
> **Cómo practicar (método piloteo, SIN cuentas):** para cada caso decí en voz alta:
> 1. **¿Qué modelo?** (Binomial, Hipergeométrica, Poisson o Normal)
> 2. **¿Por qué?** (cuenta o mide · éxitos en n pruebas o sucesos en un intervalo · ¿hay N chico y sin reposición?)
> 3. **¿Parámetros?** (n y P · N, K y n · λ · μ y σ)
> 4. **¿Qué se pide?** (=, ≤, <, ≥, >, entre) y cómo se traduce
>
> Recién después mirá el solucionario de abajo.

---

## Cuestionario 1

1. Carga diaria en un Data Warehouse: el **5%** de los registros sufre una alteración (tipo o clave duplicada). Se audita una muestra aleatoria de **20 registros**. ¿Probabilidad de que los registros con errores sean **menos de 4**?
2. Un módulo tiene **10 funciones**; exactamente **3** tienen buffer overflow. Se eligen al azar y **sin reemplazo 4** funciones. ¿Probabilidad de que **más de 2** tengan el error?
3. Mismo Data Warehouse (**5%** con errores), muestra de **10 registros**. ¿Probabilidad de que **exactamente 3** tengan errores?
4. Mismo Data Warehouse (**5%**), **10 registros** auditados de forma independiente. ¿Probabilidad de que **menos de 5** tengan errores?
5. Migración a un Data Lake: el **10%** de los bloques de metadatos se corrompe. Se examinan **25 bloques**. ¿Probabilidad de que **a lo sumo 1** se corrompa?
6. Un **lote cerrado de 8** scripts de Terraform; exactamente **3** exponen credenciales. Se sacan **4 scripts diferentes**. ¿Probabilidad de que **a lo sumo 1** tenga credenciales expuestas?

## Cuestionario 2

1. El **15%** de los nodos de un clúster se desincroniza. Se examinan **18 nodos** al azar. ¿Probabilidad de que **por lo menos 4** se desincronicen?
2. El **15%** de los registros de clientes tiene datos obsoletos. Lote aleatorio de **18 registros**. ¿Probabilidad de que **como máximo 4** sean obsoletos?
3. El tiempo de ejecución de un algoritmo se distribuye **normalmente** con **media 45 ms** y **desviación 5 ms**. ¿Probabilidad de que tarde **como máximo 52 ms**?
4. El **15%** de los registros está obsoleto. Lote de **14 registros**. ¿Probabilidad de que **menos de 5** sean obsoletos?
5. Un servidor recibe en promedio **4 errores HTTP 500 por hora**. ¿Probabilidad de que en **15 minutos** registre **entre 2 y 5 errores**, ambos inclusive?
6. Soporte recibe **2,5 reportes de bugs de Safari por día laboral**. ¿Probabilidad de **como máximo 4** reportes en **2 días**?

## Cuestionario 3

1. El **40%** de los usuarios **no** hace click en un anuncio. Se eligen **10 usuarios**. ¿Probabilidad de que **más de 5 no** hagan click?
2. El **40%** no hace click. Se eligen **12 usuarios**. ¿Probabilidad de que **menos de 8 no** hagan click?
3. Una entrega de **12 microcontroladores**, de los cuales **5** tienen errores. Se eligen **4 distintos**. ¿Probabilidad de que **como máximo 2** tengan errores?
4. Un lote de **15 placas base**, **9** con fallo en el USB. Se eligen **7 diferentes**. ¿Probabilidad de que **como mínimo 4** tengan fallo?
5. Un disco tiene en promedio **0,8 errores de lectura por hora**. ¿Probabilidad de **a lo sumo 2** errores en **15 minutos**?
6. Se reportan en promedio **6 errores en tres días**. ¿Probabilidad de **exactamente 4** errores en **5 días**?
7. La latencia entre servidores es **normal** con **media 80 ms** y **desviación 10 ms**. ¿Probabilidad de que sea **mayor que 78 y menor que 84 ms**?
8. El tiempo de respuesta de un microservicio es **normal** con **media 10 ms** y **desviación 1 ms**. ¿Probabilidad de que sea **como mínimo 9,5 ms**?

---
---

## 🔒 Solucionario (mirarlo DESPUÉS de responder)

> 🧠 **Patrón de la cátedra para distinguir Binomial e Hipergeométrica:**
> - Te dan un **porcentaje** (5%, 15%, 40%) y **no** te dan el tamaño de la población → población grande o infinita → **Binomial (n, P)**.
> - Te dan un **lote cerrado con cantidades** ("10 funciones, 3 con error", "lote de 15, 9 con fallo") y sacás **sin reposición** → **Hipergeométrica (N, K, n)**.

| Preg. | Modelo | Parámetros | Qué se pide | Traducción |
|---|---|---|---|---|
| C1-1 | Binomial | n = 20, P = 0,05 | menos de 4 | P(X ≤ 3) |
| C1-2 | **Hiper** | N = 10, K = 3, n = 4 (n/N = 0,4) | más de 2 | P(X > 2) = P(X = 3) (no puede haber más de 3) |
| C1-3 | Binomial | n = 10, P = 0,05 | exactamente 3 | P(X = 3) |
| C1-4 | Binomial | n = 10, P = 0,05 | menos de 5 | P(X ≤ 4) |
| C1-5 | Binomial | n = 25, P = 0,10 | a lo sumo 1 | P(X ≤ 1) |
| C1-6 | **Hiper** | N = 8, K = 3, n = 4 | a lo sumo 1 | P(X ≤ 1) |
| C2-1 | Binomial | n = 18, P = 0,15 | por lo menos 4 | 1 − P(X ≤ 3) |
| C2-2 | Binomial | n = 18, P = 0,15 | como máximo 4 | P(X ≤ 4) |
| C2-3 | **Normal** | μ = 45, σ = 5 | como máximo 52 | P(X ≤ 52), lado izquierdo |
| C2-4 | Binomial | n = 14, P = 0,15 | menos de 5 | P(X ≤ 4) |
| C2-5 | **Poisson** | 4/hora → 15 min: **λ = 1** | entre 2 y 5, inclusive | P(X ≤ 5) − P(X ≤ 1) |
| C2-6 | **Poisson** | 2,5/día → 2 días: **λ = 5** | como máximo 4 | P(X ≤ 4) |
| C3-1 | Binomial | n = 10, **P = 0,40** (éxito = **no** hace click) | más de 5 | 1 − P(X ≤ 5) |
| C3-2 | Binomial | n = 12, P = 0,40 | menos de 8 | P(X ≤ 7) |
| C3-3 | **Hiper** | N = 12, K = 5, n = 4 | como máximo 2 | P(X ≤ 2) |
| C3-4 | **Hiper** | N = 15, K = 9, n = 7 | como mínimo 4 | 1 − P(X ≤ 3) |
| C3-5 | **Poisson** | 0,8/hora → 15 min: **λ = 0,2** | a lo sumo 2 | P(X ≤ 2) |
| C3-6 | **Poisson** | 6 en 3 días → 5 días: **λ = 10** | exactamente 4 | P(X = 4) |
| C3-7 | **Normal** | μ = 80, σ = 10 | entre 78 y 84 | P(X ≤ 84) − P(X ≤ 78), el medio |
| C3-8 | **Normal** | μ = 10, σ = 1 | como mínimo 9,5 | 1 − P(X ≤ 9,5), lado derecho |

> ⚠️ **Trampas de la cátedra:**
> - **C3-1 y C3-2:** el "éxito" es **NO hacer click**. El éxito es **lo que cuenta X**, aunque suene a algo malo.
> - **C1-2:** "más de 2" con K = 3 → solo puede ser **3**.
> - **Poisson:** **siempre reescalar λ** al intervalo de la pregunta (C2-5, C2-6, C3-5, C3-6).
