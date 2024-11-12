# app.R
library(shiny)

# Definir la interfaz de usuario
ui <- fluidPage(
  titlePanel("R Shiny App"),
  h1("Hello from R with Shiny!")
)

# Definir el servidor de la aplicación
server <- function(input, output) {}

# Crear la aplicación Shiny
shinyApp(ui = ui, server = server)
