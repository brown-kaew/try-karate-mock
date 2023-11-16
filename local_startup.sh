#!/bin/bash

echo "$PWD"

nohup ~/Library/Java/JavaVirtualMachines/temurin-1.8.0_382/Contents/Home/bin/java -Xms1024m -Xmx1024m -XX:MaxMetaspaceSize=256m -Dio.netty.availableProcessors=200 -jar $PWD/karate/karate-1.1.0.jar -p 8085 -m=$PWD/payment-service-mock.feature >> $PWD/nohup.out 2>&1 &

echo "Running pid $(jps -l | grep try-karate-mock)"