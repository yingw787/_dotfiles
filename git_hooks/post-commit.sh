#!/bin/bash
#
# Git hook immediately after commit.
#
# Update `git` hooks by running command:
# `cp post-commit.sh ../.git/hooks/post-commit`
#
# This script:
# - Updates `setup.sh` with the latest SHA-1 commit to the repository.
#

COMMIT_HEAD=$(git rev-parse HEAD)
REPO_ROOT=$(git rev-parse --show-toplevel)

sed \
    -i "s/# Commit ID (SHA-1):.*$/# Commit ID (SHA-1): '$COMMIT_HEAD'/" \
    $REPO_ROOT/setup.sh
