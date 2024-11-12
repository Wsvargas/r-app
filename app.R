# app.R
library(httpuv)

# Define la función para manejar las solicitudes HTTP
handler <- function(req) {
  list(
    status = 200,
    headers = list('Content-Type' = 'text/html'),
    body = "<h1>Hello from R HTTP Server! <p> developer name: Willian Vargas</h1>"
  )
}

# Inicia el servidor en el puerto 8787
server <- startServer("0.0.0.0", 8787, list(call = handler))

# Mantén el servidor en funcionamiento
server$wait()
