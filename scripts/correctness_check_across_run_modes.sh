EXEC="./build/em-interp/em-interp"
TESTS_DIR="./wabtaot-private-additions/jit/"
DISABLE_JIT=true
COMPILE_OPTIONS=("--aot-rtc" "--aot-rtl")
CALLING_METHODS=("--aot-hardcoded" "--aot-entry" "--aot-libffi")
export EXEC TESTS_DIR DISABLE_JIT RUN_MODE
for RUN_MODE in ${CALLING_METHODS[@]};
    do
    for COMPILE_OPTION in ${COMPILE_OPTIONS[@]};
        do
        export RUN_MODE
        export COMPILE_OPTION
        TEST_RESULT=0
        bash $SCRIPTS_FOLDER/gitlab-aot-jit-test.sh || TEST_RESULT=$?
        if test $TEST_RESULT -eq 0
        then
            echo "AOT$RUN_MODE$COMPILE_OPTION ok!"
        else
            echo "AOT$RUN_MODE$COMPILE_OPTION did not pass sanity check"
            exit 1
        fi
        done
    done

EXEC="./build/src/aot/wabtaot"
TEST_RESULT=0
bash $SCRIPTS_FOLDER/gitlab-aot-jit-test.sh || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo "AOT-wabtaot ok!"
else
    echo "AOT-wabtaot did not pass sanity check"
	exit 1
fi