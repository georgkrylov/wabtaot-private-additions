TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHOD="--aot-hardcoded"
INNERLOOP=5
OUTERLOOP=1
REPORT="results-hardcoded"
DONOTDELETE=T
export CALLING_METHOD TESTS_DIR INNERLOOP OUTERLOOP REPORT
bash wabtaot-private-additions/scripts/gitlab-mixed-aot-test.sh
TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHOD="--aot-entry"
INNERLOOP=5
OUTERLOOP=1
REPORT="results-entry"
export CALLING_METHOD TESTS_DIR INNERLOOP OUTERLOOP REPORT DONOTDELETE
bash wabtaot-private-additions/scripts/gitlab-mixed-aot-test.sh
TESTS_DIR="wabtaot-private-additions/call-chains/"
CALLING_METHOD="--aot-libffi"
INNERLOOP=5
OUTERLOOP=1
REPORT="results-libffi"
export CALLING_METHOD TESTS_DIR INNERLOOP OUTERLOOP REPORT
bash wabtaot-private-additions/scripts/gitlab-mixed-aot-test.sh