FROM centos
LABEL description="Running web application as a container"
RUN yum update -y
RUN yum install httpd -y
COPY . /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
