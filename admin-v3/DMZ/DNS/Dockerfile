FROM ubuntu:bionic
RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils -y 
RUN apt install dnsutils -y

COPY ./named.conf /etc/bind/named.conf
COPY ./db.l2-7.ephec-ti.be /etc/bind/db.l2-7.ephec-ti.be
COPY ./dnssec_key.sh /etc/bind/


RUN chmod a+x /etc/bind/dnssec_key.sh
RUN /etc/bind/dnssec_key.sh
RUN rm /etc/bind/dnssec_key.sh

CMD named -f

EXPOSE 53
