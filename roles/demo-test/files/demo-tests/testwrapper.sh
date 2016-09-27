#!/usr/bin/env bash
# Runs syndicate tests in PATHDIR, puts TAP results in TESTDIR

TESTDIR=./syndicate-tests
RESULTDIR=./results
OUTPUTDIR=./output
BASH=/bin/bash

# bring in config
source config.sh

# Start testing
echo "Start Time: `date +'%F %T'`"
start_t=`date +%s`
echo "Working in: '`pwd`'"

# remove old results
rm -f ${RESULTDIR}/*.tap

# run the tests
for test in $(ls ${TESTDIR}/*.yml ); do
  testname=${test##*/}
  echo "Running test: '${testname}'"
  python ./testrunner.py -d -t ${RESULTDIR}/${testname%.*}.tap ${test} ${OUTPUTDIR}/${testname%.*}.out
done

echo "Copying logs..."
cp -r /tmp/synd-* $OUTPUTDIR
chmod -R a+rwx $OUTPUTDIR

echo "End Time:   `date +'%F %T'`"
end_t=`date +%s`
echo "Elapsed Time: $((${end_t} - ${start_t}))s"

