

```
 yum -y install kde-l10n-Chinese telnet && \

                        yum -y reinstall glibc-common &&\

                        yum clean all  && \

                        localedef -c -f UTF-8 -i zh_CN zh_CN.utf8  && \

或加上 

cat /dev/null > /etc/locale.conf && echo "LC_ALL=\"zh_CN.UTF-8\"" > /etc/locale.conf

 
```




# 参考文献 
- https://www.cnblogs.com/kunchong21/p/7123432.html
