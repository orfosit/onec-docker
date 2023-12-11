#!/bin/bash

if [ "$1" = "ragent" ]; then
  exec gosu usr1cv8 /opt/1cv8/current/ragent  
  exit
fi
if [ "$1" = "autonomus" ]; then
  cd /opt/1cv8/x86_64/8.3.23.1912
  exec ./ibsrv --db-path=/home/usr1cv8/test_baseCD --data=/home/usr1cv8/test_baseCD/ss-data --name=autonomusdb --port=8160 --direct-regport=1570 --http-address=0.0.0.0 --config=/home/usr1cv8/test_baseCD/publication.yml --daemon 
fi 
  
 
