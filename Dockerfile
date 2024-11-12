# Usamos una imagen oficial de Go como base
FROM golang:1.20

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /app

# Copiamos todos los archivos de la aplicación al contenedor
COPY . .

# Ejecutamos el comando para descargar las dependencias
RUN go mod tidy

# Exponemos el puerto que usará la aplicación
EXPOSE 8080

# Definimos el comando para ejecutar la aplicación
CMD ["go", "run", "main.go"]
