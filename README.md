### Xtrabackup使用示例  
1 Xtrabackup v2.4 适配 Mysql_v5.6 与 Mysql_v5.7;  
2 Xtrabackup v8.0 适配 Mysql_v8.0;    
3 Xtrabackup原理：后台启动1个备份作业的进程，包括2个线程，第1个线程监听/扫描mysql logs日志,并同步；第2个线程等待第1个线程作业完成后，开始执行数据备份直到完成; Xtrabackup 读取数据的方式与innoDB引擎原理一致;更多详情参见官网介绍;  
4 这里选择Xtrabackup v2.4为示例;  
#### 安装  
5 Xtrabackup v2.4 下载地址:  
```shell
https://www.percona.com/downloads/Percona-XtraBackup-2.4/LATEST/
```
6 下载后解压，目录如下:  
```shell
[root@dev /data/Xtrabackup/percona-xtrabackup-2.4.21-Linux-x86_64.glibc2.12]# ls -al
总用量 28
drwxrwxr-x  6 root root 4096 11月 11 20:44 .
drwxr-xr-x  3 root root 4096 3月   1 11:22 ..
drwxrwxr-x  2 root root 4096 11月 11 20:44 bin
drwxrwxr-x  4 root root 4096 11月 11 20:44 lib
drwxrwxr-x  3 root root 4096 11月 11 20:44 man
drwxrwxr-x 14 root root 4096 11月 11 20:44 percona-xtrabackup-2.4-test
-rw-r--r--  1 root root  587 11月 11 15:29 README-test
[root@dev /data/Xtrabackup/percona-xtrabackup-2.4.21-Linux-x86_64.glibc2.12]# 
```
7 bin/目录下的文件，全部cp -a进/usr/local/bin目录下;  
8 lib/目录下的文件，全部cp -a进/usr/local/lib目录下;  
9 man/man1/目录下的文件，全部cp -a进/usr/share/man/man1/下;  
10 shell脚本示例: 见xtrabakcup.sh脚本  
11 注意: xtrabackup工具只能运行在db server上或者slave节点上，不能运行在其他机器上，否认出现关于target_dir的报错;  
12 MariaDB与MySQL版本比对适配详情:  
```shell
https://mariadb.com/kb/en/mariadb-vs-mysql-compatibility/
```
13 喜欢我，请关注我，给个小星星，谢谢!  