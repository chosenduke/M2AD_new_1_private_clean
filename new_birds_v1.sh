#!/bin/bash

# 切换到工作目录
cd /root/autodl-tmp/M2AD

# 设置CUDA设备并运行训练
CUDA_VISIBLE_DEVICES=0 nohup python -u run_dataset.py \
    --cfg_path configs/benchmark/inpformer/inpformer_100e.py \
    -m train \
    -s M2AD-Synergy \
    > run_inpformer_synergy_0824_1245.log 2>&1 &