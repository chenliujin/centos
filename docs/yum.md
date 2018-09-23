# yum install -y yum-utils createrepo

# yum repolist


# 显示所有的包

```
# reposync -r ambari-2.6.2.0 -u
```

```
reposync -r ambari-2.6.2.0 -p /data/www/yum/
reposync -r HDP-2.6-repo-1 -p /data/www/yum/
reposync -r HDP-2.6-GPL-repo-1 -p /data/www/yum/
reposync -r HDP-UTILS-1.1.0.22-repo-1 -p /data/www/yum/

# 创建 yum 仓库
createrepo /data/www/yum/ambari-2.6.2.0/
createrepo /data/www/yum/HDP-2.6-repo-1/
createrepo -po /data/www/yum/HDP-2.6-GPL-repo-1/ /data/www/yum/HDP-2.6-GPL-repo-1/
createrepo /data/www/yum/HDP-UTILS-1.1.0.22-repo-1/
```

# ambari.repo

```
[ambari-2.6.2.0]
name=ambari Version - ambari-2.6.2.0
baseurl=http://mirrors.chenliujin.com/ambari-2.6.2.0
gpgcheck=0
enabled=1
```

# ambari-hdp-1.repo

```
[HDP-2.6-repo-1]
name=HDP-2.6-repo-1
#baseurl=http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.5.0
baseurl=http://mirrors.chenliujin.com/HDP-2.6-repo-1

path=/
enabled=1
gpgcheck=0
[HDP-2.6-GPL-repo-1]
name=HDP-2.6-GPL-repo-1
baseurl=http://public-repo-1.hortonworks.com/HDP-GPL/centos7/2.x/updates/2.6.5.0

path=/
enabled=1
gpgcheck=0
[HDP-UTILS-1.1.0.22-repo-1]
name=HDP-UTILS-1.1.0.22-repo-1
baseurl=http://public-repo-1.hortonworks.com/HDP-UTILS-1.1.0.22/repos/centos7

path=/
enabled=1
gpgcheck=0
```



# yum  provides

使用命令 yum provides */nslookup 可以找到提供 nslookup 命令的软件包。

```
# yum  provides  */nslookup
```
