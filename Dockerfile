#using from
FROM ubuntu
LABEL maintainer=genius
RUN apt update && apt install nginx -y
COPY mywebsite/* /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

