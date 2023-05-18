TESTS_DIR="polybench/mini_stuff"
CALLING_METHODS=("--aot-libffi")
EXECUTABLES=("./build/em-interp/em-interp" "./build/src/aot/wabtaot" "./build/src/aot/wabtaot-paper")
if [ "$INNERLOOP""X" == "X" ] ; then
   INNERLOOP=20
fi
if [ "$OUTERLOOP""X" == "X" ] ; then
   OUTERLOOP=10
fi
REPORT="results-aot-wabtaot-full"
export TESTS_DIR INNERLOOP OUTERLOOP REPORT
JIT_OPTIONS=("--disable-jit" "--jit-threshold=27" "--jit-threshold=15")
COMPILE_OPTIONS=("--disable-aot" "--aot-rtc" "--aot-rtl" "--aot-compile-all")
STATIC_ANALYSIS_OPTIONS=("--disable-aot-analysis" "--enable-aot-analysis")

bash wabtaot-private-additions/scripts/gitlab-wabtaot-test.sh
DONOTDELETE=T
export DONOTDELETE

for EXECUTABLE in ${EXECUTABLES[@]};
do
   for JIT_OPTION in ${JIT_OPTIONS[@]};
   do
      for CALLING_METHOD in ${CALLING_METHODS[@]};
      do
      for ANALYSIS_OPTION in ${STATIC_ANALYSIS_OPTIONS[@]};
         do
         for COMPILE_OPTION in ${COMPILE_OPTIONS[@]};
            do
            CALLING_SUFFIX=${CALLING_METHOD#-}
            COMPILE_OPTION_SUFFIX=${COMPILE_OPTION#--aot}
            ANALYSIS_OPTION_SUFFIX=${ANALYSIS_OPTION#--aot}
            if [[ "$ANALYSIS_OPTION" == "--enable-aot-analysis" ]] ; then
               export -n ANALYSIS_OPTION
               ANALYSIS_OPTION_SUFFIX="-staticenabled"
            else
               export ANALYSIS_OPTION
               ANALYSIS_OPTION_SUFFIX="-staticdisabled"
            fi
            if [[ "$JIT_OPTION" == "--disable-jit" ]] ; then
               JIT_OPTION_SUFFIX="nojit"
            else
               JIT_OPTION_SUFFIX=${JIT_OPTION#*=}
            fi
            if [[ "$COMPILE_OPTION" == "--disable-aot" ]] ; then
               COMPILE_OPTION_SUFFIX="noaot"
            fi
            export JIT_OPTION
            REPORT="results"$CALLING_SUFFIX$COMPILE_OPTION_SUFFIX$ANALYSIS_OPTION_SUFFIX-$JIT_OPTION_SUFFIX
            echo $REPORT
            export CALLING_METHOD REPORT
            if [[ "$COMPILE_OPTION" == "--aot-rtc" ]] ; then
               export -n COMPILE_OPTION
            else
               export COMPILE_OPTION
            fi
            bash wabtaot-private-additions/scripts/test_time_polybench-em-interp-aot.sh
            DONOTDELETE=T
            export DONOTDELETE
            done
         done
      done
   done
done