#!/usr/bin/env bash
#
# Initial setup script.
#
# Assumptions:
#
# Using operating system Ubuntu 19.10.0 LTS (Eoan Ermine)
# 'git' installed from ppa:git-core/ppa
#
# Optional arguments:
#
# [--no-gui]: Install non-GUI tools only (TODO)
#
# NOTE: All scripts (*.sh, *.py) should only contain system dependencies. *.sh
# (shell scripts) should use system default shell 'bash' (/bin/bash), and *.py
# (Python scripts) should use system default Python 3.7.x (/usr/bin/python3.7).
#
# Using a mixture of shell and Python scripts. Python where possible as a
# general-purpose language has more robust / defined behavior than what 'bash'
# can provide, and 'bash' where only 'bash' compatibility exists.
#
# NOTE: All scripts should be run as 'sudo -Hu $(whoami) ./script' in order to
# leave environment variables dependent on user context (e.g. $HOME) untouched.
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash setup-ubuntu.sh | tee log.txt'

LOG_PREFIX="[https://dotfiles.yingw787.com]"


# Update system-specific tooling. #

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /bin/bash $(pwd)/configure_vim.sh'."
sudo -Hu $(whoami) /bin/bash $(pwd)/configure_vim.sh

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /bin/bash $(pwd)/configure_bash.sh'."
sudo -Hu $(whoami) /bin/bash $(pwd)/configure_bash.sh

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /bin/bash $(pwd)/configure_etc_hosts.sh'."
sudo -Hu $(whoami) /bin/bash $(pwd)/configure_etc_hosts.sh

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /bin/bash $(pwd)/add_misc.sh'."
sudo -Hu $(whoami) /bin/bash $(pwd)/add_misc.sh

echo "$LOG_PREFIX Run cmd '/bin/bash $(pwd)/add_z.sh'."
/bin/bash $(pwd)/add_z.sh


# Add language/framework-specific tooling. #

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /usr/bin/python3.7 $(pwd)/configure_golang.py'."
# sudo -Hu $(whoami) /usr/bin/python3.7 $(pwd)/configure_golang.py

echo "$LOG_PREFIX Run cmd 'sudo -Hu $(whoami) /usr/bin/python3.7 $(pwd)/configure_hugo.py'."
# sudo -Hu $(whoami) /usr/bin/python3.7 $(pwd)/configure_hugo.py


# Download projects #

echo "$LOG_PREFIX Run cmd '/bin/bash $(pwd)/../projects/download_git_projects.sh'."
/bin/bash $(pwd)/../projects/download_git_projects.sh
