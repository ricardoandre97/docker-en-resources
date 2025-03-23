FROM fedora:41

ENV var1 1234
RUN yum -y install httpd 

COPY html-code /var/www/html

CMD httpd -D FOREGROUND
