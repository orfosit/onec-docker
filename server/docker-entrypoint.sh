#!/bin/bash

if [ "$1" = "ragent" ]; then

  exec gosu usr1cv8 /opt/1cv8/current/ragent
  cd /opt/1cv8/x86_64/8.3.23.1912
  ./ibsrv --db-path=/home/usr1cv8/test_baseCD --data=/home/usr1cv8/test_baseCD/ss-data --name=autonomusdb --port=8160 --enable-direct-gate --direct-regport=1570 --http-address=0.0.0.0 
  --debug-address=0.0.0.0 --daemon  --config=/home/usr1cv8/test_baseCD/publication.yml
 
exit  
fi
  cd /opt/1cv8/x86_64/8.3.23.1912
  ./ibsrv --db-path=/home/usr1cv8/test_baseCD --data=/home/usr1cv8/test_baseCD/ss-data --name=autonomusdb --port=8160 --enable-direct-gate --direct-regport=1570 --http-address=0.0.0.0 
  --debug-address=0.0.0.0 --daemon  --config=/home/usr1cv8/test_baseCD/publication.yml
  exit  
