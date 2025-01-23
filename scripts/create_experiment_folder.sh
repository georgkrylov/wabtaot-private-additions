HOSTNAME=`hostname`
HOST_SUFFIX=$HOSTNAME-

<<comment
if [ "$HOSTNAME" == "CASA36" ]; then
    LOCAL_SCRATCH="/local_scratch/wasmjitwithomr/"
elif [ "$HOSTNAME" == "casa47" ]; then
    LOCAL_SCRATCH="/home/georgiy-experiment/"
elif [ "$HOSTNAME" == "alvis" ]; then
    LOCAL_SCRATCH="/tmp/gkrylov/"
fi
comment


if [ "$LOCAL_SCRATCH""X" == "X" ] ; then
    CURR_DIR=$(pwd)
    LOCAL_SCRATCH=$(dirname "$CURR_DIR")"/"
    echo "Scratch directory was not determined from host name and is set to default : "$LOCAL_SCRATCH
else
    echo "Scratch directory is"$LOCAL_SCRATCH
fi

if [ "$EXPERIMENT_NAME""X" == "X" ] ; then
    EXPERIMENT_NAME=`date +"%Y-%m-%dT%H-%M-%S"`
    echo "Experiment name is: "$EXPERIMENT_NAME
else
    DATETIME_SUFFIX=`date +"%Y-%m-%dT%H-%M-%S"`
    EXPERIMENT_NAME=$HOST_SUFFIX$EXPERIMENT_NAME/$DATETIME_SUFFIX
fi

EXPERIMENT_FOLDER=$LOCAL_SCRATCH"experiments/"$EXPERIMENT_NAME
mkdir -p $EXPERIMENT_FOLDER
echo $EXPERIMENT_FOLDER > experiment_folder.txt