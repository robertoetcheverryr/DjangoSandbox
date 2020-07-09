FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /docker-entrypoint.d/*.*
HEALTHCHECK --interval=20s --timeout=3s \
CMD curl -f http://localhost:4443/ || exit 1
CMD ["nginx"]
COPY ./nginx-ssl-load-balancer /

# shared volume for certbot to update the certs?
# certs go here:
#/etc/nginx/ssl/example.com.bundle.cer
#/etc/nginx/ssl/example.com.keynopass