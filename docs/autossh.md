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

