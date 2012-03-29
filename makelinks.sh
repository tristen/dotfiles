#!/bin/bash
set -e -u

dotfilesdir=$HOME/dotfiles
thisscript=$(basename $0)

for f in $dotfilesdir/*; do
  
  # don't link this script
  if [ $(basename $f) = $thisscript ]; then
    continue;
  fi

  destlink="$HOME/.$(basename $f)"
  
  if [ -h $destlink ]; then
    # if the destination already exists as a symlink, replace it without asking
    ln -sf $f $destlink 
  else
    # otherwise ask what to do if the file is already there, or just link it if not
    ln -si $f $destlink
  fi

done
