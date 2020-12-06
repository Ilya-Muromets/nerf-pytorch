#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=eval_nerf
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --gres=gpu:1
#SBATCH --time=00:10:00
#SBATCH --output=eval_nerf.out
#SBATCH --mail-type=begin        # send mail when job begins
#SBATCH --mail-type=end          # send mail when job ends
#SBATCH --mail-type=fail         # send mail if job fails
#SBATCH --mail-user=chugunov@princeton.edu

# load modules or conda environments here
module load cudnn/cuda-10.2/7.6.5
python3 eval_nerf.py --config logs/lego_100k_64_gamma_2.0_full/config.yml --checkpoint logs/lego_100k_64_gamma_2.0_full/checkpoint99999.ckpt --savedir renders/lego_100k_64_gamma_2.0_full/
