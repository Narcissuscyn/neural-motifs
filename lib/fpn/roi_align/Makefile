all: src/cuda/roi_align.cu.o
	/home/new/software/anaconda3/bin/python build.py

src/cuda/roi_align.cu.o: src/cuda/roi_align_kernel.cu
	$(MAKE) -C src/cuda

clean:
	$(MAKE) -C src/cuda clean
