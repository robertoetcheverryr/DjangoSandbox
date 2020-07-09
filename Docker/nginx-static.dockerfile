FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /docker-entrypoint.d/*.*
HEALTHCHECK --interval=20s --timeout=3s \
CMD curl -f http://localhost:8080/ || exit 1
CMD ["nginx"]
COPY ./nginx-static /
COPY ./static /usr/share/nginx/static