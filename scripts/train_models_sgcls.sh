#!/usr/bin/env bash

# This is a script that will train all of the models for scene graph classification and then evaluate them.
export CUDA_VISIBLE_DEVICES=$1

if [ $1 == "3" ]; then
    echo "TRAINING THE BASELINE"
    /home/new/software/anaconda3/bin/python models/train_rels.py -m sgcls -model motifnet -nl_obj 0 -nl_edge 0 -b 6 \
    -clip 5 -p 100 -pooling_dim 4096 -ckpt /home/new/file/dataset/VG1.4/vg-faster-rcnn.tar -lr 1e-3 -ngpu 1 -save_dir checkpoints/baseline2 \
    -nepoch 50 -use_bias
elif [ $1 == "1" ]; then
    echo "TRAINING MESSAGE PASSING"

    /home/new/software/anaconda3/bin/python models/train_rels.py -m sgcls -model stanford -b 6 -p 100 -lr 1e-3 -ngpu 1 -clip 5 \
    -ckpt /home/new/file/dataset/VG1.4/vg-faster-rcnn.tar -save_dir checkpoints/stanford2
elif [ $1 == "2" ]; then
    echo "TRAINING MOTIFNET"

    /home/new/software/anaconda3/bin/python models/train_rels.py -m sgcls -model motifnet -order leftright -nl_obj 2 -nl_edge 4 -b 6 -clip 5 \
        -p 100 -hidden_dim 512 -pooling_dim 4096 -lr 1e-3 -ngpu 1 -ckpt /home/new/file/dataset/VG1.4/vg-faster-rcnn.tar \
        -save_dir checkpoints/motifnet2 -nepoch 50 -use_bias
fi



