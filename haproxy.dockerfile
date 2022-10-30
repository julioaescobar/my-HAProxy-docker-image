FROM haproxy:2.6.6-alpine
#exposing por 80 and 8404
EXPOSE 80
EXPOSE 8404
#haproxy require this folder and most have permission on it
USER root
RUN mkdir /run/haproxy/
RUN chown haproxy:haproxy /run/haproxy/
#configuration file
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg