#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_128_%j.out
#SBATCH --error=mpi_128_%j.err
#SBATCH --ntasks=128
#SBATCH --time=00-00:10:00
#SBATCH --constraint=highmem

source ./vars.sh

srun ./trace.sh ./miniTri.exe $graph
