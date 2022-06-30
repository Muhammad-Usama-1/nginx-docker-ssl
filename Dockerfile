FROM nginx:latest

ADD nginx.conf /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/ssl
ADD nginx.crt /etc/nginx/ssl
ADD nginx.key /etc/nginx/ssl
EXPOSE 443
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

