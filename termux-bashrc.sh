#!/usr/bin/env bash

# Clone the repository.
are_backup=1
its_installed=1

# Backup your current .bashrc file.

cd /data/data/com.termux/files/usr/etc && cp -v bash.bashrc $HOME/termux-bashrc/backup/ && cd -
[[ $? -eq 0 ]] && are_backup=0
# Copy the bash.bashrc file to your .../usr/etc directory.

cd termux-bashrc && cp bash.bashrc /data/data/com.termux/files/usr/etc 
[[ $? -eq 0 ]] && its_installed=0

if [ $are_backup -eq 0 ]; then
  echo " your 'bash.bashrc' has been backed up and stored on $HOME/termux-bashrc/backup/ ";
fi

if [ $are_installed -eq 0 ]; then
  echo "Bash.bashrc was changed!, please restart the termux"
  exit 0
fi
