TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHODS=("--aot-libffi")
if [ "$INNERLOOP""X" == "X" ] ; then
   INNERLOOP=20
fi
if [ "$OUTERLOOP""X" == "X" ] ; then
   OUTERLOOP=10
fi
REPORT="results-aot-wabtaot-full"
export TESTS_DIR INNERLOOP OUTERLOOP REPORT
COMPILE_OPTIONS=("--aot-rtc" "--aot-rtl")
STATIC_ANALYSIS_OPTIONS=("--disable-aot-analysis" "--enable-aot-analysis")
bash wabtaot-private-additions/scripts/gitlab-wabtaot-test.sh
DONOTDELETE=T
export DONOTDELETE

REPORT="results-aot-em-interp"
env DISABLE_AOT='t' DISABLE_JIT='t' bash wabtaot-private-additions/scripts/gitlab-em-interp-test.sh
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
      REPORT="results"$CALLING_SUFFIX$COMPILE_OPTION_SUFFIX$ANALYSIS_OPTION_SUFFIX
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
