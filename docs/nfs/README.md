
# 权限

ro：目录只读
rw：目录读写
sync：将数据同步写入内存缓冲区与磁盘中，效率低，但可以保证数据的一致性
async：将数据先保存在内存缓冲区中，必要时才写入磁盘
all_squash：将远程访问的所有普通用户及所属组都映射为匿名用户或用户组(nfsnobody)
no_all_squash：与all_squash取反(默认设置)
root_squash：将root用户及所属组都映射为匿名用户或用户组(默认设置)
no_root_squash：与rootsquash取反
anonuid=xxx：将远程访问的所有用户都映射为匿名用户，并指定该用户为本地用户(UID=xxx)
anongid=xxx：将远程访问的所有用户组都映射为匿名用户组账户

# 参考文献
- http://blog.51cto.com/mrxiong2017/2087001
- https://www.58jb.com/html/135.html
