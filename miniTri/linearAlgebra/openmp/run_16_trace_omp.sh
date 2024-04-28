#!/bin/bash
#SBATCH --job-name=omp_16
#SBATCH --output=omp_16_%j.out
#SBATCH --error=omp_16_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --time=00-00:05:00
#SBATCH --constraint=highmem
#SBATCH --constraint=perfparanoid

source ./vars.sh

srun ./trace.sh ./miniTri.exe $graph 16 16
