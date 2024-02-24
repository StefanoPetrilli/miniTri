#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_256_%j.out
#SBATCH --error=mpi_256_%j.err
#SBATCH --ntasks=256

source ./vars.sh

srun ./miniTri.exe $graph
