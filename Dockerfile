# Usa una imagen base de R
FROM rocker/r-ver:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala las dependencias necesarias
RUN R -e "install.packages('httpuv')"

# Copia el archivo de la aplicación R
COPY app.R /app/

# Expone el puerto que utilizará la aplicación
EXPOSE 8787

# Comando para ejecutar el servidor en R
CMD ["Rscript", "app.R"]
