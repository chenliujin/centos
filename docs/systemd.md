# stock-api.service

注意： 文件名不能使用中划线（-），stock-api.service 将引起异常。

$ vim /etc/systemd/system/stock_api.service

```
[Unit]
Description = stock_api

[Service]
User=root
Group=root
ExecStart = /usr/bin/python3 /root/stock-api/index.py
Restart=always

[Install]
WantedBy=multi-user.target
```

# service
```
$ systemctl enable stock-api
$ systemctl start  stock-api
```

# 查看日志
- -f 实时刷新
- -u 查看指定 service( nginx.service) 的日志
```
$ journalctl -f -u nginx
```

# 参考文献
- [Node 应用的 Systemd 启动](http://www.ruanyifeng.com/blog/2016/03/node-systemd-tutorial.html)
