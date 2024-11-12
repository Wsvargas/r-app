# Dockerfile
FROM r-base:latest

# Install Plumber package
RUN R -e "install.packages('plumber')"

# Copy the R application to the container
COPY app.R /app/app.R

# Set the working directory
WORKDIR /app

# Expose port 8080 for web access
EXPOSE 8080

# Run the Plumber API
CMD ["Rscript", "app.R"]
