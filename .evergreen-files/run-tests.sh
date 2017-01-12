#!/bin/bash

set -o xtrace   # Write all commands first to stderr
set -o errexit  # Exit the script with error if any of the commands fail

# Supported/used environment variables:
#       SCALA_VERSION   Sets the Scala version
#       TEST_TYPE       Sets the test type.  One of "it", "unit"

JAVA_HOME="/opt/java/${JDK}"

############################################
#            Main Program                  #
############################################

echo "Running $TEST_TYPE tests with Scala Version $SCALA_VERSION for $TOPOLOGY and connecting to $MONGODB_URI"

JAVA_HOME="/opt/java/jdk8"
./sbt ++${SCALA_VERSION} ${TEST_TYPE}:test