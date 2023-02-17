#!/bin/bash

if [ $TESTS_DIR"X" == "X" ] ; then
	TESTS_DIR="./test/jit/"
	echo TESTS_DIR is unset, using $TESTS_DIR
else
	echo "TESTS_DIR is "$TESTS_DIR
fi

if [ $CALLING_METHOD"X" == "X" ] ; then
	CALLING_METHOD="--aot-entry"
	echo CALLING_METHOD is unset, using $CALLING_METHOD
else
	echo "CALLING_METHOD is "$CALLING_METHOD
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
COMPILE_SKIP_LIST=$GOLDEN_DIR"/skip/compile_skip_list.txt"
LOAD_SKIP_LIST=$GOLDEN_DIR"/skip/load_skip_list.txt"
LOADED_GOLDEN_SKIP_LIST=$GOLDEN_DIR"/skip/loaded_golden_skip_list.txt"

# a custom function to find if the filename is in a certain skip list
# Should have probably been just grep
function find_item()
{
	for i in `cat $2`
	do
	if [[ $i == $1 ]];
	then
		echo "0"
		return
	fi
	done
	echo "1"
}

if [ "$FILES_LIST""X" == "X" ] ; then
	echo NO tests found, exiting
	exit 200
else
	echo "Found tests "$FILES_LIST
fi

FULL="./build/src/aot/wabtaot"
MIXED="./build/em-interp/em-interp"
INNERLOOP=20
OUTERLOOP=20
for fil in $FILES_LIST; do
	echo $fil
	filo=${fil##*/}
	FILE_NAME=$filo
	TEST_NAME=${fil}

	FILE_NAME_NOEXTEN=${FILE_NAME%".txt"}
	REPORT="results"
	echo  $FILE_NAME_NOEXTEN &>> $RESULTS_FOLDER/$REPORT.txt

	## Generate a WASM file
	WASM=$RESULTS_FOLDER"/"$FILE_NAME_NOEXTEN".wasm"
	WASMF=$RESULTS_FOLDER"/"$FILE_NAME_NOEXTEN"F.wasm"
	TEST_RESULT=0
	$WAT2WASM $TEST_NAME -o $WASM || TEST_RESULT=$?
	$WAT2WASM $TEST_NAME -o $WASMF || TEST_RESULT=$?

	echo "FULL:," &>> $RESULTS_FOLDER/$REPORT.txt
	for (( i=1; i<=$OUTERLOOP; i++ )); do
		rm -rf /tmp/omrsharedresources
		$FULL null.wasm --run-all-exports &> /dev/null;
		for (( j=1; j<=$INNERLOOP; j++ )); do
			ts=$(date +%s%N) ;
			$FULL $WASMF --run-all-exports &> /dev/null || TEST_RESULT=$?
			tt=$(($(date +%s%N) - $ts)) ;
			echo -n $tt"," &>> $RESULTS_FOLDER/$REPORT.txt
		done
		echo "," &>> $RESULTS_FOLDER/$REPORT.txt
	done
	echo "MIXED:," &>> $RESULTS_FOLDER/$REPORT.txt
	for (( i=1; i<=$OUTERLOOP; i++ )); do
		rm -rf /tmp/omrsharedresources
		$FULL null.wasm --run-all-exports &> /dev/null;
		for (( j=1; j<=$INNERLOOP; j++ )); do
			ts=$(date +%s%N) ;
			$MIXED $WASM --run-all-exports --disable-jit $CALLING_METHOD  &> /dev/null|| TEST_RESULT=$?
			tt=$(($(date +%s%N) - $ts)) ;
			echo -n $tt"," &>> $RESULTS_FOLDER/$REPORT"".txt
		done
		echo "," &>> $RESULTS_FOLDER/$REPORT.txt
	done
	echo "INTERP:," &>> $RESULTS_FOLDER/$REPORT.txt

	for (( i=1; i<=$OUTERLOOP; i++ )); do
		rm -rf /tmp/omrsharedresources
		$FULL null.wasm --run-all-exports &> /dev/null;

		for (( j=1; j<=$INNERLOOP; j++ )); do
			ts=$(date +%s%N) ;
			$MIXED $WASM --run-all-exports --disable-jit --disable-aot $CALLING_METHOD &> /dev/null || TEST_RESULT=$?
			tt=$(($(date +%s%N) - $ts)) ;
			echo -n $tt"," &>> $RESULTS_FOLDER/$REPORT.txt
		done
		echo "," &>> $RESULTS_FOLDER/$REPORT.txt
	done

	# echo "JIT:," &>> $RESULTS_FOLDER/$REPORT.txt
	# for (( i=1; i<=$OUTERLOOP; i++ )); do
	# 	rm -rf /tmp/omrsharedresources
	# 	$FULL null.wasm --run-all-exports &> /dev/null;
	# 	for (( j=1; j<=$INNERLOOP; j++ )); do
	# 		ts=$(date +%s%N) ;
	# 		$MIXED $WASM --run-all-exports --disable-aot  &> /dev/null || TEST_RESULT=$?
	# 		tt=$(($(date +%s%N) - $ts)) ;
	# 		echo -n $tt"," &>> $RESULTS_FOLDER/$REPORT.txt
	# 	done
	# 	echo "," &>> $RESULTS_FOLDER/$REPORT.txt
	# done
done
if test $TEST_RESULT -eq 0 ;
then
	echo "None of the tests that are not in the skip lists have failed"
else
	echo "Some of the tests not in the skip lists have failed, see test_results/summary for details"
fi
sed -i -e "s/\,/\\t/g" $RESULTS_FOLDER/*.txt
sed -i -e "s/\t\t//g" $RESULTS_FOLDER/*.txt
mv *.so $RESULTS_FOLDER
exit $GLOBAL_RESULT