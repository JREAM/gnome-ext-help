#!/bin/bash

ARG_ERROR="[!] You must pass: (e)nable, (d)isable, (r)reload, (p)references, (l)og"

if [ -z $1 ]; then
  echo $ARG_ERROR
  exit
fi

EXT_NAME=${PWD##*/}

case $1 in
  e|E)
    gnome-shell-extension-tool -e $EXT_NAME
    exit
    ;;
  d|D)
    gnome-shell-extension-tool -d $EXT_NAME
    exit
    ;;
  r|R)
    gnome-shell-extension-tool -r $EXT_NAME
    exit
    ;;
  p|P)
    gnome-shell-extension-prefs $EXT_NAME
    exit
    ;;
  l|L)
    journalctl -f -o cat /usr/bin/gnome-shell
    exit
    ;;
  *)
    echo $ARG_ERROR
    exit
    ;;
esac
