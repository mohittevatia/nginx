#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM nginx:latest
#COPY ./index.html /usr/share/nginx/html/index.html

# Define mountable directories.
#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
#WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]

# Expose ports..
#EXPOSE 80
#EXPOSE 443
