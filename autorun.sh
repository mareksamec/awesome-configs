#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run guake -e "tail -f /var/log/syslog"
run pulseaudio
run kdeconnect-cli
run kdeconnect-handler

run gnome-keyring-daemon --daemonize --login
run gnome-online-accounts
run megasync
