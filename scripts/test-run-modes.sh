TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHODS=("--aot-hardcoded" "--aot-entry" "--aot-libffi")
export TESTS_DIR INNERLOOP OUTERLOOP
INNERLOOP=20
OUTERLOOP=10
COMPILE_OPTIONS=("--aot-rtc" "--aot-rtl")
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
      DONOTDELETE=T
      export DONOTDELETE
   done
done
