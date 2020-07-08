FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /docker-entrypoint.d/*.*
CMD ["nginx"]
COPY ./nginx-static /
COPY ./static /usr/share/nginx/static