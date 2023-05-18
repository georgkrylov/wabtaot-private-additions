#!/bin/bash
echo "Report is"$REPORT
if [ "$REPORT""X" == "X" ]; then
    REPORT="results"
fi

touch $REPORT.csv

# echo -e "executable\tdataset_size\tfile\tcompile/load\tstderr/mean\tmedian time (ns)\tnumber of lines" > results.csv
# for executable in "../build/em-interp/em-interp"; do 
#     DATASET_SIZES=("-DMINI_DATASET")
#     for I in ${DATASET_SIZES[@]}; do
#         rm -rf time_output_SC
#         mkdir time_output_SC
#         DIRNAME=$(echo ${I#-D} | awk '{print tolower($0)}' | awk -F'_' '{print $1}')
#         QUIET_DIRNAME=$DIRNAME"_stuff"
#         for fil in correlation covariance 2mm 3mm atax bicg doitgen mvt gemm gemver gesummv symm syr2k syrk trmm cholesky durbin gramschmidt lu ludcmp trisolv floyd-warshall nussinov adi fdtd-2d heat-3d jacobi-1d jacobi-2d seidel-2d
#         do
#             wasa="${fil}.wasm"
#             threshold="0.5"
#             err=$threshold
#             rm -f /tmp/omrsharedresources/wasm_shared_cache
#              $executable  --disable-jit --aot-libffi  $QUIET_DIRNAME/null &> /dev/null
#             if [ "$executable" == "../build/em-interp/em-interp" ]; then 
#             #only do compile runs with em-interp
#                 while [ "$(echo $err'>='$threshold | bc -l)" -ne "0" ];
#                 do
#                     for i in {1..5}; do 
#                     ts=$(date +%s%N) ;
#                     $executable  --disable-jit --aot-libffi  $QUIET_DIRNAME/$wasa  &>> time_output_SC/compile_out_sc_$fil.txt;
#                     tt=$(($(date +%s%N) - $ts)) ;
#                     echo $tt &>> time_output_SC/outc_sc_$fil.txt
#                     done
#                     stats=$(python3 stat.py `cat time_output_SC/outc_sc_$fil.txt | sort -n | head -n 4 | tail -n 3 `)
#                     statsarray=($stats)
#                     err=${statsarray[0]}
#                     echo $err
#                     if  [ "$(echo $err'>='$threshold | bc -l)" -eq "0" ]; then
#                      echo -e "$executable\t$DIRNAME\t$fil\tcompile\t${statsarray[0]}\t${statsarray[1]}\t$(cat time_output_SC/outc_sc_$fil.txt | wc -l)" >> results.csv
#                     fi
#                 done
#                 err=$threshold
#             fi
#             threshold="0.1"
#             err=$threshold
#             while [ "$(echo $err'>='$threshold | bc -l)" -ne "0" ];
#             do
#                 rm -f outl_sc_$fil.txt
#                 for i in {1..10}; do 
#                     ts=$(date +%s%N) ;
#                     $executable --disable-jit --aot-libffi $QUIET_DIRNAME/$wasa  &>> time_output_SC/load_out_sc_$fil.txt;
#                     tt=$(($(date +%s%N) - $ts)) ;
#                     echo $tt &>> time_output_SC/outl_sc_$fil.txt
#                 done
#                 stats=$(python3 stat.py `cat time_output_SC/outl_sc_$fil.txt | sort -n | head -n 1001 | tail -n 1000` )
#                 statsarray=($stats)
#                 err=${statsarray[0]}
#                 echo $err
#                 if  [ "$(echo $err'>='$threshold | bc -l)" -eq "0" ]; then
#                     echo -e "$executable\t$DIRNAME\t$fil\tload\t${statsarray[0]}\t${statsarray[1]}\t$(cat time_output_SC/outl_sc_$fil.txt | wc -l)" >> results.csv
#                 fi
#             done
#         done
#     done
# done
# # echo "Compile and Load Run for SC PolyBench ended"