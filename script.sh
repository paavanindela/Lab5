#!/bin/bash

for ((i = 1 ; i <= 11 ; i++)); do 
    echo "GENERATING bin $i" 
    $(./part4.sh  bimodal no ip_stride ip_stride no lru 1 $i >/dev/null)
done

./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-1 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-2 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-3 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-4 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-5 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-6 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-7 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-8 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-9 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-10 10 10 trace.champsimtrace.xz &\
./run_champsim.sh bimodal-no-ip_stride-ip_stride-no-lru-1core-th-11 10 10 trace.champsimtrace.xz
