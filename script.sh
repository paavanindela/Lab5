#!/bin/bash
if [ "$1" -eq 1  ]; then
    for ((i = 1 ; i <= 5 ; i++)); do 
        for ((j = $i ; j <= 5; j++)); do
            echo "GENERATING bin $i,$j" 
            h=$(echo "$j * 0.2 - 0.05" | bc)
            l=$(echo "$i * 0.2 - 0.15" | bc)
            $(./part4.sh  bimodal no ip_stride ip_stride no lru 1 $h $l >/dev/null)
            sleep 2
        done
    done

    ./run_champsim.sh high-.15-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.35-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.35-low-.25 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.55-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.55-low-.25 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.55-low-.45 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.75-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.75-low-.25 10 10 trace.champsimtrace.xz
    echo "8 DONE"
    ./run_champsim.sh high-.75-low-.45 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.75-low-.65 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.25 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.45 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.65 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.85 10 10 trace.champsimtrace.xz 
    echo "15 DONE"
fi

##### HIGH #####
if [ "$1" -eq 2 ]; then
    for ((i = 1 ; i <= 10 ; i++)); do 
        echo "GENERATING bin $i" 
            h=$(echo "$i * 0.1 - 0.05" | bc)
            $(./part4.sh  bimodal no ip_stride ip_stride no lru 1 $h .00 >/dev/null)
    done

    ./run_champsim.sh high-.05-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.15-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.25-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.35-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.45-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.55-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.65-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.75-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.85-low-.00 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-.95-low-.00 10 10 trace.champsimtrace.xz 
    echo "10 DONE"
fi

##### HIGH #####
if [ "$1" -eq 3 ]; then
    for ((i = 1 ; i <= 10 ; i++)); do 
        echo "GENERATING bin $i" 
            l=$(echo "$i * 0.1 - 0.05" | bc)
            $(./part4.sh  bimodal no ip_stride ip_stride no lru 1 1. $l >/dev/null)
    done
    ./run_champsim.sh high-1.-low-.05 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.15 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.25 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.35 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.45 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.55 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.65 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.75 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.85 10 10 trace.champsimtrace.xz &\
    ./run_champsim.sh high-1.-low-.95 10 10 trace.champsimtrace.xz 
    echo "10 DONE"
fi

