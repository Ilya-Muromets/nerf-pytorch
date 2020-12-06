#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=debug
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=00:10:00
#SBATCH --output=debug.out
#SBATCH --mail-user=chugunov@princeton.edu

# load modules or conda environments here
module load cudnn/cuda-10.2/7.6.5 --load-checkpoint logs/lego_100k_64_samples_uniform/checkpoint99999.ckpt
python3 train_nerf.py --config config/rays.yml 
# python3 cache_dataset.py --datapath data/nerf_synthetic/lego/ --savedir cache/nerf_synthetic/lego/ --num-random-rays 4096 --num-variations 50 --type blender 

