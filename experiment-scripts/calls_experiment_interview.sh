SCRIPTS_FOLDER="./wabtaot-private-additions/scripts"
EXPERIMENT_NAME="calls-experiment-interview"
export EXPERIMENT_NAME
bash $SCRIPTS_FOLDER/generate_version_file.sh
VERSION_FILE="version.txt"
export VERSION_FILE

if [ "$NO_BUILD""X" == "X" ] ; then
    bash $SCRIPTS_FOLDER/build_aot_shared_cache.sh
else
    echo "NO BUILD REQUESTED, version might mismatch"
fi

bash $SCRIPTS_FOLDER/create_experiment_folder.sh
EXPERIMENT_FOLDER=`cat experiment_folder.txt`
MEASURE_TIME="--measure-time"
export MEASURE_TIME
cp $VERSION_FILE $EXPERIMENT_FOLDER
WABTAOTFOLDER=$EXPERIMENT_FOLDER"/build/src/aot/"
EMINTERPFOLDER=$EXPERIMENT_FOLDER"/build/em-interp/"
BINFOLDER=$EXPERIMENT_FOLDER/bin/
EXPSCRIPTFOLDER=$EXPERIMENT_FOLDER/$SCRIPTS_FOLDER
mkdir -p $WABTAOTFOLDER
mkdir -p $EMINTERPFOLDER
mkdir -p $BINFOLDER
mkdir -p $EXPSCRIPTFOLDER

cp "./build/src/aot/wabtaot" $WABTAOTFOLDER/wabtaot
cp "./build/em-interp/em-interp" $EMINTERPFOLDER/em-interp

cp -r ./bin/wat2wasm $BINFOLDER
cp -r $SCRIPTS_FOLDER/* $EXPSCRIPTFOLDER
cp -r ./wabtaot-private-additions/call-chains $EXPERIMENT_FOLDER/wabtaot-private-additions/
CWD=`pwd`
if [ "$NO_CHECK""X" == "X" ] ; then
    export SCRIPTS_FOLDER
    TEST_RESULT=0
    bash $SCRIPTS_FOLDER/correctness_check_across_run_modes.sh || TEST_RESULT=$?
    if test $TEST_RESULT -eq 0
    then
        echo "Sanity check ok!"
    else
        echo "Sanity check failed"
        exit 1
    fi
    
else
    echo "NO CHECK REQUESTED, RESULTS MIGHT BE INCORRECT"
fi
rm experiment_folder.txt
rm version.txt
echo $EXPERIMENT_FOLDER
RESULTS_FOLDER=${EXPERIMENT_FOLDER#*experiments}
echo $RESULTS_FOLDER
WITHTIMESTAMP="/homes/gkrylov/wabtaot-experiments"${RESULTS_FOLDER}
echo "WITH TIMESTAMP"$WITHTIMESTAMP
RESULTS_FOLDER="/homes/gkrylov/wabtaot-experiments"${RESULTS_FOLDER%/*}

echo $RESULTS_FOLDER
mkdir -p $RESULTS_FOLDER
cd $EXPERIMENT_FOLDER
INNERLOOP=20
OUTERLOOP=30
export INNERLOOP OUTERLOOP
bash $EXPSCRIPTFOLDER/test-run-modes-interview.sh
mv $EXPERIMENT_FOLDER $RESULTS_FOLDER
cd $WITHTIMESTAMP
mkdir test_results/files-combined
cp test_results/*.txt test_results/files-combined