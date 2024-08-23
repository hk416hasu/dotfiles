#!/bin/env bash


fileArray=("bashrc" "inputrc" "vimrc" "tmux.conf" "gitconfig")

for elem in "${fileArray[@]}"; do
    ln -s "$PWD/${elem}" "$HOME/.${elem}"
done

# others:
ln -s "$PWD/mpv.conf" "$HOME/.config/mpv/mpv.conf"

# /root:
sudo ln -s "$PWD/vimrc" "/root/.vimrc"
