#!/bin/bash
docker build -t taskmates .
echo Hello from subiksha
docker login -u Subiksha1705 -p SubikshA17
docker tag  test subi-nginx Subiksha1705/Guvi_task2:subi-nginx
docker push Subiksha1705/Guvi_task2:subi-nginx