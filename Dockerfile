FROM openresty/openresty:bionic

#FROM openresty/openresty:1.19.9.1-2-bullseye-fat-amd64

#MAINTAINER https://github.com/airdb

#FROM ubuntu:16.04

#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
#
#ENV RUNNING_CONTEXT "docker"
#ENV echo "export RUNNING_CONTEXT=docker" >> /etc/profile
#
#RUN echo "export PS1='[\H \W]\\$ '" >> /root/.profile
#
#ENV NOTVISIBLE "in users profile"
#RUN echo "export VISIBLE=now" >> /etc/profile
#
#WORKDIR /srv
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
	apt-get install -y curl less vim gcc g++ make procps


CMD ["sleep", "3600"]
