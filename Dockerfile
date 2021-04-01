#
# Nginx Dockerfile
#
# https://github.com/dockerfile/nginx
#

# Pull base image.
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
RUN echo "CICD DEMO" > /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/pageA && mkdir -p /usr/share/nginx/html/pageB && mkdir -p /usr/share/nginx/html/ERROR && mkdir -p /usr/share/nginx/html/pageC && \
    echo "HELLO WORLD FROM HOME PAGE AAAAAAAAAAAAAAAAAA" > /usr/share/nginx/html/pageA/index.html && \
    echo "HELLO WORLD FROM HOME PAGE BBBBBBBBBBBBBBBBBB" > /usr/share/nginx/html/pageB/index.html && \
    echo "HELLO WORLD FROM HOME PAGE CCCCCCCCCCCCCCCCCC" > /usr/share/nginx/html/pageC/index.html && \
    echo "Work In Progress page or Under construction Page" > /usr/share/nginx/html/ERROR/index.html


#CMD ["nginx"]

# Expose ports..
EXPOSE 80
EXPOSE 443
