# Ejercicios propuestos 

# Crear un vector con los nombres de 4 lenguajes de programación y mostrar el segundo.

lenguajes <- c("Java","Python","Javascript","C#")

lenguajes[2]

# Crear una matriz de 2 filas y 3 columnas con números del 1 al 6.

mi_matriz <- matrix(1:6, nrow = 2, ncol = 3)
print(mi_matriz)

# Crear un dataframe con las variables: nombre, edad y carrera (3 personas).

dato <- data.frame(
  nombre = c("Mariano", "Alejandra", "Cecilia"),
  edad = c(43, 46, 34),
  carrera = c("Pregramación", "Abogacia", "Medicina")
)
print(dato)

# Consultar el tipo de estructura de cada uno con class().

class(dato)
class(mi_matriz)
class(lenguajes)
