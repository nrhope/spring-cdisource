#!/bin/bash -x
mvn clean install deploy -Pweld 2>&1 | tee mvn_log/mvn.log
mvn dependency:copy-dependencies
# mvn clean install -Pweld

exit 0

# mvn versions:set -DnewVersion="1.17"
Unfortunately pom.xml s are not set up allow easy change of version / adding of -SNAPSHOT using
above standard commands so had to do the following manually:
    vi `find . -name pom.xml -exec grep -Hl 1.0-SNAPSHOT {} \;`
    :%s/1.0-SNAPSHOT/1.17/g
