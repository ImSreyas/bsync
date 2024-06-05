# !/bin/bash

final_target=~/userfiles

# Library file target
# lib_target=~/.zeo/lib
lib_target=./scripts
# Shell targets 
bash_target=~/.bashrc
fish_target=~/.config/fish/config.fish
zsh_target=~/.zshrc

# Creating user files directory if not already exists
if ! [[ -d $final_target ]]; then
    if [[ -f $final_target ]]; then 
        rm $final_target
    fi
    mkdir -p $final_target
fi

source $lib_target/bash_sync.sh

bash_sync 