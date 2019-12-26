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

# Generate SSH public/private keypair. #
ssh-keygen \
    -t rsa \ # '-t': Type of key to be generated.
    -b 4096 \ # '-b': Number of bits in the key to create.
    -C $EMAIL \ # '-C': Provide a new comment.
    -f "$_HOME/.ssh/id_rsa" # '-f': Filename of the key file.
    -q \ # '-q': Silence ssh-keygen.
    -N "" # No passphrase by default.