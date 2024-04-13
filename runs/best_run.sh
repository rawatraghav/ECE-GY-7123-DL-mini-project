#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16 
#SBATCH --time=3:00:00
#SBATCH --mem=40GB
#SBATCH --gres=gpu:1
#SBATCH --job-name=best
#SBATCH --output=best_model.out
#SBATCH --mail-type=END   
#SBATCH --mail-user=rr3418@nyu.edu

module load python/intel/3.8.6
module load openmpi/intel/4.0.5

source dl/bin/activate
time python3 main.py  --config resnet_configs/config.yaml --resnet_architecture best_model
