#!/bin/bash
alg=$1
gpu=$2
imb=$3
seed=$4

srun -p research --job-name=abc --time=96:00:00 --gres=gpu:${gpu}:1 --ntasks=1 --ntasks-per-node=1 python ABCcode0920/ABCremix.py --gpu 0 --label_ratio 20 --num_max 1000 --imb_ratio ${imb} --epoch 500 --val-iteration 500 --manualSeed ${seed} --dataset cifar10 --imbalancetype long --e_cutoff ${alg} 
