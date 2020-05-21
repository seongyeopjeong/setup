mpirun -np 2\
    -H 3.34.139.40:1,54.180.128.111:1 \
    --mca btl_tcp_if_include ens3 --allow-run-as-root \
    -bind-to none -map-by slot \
    -mca plm_rsh_args "-p 12345"
    #-x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH -x PATH \
    #-mca pml ob1 -mca btl ^openib \
    python /examples/pytorch_mnist.py

