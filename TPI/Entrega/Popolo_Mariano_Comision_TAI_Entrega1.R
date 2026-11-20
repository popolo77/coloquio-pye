# ==============================================================================
# TRABAJO DE APLICACIÓN INTEGRADOR (TAI) - PRIMERA ENTREGA (Consignas 1 y 2)
# Alumno: Mariano Popolo
# Materia: Probabilidad y Estadística - TUPAD
# Aglomerado: Gran Rosario (Aglomerado 4) | n = 330
# ==============================================================================

# ------------------------------------------------------------------------------
# 0. CONFIGURACIÓN INICIAL Y LIBRERÍAS
# ------------------------------------------------------------------------------
options(scipen = 999) # Desactiva la notación científica en toda la sesión

if (!require(readxl)) install.packages("readxl", dependencies = TRUE)
if (!require(knitr)) install.packages("knitr", dependencies = TRUE)
if (!require(kableExtra)) install.packages("kableExtra", dependencies = TRUE)

library(readxl)
library(knitr)
library(kableExtra)

# ------------------------------------------------------------------------------
# 1. CARGA DEL DATASET
# ------------------------------------------------------------------------------
archivo <- file.choose() # Seleccionar TAI-aglomerado4.xlsx
datos <- read_excel(archivo)

# ------------------------------------------------------------------------------
# 2. CONSIGNA 2.2: TABLA DE FRECUENCIAS - VARIABLE IV1 (Tipo de Vivienda)
# Variable cualitativa nominal -> Frecuencias simples
# ------------------------------------------------------------------------------
tabla_iv1_abs <- table(datos$IV1)
tabla_iv1_rel <- prop.table(tabla_iv1_abs)

nombres_iv1 <- c("Casa", "Departamento", "Pieza en inquilinato", "Pieza en hotel/pensión")

tabla_final_iv1 <- data.frame(
  Codigo = names(tabla_iv1_abs),
  Tipo_Vivienda = nombres_iv1,
  Frec_Absoluta = as.vector(tabla_iv1_abs),
  Frec_Relativa = round(as.vector(tabla_iv1_rel), 4),
  Porcentaje = round(as.vector(tabla_iv1_rel) * 100, 2)
)

print("--- TABLA VARIABLE IV1 (TIPO DE VIVIENDA) ---")
print(tabla_final_iv1, row.names = FALSE)

# ------------------------------------------------------------------------------
# 3. CONSIGNA 2.1: TABLA AGRUPADA - VARIABLE ITF (Ingreso Total Familiar)
# Variable cuantitativa continua -> Regla de Sturges
# ------------------------------------------------------------------------------
itf <- datos$ITF
n <- length(itf)

# Regla de Sturges (k = 10 intervalos)
k <- ceiling(1 + 3.322 * log10(n))

# Rango y Amplitud (A = $1.025.000)
min_itf <- min(itf)
max_itf <- max(itf)
rango <- max_itf - min_itf
amplitud <- ceiling(rango / k)

# Puntos de corte y clasificación
cortes <- seq(from = min_itf, to = min_itf + k * amplitud, by = amplitud)
clases_itf <- cut(itf, breaks = cortes, right = FALSE, include.lowest = TRUE)

# Formato visual de intervalos en pesos
etiquetas_limpias <- sprintf("[%s - %s)", 
                             format(cortes[-length(cortes)], big.mark = ".", scientific = FALSE),
                             format(cortes[-1], big.mark = ".", scientific = FALSE))
etiquetas_limpias[length(etiquetas_limpias)] <- sprintf("[%s - %s]", 
                                                        format(cortes[length(cortes)-1], big.mark = ".", scientific = FALSE),
                                                        format(cortes[length(cortes)], big.mark = ".", scientific = FALSE))

# Cálculo de frecuencias
f_abs <- table(clases_itf)
f_acum <- cumsum(f_abs)
f_rel <- prop.table(f_abs)
f_rel_acum <- cumsum(f_rel)

# Data Frame final con 4 decimales
tabla_final_itf <- data.frame(
  Intervalo = etiquetas_limpias,
  Frec_Absoluta = as.vector(f_abs),
  Frec_Acumulada = as.vector(f_acum),
  Frec_Relativa = round(as.vector(f_rel), 4),
  Frec_Rel_Acum = round(as.vector(f_rel_acum), 4),
  Porcentaje = round(as.vector(f_rel) * 100, 2),
  Porc_Acumulado = round(as.vector(f_rel_acum) * 100, 2)
)

print("--- TABLA VARIABLE ITF (INGRESO TOTAL FAMILIAR) ---")
print(tabla_final_itf, row.names = FALSE)

# ------------------------------------------------------------------------------
# 4. EXPORTAR A FORMATO HTML Y ABRIR EN EL NAVEGADOR
# ------------------------------------------------------------------------------
html_iv1 <- kable(tabla_final_iv1, format = "html", 
                  caption = "<b>Tabla 1: Distribución de Hogares según Tipo de Vivienda (IV1)</b>",
                  align = c("c", "l", "c", "c", "c")) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "bordered"), full_width = FALSE) %>%
  row_spec(2, bold = TRUE, background = "#dbeafe")

html_itf <- kable(tabla_final_itf, format = "html", 
                  caption = "<b>Tabla 2: Distribución de Frecuencias Agrupadas - Ingreso Total Familiar (ITF)</b>",
                  align = c("c", "c", "c", "c", "c", "c", "c")) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "bordered"), full_width = FALSE) %>%
  row_spec(3, bold = TRUE, background = "#dbeafe")

contenido_html <- paste0(
  "<!DOCTYPE html><html lang='es'><head><meta charset='UTF-8'><title>TAI Entrega 1 - Gran Rosario</title>",
  "<style>",
  "body { font-family: 'Segoe UI', Arial, sans-serif; margin: 40px auto; max-width: 950px; background-color: #f8fafc; color: #1e293b; } ",
  "h1 { color: #0f172a; font-size: 22px; margin-bottom: 4px; } ",
  ".sub { color: #64748b; font-size: 14px; margin-bottom: 25px; } ",
  "table { margin-bottom: 30px; background-color: #ffffff; } ",
  "th { background-color: #1e293b !important; color: #ffffff !important; } ",
  "</style></head><body>",
  "<h1>Trabajo de Aplicación Integrador - Primera Entrega</h1>",
  "<div class='sub'><b>Aglomerado:</b> Gran Rosario (Aglomerado 4) | <b>Muestra (n):</b> 330 hogares</div>",
  html_iv1, "<br>",
  html_itf,
  "</body></html>"
)

writeLines(contenido_html, "Tablas_TAI_Entrega1.html")
browseURL("Tablas_TAI_Entrega1.html")