FROM nginx:1.21.4-alpine-perl AS base

LABEL maintainer="Wenhsing <wenhsing@qq.com>"

ENV APP /app
ENV CA /ca

RUN mkdir -p "$APP" \
    && mkdir -p "$CA"

EXPOSE 80 443

VOLUME [ "${APP}", "$CA" ]

CMD ["nginx", "-g", "daemon off;"]
