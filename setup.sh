#!/bin/sh

__link() {
    [ -L "$2" ] && unlink "$2"
    ln -s "$1" "$2" && echo "linked: $1 -> $2" >&2
}

dotfiles_root=$(cd $(dirname $0) && pwd)/dotfiles
cd ${dotfiles_root}

dotfiles=`ls -a | grep -E '^\.[^.]\s*'` 
for dotfile in $dotfiles
do
    full_path="$dotfiles_root/$dotfile" 
    link_name="$HOME/$dotfile"
    __link $full_path $link_name    
done
