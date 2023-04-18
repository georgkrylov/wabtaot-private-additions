SCRIPTS_FOLDER="./wabtaot-private-additions/scripts"
EXPERIMENT_NAME="looking-for-good-results"
export EXPERIMENT_NAME
WABTAOTROOT=`pwd`
git checkout enabling_calls_dependencies
git submodule update
versions=`git rev-list HEAD -24`
for version in $versions ; do
git checkout $version
git submodule update
cd wabtaot-private-additions
git checkout main
cd $WABTAOTROOT
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
echo "NO CHECK REQUESTED, RESULTS MIGHT BE INCORRECT"
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
INNERLOOP=40
OUTERLOOP=50
export INNERLOOP OUTERLOOP
bash $EXPSCRIPTFOLDER/test-run-modes.sh
mv $EXPERIMENT_FOLDER $RESULTS_FOLDER
cd $WITHTIMESTAMP
mkdir test_results/files-combined
cp test_results/*.txt test_results/files-combined
cd $WABTAOTROOT
done
