# Usamos una imagen oficial de Go
FROM golang:1.20

# Seteamos el directorio de trabajo
WORKDIR /app

# Copiamos el código fuente dentro del contenedor
COPY . .

# Descargamos las dependencias
RUN go mod tidy

# Exponemos el puerto
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["go", "run", "main.go"]
