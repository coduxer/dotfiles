#!/usr/bin/env bash

if [ ! -f "~/.bashrc" ]; then
    touch ~/.bashrc
fi

if ! grep -q '~/.bashrc_local' "$HOME/.bashrc"; then

    { echo '# load local bashrc' 
      echo 'if [ -f ~/.bashrc_local ]; then' 
      echo '    source ~/.bashrc_local'
      echo 'fi'; } >> ~/.bashrc
fi