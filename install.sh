#!/bin/bash

declare -a DOT_FILES=$(find . -maxdepth 1 -type f -name '.*' ! -name '*.swp' ! -name '.git' -exec basename {} \;)

print_question() {
    printf "\e[0;33m  [?] $1\e[0m"
}

request_confirmation() {
    print_question "$1 (y/n) "
    read -n 1
    printf "\n"
}

answered_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

print_success() {
    printf "\e[0;32m  [✔] $1\e[0m\n"
}

print_error() {
    printf "\e[0;31m  [✖] $1 $2\e[0m\n"
}

main() {
    for file in $DOT_FILES; do
        source_file="$(pwd)/$file"
        target_file="$HOME/$file"

        if [ -e "$target_file" ]; then
            if [ "$(readlink "$target_file")" != "$source_file" ]; then
                request_confirmation "'$target_file' already exists; do you want to overwrite it?"
                if answered_yes; then
                    rm -rf "$target_file"
                    ln -fs "$source_file" "$target_file" && print_success "$target_file → $source_file"
                else
                    print_error "$target_file → $source_file"
                fi
            else
                print_success "$target_file → $source_file"
            fi
        else
            ln -fs "$source_file" "$target_file" && print_success "$target_file → $source_file"
        fi
    done

    if ! grep -q bash_profile $HOME/.bashrc; then
        echo >> $HOME/.bashrc
        echo '[ -n "$PS1" ] && source ~/.bash_profile' >> $HOME/.bashrc
    fi
}

main
