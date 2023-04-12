#!/bin/sh

cd /brakeman

# Action Inputs
export TARGET_PATH=${INPUT_PATH:-.}
export OPTIONS=${INPUT_OPTIONS:---no-progress --no-exit-on-warn --no-exit-on-error --color -o /dev/stdout -o brakeman_results.html}

git config --global --add safe.directory ${GITHUB_WORKSPACE}
COMMAND="bundle exec brakeman -p ${TARGET_PATH} ${OPTIONS}"
echo "COMMAND: ${COMMAND}"
$COMMAND
