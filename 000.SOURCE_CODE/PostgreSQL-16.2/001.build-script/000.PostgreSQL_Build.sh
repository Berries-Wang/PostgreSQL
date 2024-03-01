#!/bin/bash
CURDIR=`pwd`
cd ${CURDIR}/..
rm -rf 000.build-output & mkdir 000.build-output & cd 000.build-output & mkdir 000.PREFIX 001.EXEC_PREFIX 002.BIN_DIR 003.DATADIR
./../002.PostgreSQL-16.2/configure \
   --prefix=${CURDIR}/../000.build-output/000.PREFIX \
   --exec-prefix=${CURDIR}/../000.build-output/001.EXEC_PREFIX \
   --bindir=${CURDIR}/../000.build-output/002.BIN_DIR \
   --datadir=${CURDIR}/../000.build-output/003.DATADIR

# 编译
make all

# 安装: 到指定的目录
make install 

echo '编译&安装完成'


