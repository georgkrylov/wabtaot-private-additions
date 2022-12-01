# This script to be run from wasmjitwithomr root.
# The wasm files need to be compiled under ./test_results
TEST=./test_results/call.wasm
OUTPUT_DIR=./test_results/perf
rm -rf ./test_results/perf/*
mkdir -p ./test_results/perf

for execc in  ./build/em-interp/em-interp ./build/src/aot/wabtaot ; do
    rm -rf /tmp/omrsharedresources/
    $execc something &> /dev/null
    for test in ./test_results/call.wasm; do
        for i in {1..5}; do 
            ename=${execc##*/}
            tname=${test##*/}
            tname=${tname%.wasm}
            echo $tname-$ename-$i
            if [[ $execc=="./build/em-interp/em-interp" ]]; then
                perf record -g $execc $test --run-all-exports --disable-jit > /dev/null
            else
                perf record -g $execc $test --run-all-exports > /dev/null
            fi
            perf script | stackcollapse-perf.pl > $OUTPUT_DIR/perf-$tname-$ename-$i-folded
            flamegraph.pl $OUTPUT_DIR/perf-$tname-$ename-$i-folded > $OUTPUT_DIR/perf-$tname-$ename-$i.svg
        done
    done
done