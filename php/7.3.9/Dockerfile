FROM ubuntu:18.04

MAINTAINER Jacob G. Acosta

RUN apt-get clean && apt-get update && apt-get install -y locales
RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y curl zip unzip git software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php7.3-fpm php7.3-cli php7.0-mcrypt php7.3-gd php7.3-mysql \
       php7.3-pgsql php7.3-imap php-memcached php7.0-mbstring php7.3-xml php7.3-curl \
    && php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
    && mkdir /run/php \
    && apt-get remove -y --purge software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
ADD www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000
CMD ["php-fpm7.3"]
