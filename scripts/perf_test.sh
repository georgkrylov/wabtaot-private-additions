# This script to be run from wasmjitwithomr root.
# The wasm files need to be compiled under ./test_results
TEST=./test_results/call.wasm
OUTPUT_DIR=./test_results/perf
rm -rf ./test_results/perf/*
mkdir -p ./test_results/perf
if [ $CALLING_METHOD"X" == "X" ] ; then
	CALLING_METHOD="--aot-libffi"
	echo CALLING_METHOD is unset, using $CALLING_METHOD
else
	echo "CALLING_METHOD is "$CALLING_METHOD
fi
if [ $RUN_EXPORTS"X" == "X" ] ; then
	echo RUN_EXPORTS is unset
else
	echo "Run exports is: " $RUN_EXPORTS
fi

if [ "$INNERLOOP""X" == "X" ] ; then
	INNERLOOP=10
	echo "no Inner loop seting found, it is set to"$INNERLOOP
else
	echo "Inner loop is "$INNERLOOP
fi
TR_OPTIONS=
rm trtrace.log
for execc in  ./build/em-interp/em-interp ; do
    rm -rf /tmp/omrsharedresources/
    $execc something &> /dev/null
    for test in ./test_results/*.wasm; do
    # 15 for the ILGEN percentages
        rm -rf /tmp/omrsharedresources/
        $execc something &> /dev/null
        startt=1
        for (( i=$startt; i<=$INNERLOOP; i++ ))
        do
            ename=${execc##*/}
            qname=${test##*/}
            tname=${qname%.wasm}
            outname=$tname-$ename-$i.out
            errfile=$tname-$ename-$i.err
            echo $outname
            perf record -g $execc $test  --disable-jit $CALLING_METHOD $RUN_EXPORTS > $OUTPUT_DIR/$outname 2> $OUTPUT_DIR/$errfile
            mv trtrace.log $OUTPUT_DIR/$tname-$ename-$i.trace
            perf script | stackcollapse-perf.pl > $OUTPUT_DIR/perf-$tname-$ename-$i-folded
            flamegraph.pl $OUTPUT_DIR/perf-$tname-$ename-$i-folded > $OUTPUT_DIR/perf-$tname-$ename-$i.svg
        done
    done
done
rm perf.data
rm perf.data.old

# To find out ilgen percentages use ILGENFilter.xls
cd test_results
grep -rIi "compile /local_scratch/wasmjitwithomr/sr" > ~/perfs-il-txt.txt
cd ..