FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
COPY conf /etc/nginx

# shared volume for certbot to update the certs?
# certs go here:
#/etc/nginx/ssl/example.com.bundle.cer
#/etc/nginx/ssl/example.com.keynopass