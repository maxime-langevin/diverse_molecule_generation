#!/bin/sh

python3 run.py --nruns 10 --dataset drd2_filtered > run_drd2_filtered.log

python3 run.py --nruns 10 --dataset egfr_filtered > run_egfr_filtered.log

python3 run.py --nruns 10 --dataset drd2_filtered --use_memory_rl --base_results results_memory_RL > run_drd2_filtered_memory_rl.log


