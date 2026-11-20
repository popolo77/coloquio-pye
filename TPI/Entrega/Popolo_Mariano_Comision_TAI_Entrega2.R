# ==============================================================================
# TRABAJO DE APLICACIÓN INTEGRADOR (TAI) - SEGUNDA ENTREGA (Consignas 3 y 4)
# Alumno: Mariano Popolo
# Materia: Probabilidad y Estadística - TUPAD
# Aglomerado: Gran Rosario (Aglomerado 4)
# ==============================================================================

# Carga de la librería 
if (!require(readxl)) install.packages("readxl")
library(readxl)

# Carga del dataset 
archivo <- "TAI-aglomerado4.xlsx"
datos <- read_excel(archivo)

# ==============================================================================
# CONSIGNA 3: MEDIDAS DESCRIPTIVAS
# ==============================================================================

# Función auxiliar para calcular la moda en R
calcular_moda <- function(x) {
  tabla <- table(x)
  valor_max <- max(tabla)
  modas <- as.numeric(names(tabla[tabla == valor_max]))
  return(modas)
}

# --- Variable ITF (Cuantitativa Continua) ---
itf <- datos$ITF

# Medidas de Tendencia Central
media_itf   <- round(mean(itf), 4)
mediana_itf <- round(median(itf), 4)
moda_itf    <- round(calcular_moda(itf)[1], 4) 

# Medidas de Posición (Cuartiles)
cuartiles_itf <- round(quantile(itf, probs = c(0.25, 0.50, 0.75)), 4)

# Medidas de Dispersión
varianza_itf <- round(var(itf), 4)
desvio_itf   <- round(sd(itf), 4)
cv_itf       <- round((desvio_itf / media_itf) * 100, 4)

# Impresión de resultados en consola para ITF
cat("\n--- Medidas Descriptivas: ITF (Ingreso Total Familiar) ---\n")
cat("Media:", media_itf, "\n")
cat("Mediana:", mediana_itf, "\n")
cat("Moda:", moda_itf, "\n")
cat("Cuartil 1 (Q1):", cuartiles_itf[1], "\n")
cat("Cuartil 2 (Mediana):", cuartiles_itf[2], "\n")
cat("Cuartil 3 (Q3):", cuartiles_itf[3], "\n")
cat("Varianza:", varianza_itf, "\n")
cat("Desviación Estándar:", desvio_itf, "\n")
cat("Coeficiente de Variación (CV):", cv_itf, "%\n")

# --- Variable IV1 (Cualitativa Nominal) ---
iv1 <- datos$IV1
moda_iv1 <- calcular_moda(iv1)

# Impresión de resultados en consola para IV1
cat("\n--- Medidas Descriptivas: IV1 (Tipo de Vivienda) ---\n")
cat("Moda IV1:", moda_iv1, "(Corresponde a la categoría 'Casa')\n")

# ==============================================================================
# CONSIGNA 4: REPRESENTACIÓN GRÁFICA
# ==============================================================================

# 4.1 Histograma para ITF (utilizando Frecuencia Absoluta)
# Se aplica la regla de Sturges para determinar los intervalos
n <- length(itf)
k <- ceiling(1 + 3.322 * log10(n))

# Generación del gráfico
hist(itf, 
     breaks = k, 
     main = "Distribución del Ingreso Total Familiar (Gran Rosario)", 
     xlab = "Ingreso Total Familiar ($)", 
     ylab = "Frecuencia Absoluta (Cant. de Hogares)", 
     col = "#3b82f6", 
     border = "white",
     labels = TRUE)

# 4.2 Diagrama Circular para IV1 (Representación Porcentual)
tabla_iv1 <- table(iv1)
# Cálculo de porcentajes con redondeo simétrico
porcentajes_iv1 <- round(prop.table(tabla_iv1) * 100, 4)

# Creación de etiquetas para el gráfico
etiquetas <- paste(c("Casa", "Departamento", "Pieza inquilinato", "Pieza pensión"), 
                   porcentajes_iv1, "%", sep = " ")

# Generación del gráfico
pie(tabla_iv1, 
    labels = etiquetas, 
    main = "Tipos de Vivienda (Aglomerado Gran Rosario)", 
    col = c("#10b981", "#f59e0b", "#f43f5e", "#6366f1"),
    border = "white")