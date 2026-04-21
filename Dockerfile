FROM nginx:alpine
# Copy the contents of the coffee-house folder into the web server
COPY ./coffee-house/ /usr/share/nginx/html/
EXPOSE 80
