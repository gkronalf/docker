FROM nginx:1.25.3-alpine-slim
ADD ./html/ /usr/share/nginx/html/
EXPOSE 80