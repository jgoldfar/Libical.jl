#!/bin/sh
TESTFILE=libical-test-data.tar.gz
tar cvzf ${TESTFILE} src/libical-3.0/test-data

curl -T ${TESTFILE} -ujgoldfar:0 https://api.bintray.com/content/jgoldfar/Libical-test-data/Libical-test-data/3.0.4/${TESTFILE}
