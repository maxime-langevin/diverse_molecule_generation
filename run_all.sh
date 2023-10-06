#!/bin/sh

python3 run.py --nruns 10 --dataset CHEMBL3888429 > run_CHEMBL3888429.log

python3 run.py --nruns 10 --dataset egfr_filtered > run_egfr_filtered.log

python3 run.py --nruns 10 --dataset CHEMBL3888429 --use_memory_rl > run_CHEMBL3888429_memory_rl.log


