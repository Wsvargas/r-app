# app.R
library(plumber)

#* @get /
function() {
  "<h1>Hello from R!</h1>"
}

# Iniciar el servidor Plumber en el archivo app.R
pr <- plumb("app.R")
pr$run(host = "0.0.0.0", port = 8080)
