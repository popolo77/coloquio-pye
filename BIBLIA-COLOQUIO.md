# 📖 Biblia del coloquio: Probabilidad y Estadística (U3 y U4)

> **Para qué sirve:** es el único documento que necesitás para el coloquio del **viernes 27/11**. Todo sale de los apuntes de la cátedra (las fuentes están citadas en cada tema), de tu TAI (Gran Rosario, N = 330) y de lo que les preguntaron a tus compañeros.
>
> **Cómo usarla:** cada día leés **un capítulo**, en el orden del plan (cap. 0). Primero ves el video de la cátedra, después leés el capítulo y al final respondés en voz alta las preguntas reales del cap. 20 **sin mirar**.

---

## 0. Plan de 5 días

| Día | Capítulos | Videos de la cátedra (verlos primero) |
|---|---|---|
| **Dom 22** | 1, 2, 3 (el coloquio, el mapa y la variable aleatoria) | [VA y distribución](https://youtu.be/widHBL3nnB8) · [S10 video 2](https://youtu.be/QOTy-gSDg18) |
| **Lun 23** | 4, 5, 6 (Binomial, Hipergeométrica, Poisson) | [Binomial](https://youtu.be/ntMW0p_vPr8) · [Hipergeométrico](https://youtu.be/olCQZs68oAQ) · [Poisson](https://youtu.be/nNhow4oKJsQ) |
| **Mar 24** | 7, 8 (Normal, Z y el traductor de palabras) y simulacro de la U3 | [Normal 1](https://youtu.be/b4udD8N2FYs) · [Normal 2](https://youtu.be/VgB9aFbR6a4) · [Ejercicio Normal](https://youtu.be/z3RYtIz4qQw) |
| **Mié 25** | 9 a 15 (inferencia, muestreo, TLC e intervalos) | [¿Qué es la inferencia?](https://youtu.be/M7Q7E8no6SI) · [Estimadores](https://youtu.be/aVAoItA1ci8) · [Distribuciones muestrales](https://youtu.be/zem2oenVOAg) · [TLC](https://youtu.be/rIVRe9VQLJA) · [Construir IC](https://youtu.be/2kAuiMyKqns) · [Interpretar IC](https://youtu.be/-x165C0nM3s) |
| **Jue 26** | 16, 17 (consigna 8 y caso de los clicks) y **dos simulacros completos** del cap. 20 | [Tutorial de la consigna 8 del TAI](https://youtu.be/5nepICa3uH4) |
| **Vie 27** | Solo el **cap. 21 (machete)**, 20 minutos, y a rendir | — |

---

## 1. El coloquio en 1 minuto

| Qué | Cómo es |
|---|---|
| Duración | Unos **15 minutos**, por videollamada, con cámara y micrófono |
| Tutora | **Daniela (Isla Zuvialde).** Busca que **entiendas el concepto y por qué lo aplicás**, no fórmulas |
| Preguntas | **4 en total: 2 de la U3 y 2 de la U4.** Algunos tutores las sacan de un formulario de unas 10 preguntas, al azar |
| U3 | Te leen **un caso** y tenés que decir **qué modelo usás, por qué, cuáles son los parámetros y cuál es la variable** |
| U4 | Teoría e interpretación: muestra, sesgo, parámetro vs. estadístico, TLC, qué significa el 95% |
| TAI | Te pueden preguntar por **tus** consignas (5 a 8). La **consigna 8** fue la que más se les borró a tus compañeros |
| R | **No se evalúa** |

### 🔑 La fórmula para responder cualquier pregunta

> **1. QUÉ** es o qué uso → **2. POR QUÉ** (las condiciones que lo justifican) → **3. QUÉ SIGNIFICA** (interpretación o decisión)

*Ejemplo:* "Uso la **Hipergeométrica** (qué), porque es **sin reposición** y la muestra es más del 5% de la población (por qué). El resultado me da **la probabilidad de que, de los hogares que elegí, exactamente tantos sean inquilinos** (qué significa)."

### 🛟 Frases salvavidas (si te trabás)

- "Para elegir el modelo, primero me fijo si la variable **cuenta** o **mide**."
- "Ese es un **parámetro** porque describe a la población; este es un **estadístico** porque lo calculo con la muestra."
- "La muestra **no es la población**, así que su media se va a parecer, pero no va a ser exactamente igual: eso es el **error muestral**."
- "¿Me podés repetir el caso? Quiero identificar bien la población y la variable." (Pedir esto está bien visto.)

---

## 2. El mapa: ¿qué modelo uso?

```
                    ¿Qué hace la variable X?
                 ┌──────────────┴──────────────┐
           CUENTA (discreta)              MIDE (continua)
           valores 0, 1, 2...          ingreso, tiempo, ms
                 │                              │
     ┌───────────┴───────────┐              NORMAL
 ¿Cuento ÉXITOS en       ¿Cuento SUCESOS        parámetros μ y σ
  n pruebas?              en un INTERVALO
     │                    de tiempo/espacio?
     │                         │
     │                      POISSON
     │                     parámetro λ
 ¿Con reposición, o sin reposición y n/N ≤ 0,05?
     ├── SÍ  → BINOMIAL        (n, P)
     └── NO  → HIPERGEOMÉTRICA (N, K, n)   (sin reposición y n/N > 0,05)
```

*Fuente: resumen de la cátedra "Modelos probabilísticos para variables aleatorias discretas" (S11).*

---

# PARTE I: UNIDAD 3, VARIABLES ALEATORIAS Y MODELOS

## 3. Variable aleatoria (VA)

*Fuente: SEMANA 10, págs. 1 a 5.*

### Idea simple
Una **variable aleatoria representa numéricamente a cada posible resultado de un experimento aleatorio** (definición de la cátedra). Antes de hacer el experimento **no sabés qué valor va a salir**: solo sabés qué valores puede tomar y con qué probabilidad.

> 💻 **En sistemas:** experimento = "miro la API durante 10 segundos". VA: **X = cantidad de requests que llegan**. Puede valer 0, 1, 2, 3...

### Discreta vs. continua

| | **Discreta** | **Continua** |
|---|---|---|
| Qué hace | **Cuenta** | **Mide** |
| Valores | Aislados: 0, 1, 2... | Cualquier valor de un intervalo |
| Ejemplos | Hogares inquilinos, formularios por hora, bugs | ITF, latencia en ms, tiempo de ejecución |
| Modelos | Binomial, Hipergeométrica, Poisson | Normal |
| Probabilidad de un valor exacto | Puede ser mayor que 0: P(X = 4) | **Siempre es 0**: se calculan áreas entre dos valores |

### Cómo se escribe

| Símbolo | Nombre | Qué responde |
|---|---|---|
| f(x) = P(X = x) | Función de **cuantía** (discreta) o de **densidad** (continua) | ¿Qué probabilidad tiene ese valor? |
| F(x) = P(X ≤ x) | Distribución **acumulada** | ¿Qué probabilidad hay de que valga **como máximo** x? |
| E(x) = Σ x·P(x) | **Esperanza** o valor esperado | El **promedio a largo plazo** si repetís el experimento muchísimas veces |
| V(x) = Σ x²·P(x) − [E(x)]² | **Varianza** | Cuánto se **dispersan** los valores alrededor de E(x) |
| DS(x) = √V(x) | **Desviación** | La dispersión en las **mismas unidades** que X |

### ⚠️ Ojo con...
- **E(x) no es "lo que va a pasar".** Es el promedio a largo plazo. Si E(x) = 2 requests, en un intervalo pueden llegar 0 y en otro 5.
- La suma de todas las probabilidades da **1**.

---

## 4. Modelo Binomial

*Fuentes: SEMANA 10 y resumen de modelos discretos (S11).*

### Idea simple
Repetís **n veces** una prueba que tiene solo **dos resultados** (éxito o fracaso), siempre con la **misma probabilidad de éxito P**, y las pruebas son **independientes**. X cuenta **cuántos éxitos** hubo.

### Cuándo se usa (criterio de la cátedra)
- Población **infinita**, **o**
- Muestreo **con reposición**, **o**
- Muestreo **sin reposición y n/N ≤ 0,05** (la muestra es tan chica que sacar un elemento casi no cambia P).

### Parámetros y valores de X

| Parámetro | Qué es |
|---|---|
| **n** | Tamaño de la muestra, o cantidad de veces que se repite la prueba |
| **P** | Probabilidad de éxito en cada prueba |
| **Valores de X** | **De 0 a n** |

> 💻 **En sistemas:** corrés **20 tests** y cada uno falla con probabilidad 0,1, sin depender de los demás. X = cantidad de tests que fallan → Binomial(n = 20, P = 0,1).

### ⚠️ Ojo con...
- La clave es **"siempre la misma P"**. Si al sacar un elemento cambia la proporción de lo que queda (población chica y sin reposición), **ya no es Binomial**.

---

## 5. Modelo Hipergeométrico ⭐ (salió en casi todos los coloquios)

*Fuentes: SEMANA 11 Hipergeométrico-Poisson, POWERPOINT semana 11, resumen S11.*

### Idea simple
Tenés una **población finita** de N elementos, de los cuales **K son "éxitos"**. Sacás una muestra de n elementos **sin reposición**. X cuenta **cuántos éxitos** quedaron en la muestra. Como no devolvés lo que sacás, **cada extracción cambia la probabilidad de la siguiente**.

### Cuándo se usa
- Muestreo **sin reposición y n/N > 0,05**.

### Parámetros y valores de X

| Parámetro | Qué es | En tu TAI (consigna 5) |
|---|---|---|
| **N** | Tamaño de la **población** | 330 hogares |
| **K** (o M) | Cantidad de **éxitos en la población** | 70 hogares inquilinos |
| **N − K** | Cantidad de **fracasos en la población** | 260 no inquilinos |
| **n** | Tamaño de la **muestra** | 15 hogares |
| **X** | Cantidad de éxitos **en la muestra** | Hogares inquilinos entre los 15 |
| **Valores de X** | **De 0 hasta el menor entre n y K** | De 0 a 15 |

**¿Por qué los fracasos son N − K?** Porque la población se divide en dos grupos: si de N elementos K son éxitos, el resto (N − K) son fracasos.

**¿Por qué X no puede pasar de n ni de K?** No podés tener más éxitos que elementos en la muestra (n), ni más éxitos que los que existen en la población (K).

### Tus resultados (consigna 5)

| Pregunta | Planteo | Resultado | Qué significa |
|---|---|---|---|
| 5.1 Exactamente 4 inquilinos | P(X = 4) | **0,2050** | En 1 de cada 5 muestras de 15 hogares, aproximadamente, salen exactamente 4 inquilinos |
| 5.2 Más de 8 inquilinos | P(X > 8) = 1 − P(X ≤ 8) | **0,0009** | Casi imposible: lo esperable son unos 3 inquilinos (15 · 70/330 ≈ 3,18) |
| 5.3 A lo sumo 6 inquilinos | P(X ≤ 6) | **0,9781** | Casi seguro que salen 6 o menos |

### ⚠️ Ojo con... (preguntas trampa)
- **El caso de los compañeros:** "300 hogares, tomo 20, ¿cuántos son propietarios?" → n/N = 20/300 = **0,067 > 0,05** y es sin reposición → **Hipergeométrica**. Un compañero dijo Binomial y lo corrigieron.
- **Tu propio TAI:** 15/330 = **0,045 ≤ 0,05**, así que por la regla del 5% **también se podía aproximar con una Binomial**. La Hipergeométrica es el modelo **exacto** para muestreo sin reposición en población finita. Si te lo preguntan: *"Usé la Hipergeométrica porque es el modelo exacto: la muestra es sin reposición y la población es finita. Como n/N da 0,045, la Binomial también habría sido una buena aproximación."*

---

## 6. Modelo de Poisson

*Fuentes: SEMANA 11 Hipergeométrico-Poisson, POWERPOINT semana 11.*

### Idea simple
Contás **cuántos sucesos ocurren en un intervalo** (de tiempo o de espacio), cuando ocurren de forma **independiente** y a una **tasa promedio constante**. No hay un "n" de intentos: hay un **intervalo**.

### Parámetro y valores de X

| Parámetro | Qué es |
|---|---|
| **λ (lambda)** | **Cantidad promedio de sucesos en el intervalo** que te preguntan |
| **Valores de X** | **0, 1, 2, 3...** sin un máximo fijo |

### 🔑 Reescalar λ (te lo van a preguntar)
λ tiene que estar **en el mismo intervalo que la pregunta**. Se hace con una regla de tres:

| Dato | Intervalo de la pregunta | λ nuevo |
|---|---|---|
| 12 formularios por hora | 15 min = 1/4 h | 12 · 1/4 = **3** |
| 12 formularios por hora | 30 min = 1/2 h | 12 · 1/2 = **6** |
| 12 formularios por hora | 45 min = 3/4 h | 12 · 3/4 = **9** |

### Tus resultados (consigna 7)

| Pregunta | λ | Planteo | Resultado |
|---|---|---|---|
| 7.1 Exactamente 4 en 15 min | 3 | P(X = 4) | **0,1680** |
| 7.2 Como máximo 5 en 30 min | 6 | P(X ≤ 5) | **0,4457** |
| 7.3 Menos de 7 en 45 min | 9 | P(X < 7) = P(X ≤ 6) | **0,2068** |

> 💻 **Decisión en sistemas:** con λ = 9 formularios cada 45 minutos, hay solo un 21% de probabilidad de recibir menos de 7. Si el servidor se dimensionara para 6 formularios cada 45 minutos, se quedaría corto casi el 80% de las veces.

### ⚠️ Ojo con...
- Te preguntaron: **"¿Cuál es el símbolo de la constante?"** → **λ (lambda)**. **"¿Cómo se escribe recibir 4 formularios?"** → **P(X = 4)**.

---

## 7. Modelo Normal ⭐

*Fuentes: SEMANA 12 Modelo Normal, repaso de la Normal (S15).*

### Idea simple
Es el modelo para **variables continuas** (que **miden**) con forma de **campana**: la mayoría de los valores se juntan cerca del promedio y cuanto más te alejás, menos frecuentes son.

### Parámetros (te los preguntaron a todos)

| Parámetro | Qué es | Qué hace en el gráfico |
|---|---|---|
| **μ (media)** | El **centro** de la campana | **Mueve** la campana a izquierda o derecha. Ahí está el pico (la moda) |
| **σ (desviación estándar)** | La **dispersión** | Hace la campana **más ancha y baja** (σ grande) o **más angosta y alta** (σ chica) |

### Propiedades (cátedra)
- **Simétrica** alrededor de μ, con el máximo en x = μ.
- El **área total bajo la curva es 1**. **La probabilidad es un área**: P(a ≤ X ≤ b) = área entre a y b.
- **P(X = un valor exacto) = 0**, por eso en la Normal "menos de" y "a lo sumo" dan lo mismo.
- **Regla 68-95-99,7:** dentro de μ ± 1σ queda cerca del 68% de los valores; dentro de μ ± 2σ, cerca del 95%; dentro de μ ± 3σ, cerca del 99,7%.

```
              ▲  pico en μ
            ▄███▄
          ▄███████▄
       ▄▄███████████▄▄
  ▁▁▄▄███████████████████▄▄▁▁
  ─────┼─────┼─────┼─────┼─────►
     μ−2σ  μ−σ    μ    μ+σ  μ+2σ
           └── 68% ──┘
```

### Estandarización Z
Como hay infinitas normales (una por cada μ y σ), se transforma X en una **normal estándar Z** (μ = 0, σ = 1):

> **Z = (X − μ) / σ** → **cuántas desviaciones estándar está X por encima (+) o por debajo (−) de la media.**
>
> Biondi preguntó "¿qué va en el denominador?" → **σ** (y en la Z de la media muestral, **σ/√n**; ver cap. 14).

### Qué lado de la curva tomás

| Te piden | Lado | Cómo se calcula |
|---|---|---|
| "menos de", "a lo sumo", "como máximo" | **Izquierda** | P(X ≤ a) |
| "más de", "por lo menos", "como mínimo" | **Derecha** | P(X > a) = 1 − P(X ≤ a) |
| "entre a y b" | **El medio** | P(X ≤ b) − P(X ≤ a) |

### Tus resultados (consigna 6): ITF de Gran Rosario
Con μ ≈ $1.388.220 y σ ≈ $1.147.315 (calculados sobre los 330 hogares):

| Pregunta | Lado | Resultado | Qué significa |
|---|---|---|---|
| 6.1 ITF de por lo menos $350.000 | Derecha | **0,8172** | El 82% de los hogares supera los $350.000 |
| 6.2 ITF entre $250.000 y $300.000 | Medio | **0,0109** | Muy pocos hogares (1%) caen en esa franja tan angosta |
| 6.3 ITF menor que $450.000 | Izquierda | **0,2067** | Uno de cada cinco hogares, aproximadamente, gana menos de $450.000 |

Para 6.1: Z = (350.000 − 1.388.220) / 1.147.315 ≈ **−0,90**. $350.000 está casi una desviación estándar **por debajo** de la media, así que la mayor parte del área queda a su derecha.

### ⚠️ Ojo con... (criterio crítico que suma puntos)
- σ es casi tan grande como μ. Con esos valores, el modelo Normal le asigna un **11% de probabilidad a ingresos negativos**, que no existen. Eso indica que el ITF real es **asimétrico** (muchos hogares con ingresos medios y pocos con ingresos muy altos), y la Normal es **una aproximación**. Si te preguntan "¿la Normal es un buen modelo para el ITF?", esta es una gran respuesta.

---

## 8. Traductor de palabras a signos

*Fuente: resumen de modelos discretos (S11).*

| Palabra del enunciado | Signo | Discretas (Binomial, Hiper, Poisson) | Normal |
|---|---|---|---|
| exactamente a | = | P(X = a) | No tiene sentido (vale 0) |
| a lo sumo, como máximo | ≤ | P(X ≤ a) | P(X ≤ a) |
| menos de a | < | **P(X ≤ a − 1)** | P(X ≤ a) |
| por lo menos, como mínimo | ≥ | **1 − P(X ≤ a − 1)** | 1 − P(X ≤ a) |
| más de a | > | 1 − P(X ≤ a) | 1 − P(X ≤ a) |

> **¿Por qué la diferencia?** En las discretas, "menos de 7" es "6 o menos" porque los valores son enteros. En la Normal, un valor exacto tiene probabilidad 0, así que < y ≤ dan lo mismo.

---

# PARTE II: UNIDAD 4, INFERENCIA ESTADÍSTICA

## 9. Estadística descriptiva vs. inferencial ⭐

*Fuente: A1 Inferencia Estadística, sección 1.*

| Descriptiva | Inferencial |
|---|---|
| **Describe** los datos observados | **Estima** características de una población |
| Trabaja con los datos disponibles | Trabaja con **muestras** |
| Calcula medias, porcentajes, gráficos | Usa esos cálculos como **estimadores** |
| No generaliza | **Generaliza con incertidumbre** |
| "¿Qué muestran estos datos?" | "¿Qué puedo concluir sobre el total?" |

> **Pregunta real:** "Con una muestra de 50 datos, ¿qué hace la descriptiva y qué la inferencial?"
> **Respuesta modelo:** "La **descriptiva** resume esos 50 datos: calcula su media, su desvío y arma gráficos, y describe lo que pasó en esa muestra. La **inferencial** usa esos resultados para **estimar** lo que pasa en toda la población, por ejemplo con un intervalo de confianza, sabiendo que hay incertidumbre porque son solo 50 datos."

---

## 10. Población, muestra y sesgo ⭐

*Fuente: A1 Inferencia Estadística, secciones 2 a 4.*

| Concepto | Qué es | Ejemplo en una API |
|---|---|---|
| **Población** | Todo el conjunto sobre el que quiero concluir | Todas las peticiones de la API |
| **Muestra** | La parte que efectivamente observo | 500 peticiones medidas |
| **Unidad de análisis** | Qué observo individualmente | Cada petición |
| **Variable de interés** | Qué característica mido | Tiempo de respuesta en ms |

**¿Por qué se usa una muestra?** Porque medir a toda la población (un **censo**) suele ser **imposible, lento o caro**. A veces la población es infinita (todas las peticiones futuras) y a veces medir destruye lo que medís.

**Representatividad:** la muestra tiene que **reflejar a la población**. *"Una muestra pequeña pero bien seleccionada puede ser más útil que una muestra enorme pero sesgada"* (cátedra).

> **Pregunta real (sale del apunte, con el ejemplo del modo oscuro):** "Se hace una encuesta a usuarios, pero se publica solo en un foro de expertos. ¿Cuál es el problema y cómo lo arreglás?"
> **Respuesta modelo:** "El problema es el **sesgo**: la muestra **no es representativa**, porque los usuarios avanzados pueden opinar distinto que los que usan la app de vez en cuando. Aunque los cálculos estén bien, la conclusión no se puede generalizar a todos los usuarios. Se arregla con un **muestreo aleatorio**: elegir al azar entre **todos** los usuarios, por ejemplo desde la base de datos, para que cada uno tenga probabilidad conocida de ser elegido."

Otros sesgos típicos en sistemas (cátedra): los **logs** registran mejor a los usuarios activos, las **encuestas voluntarias** atraen opiniones extremas, los **beta testers** toleran más errores y los datos por **cookies** excluyen a quien no las acepta.

---

## 11. Parámetro vs. estadístico (criterios de notación) ⭐

*Fuente: A1 Inferencia Estadística, secciones 5 a 7.*

| Se refiere a | Población → **PARÁMETRO** (fijo, casi siempre desconocido) | Muestra → **ESTADÍSTICO** (se calcula, cambia con cada muestra) |
|---|---|---|
| Tamaño | **N** | **n** |
| Media | **μ** | **x̄** |
| Varianza | **σ²** | **s²** (divide por n − 1) |
| Desviación | **σ** | **s** |
| Proporción | **p** = K/N | **p̂** = x/n |

> 🧠 **Truco:** las **letras griegas** son de la **población** y las **latinas**, de la **muestra**.

> **Pregunta real:** "En este caso, ¿el dato es un parámetro o un estadístico?"
> **Cómo responder:** preguntate **de dónde sale el número**. ¿De **todos** los elementos? Es un **parámetro**. ¿De una **parte**? Es un **estadístico**. *Ejemplo: "el 68% de los 200 usuarios encuestados prefiere modo oscuro" → es un estadístico (p̂ = 0,68), porque sale de una muestra de 200.*

---

## 12. Estimador, estimación puntual, insesgadez y eficiencia

*Fuentes: A1 Inferencia (secciones 7 y 8) y A1 Muestreo y TLC (sección 3.1).*

| Concepto | Qué es | Ejemplo |
|---|---|---|
| **Estimador** | La **regla o fórmula** para aproximar el parámetro. Pensalo como una **función**: recibe la muestra y devuelve un número | x̄ = Σxᵢ / n |
| **Estimación** | El **valor** que da esa regla con una muestra concreta | x̄ = 120 ms |
| **Estimación puntual** | Usar **un solo número** para aproximar el parámetro | "El tiempo promedio se estima en 120 ms" |

- **Insesgadez:** un estimador es **insesgado** cuando **en promedio acierta**: si tomaras muchísimas muestras, los errores positivos y negativos se compensan y el promedio de las estimaciones da el parámetro. La cátedra lo dice así: *"la media muestral es un estimador sin sesgo de la media poblacional"*. Por eso s² divide por **n − 1**: para que funcione mejor como estimador de σ².
- **Eficiencia:** entre dos estimadores insesgados, es **más eficiente el que varía menos** de una muestra a otra (menor varianza, o menor error estándar). Las estimaciones quedan más cerca del parámetro. *(No figura en los PDF descargados; se ve en el video "Estimadores" de la S13.)*

> ⚠️ **Ojo:** la estimación puntual se comunica como **aproximación**: "se estima que...", "a partir de la muestra...". **Nunca** como "todas las peticiones tardan 120 ms".

---

## 13. Tipos de muestreo probabilístico

*Fuente: A1 Muestreo y TLC, sección 2.* En todos, cada elemento tiene una **probabilidad conocida** de ser elegido.

| Tipo | Cómo funciona | Ventaja | Cuidado |
|---|---|---|---|
| **Aleatorio simple** ⭐ | Cada elemento tiene **la misma probabilidad**. Se numera a todos y se sortea | El más simple | Necesitás la **lista completa** |
| **Sistemático** ⭐ | Calculás **k = N/n**, elegís un inicio al azar y tomás **uno cada k** | Rápido | Si la lista tiene un **patrón periódico**, sesga |
| Estratificado | Dividís en **grupos (estratos)** y sorteás dentro de cada uno | Ningún grupo queda afuera | Hay que conocer los grupos |
| Por conglomerados | Sorteás **grupos naturales** (regiones, sucursales) | Más barato | Menos preciso si los grupos son distintos |

> *Ejemplo sistemático (cátedra):* 2000 recibos y una muestra de 100 → k = 2000/100 = **20**. Si el inicio al azar es 18, se toman los recibos 18, 38, 58...

---

## 14. Error muestral, error estándar y TLC ⭐⭐

*Fuente: A1 Muestreo y TLC, secciones 3 a 8.*

### Error muestral
> **¿La media de la muestra es igual a la de la población?** **No**, en general. La diferencia **x̄ − μ** es el **error de muestreo**. **No es un error de cálculo**: existe porque la muestra es **solo una parte** de la población. Puede ser **positivo** (x̄ > μ) o **negativo** (x̄ < μ).

### Distribución muestral de la media
Si sacás **muchas muestras** del mismo tamaño n, cada una da **una x̄ distinta**. La distribución de todas esas medias es la **distribución muestral de la media**. Tiene tres propiedades:

1. **El promedio de todas las x̄ es μ:** acierta en promedio, es **insesgada**.
2. **Las x̄ varían menos que los datos individuales**, porque cada media resume varios datos.
3. **Por el TLC, tiene forma normal.**

### Error estándar
> **σx̄ = σ / √n** → mide **cuánto varían las medias muestrales** alrededor de μ.

- **A mayor n, menor error estándar:** las medias son más estables y la estimación es más precisa.
- No es lineal: **para reducir el error a la mitad, hay que multiplicar n por 4**.
- ⚠️ **Aumentar n no arregla una muestra sesgada.**

### Teorema del Límite Central (TLC)
> **Sea cual sea la forma de la población, la distribución de las medias muestrales se aproxima a una Normal con media μ y desviación σ/√n, y la aproximación mejora a medida que n crece.**

| Población | ¿Cuándo las x̄ son normales? |
|---|---|
| Normal | Con **cualquier n** |
| Simétrica | Con n chico (por ejemplo, 10) |
| Asimétrica o con colas pesadas | Hace falta **n ≥ 30** (referencia práctica, **no una garantía**) |

**Por qué importa:** permite usar la Normal para hacer inferencia **aunque la población no sea normal**, como el ITF, que es asimétrico.

### Z para la media muestral
> **Z = (x̄ − μ) / (σ/√n)** → cuántos **errores estándar** está la media muestral de μ. En el denominador va el **error estándar**, no σ sola.

> **Pregunta real:** "¿Qué podés hacer para acercarte lo más posible a la media poblacional?"
> **Respuesta modelo:** "**Aumentar el tamaño de la muestra**, porque el error estándar σ/√n baja y las medias muestrales quedan más cerca de μ. Además, la muestra tiene que ser **aleatoria**, porque con sesgo no sirve agrandarla. Y por el **TLC**, con n ≥ 30 las medias se distribuyen de forma aproximadamente normal alrededor de μ, así que puedo medir cuánto me estoy equivocando."

---

## 15. Intervalos de confianza para la media (σ conocida) ⭐⭐

*Fuente: A2 Intervalos de Confianza con Varianza Conocida.*

### Idea simple
En vez de dar **un solo número** (la estimación puntual), das un **rango de valores razonables** para μ:

> **IC = x̄ ± z · σ/√n** → **estimación puntual ± margen de error**

| Pieza | Qué es |
|---|---|
| **x̄** | El **centro** del intervalo: la mejor estimación puntual |
| **z** | El valor crítico según el nivel de confianza: **90% → 1,645 · 95% → 1,96 · 99% → 2,58** |
| **σ/√n** | El **error estándar** |
| **z · σ/√n** | El **margen de error** |

### 🔑 Qué significa el 95% (la trampa más grande)

| ❌ INCORRECTO | ✅ CORRECTO |
|---|---|
| "Hay 95% de probabilidad de que μ esté en este intervalo" | "Si repitiera **muchas veces** el muestreo y el cálculo, **aproximadamente el 95% de los intervalos** construidos así **contendrían a la verdadera μ**" |
| "El parámetro tiene 95% de probabilidad de ser correcto" | "El 95% es la **confiabilidad del procedimiento**, no del parámetro" |

**¿Por qué?** Porque **μ es un valor fijo** (aunque no lo conozcamos). Lo que **cambia** de muestra en muestra es **el intervalo**. Cada intervalo concreto contiene a μ o no lo contiene.

### ¿Qué pasa con el ancho del intervalo?

| Si... | El intervalo se hace... | Por qué |
|---|---|---|
| Subo la **confianza** (95% → 99%) | **Más ancho** | z sube de 1,96 a 2,58: para estar más seguro, abarcás más |
| Aumento **n** | **Más angosto** | σ/√n baja: hay más información y más precisión |
| σ es más grande | **Más ancho** | Los datos varían más |

### Ejemplo (cátedra, rendimiento de software)
n = 50 sesiones, x̄ = 3,2 s, σ = 0,6 s, 95%:
- Error estándar = 0,6/√50 ≈ 0,085
- Margen = 1,96 · 0,085 ≈ 0,17
- **IC 95% = [3,03 ; 3,37] segundos**

**Interpretación:** "Con 95% de confianza, el tiempo promedio de respuesta de la aplicación está entre 3,03 y 3,37 segundos."

### Condiciones para usar esta fórmula
Muestra **aleatoria (sin sesgo)**, observaciones **independientes**, **σ conocida** y x̄ **normal** (población normal, o TLC con n grande).

---

## 16. Consigna 8 del TAI ⭐⭐ (a tus compañeros se les borró)

**Qué pedía:** tomar los 330 hogares de Gran Rosario **como población**, sacar **6 muestras de 20 hogares** por muestreo aleatorio simple **con reposición**, calcular el **ITF promedio de cada una** y responder:

| Pregunta de la consigna | Respuesta modelo |
|---|---|
| **¿Coinciden los promedios de las muestras con el parámetro?** | **No.** El parámetro es **μ ≈ $1.388.220** (media de los 330 hogares). Cada x̄ da distinto y **ninguna coincide exactamente**. La diferencia x̄ − μ es el **error muestral**: no es un error de cálculo, pasa porque cada muestra tiene solo 20 de los 330 hogares |
| **¿Cómo son los promedios muestrales entre sí?** | **Distintos entre sí**: cada muestra tiene hogares diferentes. Algunos quedan **por encima** de μ y otros **por debajo**, **alrededor de μ** |
| **¿Qué significa que unos queden arriba y otros abajo?** | Que la media muestral es **insesgada**: los errores positivos y negativos **se compensan**, y el promedio de muchas x̄ se acerca a μ |
| **¿Y si alguna coincidiera con μ?** | Sería **casualidad**, no lo esperable. Con otra muestra volvería a cambiar |
| **Conclusión en contexto** | Una muestra de 20 hogares sirve para **estimar** el ingreso promedio de Gran Rosario, pero con **incertidumbre**. Para estimar mejor: **muestras más grandes** (error estándar σ/√n más chico) y **aleatorias**; y en vez de un solo número, dar un **intervalo de confianza** |

> ⚠️ En tu carpeta `TPI/Entrega/` no está el script de la consigna 8. Si la entregaste, buscá tus 6 promedios y anotalos acá, porque te pueden preguntar por **tus** números. Video de la cátedra: [Tutorial de la consigna 8](https://youtu.be/5nepICa3uH4).

---

## 17. El caso de los 300 clicks (pregunta que desconcertó a un compañero)

> **"En una aplicación se registraron 300 clicks. ¿Qué podés decir? ¿Qué podés inferir?"**

**Respuesta modelo (aplica el procedimiento de la cátedra):**
"Con un dato suelto no puedo inferir nada todavía. Primero tengo que definir:
1. **La población:** ¿sobre quiénes quiero concluir? ¿Todos los usuarios, todas las sesiones?
2. **La unidad de análisis:** **clicks no es lo mismo que usuarios.** 300 clicks pueden ser de 300 personas o de 3. Con **login** podría identificar a cada usuario y contar personas reales.
3. **La variable y el período:** ¿clicks en qué intervalo de tiempo?
4. **Cómo se obtuvo el dato:** ¿es una muestra? ¿Es aleatoria o está sesgada?

Recién con eso puedo elegir un estimador (por ejemplo, clicks promedio por usuario) e inferir."

*Base: A1 Inferencia, sección 3: "No es lo mismo estudiar usuarios que sesiones, sesiones que clics".*

---

# PARTE III: PRÁCTICA

## 18. Mini casos para identificar el modelo (practicá en voz alta)

| # | Caso | Modelo |
|---|---|---|
| 1 | De **330** hogares (70 inquilinos) elijo **15 sin reposición**. ¿Cuántos inquilinos? | Hipergeométrica (exacta). n/N = 0,045, así que la Binomial también aproxima |
| 2 | De **300** hogares elijo **20 sin reposición**. ¿Cuántos propietarios? | **Hipergeométrica** (20/300 = 0,067 > 0,05) |
| 3 | El servidor recibe **12 formularios por hora**. ¿Probabilidad de 4 en 15 min? | **Poisson**, λ = 3 |
| 4 | ¿Probabilidad de que un hogar tenga **ITF > $350.000**? | **Normal** (μ, σ). Lado derecho |
| 5 | Corro **20 tests independientes**, cada uno falla con P = 0,1. ¿Cuántos fallan? | **Binomial** (n = 20, P = 0,1) |
| 6 | Tiempo de respuesta de consultas SQL, con μ = 200 ms y σ = 40 ms | **Normal** (mide un tiempo: continua) |
| 7 | Bugs reportados **por semana**, con promedio de 5 | **Poisson** (sucesos en un intervalo) |
| 8 | Reviso **10 de 40** módulos sin repetir; 8 de los 40 tienen bugs. ¿Cuántos con bugs en mi muestra? | **Hipergeométrica** (10/40 = 0,25 > 0,05) |
| 9 | Elijo **50 usuarios de 1.000.000** sin reposición; el 30% usa modo oscuro | **Binomial** (n/N ≈ 0 ≤ 0,05) |

---

## 19. Simulacro: cómo practicar

1. Leés la pregunta del cap. 20 **en voz alta**.
2. Respondés **en voz alta sin mirar**, con la fórmula **qué → por qué → qué significa**. Si podés, **grabate**.
3. Recién después leés la respuesta modelo y corregís lo que faltó.
4. **Con Claude:** pedile "simulacro" y te hace de Daniela, con una pregunta por turno y devolución.

---

## 20. Banco de preguntas reales (con respuesta modelo)

### Unidad 3

| # | Pregunta (salió en coloquios) | Respuesta modelo (resumida) |
|---|---|---|
| 1 | ¿Qué es una variable aleatoria? | Es la que **representa numéricamente** cada resultado de un experimento aleatorio. Antes de hacerlo no sé qué valor va a tomar, solo sus valores posibles y sus probabilidades. Puede ser **discreta** (cuenta) o **continua** (mide) |
| 2 | Te doy un caso: ¿Binomial, Poisson o Hipergeométrica? ¿Por qué? | Uso el **mapa** (cap. 2): ¿cuenta o mide? ¿Éxitos en n pruebas o sucesos en un intervalo? ¿Con o sin reposición? ¿n/N ≤ 0,05? |
| 3 | 300 hogares, tomo 20: ¿cuántos son propietarios? | **Hipergeométrica:** sin reposición y 20/300 = 0,067 > 0,05. N = 300, K = propietarios en la población, n = 20, X = propietarios en la muestra |
| 4 | En la Hipergeométrica, ¿qué es N, n y K? ¿Por qué N − K? | N = población, K = éxitos en la población, n = muestra. N − K son los **fracasos** de la población: lo que queda |
| 5 | ¿Qué valores puede tomar X? | Binomial: 0 a n. Hiper: 0 hasta el menor entre n y K. Poisson: 0, 1, 2... sin máximo. Normal: **cualquier valor real** (continua) |
| 6 | ¿Cuáles son los parámetros de la Binomial? | **n** (cantidad de pruebas) y **P** (probabilidad de éxito, constante) |
| 7 | 12 formularios por hora: ¿cuántos en 15 min? ¿Símbolo? ¿Proceso? | **3**. Símbolo **λ**. Regla de tres: 12 · (15/60) = 3, porque λ tiene que estar en el intervalo de la pregunta |
| 8 | ¿Cómo escribís "recibir 4 formularios"? | **P(X = 4)** |
| 9 | ITF > 350.000: ¿qué forma tiene la distribución? ¿Cuál es el centro? ¿Qué lado tomás? | **Campana** (Normal), simétrica. El centro es **μ**. Tomo el lado **derecho**: P(X > 350.000) = 1 − P(X ≤ 350.000) |
| 10 | ¿Cuáles son los parámetros de la Normal y qué hace la media en el gráfico? | **μ y σ.** μ es el centro y **desplaza** la campana; σ la hace **más ancha o más angosta** |
| 11 | ¿En qué casos se usa la Normal? | Con variables **continuas** (que miden: ingresos, tiempos, memoria) con forma de campana. También para las **medias muestrales**, por el TLC |
| 12 | ¿Qué es la estandarización? ¿Qué va en el denominador de Z? | Pasar X a Z = (X − μ)/σ, que dice **cuántas σ** está X de la media. En el denominador va **σ** (para la media muestral, **σ/√n**) |
| 13 | ¿Por qué en tu consigna 5 usaste Hipergeométrica? | Porque es **sin reposición y la población es finita** (N = 330): es el modelo exacto. n/N = 0,045, así que la Binomial habría aproximado bien |

### Unidad 4

| # | Pregunta (salió en coloquios) | Respuesta modelo (resumida) |
|---|---|---|
| 14 | Diferencia entre estadística descriptiva e inferencial | Ver cap. 9: la descriptiva **resume** los datos observados; la inferencial **estima** la población a partir de la muestra, con incertidumbre |
| 15 | ¿Para qué se usa una muestra y qué es? | Es la **parte de la población que observo**. Se usa porque el censo es **imposible, lento o caro** |
| 16 | Encuesta publicada solo en un foro de expertos: ¿cuál es el problema? | **Sesgo:** la muestra no es representativa. Se arregla con **muestreo aleatorio** entre todos los usuarios |
| 17 | ¿Este dato es un parámetro o un estadístico? | ¿Sale de **toda** la población? Es un **parámetro** (μ, σ, p). ¿De una **parte**? Es un **estadístico** (x̄, s, p̂) |
| 18 | ¿La media de una muestra es igual a la de la población? | **No**, en general. La diferencia es el **error muestral**: no es un error de cálculo, sale de observar solo una parte |
| 19 | ¿Cómo te acercás a la media poblacional? | Con **n más grande** (σ/√n baja), una muestra **aleatoria**, y por el **TLC** las x̄ se distribuyen normal alrededor de μ |
| 20 | ¿Qué dice el TLC? ¿Por qué n ≥ 30? | Las **medias muestrales** se distribuyen de forma aproximadamente **normal** alrededor de μ, **sea cual sea la población**. n ≥ 30 es una **referencia práctica** para poblaciones asimétricas, no una garantía |
| 21 | 95% de confianza: ¿el parámetro tiene 95% de probabilidad de ser correcto? | **No.** μ es fijo. El 95% es la confiabilidad del **procedimiento**: el 95% de los intervalos construidos así contendrían a μ |
| 22 | ¿Qué pasa con el intervalo si subo la confianza? ¿Y si subo n? | Con más confianza, **más ancho** (z sube). Con más n, **más angosto** (σ/√n baja) |
| 23 | Consigna 8: ¿las medias muestrales coinciden con μ? ¿Cómo son entre sí? | Ver cap. 16: **no coinciden**, son **distintas entre sí** y quedan **alrededor de μ**, unas arriba y otras abajo. Error muestral; estimador insesgado |
| 24 | 300 clicks: ¿qué podés inferir? | Ver cap. 17: hay que definir **población, unidad** (clicks ≠ usuarios), **período** y **cómo se obtuvo el dato** |
| 25 | ¿Qué es un estimador insesgado? ¿Y uno eficiente? | **Insesgado:** en promedio acierta el parámetro. **Eficiente:** entre dos insesgados, el que **menos varía** |
| 26 | Muestreo aleatorio simple vs. sistemático | **Simple:** todos con la misma probabilidad, por sorteo. **Sistemático:** uno cada **k = N/n** desde un inicio al azar; cuidado con los patrones periódicos |

---

## 21. 🗒️ Machete final (para el viernes, 20 minutos)

**U3: elegir el modelo**
- ¿**Mide**? → **Normal (μ, σ)**.
- ¿Cuenta **sucesos en un intervalo**? → **Poisson (λ)**, reescalado al intervalo de la pregunta.
- ¿Cuenta **éxitos en n pruebas**? → con reposición o n/N ≤ 0,05 → **Binomial (n, P)**; sin reposición y n/N > 0,05 → **Hipergeométrica (N, K, n)**.
- Valores de X: Binomial 0..n · Hiper 0..mín(n, K) · Poisson 0, 1, 2... · Normal, cualquier real.
- Normal: campana simétrica, μ = centro, σ = ancho, la probabilidad es un **área**, P(X = a) = 0. **Z = (X − μ)/σ**.

**U4: frases clave**
- **Descriptiva** resume; **inferencial** estima la población con incertidumbre.
- **Griegas = población (parámetro: μ, σ, p, N). Latinas = muestra (estadístico: x̄, s, p̂, n).**
- Muestra **sesgada** → no representativa → se arregla con **muestreo aleatorio**. Más n **no** arregla el sesgo.
- **Error muestral** = x̄ − μ. No es un error de cálculo.
- **Error estándar = σ/√n.** Más n → menos error.
- **TLC:** las x̄ son ≈ normales alrededor de μ, sea cual sea la población (n ≥ 30 como referencia).
- **IC = x̄ ± z·σ/√n** (z = 1,645 · 1,96 · 2,58). Más confianza → más ancho. Más n → más angosto.
- **95% ≠ "95% de probabilidad de que μ esté adentro".** Es el 95% de los intervalos que contendrían a μ si repito el procedimiento.

**Respondé siempre así:** **QUÉ → POR QUÉ → QUÉ SIGNIFICA.** Y si te trabás: *"¿Me repetís el caso? Quiero identificar la población y la variable."*

**¡Éxitos el viernes! 💪**
