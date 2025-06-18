FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --chown=nginx:nginx html/ .

COPY --chown=nginx:nginx nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /tmp/client_body /tmp/proxy /tmp/fastcgi /tmp/uwsgi /tmp/scgi && \
    chown -R nginx:nginx /tmp

USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
