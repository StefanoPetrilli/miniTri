#!/bin/bash
#SBATCH --job-name=mpi
#SBATCH --output=mpi_2_%j.out
#SBATCH --error=mpi_2_%j.err
#SBATCH --ntasks=2
#SBATCH --time=00-00:10:00
#SBATCH --constraint=highmem

source ./vars.sh

srun ./miniTri.exe $graph




