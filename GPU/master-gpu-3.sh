#!/bin/bash

curl -O https://raw.githubusercontent.com/AliyunContainerService/gpushare-scheduler-extender/master/config/gpushare-schd-extender.yaml

kubectl create -f gpushare-schd-extender.yaml

wget https://raw.githubusercontent.com/AliyunContainerService/gpushare-device-plugin/master/device-plugin-rbac.yaml

kubectl create -f device-plugin-rbac.yaml

wget https://raw.githubusercontent.com/AliyunContainerService/gpushare-device-plugin/master/device-plugin-ds.yaml

kubectl create -f device-plugin-ds.yaml

cd /usr/bin/

sudo wget https://github.com/AliyunContainerService/gpushare-device-plugin/releases/download/v0.3.0/kubectl-inspect-gpushare

sudo chmod 755 /usr/bin/kubectl-inspect-gpushare
