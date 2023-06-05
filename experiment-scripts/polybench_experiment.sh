SCRIPTS_FOLDER="./wabtaot-private-additions/scripts"
EXPERIMENT_ROOT=`pwd`
export EXPERIMENT_ROOT
EXPERIMENT_NAME="2023-aot-all-polybench"
export EXPERIMENT_NAME
bash $SCRIPTS_FOLDER/generate_version_file.sh
WABTAOTVERSION=`git rev-parse --short HEAD`
export WABTAOTVERSION

VERSION_FILE="version.txt"
export VERSION_FILE


bash $SCRIPTS_FOLDER/create_experiment_folder.sh
# As some of the folders are on network drives - we have to conduct experiment
# on local scratch. May or may not be different from EXPERIMENT_ROOT
EXPERIMENT_FOLDER=`cat experiment_folder.txt`
export EXPERIMENT_FOLDER
bash $SCRIPTS_FOLDER/clone_polybench.sh

cp $VERSION_FILE $EXPERIMENT_FOLDER
WABTAOTFOLDER=$EXPERIMENT_FOLDER"/build/src/aot/"
export WABTAOTFOLDER
EMINTERPFOLDER=$EXPERIMENT_FOLDER"/build/em-interp/"
BINFOLDER=$EXPERIMENT_FOLDER/bin/
EXPSCRIPTFOLDER=$EXPERIMENT_FOLDER/$SCRIPTS_FOLDER
mkdir -p $WABTAOTFOLDER
mkdir -p $EMINTERPFOLDER
mkdir -p $BINFOLDER
mkdir -p $EXPSCRIPTFOLDER


if [ "$NO_BUILD""X" == "X" ] ; then
    bash $SCRIPTS_FOLDER/build_aot_shared_cache.sh
    bash $SCRIPTS_FOLDER/build_aot_cascon_2021_paper.sh
else
    echo "NO BUILD REQUESTED, version might mismatch"
fi

cp "./build/src/aot/wabtaot" $WABTAOTFOLDER/wabtaot
cp "./build/em-interp/em-interp" $EMINTERPFOLDER/em-interp

cp -r ./bin/wat2wasm $BINFOLDER
cp -r $SCRIPTS_FOLDER/* $EXPSCRIPTFOLDER

if [ "$NO_CHECK""X" == "X" ] ; then
    export SCRIPTS_FOLDER
    TEST_RESULT=0
    bash $SCRIPTS_FOLDER/correctness_check_across_run_modes.sh || TEST_RESULT=$?
    cd $EXPERIMENT_FOLDER/polybench
    bash difs-run-local.sh || TEST_RESULT=$?
    cd $EXPERIMENT_ROOT
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
INNERLOOP=15
OUTERLOOP=10
export INNERLOOP OUTERLOOP
bash $EXPSCRIPTFOLDER/test-polybench.sh
mv $EXPERIMENT_FOLDER $RESULTS_FOLDER
cd $WITHTIMESTAMP
mkdir test_results/files-combined
cp test_results/*.txt test_results/files-combined