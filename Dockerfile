#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
RUN echo "THIS IS USA PAGE" > /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/us && \
    echo "THIS IS USA PAGE inside /us folder " > /usr/share/nginx/html/us/index.html
#WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]

# Expose ports..
EXPOSE 80
EXPOSE 443
