
- bwlimit: (限速，单位：k Bytes/s)

---

# 指定端口
```
rsync -avzP -e 'ssh -p 2222' --bwlimit=100 rsync@host2:/data/upload /data/
```
