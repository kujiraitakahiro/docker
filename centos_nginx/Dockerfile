FROM centos:latest
MAINTAINER SubMattNesk(kujiraitakahiro) <kujiraitakahiro@gmail.com>
COPY ./nginx.repo /etc/yum.repos.d/
RUN ["/bin/bash","-c","yum -y install nginx"]
EXPOSE 80
LABEL "version" = "0.02" \
      "description" = "presented by SubMattNesk"
ADD ./emon.html /usr/share/nginx/html/
#CMD : When "docker run", you can overwrite it.
CMD ["/usr/sbin/nginx","-g","daemon off;"]
#ENTRYPOINT : When "docker run", you can't overwrite it.
#For example, using command options.
ENTRYPOINT ["-c","/etc/nginx/nginx.conf"]
