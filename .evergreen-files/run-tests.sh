#!/bin/bash

set -o xtrace   # Write all commands first to stderr
set -o errexit  # Exit the script with error if any of the commands fail

# Supported/used environment variables:
#       SCALA_VERSION   Sets the Scala version
#       TEST_TYPE       Sets the test type.  One of "it", "unit"

############################################
#            Main Program                  #
############################################

echo "Running $TEST_TYPE tests with Scala Version $SCALA_VERSION"

./sbt -java-home /opt/java/jdk8 version
./sbt -java-home /opt/java/jdk8 ++${SCALA_VERSION} ${TEST_TYPE}:test