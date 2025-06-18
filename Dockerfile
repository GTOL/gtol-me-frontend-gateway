FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --chown=nginx:nginx html/ .

COPY --chown=nginx:nginx nginx.conf /etc/nginx/nginx.conf

RUN chown -R nginx:nginx /var/cache/nginx

USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
