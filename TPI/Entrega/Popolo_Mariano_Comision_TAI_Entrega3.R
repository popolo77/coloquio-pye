# ==============================================================================
# TRABAJO DE APLICACIÓN INTEGRADOR (TAI) - TERCERA ENTREGA (Consignas 5, 6 y 7)
# Alumno: Mariano Popolo
# Materia: Probabilidad y Estadística - TUPAD
# Aglomerado: Gran Rosario (Aglomerado 4) | N = 330
# ==============================================================================

# ------------------------------------------------------------------------------
# 0. CONFIGURACIÓN INICIAL Y LIBRERÍAS
# ------------------------------------------------------------------------------
options(scipen = 999) # Desactiva la notación científica

if (!require(readxl)) install.packages("readxl", dependencies = TRUE)
library(readxl)

# ------------------------------------------------------------------------------
# 1. CARGA DEL DATASET
# ------------------------------------------------------------------------------
# Carga del archivo Excel del aglomerado Gran Rosario
archivo <- "TAI-aglomerado4.xlsx"
datos <- read_excel(archivo)

# ==============================================================================
# CONSIGNA 5: MODELO HIPERGEOMÉTRICO (Régimen de Tenencia - Inquilinos)
# Población N = 330, Muestra n = 15 (sin reposición)
# ==============================================================================
N_total <- nrow(datos)                       # 330 hogares
K_inquilinos <- sum(datos$II7 == 3)          # 70 hogares inquilinos en Rosario
N_no_inquilinos <- N_total - K_inquilinos    # 260 hogares no inquilinos
n_muestra <- 15                              # Tamaño de muestra

# 5.1. Probabilidad de que exactamente 4 sean inquilinos: P(X = 4)
prob_5_1 <- dhyper(x = 4, m = K_inquilinos, n = N_no_inquilinos, k = n_muestra)
cat("--- CONSIGNA 5 ---\n")
cat("5.1. P(X = 4):", round(prob_5_1, 4), "\n")

# 5.2. Probabilidad de que más de 8 sean inquilinos: P(X > 8) = 1 - P(X <= 8)
prob_5_2 <- 1 - phyper(q = 8, m = K_inquilinos, n = N_no_inquilinos, k = n_muestra)
cat("5.2. P(X > 8):", round(prob_5_2, 4), "\n")

# 5.3. Probabilidad de que a lo sumo 6 sean inquilinos: P(X <= 6)
prob_5_3 <- phyper(q = 6, m = K_inquilinos, n = N_no_inquilinos, k = n_muestra)
cat("5.3. P(X <= 6):", round(prob_5_3, 4), "\n\n")

# ==============================================================================
# CONSIGNA 6: MODELO NORMAL (Ingreso Total Familiar - ITF)
# ==============================================================================
itf <- datos$ITF
media_itf <- mean(itf)   # Media muestral: $1.388.220,12
desvio_itf <- sd(itf)     # Desviación estándar: $1.147.315,43

# 6.1. Probabilidad de ITF de por lo menos 350.000: P(X >= 350.000) = 1 - P(X <= 350.000)
prob_6_1 <- 1 - pnorm(q = 350000, mean = media_itf, sd = desvio_itf)
cat("--- CONSIGNA 6 ---\n")
cat("6.1. P(ITF >= 350.000):", round(prob_6_1, 4), "\n")

# 6.2. Probabilidad de ITF entre 250.000 y 300.000: P(250.000 <= X <= 300.000)
prob_6_2 <- pnorm(300000, mean = media_itf, sd = desvio_itf) - 
  pnorm(250000, mean = media_itf, sd = desvio_itf)
cat("6.2. P(250.000 <= ITF <= 300.000):", round(prob_6_2, 4), "\n")

# 6.3. Probabilidad de ITF menor que 450.000: P(X < 450.000)
prob_6_3 <- pnorm(q = 450000, mean = media_itf, sd = desvio_itf)
cat("6.3. P(ITF < 450.000):", round(prob_6_3, 4), "\n\n")

# ==============================================================================
# CONSIGNA 7: MODELO POISSON (Llegada de Formularios EPH al Servidor)
# Tasa base: 12 formularios por hora (0,2 formularios por minuto)
# ==============================================================================
tasa_por_minuto <- 12 / 60

# 7.1. Exactamente 4 formularios en 15 minutos: lambda = 3, P(X = 4)
lambda_15 <- tasa_por_minuto * 15
prob_7_1 <- dpois(x = 4, lambda = lambda_15)
cat("--- CONSIGNA 7 ---\n")
cat("7.1. P(X = 4 en 15 min):", round(prob_7_1, 4), "\n")

# 7.2. Como máximo 5 formularios en 30 minutos: lambda = 6, P(X <= 5)
lambda_30 <- tasa_por_minuto * 30
prob_7_2 <- ppois(q = 5, lambda = lambda_30)
cat("7.2. P(X <= 5 en 30 min):", round(prob_7_2, 4), "\n")

# 7.3. Menos de 7 formularios en 45 minutos: lambda = 9, P(X < 7) = P(X <= 6)
lambda_45 <- tasa_por_minuto * 45
prob_7_3 <- ppois(q = 6, lambda = lambda_45)
cat("7.3. P(X <= 6 en 45 min):", round(prob_7_3, 4), "\n")

