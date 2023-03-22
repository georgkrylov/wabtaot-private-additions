TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHODS=("--aot-hardcoded" "--aot-entry" "--aot-libffi")
INNERLOOP=20
OUTERLOOP=10
REPORT="results-aot-interp"
export TESTS_DIR INNERLOOP OUTERLOOP REPORT
COMPILE_OPTIONS=("--aot-rtc" "--aot-rtl")
bash wabtaot-private-additions/scripts/gitlab-interp-and-full-test.sh
DONOTDELETE=T
export DONOTDELETE
for CALLING_METHOD in ${CALLING_METHODS[@]};
   do
    for COMPILE_OPTION in ${COMPILE_OPTIONS[@]};
      do
      CALLING_SUFFIX=${CALLING_METHOD#-}
      COMPILE_OPTION_SUFFIX=${COMPILE_OPTION#--aot}
      REPORT="results"$CALLING_SUFFIX$COMPILE_OPTION_SUFFIX
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
