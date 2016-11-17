#!/usr/bin/env bash
# Runs syndicate tests in PATHDIR, puts TAP results in TESTDIR

TESTDIR=./tests
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
for test in $(ls ${TESTDIR}/[0-9][0-9][0-9]_*.sh ); do
  testname=${test##*/}
  echo "Running test: '${testname}'"
  ${BASH} ${test} > ${RESULTDIR}/${testname%.*}.tap
  echo "Copying logs..."
  cp -r /tmp/syndicate-test-*  $OUTPUTDIR
  chmod a+rX -R $OUTPUTDIR
done

echo "End Time:   `date +'%F %T'`"
end_t=`date +%s`
echo "Elapsed Time: $((${end_t} - ${start_t}))s"

