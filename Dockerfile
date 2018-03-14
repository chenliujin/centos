FROM centos:7.4.1708-beta.0

MAINTAINER chenliujin <liujin.chen@qq.com>

# 1.修改时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

# sysctl (docker run --privileged=true 后修改)
# docker run --name=centos --privileged=true centos:7.4.1708 echo 1 > /proc/sys/net/ipv4/ip_forward
# docker commit centos centos:7.4.1708-beta.0

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y vim


