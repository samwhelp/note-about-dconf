#!/usr/bin/env bash




mkdir -p tmp


#REF_NOW=$(date "+%Y-%m-%d %H:%M:%S %A")
REF_NOW=$(date "+%Y%m%d-%H%M%S")
REF_BACKUP_FILE_NAME="user-${REF_NOW}"


cp ~/.config/dconf/user ./tmp/"${REF_BACKUP_FILE_NAME}"
