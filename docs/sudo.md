



# 如何让sudo不需要输入密码

sudo 权限
```
# vim /etc/sudoers

root       ALL=(ALL) ALL
chenliujin ALL=(ALL) ALL
```

sudo nopasswd

```
%wheel  ALL=(ALL)         NOPASSWD: ALL
```

```
# gpasswd -a chenliujin wheel
```
