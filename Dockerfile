FROM centos:7.4.1708-beta.0

MAINTAINER chenliujin <liujin.chen@qq.com>

# 1.修改时区
RUN cat /usr/share/zoneinfo/Asia/Shanghai > /etc/localtime 

# sysctl (docker run --privileged=true 后修改)
# docker run --name=centos --privileged=true centos:7.4.1708 echo 1 > /proc/sys/net/ipv4/ip_forward
# docker commit centos centos:7.4.1708-beta.0

# 阿里镜像
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN curl http://mirrors.aliyun.com/repo/Centos-7.repo > /etc/yum.repos.d/CentOS-Base.repo

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y vim

RUN echo "alias ll='ls -alF'\n" >> ~/.bashrc

CMD ["/usr/sbin/init"]

# centos:7.4.1708-beta.2
