FROM centos:latest
MAINTAINER SubMattNesk(kujiraitakahiro) <kujiraitakahiro@gmail.com>
ADD ./nginx.repo /etc/yum.repos.d/
ADD ./emon.html /usr/share/nginx/html/
RUN ["/bin/bash","-c","yum -y install nginx"]
EXPOSE 80
LABEL "version" = "0.02" \
      "description" = "presented by SubMattNesk"
ENTRYPOINT /usr/sbin/nginx -c /etc/nginx/nginx.conf
ENTRYPOINT echo "Hello, world"
