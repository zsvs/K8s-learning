#!/usr/bin/bash
apt update && \
apt install kubeadm=1.21.0-00 && \
kubeadm upgrade node && \
apt install kubelet=1.21.0-00 && \
systemctl restart kubelet