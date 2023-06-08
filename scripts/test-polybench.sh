TESTS_DIR="polybench/mini_stuff"
CALLING_METHODS=("--aot-libffi")
EXECUTABLES=("./build/em-interp/em-interp" "./build/src/aot/wabtaot-paper")
if [ "$INNERLOOP""X" == "X" ] ; then
    INNERLOOP=20
fi
if [ "$OUTERLOOP""X" == "X" ] ; then
    OUTERLOOP=10
fi
REPORT="results-aot-wabtaot-full"
export TESTS_DIR INNERLOOP OUTERLOOP REPORT
DATASET_SIZES=("-DMINI_DATASET" "-DSMALL_DATASET")
export DATASET_SIZES
JIT_OPTIONS=("--disable-jit" "--jit-threshold=27" "--jit-threshold=15")
COMPILE_OPTIONS=("--disable-aot" "--aot-rtc" "--aot-rtl" "--aot-compile-all --aot-pressure=0.1" "--aot-compile-all --aot-pressure=0.3" "--aot-compile-all --aot-pressure=0.5" "--aot-compile-all --aot-pressure=0.7" "--aot-compile-all --aot-pressure=1.0" )
STATIC_ANALYSIS_OPTIONS=("--disable-aot-analysis" "--enable-aot-analysis")

MEASURE_TIME="--measure-time"
export MEASURE_TIME

for EXECUTABLE in ${EXECUTABLES[@]};
do
    for DATASET_SIZE in ${DATASET_SIZES[@]}; do
        export DATASET_SIZE
        DATASET_SUFFIX=$(echo ${DATASET_SIZE#-D} | awk '{print tolower($0)}' | awk -F'_' '{print $1}')
        echo $DATASET_SUFFIX
        export DATASET_SUFFIX
        export EXECUTABLE
        if [ $EXECUTABLE == "./build/src/aot/wabtaot-paper" ] ; then
            REPORT="results-wabtaotpaper-$DATASET_SUFFIX-nil-nil-nil-nil-nil"
            export -n COMPILE_OPTION ANALYSIS_OPTION CALLING_METHOD JIT_OPTION
            bash wabtaot-private-additions/scripts/test_time_polybench-generic-aot.sh
        else
            EXECUTABLE_SUFFIX="-eminterp"
            for JIT_OPTION in ${JIT_OPTIONS[@]};
            do
                if [[ "$JIT_OPTION" == "--disable-jit" ]] ; then
                    JIT_OPTION_SUFFIX="nojit"
                else
                    JIT_OPTION_SUFFIX=${JIT_OPTION#*=}
                fi
                export JIT_OPTION
                for COMPILE_OPTION in "${COMPILE_OPTIONS[@]}";
                do
                    if [[ "$COMPILE_OPTION" == "--aot-rtc" ]] ; then
                        export -n COMPILE_OPTION
                    else
                        export COMPILE_OPTION
                    fi
                    if [[ "$COMPILE_OPTION" == "--disable-aot" ]] ; then
                        COMPILE_OPTION_SUFFIX="-noaot"
                        export -n ANALYSIS_OPTION CALLING_METHOD
                        REPORT="results-eminterp-$DATASET_SUFFIX-nil-nil-nil-nil-$JIT_OPTION_SUFFIX"
                        export REPORT
                        bash wabtaot-private-additions/scripts/test_time_polybench-generic-aot.sh
                    else
                        if [[ "$COMPILE_OPTION" == "--aot-compile-all"* ]] ; then
                            COMPILE_OPTION_SUFFIX="-compileall"-${COMPILE_OPTION#*=}
                        else
                            COMPILE_OPTION_SUFFIX=${COMPILE_OPTION#--aot}"-nil"
                        fi
                        
                        for CALLING_METHOD in ${CALLING_METHODS[@]};
                        do
                            CALLING_SUFFIX=${CALLING_METHOD#--aot}
                            export CALLING_METHOD
                            for ANALYSIS_OPTION in ${STATIC_ANALYSIS_OPTIONS[@]};
                            do
                                ANALYSIS_OPTION_SUFFIX=${ANALYSIS_OPTION#--aot}
                                if [[ "$ANALYSIS_OPTION" == "--enable-aot-analysis" ]] ; then
                                    export -n ANALYSIS_OPTION
                                    ANALYSIS_OPTION_SUFFIX="-staticenabled"
                                else
                                    if [[ "$COMPILE_OPTION" == "--aot-compile-all"* ]] ; then
                                        continue;
                                    fi
                                    export ANALYSIS_OPTION
                                    ANALYSIS_OPTION_SUFFIX="-staticdisabled"
                                fi
                                REPORT="results"$EXECUTABLE_SUFFIX"-$DATASET_SUFFIX-"$CALLING_SUFFIX$COMPILE_OPTION_SUFFIX$ANALYSIS_OPTION_SUFFIX-$JIT_OPTION_SUFFIX
                                export REPORT
                                bash wabtaot-private-additions/scripts/test_time_polybench-generic-aot.sh
                                
                            done
                        done
                    fi
                done
            done
        fi
    done
done