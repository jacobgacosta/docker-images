FROM nginx

MAINTAINER Jacob G. Acosta

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
ADD default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
COPY index.php /usr/share/nginx/html
COPY nginx.conf /etc/nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]
