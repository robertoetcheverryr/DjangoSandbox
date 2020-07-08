FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
CMD ["nginx"]
COPY ./nginx-static /
COPY ./static /usr/share/nginx/static