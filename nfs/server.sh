#!/usr/bin/env bash

sudo apt remove -y nfs-kernel-server
sudo apt install -y nfs-kernel-server

mkdir $HOME/cloud
mkdir $HOME/setup

sudo bash -c "echo $HOME/cloud *\(rw,sync,no_root_squash,no_subtree_check\) >> /etc/exports"
sudo bash -c "echo $HOME/setup *\(rw,sync,no_root_squash,no_subtree_check\) >> /etc/exports"
sudo exportfs -a
