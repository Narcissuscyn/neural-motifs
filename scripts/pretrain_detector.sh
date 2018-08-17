#!/usr/bin/env bash
# Train the model without COCO pretraining
 /home/new/software/anaconda3/bin/python models/train_detector.py -b 16 -lr 0.018 -save_dir checkpoints/vgdet -nepoch 50 -ngpu 3 -nwork 3 -p 100 -clip 5

# If you want to evaluate on the frequency baseline now, run this command (replace the checkpoint with the
# best checkpoint you found).
#export CUDA_VISIBLE_DEVICES=0
#/home/new/software/anaconda3/bin/python models/eval_rel_count.py -ngpu 1 -b 6 -ckpt /home/new/file/dataset/VG1.4/vg-faster-rcnn.tar -nwork 1 -p 100 -test
#export CUDA_VISIBLE_DEVICES=1
#python models/eval_rel_count.py -ngpu 1 -b 6 -ckpt checkpoints/vgdet/vg-28.tar -nwork 1 -p 100 -test
#export CUDA_VISIBLE_DEVICES=2
#python models/eval_rel_count.py -ngpu 1 -b 6 -ckpt checkpoints/vgdet/vg-28.tar -nwork 1 -p 100 -test
#
#
