
# Install

```
yum install -y crontabs

systemctl enable crond
```

# crontab

```
echo '* * * * * echo a >> /tmp/rs' > /var/spool/cron/crontabs/root
```
