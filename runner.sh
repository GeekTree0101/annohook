#!/bin/bash
set -e

PROJECT_BASE_DIR=${PROJECT_BASE_DIR:-""}
SOURCE_FILE_TYPE=${SOURCE_FILE_TYPE:-""}
SLACK_HOOK_URL=${SLACK_HOOK_URL:-""}
SLACK_HOOK_NAME=${SLACK_HOOK_NAME:-""}
SLACK_HOOK_IMAGE=${SLACK_HOOK_IMAGE:-""}

echo "Running..."

annohook \
  -projectBaseDIR "${PROJECT_BASE_DIR}" \
  -sourceFileType "${SOURCE_FILE_TYPE}" \
  -slackHookURL "${SLACK_HOOK_URL}" \
  -slackHookName "${SLACK_HOOK_NAME}" \
  -slackHookImage "${SLACK_HOOK_IMAGE}"
echo "Finished!"