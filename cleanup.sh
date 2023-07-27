#!/bin/sh

source setenv.sh

echo "Cleaning up..."

$STRINGER_HELPER_PROJECT_PATH/.build/$STRINGER_HELPER_PROJECT_BUILD_ARCHITECTURE/debug/StringerHelperCLI stringer-helper cleanup
