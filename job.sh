#!/bin/bash

#SBATCH -p  long
#SBATCH --gres=gpu:1
#SBATCH -J text-detect-test
#SBATCH -o test_detect_tuned.txt
#SBATCH -w c3po

hostname
echo $CUDA_AVAILABLE_DEVICES
srun python run_detect.py --test_folder=dataset_images/test/test_images/ --res_folder dataset_images/craft/tuned/test/

