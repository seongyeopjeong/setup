mpirun -np 2 \
	--hostfile ~/cloud/hostfile \
	-bind-to none -map-by slot \
	--allow-run-as-root \ 
	-x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH -x PATH -x NCCL_IB_DISABLE=1 \
	-x NCCL_SOCKET_IFNAME=eth \
	-x UCX_MEM_MALLOC_HOOKS=no \
        -mca pml ob1 -mca btl ^openib \
	-mca plm_rsh_args "-p 12345" \ 
	-mca btl_tcp_if_exclude lo,docker0,flannel.1,ib0 \
	python /examples/pytorch_mnist.py
