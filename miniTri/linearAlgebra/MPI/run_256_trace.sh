#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_256_%j.out
#SBATCH --error=mpi_256_%j.err
#SBATCH --ntasks=256
#SBATCH --time=00-00:10:00
#SBATCH --constraint=highmem
#SBATCH --constraint=perfparanoid

source ./vars.sh

srun ./trace.sh ./miniTri.exe "$graph"