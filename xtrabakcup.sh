#!/bin/sh

# db_server 基础信息
DB_HOST=
DB_PORT=
DB_NAME=
DB_USER=
DB_PASSWORD=
TARGET_DIR=

# 开始备份
echo "xtrabackup开始备份..."
xtrabackup --backup --host=$DB_HOST --port=$DB_PORT --user=$DB_USER --password=$DB_PASSWORD --target-dir=$TARGET_DIR
echo "xtrabackup备份完毕."
