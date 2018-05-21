# 安装
```
yum install -y autossh
```

# 内网机器 k3

## 免密登陆公网服务器
```
ssh-copy-id k1 
```

## autossh
```
autossh -M 7281 -fCNR 7280:localhost:2222 root@k1
```

# 公网服务器
- 需要输入本机密码
```
ssh -fCNL *:2222:localhost:7280 localhost
```

---

# 端口映射

* -f：后台执行ssh指令；
* -C：请求压缩所有数据；
* -N：不执行远程指令；
* -R: remote forwarding

```
autossh -M 7281 -fCNR 0.0.0.0:7080:localhost:30080 root@xxx.xxx.xxx.xxx
```

上述的含义为：以root用户ssh连接到xxx.xxx.xxx，其中xxx.xxx.xxx的ssh端口为2112，然后建立一个隧道把localhost的8080端口绑定到xxx.xxx.xxx的80端口，xxx.xxx.xxx的监听IP为0.0.0.0，即所有地址。

---

# 参考文献
- https://www.aliyun.com/jiaocheng/131565.html
