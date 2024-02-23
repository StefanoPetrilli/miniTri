#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_64_%j.out
#SBATCH --error=mpi_64_%j.err
#SBATCH --ntasks=64

source ./vars.sh

srun ./miniTri.exe $graph
