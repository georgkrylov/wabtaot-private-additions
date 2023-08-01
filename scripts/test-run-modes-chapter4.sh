TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHODS=("--aot-entry" "--aot-libffi" "--aot-hardcoded" )
if [ "$INNERLOOP""X" == "X" ] ; then
   INNERLOOP=20
fi
if [ "$OUTERLOOP""X" == "X" ] ; then
   OUTERLOOP=10
fi
MEASURE_TIME="--measure-time"
export MEASURE_TIME

REPORT="results-aot-wabtaot-full"
export TESTS_DIR INNERLOOP OUTERLOOP REPORT
JIT_OPTIONS=("--disable-jit" "--jit-threshold=5" "--jit-threshold=1")
COMPILE_OPTIONS=("--aot-compile-all" "--aot-rtc" "--aot-rtl")
STATIC_ANALYSIS_OPTIONS=("--enable-aot-analysis" "--disable-aot-analysis")
bash wabtaot-private-additions/scripts/gitlab-wabtaot-test.sh
DONOTDELETE=T
export DONOTDELETE

REPORT="results-aot-em-interp"
env DISABLE_AOT='t' DISABLE_JIT='t' bash wabtaot-private-additions/scripts/gitlab-em-interp-test.sh
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
         if [[ "--aot-compile-all" == $COMPILE_OPTION ]] ;  then
            if [[ $CALLING_METHOD ==  "--aot-entry" ]] ; then
               continue;
            fi
            if [[ $ANALYSIS_OPTION ==  "--disable-aot-analysis" ]] ; then
               continue;
            fi
         fi
         if [[ "$JIT_OPTION" == "--disable-jit" ]] ; then
            JIT_OPTION_SUFFIX="nojit"
         else
            JIT_OPTION_SUFFIX=${JIT_OPTION#*=}
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
         bash wabtaot-private-additions/scripts/gitlab-mixed-aot-test.sh
         done
      done
   done
done
