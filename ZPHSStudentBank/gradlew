#!/bin/sh
#
# Copyright 2015 the original author or authors.
# Gradle wrapper script for Unix/Linux/Mac
#

# Attempt to set APP_HOME
DIRNAME=$(cd "$(dirname "$0")" && pwd)
APP_HOME=$DIRNAME

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

# Setup the command line
exec "$JAVACMD" \
  -classpath "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" \
  org.gradle.wrapper.GradleWrapperMain \
  "$@"
