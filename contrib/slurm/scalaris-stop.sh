#!/bin/bash

source $(pwd)/env.sh

srun -N$SLURM_JOB_NUM_NODES  --ntasks-per-node=1 bash -c "screen -ls | grep Detached | grep scalaris_ | cut -d. -f1 | awk '{print $1}' | xargs -r kill"
mv scalaris.local.cfg $ETCDIR
