FROM ubi8
MAINTAINER anandpavithran<apavithr@redhat.com>
LABEL "demo1=test"\
       "demo2=jio"
ENV FRUIT1=apple \
    FRUIT2=grapes
RUN yum clean all &&\
    yum install httpd -y 
WORKDIR /var/www/html
COPY index.html /var/www/html/
VOLUME /jio
EXPOSE 80
CMD bash -c "/usr/sbin/httpd -DFOREGROUND"

