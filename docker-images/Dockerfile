FROM centos

ENV var1 1234
RUN yum -y install httpd 

COPY html-code /var/www/html

CMD apachectl -DFOREGROUND
