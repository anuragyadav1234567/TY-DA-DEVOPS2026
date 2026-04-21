# Use a simple web server image
FROM nginx:alpine

# Copy your HTML files into the server's folder
COPY . /usr/share/nginx/html

# Tell the container to use port 80 internally
EXPOSE 80
