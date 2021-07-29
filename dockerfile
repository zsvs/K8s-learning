﻿FROM amazonlinux

RUN yum update -y && yum install httpd php -y

COPY ./index.php /var/www/html/index.php

CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80