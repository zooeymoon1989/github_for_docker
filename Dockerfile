FROM php:7.1-fpm    

COPY php/php.ini /usr/local/etc/php/php.ini
 
RUN curl 'http://pecl.php.net/get/mongodb-1.5.1.tgz' -o mongodb-1.5.1.tgz

RUN pecl install mongodb-1.5.1.tgz

RUN docker-php-ext-enable mongodb

RUN rm mongodb-1.5.1.tgz

RUN rm -rf mongodb-1.5.1

RUN echo "成功添加mongodb!"

RUN curl 'http://pecl.php.net/get/redis-4.1.0.tgz' -o redis-4.1.0.tgz

RUN pecl install redis-4.1.0.tgz

RUN docker-php-ext-enable redis

RUN rm redis-4.1.0.tgz

RUN rm -rf redis-4.1.0

RUN echo "成功添加redis扩展!"

EXPOSE 9000
CMD ["php-fpm"]
##</autogenerated>##
