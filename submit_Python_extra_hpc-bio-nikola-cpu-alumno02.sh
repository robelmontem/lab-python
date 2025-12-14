#!/bin/bash

#SBATCH -p hpc-bio-nikola-cpu
#SBATCH --chdir=/home/alumno02/
#SBATCH -J lab4-extra
#SBATCH --cpus-per-task=4
#SBATCH --ntasks=1

module load anaconda/2025.06

$NUMBA_NUM_THREADS=$SLURM_CPUS_PER_TASK
ipython pi.ipynb

module unload anaconda/2025.06
