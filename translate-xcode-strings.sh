#!/bin/bash

echo "Translating XCode strings..."

crowdin pre-translate --method=mt --engine-id=$CROWDIN_ENGINE_ID --config $STRINGER_PROJECT_PATH/translate-xcode-strings.yml
