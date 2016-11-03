#!/usr/bin/env bash
# Configuration for Syndicate Tests

export SYNDICATE_ADMIN="syndicate-ms@example.com"
if [ -z "`echo $PATH | grep google`" ]; then 
    export PATH=${PATH}:~/google_appengine
fi

export SYNDICATE_MS="http://ms:28080"
export SYNDICATE_MS_ROOT=/usr/src/syndicate/ms
export SYNDICATE_MS_KEYDIR=${SYNDICATE_MS_ROOT}
export SYNDICATE_PRIVKEY_PATH=${SYNDICATE_MS_KEYDIR}/admin.pem
export MS_SRC_ROOT=${SYNDICATE_MS_ROOT}

export SYNDICATE_ROOT=${SYNDICATE_ROOT:-/usr/bin}
export SYNDICATE_TOOL=${SYNDICATE_ROOT}/syndicate
export SYNDICATE_RG_ROOT=${SYNDICATE_ROOT}
export SYNDICATE_UG_ROOT=${SYNDICATE_ROOT}
export SYNDICATE_AG_ROOT=${SYNDICATE_ROOT}

export SYNDICATE_PYTHON_ROOT=/usr/lib/python2.7/dist-packages/

export USE_VALGRIND=${USE_VALGRIND:-0}

