# load base image from nginx <ctrl>+<space> for suggestion after colon(:)
FROM nginx:1-alpine

# COPY index.html into the right nginx folder
ADD index.html /usr/share/nginx/html

# Start nginx server (nginx -g deamon off;)
CMD [ "nginx", "-g", "daemon off;" ]