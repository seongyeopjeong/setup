docker run --gpus all -it --network=host -v $HOME/cloud:/root/cloud -v $HOME/setup:/root/setup \
	    bash -c "/usr/sbin/sshd -p 12345; sleep infinity"
