#! /bin/bash
while true; do
netstat -nlp |grep :80
if [ $? -ne 0 ];then
echo "start nginx..."
service nginx restart
else
echo "nginx is runing..."
fi
sleep 10
done
