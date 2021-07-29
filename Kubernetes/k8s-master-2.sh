#!/bin/bash

lsmod | grep br_netfilter
systemctl enable kubelet
sudo kubeadm config images pull

