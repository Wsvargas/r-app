# Usamos una imagen oficial de R
FROM rocker/r-ver:4.1.1

# Establecer directorio de trabajo
WORKDIR /app

# Copiar el código fuente al contenedor
COPY app.R .

# Comando para ejecutar el programa
CMD ["Rscript", "app.R"]
