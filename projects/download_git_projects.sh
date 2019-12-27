#!/bin/bash
#
# Download currently relevant 'git' projects.
#
# Assumptions:
#
# - 'git' is available and fully configured.
# - SSH keys are registered at remote.

# Make directory and pushd into it #
mkdir $HOME/src
pushd $HOME/src
    # Bytes by Ying #
    git clone git@gitlab.com:yingw787/bytes.yingw787.com.git

    # Personal blog #
    git clone git@gitlab.com:yingw787/blog.yingw787.com.git

    # Resume #
    git clone git@github.com:yingw787/resume.yingw787.com.git

    # Projects #
    git clone git@github.com:yingw787/projects.yingw787.com.git

    # Homepage #
    git clone git@github.com:yingw787/yingw787.com.git
# Exit pushd context #    
popd