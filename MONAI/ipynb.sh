#!/usr/bin/bash
  
#SBATCH -J cdpm
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=30G
#SBATCH -p batch_ugrad
#SBATCH -w aurora-g6
#SBATCH -t 1-0
#SBATCH -o logs/slurm-%A.out

pwd
which ipython
ipython Evaluation_Metrics.py


exit 0
