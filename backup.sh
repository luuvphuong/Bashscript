#!/bin/bash
###########################Check service
r=`tput setaf 1`
r1=`tput setaf 2`
N=`tput sgr0`

BACKUP_SRC=""
BACKUP_DEST="_$(date +%Y%m%d).tar.gz"
tar -czvf $BACKUP_DEST $BACKUP_SRC

