FROM nginx:alpine

# Change Nginx to listen on port 8080
RUN sed -i 's/80/8080/' /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
