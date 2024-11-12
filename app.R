# app.R
library(plumber)

# Define la función para manejar las solicitudes HTTP
# Esta ruta devolverá un mensaje en HTML
#* @get /hello
function() {
  "<h1>Hello from R with Plumber!</h1>"
}

# Inicia el servidor en el puerto 8787
pr <- plumb("app.R")  # Carga el archivo
pr$run(host = "0.0.0.0", port = 8787)
