docker run --gpus all -it --network host -v $HOME/cloud:/root/cloud -v $HOME/setup:/root/setup horovod/horovod:0.19.2-tf2.1.0-torch-mxnet1.6.0-py3.6-gpu	
