#!/usr/bin/python3.7
#
# Utility methods applicable to setup.

import subprocess


def generate_sha256sum_of_file(filename_abspath):
    """Generates a SHA-256 checksum of a file.

    Args:
        filename_abspath (str)

    Returns:
        str: SHA-256 checksum.
    """
    bash_command = ['sha256sum', filename_abspath]
    process = subprocess.Popen(
        bash_command,
        stdout=subprocess.PIPE
    )
    output = process.stdout.read()
    output = output.decode('utf-8')

    checksum = output.split(' ')[0]

    return checksum
