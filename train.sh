#!/bin/bash

env CUDA_VISIBLE_DEVICES=0,1 nohup python main.py --mode=train --num_workers=2 --batch_size=8 --dataset=Both --image_size=256 --c_dim=5 --c2_dim=8 --sample_dir=stargan_both/samples \
--log_dir=stargan_both/logs --model_save_dir=stargan_both/models --result_dir=stargan_both/results --celeba_image_dir='dsets/CelebA/images' --rafd_image_dir='dsets/RafD-aligned/train' \
> out.log &!
