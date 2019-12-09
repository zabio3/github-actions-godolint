#!/bin/bash

set -e

cd "$GITHUB_WORKSPACE"

if [ ! -z "${GITHUB_TOKEN}" ];
then
  sh -c "godolint $DOCKERFILE_PATH"
else
  echo "Annotations inactive. No GitHub token provided"
fi