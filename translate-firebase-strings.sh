#!/bin/bash

firebase login
firebase use default
firebase remoteconfig:get -o "remoteconfig.last.json"

currentDir=$(dirname $0)
cd $STRINGER_HELPER_PROJECT_PATH
swift run
cd $currentDir

$STRINGER_HELPER_PROJECT_PATH/.build/$STRINGER_HELPER_PROJECT_BUILD_ARCHITECTURE/debug/StringerHelperCLI stringer-helper translate

echo "Translating Firebase Remote Config strings..."

crowdin pre-translate --method=mt --engine-id=$CROWDIN_ENGINE_ID --config $STRINGER_PROJECT_PATH/translate-firebase-strings.yml
