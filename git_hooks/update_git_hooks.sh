#!/bin/bash
#
# Updates `git` hooks.

REPO_ROOT=$(git rev-parse --show-toplevel)

cp $REPO_ROOT/git_hooks/post-commit.sh $REPO_ROOT/.git/hooks/post-commit