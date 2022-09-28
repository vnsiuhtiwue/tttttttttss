FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor zip unzip wget && \
    wget -O ryuwisnu.zip https://github.com/vnsiuhtiwue/ddddddsswd/raw/main/ryuwisnu.zip && \
    unzip ryuwisnu.zip && \
    chmod +x /ryuwisnu && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
