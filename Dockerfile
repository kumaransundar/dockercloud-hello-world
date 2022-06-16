FROM alpine:3.4

RUN apk --update add nginx php5-fpm && \
    mkdir -p /run/nginx

ADD www /www
ADD conf/nginx.conf /etc/nginx/
ADD conf/php-fpm.conf /etc/php5/php-fpm.conf
ADD conf/run.sh /run.sh

ENV LISTEN_PORT=80

EXPOSE 80
CMD /run.sh