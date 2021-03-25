#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
RUN echo "HELLO WORLD FROM HOME PAGE" > /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/pegaA && mkdir -p /usr/share/nginx/html/pegaB && -p /usr/share/nginx/html/ERROR && mkdir -p /usr/share/nginx/html/pegaC && \
    echo "HELLO WORLD FROM HOME PAGE AAAAA" > /usr/share/nginx/html/pegaA/index.html && \
    echo "HELLO WORLD FROM HOME PAGE BBBBB" > /usr/share/nginx/html/pegaB/index.html && \
    echo "HELLO WORLD FROM HOME PAGE CCCCC" > /usr/share/nginx/html/pegaC/index.html && \
    echo "Work In Progress page or Under construction Page" > /usr/share/nginx/html/ERROR/index.html


#CMD ["nginx"]

# Expose ports..
EXPOSE 80
EXPOSE 443
