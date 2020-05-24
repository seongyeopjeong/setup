#!/usr/bin/env bash

apt update && apt install -y openssh-server
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
service ssh restart


PUBLICKEY="$HOME/cloud/id_rsa.pub"
PRIBATEKEY="$HOME/cloud/id_rsa"

if [ ! -f $PUBLICKEY ]; then
	echo "$PUBLICKEY: No such file" >&2
	exit 1
fi

mkdir -p $HOME/.ssh
cp $PUBLICKEY $HOME/.ssh
cp $PRIBATEKEY $HOME/.ssh
cat $PUBLICKEY >> $HOME/.ssh/authorized_keys

/usr/sbin/sshd -p 12345
