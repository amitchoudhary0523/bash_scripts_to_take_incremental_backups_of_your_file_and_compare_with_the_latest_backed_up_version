#!/bin/bash

#
# Decription: Bash script to take incremental backups of your file.
#
# NOTE: Change the location of 'backup_dir' as per your needs.
#
# Example usage: ./mybackup.sh myfile.c
#

backup_dir=~/backups

date=`date "+%Y-%m-%d-%H-%M-%S"`

set -x

cp $1 $backup_dir/$1.$date

