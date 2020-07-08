FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /docker-entrypoint.d/*.*
CMD ["nginx"]
COPY ./nginx-ssl-load-balancer /

# shared volume for certbot to update the certs?
# certs go here:
#/etc/nginx/ssl/example.com.bundle.cer
#/etc/nginx/ssl/example.com.keynopass