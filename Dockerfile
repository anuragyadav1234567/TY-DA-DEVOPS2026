
# Copy your HTML files into the server's folder
FROM nginx:alpine
# This grabs the files from your folder and puts them in the web root
COPY "./project 1/" /usr/share/nginx/html/

# Tell the container to use port 80 internally
EXPOSE 80
