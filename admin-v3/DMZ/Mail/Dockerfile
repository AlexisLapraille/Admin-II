FROM dovecot/dovecot

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y postfix opendkim opendmarc
RUN apt-get install -y systemctl
RUN apt-get install -y mailutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y telnet

COPY main.cf /etc/postfix/
COPY dovecot.conf /etc/dovecot/
COPY master.cf /etc/postfix/

RUN useradd -rm -p $(openssl passwd -1 contact) contact
RUN useradd -rm -p $(openssl passwd -1 b2b) b2b
RUN useradd -rm -p $(openssl passwd -1 atelier) atelier

