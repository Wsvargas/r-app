# Dockerfile
FROM r-base:latest

# Instala el paquete Plumber
RUN R -e "install.packages('plumber')"

# Copia el archivo app.R al contenedor
COPY app.R /app/app.R

# Define el directorio de trabajo# Dockerfile
FROM r-base:latest

# Instala el repositorio CRAN de R para asegurar la instalación de paquetes
RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"))' >> /usr/local/lib/R/etc/Rprofile.site

# Instala el paquete Plumber
RUN R -e "install.packages('plumber')"

# Copia el archivo de la aplicación R al contenedor
COPY app.R /app/app.R

# Define el directorio de trabajo
WORKDIR /app

# Exponer el puerto 8080 para el acceso web
EXPOSE 8080

# Ejecuta la aplicación R
CMD ["Rscript", "app.R"]

WORKDIR /app

# Exponer el puerto 8080 para el acceso web
EXPOSE 8080

# Ejecuta la aplicación R
CMD ["Rscript", "app.R"]
