#!/usr/bin/env bash


#sudo install -Dm644 ./asset/overlay/etc/dconf/profile/user /etc/dconf/profile/user

sudo mkdir -p /etc/dconf/db/site.d

sudo dconf update

ls -1 /etc/dconf/db
