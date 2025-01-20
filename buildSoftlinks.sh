#!/bin/env bash

# !! SHOULD BE UPDATED !!
# !! SHOULD BE UPDATED !!
# !! SHOULD BE UPDATED !!

# plz run this script in 'dotfiles' directory

fileArray=("bashrc" "inputrc" "vimrc" "tmux.conf" "gitconfig")

for elem in "${fileArray[@]}"; do
    if [[ -f "$HOME/.${elem}" ]]; then
        rm "$HOME/.${elem}"
    fi
    ln -s "$PWD/${elem}" "$HOME/.${elem}"
done

# AT&T syntax
mkdir -p "$HOME/.vim/syntax"
cp "./vim/syntax/gas.vim" "$HOME/.vim/syntax"

# others:
if [[ -f "$HOME/.config/mpv/mpv.conf" ]]; then
    rm "$HOME/.config/mpv/mpv.conf"
fi
ln -s "$PWD/mpv.conf" "$HOME/.config/mpv/mpv.conf"

if [[ -f "$HOME/.dosbox/dosbox-0.74-3.conf" ]]; then
    rm "$HOME/.dosbox/dosbox-0.74-3.conf"
fi
ln -s "$PWD/dosbox-0.74-3.conf" "$HOME/.dosbox/dosbox-0.74-3.conf"

if [[ -f "/etc/tlp.conf" ]]; then sudo rm /etc/tlp.conf; fi
sudo ln -s "$PWD/tlp.conf" "/etc/tlp.conf"

if [[ -f "/usr/share/applications/qqmusic.desktop" ]]; then
    sudo rm /usr/share/applications/qqmusic.desktop
fi
sudo ln -s "$PWD/qqmusic.desktop" /usr/share/applications/qqmusic.desktop

if [[ -f "$HOME/.ssh/config" ]]; then
    rm "$HOME/.ssh/config"
fi
ln -s "$PWD/sshConfig" "$HOME/.ssh/config"

#keyboardPath="/etc/default/keyboard"
#if [[ -f "$keyboardPath" ]]; then rm "$keyboardPath"; fi
#ln -s "$PWD/keyboard" "$keyboardPath"

# /root:
if [[ -f "/root/.vimrc" ]]; then
    sudo rm "/root/.vimrc"
fi
sudo ln -s "$PWD/vimrc" "/root/.vimrc"
