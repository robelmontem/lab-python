#!/bin/bash

#SBATCH -p hpc-bio-nikola-cpu
#SBATCH --chdir=/home/alumno02/
#SBATCH -J lab4-3.3
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1

module load anaconda/2025.06

ipython reduc-operation-alumno02.ipynb $1

module unload anaconda/2025.06
