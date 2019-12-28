#!/bin/bash
#
# Configure 'awscli' with access key and secrets from AWS IAM.
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash $(pwd)/configure_aws.py'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Install 'awscli' build 'awscli/eoan,ean 1.16.218-1 all' #
echo "$LOG_PREFIX install 'awscli' build 'awscli/eoan,ean 1.16.218-1 all'."
sudo apt-get install awscli=1.16.218-1

echo "$LOG_PREFIX Run cmd 'aws configure --profile s3_personal'."
aws configure --profile s3_personal
