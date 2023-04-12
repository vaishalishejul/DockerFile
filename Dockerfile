FROM centos:centos7
MAINTAINER "Vaishali Shejul"
RUN yum install httpd -y
RUN yum install git -y
COPY index.html /var/www/html/
ENV DocumentRoot=/var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
