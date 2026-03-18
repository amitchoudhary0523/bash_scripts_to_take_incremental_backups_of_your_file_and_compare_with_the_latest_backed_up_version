#!/bin/bash

#
# Description: Bash script to compare the current version of a file with the
#              latest backed up version of the same file (the latest backed up
#              version of the file was made using the bash script -
#              'mybackup.sh').
#
# NOTE: Change the location of 'backup_dir' as per your needs.
#
# Example usage: ./compare_file_with_lastest_backed_up_version.sh myfile.c
#

backup_dir=~/backups

ls -tr -1 $backup_dir/$1.*

last=`ls -tr -1 $backup_dir/$1.* | tail -n 1`

echo

set -x

diff -u $last $1

