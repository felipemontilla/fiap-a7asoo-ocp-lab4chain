FROM nginx:1.21.6-alpine

LABEL authors="Denis Petri, Felipe Marcel Montilla dos Santos, Italo Rafael de Oliveira Santos, Uderson Luiz Fermino"
LABEL version="nginx:1.21.6-alpine"

RUN echo "Hello from group 5" > /usr/share/nginx/html/index.html

EXPOSE 80