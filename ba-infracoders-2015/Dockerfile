FROM nginx
MAINTAINER Mesosphere support@mesosphere.io

EXPOSE 80

ADD app/ /usr/share/nginx/html
RUN chmod -R 777 /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
