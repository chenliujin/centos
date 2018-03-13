FROM docker.io/centos:latest

MAINTAINER chenliujin <liujin.chen@qq.com>

# 1.修改时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

# sysctl (docker run --privileged=true 后修改)
# echo 1 > /proc/sys/net/ipv4/ip_forward

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y vim

