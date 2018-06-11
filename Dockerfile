FROM centos:latest
MAINTAINER SubMattNesk(kujiraitakahiro) <kujiraitakahiro@gmail.com>
RUN ["/bin/bash","-c","yum -y install nginx"]
ADD ./nginx.repo /etc/yum.repos.d/
ADD ./emon.html /usr/share/nginx/html/
EXPOSE 80
LABEL "version" = "0.01" \
      "description = "presented by SubMattNesk"

CMD ["/bin/bash","-c","systemctl start nginx"]
