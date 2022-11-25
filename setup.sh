#!/usr/bin/zsh

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

bash ~/.dotfiles/configs/copy-config.sh

cd $CURRENT

rm -rf $TMPDIR