FROM nginx 

MAINTAINER  Agnaldo Marinho <agnaldoneto@ufpa.br>

RUN  apt-get update && \
     apt-get -y install rsync cron
COPY nginx.conf /etc/nginx/conf.d/default
COPY syncrepo.sh /
COPY run.sh /

VOLUME /archlinux_mirror
#EXPOSE 80 443
EXPOSE 80
CMD ["/run.sh"]
