#!/bin/bash
#
# Configures SSH settings.
#
# Arguments:
#
# --email (required): Email address.
# --home (required): Env variable $HOME for user context.
#
# --override (optional): Override the existing SSH public/private keypair.

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Generate SSH public/private keypair. #
#
# '-t': Type of key to be generated.
# '-b': Number of bits in the key to create.
# '-C': Provide a new comment.
# '-f': Filename of the key file.
# '-q': Silence ssh-keygen.
# '-N': No passphrase by default.
echo "$LOG_PREFIX Run cmd 'ssh-keygen -t rsa -b 4096 -f \"$_HOME/.ssh/id_rsa\" -q -N \"\"'."
ssh-keygen -t rsa -b 4096 -f "$HOME/.ssh/id_rsa" -q -N ""
