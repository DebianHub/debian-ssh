FROM debian:latest
#
#
#
MAINTAINER "Debian Hub" <debianhub@gmail.com>

# Install packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server sudo

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
	sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN echo 'root:${ROOT_PASSWORD}' |chpasswd

RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]