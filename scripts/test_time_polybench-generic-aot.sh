#!/bin/bash
echo "Report is: "$REPORT
if [ "$REPORT""X" == "X" ]; then
    REPORT="results"
fi

touch $REPORT.csv
LAUNCH_COMMAND="$EXECUTABLE $ANALYSIS_OPTION $COMPILE_OPTION $CALLING_METHOD $JIT_OPTION $MEASURE_TIME"
echo $LAUNCH_COMMAND
echo $INNERLOOP $OUTERLOOP
echo -e "executable\tdataset_size\tfile\tcompile/load\tstderr/mean\tmedian time (ns)\tnumber of lines" > results.csv
DATASET_SIZES=("-DMINI_DATASET")
for I in ${DATASET_SIZES[@]}; do
    rm -rf time_output_SC
    mkdir time_output_SC
    DIRNAME="./polybench/"$(echo ${I#-D} | awk '{print tolower($0)}' | awk -F'_' '{print $1}')
    QUIET_DIRNAME=$DIRNAME"_stuff"
    for fil in correlation covariance 2mm 3mm atax bicg doitgen mvt gemm gemver gesummv symm syr2k syrk trmm cholesky durbin gramschmidt lu ludcmp trisolv floyd-warshall nussinov adi fdtd-2d heat-3d jacobi-1d jacobi-2d seidel-2d
    do
        wasa="${fil}.wasm"
        for (( i=1; i<=$OUTERLOOP; i++ )); do
            rm -rf /tmp/omrsharedresources
            $EXECUTABLE  --disable-jit --aot-libffi  $QUIET_DIRNAME/null &> /dev/null
            echo -n $fil, >> $REPORT.csv
            for (( j=1; j<=$INNERLOOP; j++ )); do
                $LAUNCH_COMMAND   $QUIET_DIRNAME/$wasa  > /dev/null 2>> $REPORT.csv || TEST_RESULT=$?
            done
            echo &>> $REPORT.csv
        done
    done
done
echo "Compile and Load Run for SC PolyBench ended"