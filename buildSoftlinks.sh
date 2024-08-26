#!/bin/env bash

# plz run this script in 'dotfiles' directory

fileArray=("bashrc" "inputrc" "vimrc" "tmux.conf" "gitconfig")

for elem in "${fileArray[@]}"; do
    rm "$HOME/.${elem}"
    ln -s "$PWD/${elem}" "$HOME/.${elem}"
done

# others:
rm "$HOME/.config/mpv/mpv.conf"
ln -s "$PWD/mpv.conf" "$HOME/.config/mpv/mpv.conf"

rm "$HOME/.dosbox/dosbox-0.74-3.conf"
ln -s "$PWD/dosbox-0.74-3.conf" "$HOME/.dosbox/dosbox-0.74-3.conf"

# /root:
sudo rm "/root/.vimrc"
sudo ln -s "$PWD/vimrc" "/root/.vimrc"
