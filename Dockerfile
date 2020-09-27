FROM haho3535/ub_php_apache2:1.0
MAINTAINER datastory Hub <haho3535@dshub.cloud>
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

jeff@docker-host1:~/devteam$ cat Dockerfile_nginx
FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
