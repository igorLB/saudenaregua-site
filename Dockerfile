FROM nginx:alpine
COPY . /usr/share/nginx/html
ADD ./docker/nginx/01-virtual.conf /etc/nginx/conf.d/01-virtual.conf

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
EXPOSE 80