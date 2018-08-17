#!/usr/bin/env bash

cd anchors
/home/new/software/anaconda3/bin/python setup.py build_ext --inplace
cd ..

cd box_intersections_cpu
/home/new/software/anaconda3/bin/python setup.py build_ext --inplace
cd ..

cd cpu_nms
/home/new/software/anaconda3/bin/python build.py
cd ..

cd roi_align
/home/new/software/anaconda3/bin/python build.py -C src/cuda clean
/home/new/software/anaconda3/bin/python build.py -C src/cuda clean
cd ..

echo "Done compiling hopefully"
