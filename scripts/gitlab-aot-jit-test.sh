#!/bin/bash
if [ $COMPILE_OPTION"X" == "X" ]; then
	echo "COMPILE OPTION IS UNSET"
elif [ $COMPILE_OPTION == "--aot-rtc" ]; then
	echo "SUPPOSED TO UNSET"
	unset COMPILE_OPTION
fi
if [ $RUN_MODE"X" == "X" ] ; then
	RUN_MODE="--aot-entry"
	echo RUN_MODE is unset, using $RUN_MODE
else
	echo " RUN_MODE is "$RUN_MODE
fi

if [ $TESTS_DIR"X" == "X" ] ; then
	TESTS_DIR="./test/jit/"
	echo TESTS_DIR is unset, using $TESTS_DIR
else
	echo "TESTS_DIR is "$TESTS_DIR
fi
GOLDEN_DIR="$TESTS_DIR/golden_results"
echo GOLDEN_DIR is $GOLDEN_DIR


if [ $DISABLE_AOT"X" != "X" ] ; then
    echo "AOT was disabled"
    DISABLE_AOT="--disable-aot"
fi


if [ $DISABLE_JIT"X" != "X" ] ; then
    echo "JIT was disabled"
    DISABLE_JIT="--disable-jit"
fi
#This could be extracted from artifact name???
if [ $EXEC"X" == "X" ] ; then
    echo "Executable is unset, using ./build/src/aot/wabtaot"
	EXEC="./build/src/aot/wabtaot"
else
	echo "Executable is set to ${EXEC}"
fi
EXEC_FOUND=`find . -iwholename $EXEC `
if [ $EXEC_FOUND"X" == "X" ] ; then
	echo "exec found is :$EXEC_FOUND"
	echo "Executable"$EXEC"is not found, exiting with an error"
	exit 1
fi

WAT2WASM="./bin/wat2wasm"

if [[ "$EXEC" == *"$SUBSTRING"* ]];	then
	unset RUN_MODE
	DISABLE_AOT="--disable-aot"
	DISABLE_JIT="--disable-jit"
fi

RESULTS_FOLDER="test_results"
SUMMARY_FOLDER=$RESULTS_FOLDER"/summary"
rm -rf $RESULTS_FOLDER || true
rm -rf $SUMMARY_FOLDER || true
mkdir -p $RESULTS_FOLDER
mkdir -p $SUMMARY_FOLDER

FILES_LIST=`find  $TESTS_DIR  -maxdepth 1 -type f -iname "*.txt" `
GLOBAL_RESULT=0
INTERPRETER_FAILURES=$SUMMARY_FOLDER"/interpreter_failures.txt"
COMPILE_FAILURES=$SUMMARY_FOLDER"/compile_failures.txt"
LOAD_FAILURES=$SUMMARY_FOLDER"/load_failures.txt"
COMPILE_LOAD_MISMATCH=$SUMMARY_FOLDER"/compiled_loaded_mismatch.txt"
GOLDEN_FAILURES=$SUMMARY_FOLDER"/loaded_golden_mismatch.txt"
INTERPRETER_SKIP_LIST=$GOLDEN_DIR"/skip/interpreter_skip_list.txt"
EXEC_SKIP_LIST=$GOLDEN_DIR"/skip/exec_skip_list.txt"
COMPILE_SKIP_LIST=$GOLDEN_DIR"/skip/compile_skip_list.txt"
LOAD_SKIP_LIST=$GOLDEN_DIR"/skip/load_skip_list.txt"
LOADED_GOLDEN_SKIP_LIST=$GOLDEN_DIR"/skip/loaded_golden_skip_list.txt"

# a custom function to find if the filename is in a certain skip list
# Should have probably been just grep
function find_item()
{
	while read -r i; do
	#TODO fix the problem of skipping call.txt because of callindirect
	if [[ "$i" == "$1" ]];
	then
		echo "0"
		return
	fi 
	done < $2
	echo "1"
}

if [ "$FILES_LIST""X" == "X" ] ; then
	echo NO tests found, exiting
	exit 200
else
	echo "Found tests "$FILES_LIST
fi

for TEST_NAME in $FILES_LIST
do
## SUPER IMPORTANT DUE TO PROBLEMS WITH DEBUG NAME
rm -rf /tmp/omrsharedresources

