# confd
#
# Version 0.0.1

FROM centos:7

VOLUME ["/etc/confd"]

ENV ETCD=172.17.42.1:4001

ENTRYPOINT ["/usr/bin/confd", "-node", "$ETCD"]

RUN /bin/localedef -v -c -i en_US -f UTF-8 en_US.UTF-8;\
    curl -L https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 -o /usr/bin/confd;\
    chmod +x /usr/bin/confd;\
