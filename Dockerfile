FROM nginx

MAINTAINER  Agnaldo Marinho <agnaldoneto@ufpa.br>

RUN  apt-get update && \
     apt-get -y install nginx rsync cron
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY syncrepo.sh /usr/local/bin/syncrepo.sh
RUN  chmod +x /usr/local/bin/syncrepo.sh
#ENTRYPOINT /usr/local/bin/syncrepo.sh
COPY run.sh /

VOLUME /archlinux_mirror
EXPOSE 80 443
#EXPOSE 80
CMD ["/run.sh"]
