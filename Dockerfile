FROM openjdk:8u212-jre-alpine

RUN apk add --no-cache -U \
  openssl \
  imagemagick \
  lsof \
  su-exec \
  shadow \
  bash \
  curl iputils wget \
  git \
  jq \
  mysql-client \
  tzdata \
  rsync \
  nano \
  sudo \
  knock \
  ttf-dejavu

COPY . /minecraft

WORKDIR /minecraft

RUN chmod +x startserver.sh

CMD ["./startserver.sh"]