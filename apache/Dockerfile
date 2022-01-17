FROM httpd:2.4-alpine

RUN apk --no-cache add shadow && \
    usermod -u 1000 www-data && \
    groupmod -g 1000 www-data

RUN echo "IncludeOptional conf/sites/*.conf" >> /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /usr/local/apache2/conf/sites/
COPY pimcore.conf /usr/local/apache2/conf/sites



