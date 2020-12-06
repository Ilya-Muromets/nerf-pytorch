#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=lego
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=6:00:00
#SBATCH --output=lego.out
#SBATCH --mail-user=chugunov@princeton.edu

# load modules or conda environments here
module load cudnn/cuda-10.2/7.6.5
python3 train_nerf.py --config config/lego64.yml

