FROM centos:latest

MAINTAINER chenliujin <liujin.chen@qq.com>

# 1.修改时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

RUN yum install -y epel-release
RUN yum install -y vim
