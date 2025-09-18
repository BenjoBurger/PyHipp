#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "lp"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o lp-slurm.%N.%j.out # STDOUT
#SBATCH -e lp-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
import PyHipp as pyh; \
pyh.FreqSpectrum(saveLevel=1,redoLevel=1);

