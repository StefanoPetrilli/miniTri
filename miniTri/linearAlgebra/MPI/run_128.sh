#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_128_%j.out
#SBATCH --error=mpi_128_%j.err
#SBATCH --ntasks=128

source ./vars.sh

srun ./miniTri.exe $graph
