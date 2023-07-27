#!/bin/bash

source setenv.sh

echo "Pulling translated XCode strings..."

crowdin pull --config $STRINGER_PROJECT_PATH/pull-xcode-strings.yml
