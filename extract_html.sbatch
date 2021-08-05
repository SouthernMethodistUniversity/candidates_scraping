#!/bin/bash
#SBATCH -J extract_html
#SBATCH -o extract_html.out
#SBATCH -p standard-mem-s
#SBATCH --nodes=1
#SBATCH --tasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G

module purge
module load python

python3 extract_html.py $((${SLURM_CPUS_PER_TASK})) $((128*1024)) #${SLURM_MEM_PER_NODE}

