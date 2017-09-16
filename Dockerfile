# Dockerfile for lj-releng in openresty

FROM r.qihoo.cloud/qssweb/library/openresty:1.11.2.5-centos
MAINTAINER Qunyan Sun <sunqunyan@gmail.com>

RUN curl https://raw.githubusercontent.com/openresty/openresty-devel-utils/master/lj-releng > /usr/local/bin/lj-releng

RUN chmod +x /usr/local/bin/lj-releng

WORKDIR /var/www/html

ENTRYPOINT lj-releng
