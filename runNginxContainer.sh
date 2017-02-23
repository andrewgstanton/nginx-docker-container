#!/bin/bash

ssh $1 "sudo docker stop nginx"
ssh $1 "sudo docker rm nginx"
ssh $1 "sudo docker run --name nginx -d -p 8080:80 nginx"
