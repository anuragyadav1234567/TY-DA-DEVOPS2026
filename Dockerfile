FROM nginx:alpine

# Take your specific file and make it the 'index.html' for the server
COPY anuragindex2.html /usr/share/nginx/html/index.html

EXPOSE 80
