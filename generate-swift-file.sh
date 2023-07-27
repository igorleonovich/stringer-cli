#!/bin/sh

source setenv.sh

echo "Generating a Swift Firebase Remote Config model file..."

currentDir=$(dirname $0)
cd $STRINGER_HELPER_PROJECT_PATH
swift run
cd $currentDir

$STRINGER_HELPER_PROJECT_PATH/.build/$STRINGER_HELPER_PROJECT_BUILD_ARCHITECTURE/debug/StringerHelperCLI stringer-helper generate-swift
