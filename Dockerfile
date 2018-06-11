FROM centos:latest
MAINTAINER SubMattNesk(kujiraitakahiro) <kujiraitakahiro@gmail.com>
ADD ./nginx.repo /etc/yum.repos.d/
RUN ["/bin/bash","-c","yum -y install nginx"]
ADD ./emon.html /usr/share/nginx/html/
LABEL "version" = "0.02" \
      "description" = "presented by SubMattNesk"
ENTRYPOINT /usr/sbin/nginx
EXPOSE 80
