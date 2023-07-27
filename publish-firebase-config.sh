#!/bin/sh

source setenv.sh

echo "Publishing a remote config to Firebase..."

currentDir=$(dirname $0)
cd $STRINGER_HELPER_PROJECT_PATH
swift build
cd $currentDir

$STRINGER_HELPER_PROJECT_PATH/.build/$STRINGER_HELPER_PROJECT_BUILD_ARCHITECTURE/debug/StringerHelperCLI stringer-helper publish

firebase deploy --only remoteconfig
