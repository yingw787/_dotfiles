#!/bin/bash
#
# Download registered 'git' projects.
#
# Assumptions:
#
# - 'git' is available and fully configured.
# - SSH keys are registered at remote (GitHub / GitLab / etc.)
#
# Usage:
# - '/bin/bash $HOME/dotfiles/projects/download_git_projects.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

echo "$LOG_PREFIX creating directory if not exists '$HOME/src'."
mkdir -p $HOME/src
pushd $HOME/src
    # Bytes by Ying #
    BYTES_BY_YING="git@gitlab.com:yingw787/bytes.yingw787.com.git"
    echo "$LOG_PREFIX cloning '$BYTES_BY_YING'."
    git clone $BYTES_BY_YING

    # Personal blog #
    BLOG_BY_YING="git@gitlab.com:yingw787/blog.yingw787.com.git"
    echo "$LOG_PREFIX cloning '$BLOG_BY_YING'."
    git clone $BLOG_BY_YING

    # Resume #
    RESUME="git@github.com:yingw787/resume.yingw787.com.git"
    echo "$LOG_PREFIX cloning '$RESUME'."
    git clone $RESUME

    # Projects #
    PROJECTS="git@gitlab.com:yingw787/projects.yingw787.com.git"
    echo "$LOG_PREFIX cloning '$PROJECTS'."
    git clone $PROJECTS

    # Homepage #
    HOMEPAGE="git@github.com:yingw787/yingw787.com.git"
    echo "$LOG_PREFIX cloning '$HOMEPAGE'."
    git clone $HOMEPAGE

    # Dotfiles website #
    DOTFILES_WEBSITE="git@github.com:yingw787/dotfiles.yingw787.com.git"
    echo "$LOG_PREFIX cloning '$DOTFILES_WEBSITE'."
    git clone $DOTFILES_WEBSITE

    # TinyDevCRM "Coming Soon" webpage #
    TINYDEVCRM_COMINGSOON="git@github.com:yingw787/tinydevcrm-comingsoon.git"
    echo "$LOG_PREFIX cloning '$TINYDEVCRM_COMINGSOON'."
    git clone $TINYDEVCRM_COMINGSOON
popd