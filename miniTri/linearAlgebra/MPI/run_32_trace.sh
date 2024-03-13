#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_32_%j.out
#SBATCH --error=mpi_32_%j.err
#SBATCH --ntasks=32
#SBATCH --time=00-00:10:00
#SBATCH --constraint=highmem
#SBATCH --constraint=perfparanoid

source ./vars.sh

srun ./trace.sh ./miniTri.exe $graph
