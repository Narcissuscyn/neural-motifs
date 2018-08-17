all: src/cuda/nms.cu.o
	/home/new/software/anaconda3/bin/python build.py

src/cuda/nms.cu.o: src/cuda/nms_kernel.cu
	$(MAKE) -C src/cuda

clean:
	$(MAKE) -C src/cuda clean
