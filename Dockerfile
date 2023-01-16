FROM nginx:alpine

RUN mkdir -p /app/files \
    && curl -fL -o /app/files/100MB.bin https://speed.hetzner.de/100MB.bin \
    && curl -fL -o /app/files/1GB.bin https://speed.hetzner.de/1GB.bin

COPY app.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /app/index.html

WORKDIR /src