# Dockerfile
FROM rocker/shiny:latest

# Copia la aplicación R al contenedor
COPY app.R /srv/shiny-server/

# Exponer el puerto 3838 para Shiny Server
EXPOSE 3838

# Ejecutar Shiny Server
CMD ["/usr/bin/shiny-server"]
