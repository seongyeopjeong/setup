mpirun --mca btl_tcp_if_include ens3 --allow-run-as-root --hostfile ~/cloud/hostfile  python /examples/pytorch_imagenet_resnet50.py --batch-size 8
