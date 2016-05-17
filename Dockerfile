FROM progrium/busybox

MAINTAINER Pep

RUN opkg-install uhttpd

ADD ./dist/ /www

EXPOSE 8080

CMD ""
ENTRYPOINT ["/usr/sbin/uhttpd", "-f", "-p", "8080", "-h", "/www"]
