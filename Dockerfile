FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    software-properties-common

#RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update \
    && apt-get install -y ansible \
    && apt-get install -y iproute2 \
    && apt-get install -y iputils-ping \
    && apt-get install -y sshpass \
    && apt-get install -y git \
    && apt-get install -y vim

RUN sed -i "s/#host_key_checking/host_key_checking/g" /etc/ansible/ansible.cfg

WORKDIR /tmp

# https://stackoverflow.com/questions/35154219/rebuild-docker-image-from-specific-step
ARG VER=unknown

RUN VER=${VER} git clone https://github.com/vishwanathj/ansible.git

WORKDIR /tmp/ansible
