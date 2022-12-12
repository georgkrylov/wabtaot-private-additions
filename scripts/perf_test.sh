# This script to be run from wasmjitwithomr root.
# The wasm files need to be compiled under ./test_results
TEST=./test_results/call.wasm
OUTPUT_DIR=./test_results/perf
rm -rf ./test_results/perf/*
mkdir -p ./test_results/perf
TR_OPTIONS=
rm trtrace.log
for execc in  ./build/em-interp/em-interp ./build/src/aot/wabtaot ; do
    rm -rf /tmp/omrsharedresources/
    $execc something &> /dev/null
    for test in ./test_results/*.wasm; do
    # 15 for the ILGEN percentages
        rm -rf /tmp/omrsharedresources/
        $execc something &> /dev/null
        for i in {1..15}; do
            ename=${execc##*/}
            qname=${test##*/}
            tname=${qname%.wasm}
            outname=$tname-$ename-$i.out
            errfile=$tname-$ename-$i.err
            echo $outname
            if [[ $execc=="./build/em-interp/em-interp" ]]; then
                perf record -g $execc $test --run-all-exports --disable-jit > $OUTPUT_DIR/$outname 2> $OUTPUT_DIR/$errfile
            else
                perf record -g $execc $test --run-all-exports > $OUTPUT_DIR/$outname  2> $OUTPUT_DIR/$errfile
            fi
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