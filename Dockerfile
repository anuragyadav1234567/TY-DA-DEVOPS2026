FROM nginx:alpine

# Using a wildcard (*) avoids the "space in folder name" error entirely
COPY ./project*/ /usr/share/nginx/html/

EXPOSE 80