FILE_NAME=${TEST_NAME#"$TESTS_DIR"}
FILE_NAME_NOEXT=${FILE_NAME%".txt"}
echo $FILE_NAME_NOEXT
echo $TEST_NAME

SEARCH=$(find_item $FILE_NAME_NOEXT $INTERPRETER_SKIP_LIST)
SEARCH2=$(find_item "$EXEC $FILE_NAME interpreter" $EXEC_SKIP_LIST)
SEARCH=$((SEARCH && SEARCH2))
if  test $SEARCH -eq 0
then
echo $FILE_NAME "is in interpreter skip list, not doing any tests further"
continue
fi
## Generate a WASM file
WASM=$RESULTS_FOLDER"/"$FILE_NAME_NOEXT".wasm"

TEST_RESULT=0
$WAT2WASM $TEST_NAME -o $WASM || TEST_RESULT=$?
cp $TEST_NAME $RESULTS_FOLDER
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME generated wasm
else
	echo $TEST_NAME  >> $INTERPRETER_FAILURES
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

COMPILED=$RESULTS_FOLDER/$FILE_NAME_NOEXT"_compile.out"
LOADED=$RESULTS_FOLDER/$FILE_NAME_NOEXT"_load.out"
GOLDEN=$GOLDEN_DIR/$FILE_NAME_NOEXT"_interp_golden.out"
cat $GOLDEN > $RESULTS_FOLDER"/"$FILE_NAME_NOEXT"_interp_golden.out"

SEARCH=$(find_item $FILE_NAME_NOEXT $COMPILE_SKIP_LIST)
SEARCH2=$(find_item "$EXEC $FILE_NAME compile" $EXEC_SKIP_LIST)
SEARCH=$((SEARCH && SEARCH2))
if  test $SEARCH -eq 0
then
echo $FILE_NAME "is in compile skip list, not doing any tests further"
continue
fi

TEST_RESULT=0

$EXEC $WASM --run-all-exports $DISABLE_AOT $DISABLE_JIT $RUN_MODE  $ANALYSIS $COMPILE_OPTION &> $COMPILED || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME compiled
else
	echo $TEST_NAME  >> $COMPILE_FAILURES
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

SEARCH=$(find_item $FILE_NAME_NOEXT $LOAD_SKIP_LIST)
SEARCH2=$(find_item "$EXEC $FILE_NAME load" $EXEC_SKIP_LIST)
SEARCH=$((SEARCH && SEARCH2))
if  test $SEARCH -eq 0
then
echo $FILE_NAME "is in load skip list, not doing any tests further"
continue
fi

$EXEC $WASM --run-all-exports $DISABLE_AOT $DISABLE_JIT $RUN_MODE $COMPILE_OPTION $ANALYSIS &> $LOADED || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME loaded
else
	echo $TEST_NAME  >> $LOAD_FAILURES
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

diff -w $COMPILED $LOADED &> /dev/null || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME compile run matches load run
else
	echo $TEST_NAME  >> $COMPILE_LOAD_MISMATCH
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi
SEARCH=$(find_item $FILE_NAME_NOEXT $LOAD_SKIP_LIST)
SEARCH2=$(find_item "$EXEC $FILE_NAME load2" $EXEC_SKIP_LIST)
SEARCH=$((SEARCH && SEARCH2))
if  test $SEARCH -eq 0
then
echo $FILE_NAME "is in load skip list, not doing any tests further"
continue
fi

$EXEC $WASM --run-all-exports $DISABLE_AOT $DISABLE_JIT $RUN_MODE $COMPILE_OPTION  $ANALYSIS &> $LOADED"2" || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME loaded
else
	echo $TEST_NAME  >> $LOAD_FAILURES
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

diff -w $COMPILED $LOADED"2" &> /dev/null || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME compile run matches load run2
else
	echo $TEST_NAME  >> $COMPILE_LOAD_MISMATCH
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

SEARCH=$(find_item $FILE_NAME_NOEXT $LOADED_GOLDEN_SKIP_LIST)
SEARCH2=$(find_item "$EXEC $FILE_NAME loaded_golden" $EXEC_SKIP_LIST)
SEARCH=$((SEARCH && SEARCH2))
if  test $SEARCH -eq 0
then
echo $FILE_NAME "is in loaded golden skip list, not doing any tests further"
continue
fi

diff -w $LOADED $GOLDEN  &> /dev/null || TEST_RESULT=$?
if test $TEST_RESULT -eq 0
then
	echo $TEST_NAME load run matches wasmjit-omr
else
	echo $TEST_NAME  >> $GOLDEN_FAILURES
	GLOBAL_RESULT=$((GLOBAL_RESULT || 1))
	continue
fi

done
echo "Testing finished to completion"

if test $GLOBAL_RESULT -eq 0 ;
then
	echo "None of the tests that are not in the skip lists have failed"
else
	echo "Some of the tests not in the skip lists have failed, see test_results/summary for details"
fi

exit $GLOBAL_RESULT