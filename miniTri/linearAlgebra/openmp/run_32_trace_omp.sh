#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=omp_32_%j.out
#SBATCH --error=omp_32_%j.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --time=00-00:05:00
#SBATCH --constraint=highmem
#SBATCH --constraint=perfparanoid

source ./vars.sh

srun ./trace.sh ./miniTri.exe $graph 16 32
