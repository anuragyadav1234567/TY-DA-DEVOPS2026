FROM nginx:alpine

# Use the "dot" notation for the source to avoid quote issues
COPY ./project\ 1/ /usr/share/nginx/html/

EXPOSE 80
