#!/bin/bash
#SBATCH --job-name=omp_4
#SBATCH --output=omp_4_%j.out
#SBATCH --error=omp_4_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=00-00:05:00
#SBATCH --constraint=perfparanoid

source ./vars.sh

srun ./trace.sh ./miniTri.exe $graph 512 4
