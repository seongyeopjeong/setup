mpirun -np 2 --hostfile ~/cloud/hostfile --mca btl_tcp_if_include ens3 --allow-run-as-root -bind-to none -map-by slot -mca plm_rsh_args "-p 12345" python /examples/pytorch_mnist.py
    #-x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH -x PATH \
    #-mca pml ob1 -mca btl ^openib \

