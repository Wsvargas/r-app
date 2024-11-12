FROM rocker/r-ver:latest

WORKDIR /app

RUN R -e "install.packages('plumber')"

COPY app.R /app/

EXPOSE 8787

CMD ["Rscript", "app.R"]
