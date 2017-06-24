#!/bin/bash
#
# fix_virtualenv_location.sh
#
# Author: Gary M. Josack <gary@byoteki.com>
# Repository: https://github.com/gmjosack/scripts
# License: MIT
#
# This is a simple script to clean up links and references in a
# python virtualenv that has been relocated.

function wrap_color(){
    local red="\e[31m"
    local blue="\e[34m"
    local reset="\e[0m"

    local color="$1"; shift
    local data="$*"
    local output=""

    case "$color" in
        red)  output="${red}${data}${reset}" ;;
        blue) output="${blue}${data}${reset}" ;;
        *)    output="${data}" ;;
    esac

    echo "$output"
}


function log(){
    local name="$1"
    local line="$2"
    local stream="${3:-stdout}"
    local color="$4"

    local msg="[$name] $line"
    [[ -n "$color" ]] && msg=$(wrap_color "$color" "$msg")

    if [[ "$stream" == "stderr" ]]; then
        echo -e $msg 1>&2
    else
        echo -e $msg
    fi
}


function info(){
    log "info" "$*" "stdout" "blue"
}


function err(){
    log "error" "$*" "stderr" "red"
}


function die(){
    err "$*"
    exit 1
}


function abspath(){
    echo $(cd "$1"; pwd)
}


function is_absolute(){
    [[ "${1:0:1}" == "/" ]] && return 0 || return 1
}


function add_trailing_slash(){
    [[ "${1:(-1)}" == "/" ]] && echo "$1" || echo "$1/"
}


function rm_trailing_slash(){
    [[ "${1:(-1)}" == "/" ]] && echo "${1:0:-1}" || echo "$1"
}


function usage(){
    local preamble="$1"
    local prog=$(basename $0)

    [[ -n "$preamble" ]] && err "${preamble}\n"
    echo "Usage: ${PROG} <old_path> <new_path> <virtualenv>"
    echo "  <old_path>   - The name of the old path where the virtualenv existed. This"
    echo "                 location does not need to exist. Must be absolute."
    echo "  <new_path>   - The name of the new path where the virtualenv will exist. This"
    echo "                 location does not need to exist. Must be absolute."
    echo "  <virtualenv> - The path of the virtualenv to modify."

    exit 1
}


function fix_bad_symlinks(){
    local old_path="$1"
    local new_path="$2"
    local search_path="$3"

    info "Fixing symlinks..."
    for symlink in $(find "$search_path" -type l); do
        local value=$(readlink "${symlink}")
        if [[ "$value" == *"$old_path"* ]]; then
            info "Found $symlink pointing $value. Correcting..."
            ln -sTf "${value/$old_path/$new_path}" "$symlink"
        fi

    done
}


function purge_pycs(){
    local search_path="$1"

    info "Purging the following *.pyc files..."
    find -P "$search_path" -type f -name "*.pyc" -printf "\t%p\n" -exec rm -f {} \;
}


function rename_refs(){
    local old_path=$(rm_trailing_slash "$1")
    local new_path=$(rm_trailing_slash "$2")
    local search_path=$(rm_trailing_slash "$3")

    local old_pattern="${old_path}(/|\"|$|')"
    local new_pattern="${new_path}(/|\"|$|')"

    info "Replacing references of ${old_path} with ${new_path}..."

    for file in $(find -P "${search_path}" \! -type l -type f | xargs grep -El "$old_pattern" | xargs grep -lv "$new_pattern"); do
        [[ -L "$file" ]] && continue  # Ignore symlinks.
        file -b "$file" | grep -vq ASCII && continue  # Skip non-ascii files.
        info "Updating ${file}"
        sed -i -e "s:${old_path}:${new_path}:g" "$file"
    done
}

function main(){
    [[ "$#" -eq 3 ]] || usage "Invalid number of parameters."

    local old_path="$1"
    local new_path="$2"
    local virtualenv="$3"

    virtualenv=$(abspath "$virtualenv")

    old_path=$(add_trailing_slash "$old_path")
    new_path=$(add_trailing_slash "$new_path")
    virtualenv=$(add_trailing_slash "$virtualenv")

    # Simple sanity checks that the path exists and
    # appears to be a virtual env.
    is_absolute "$old_path" || usage "$old_path is not absolute."
    is_absolute "$new_path" || usage "$new_path is not absolute."
    [[ -d "$virtualenv" ]] || usage "No such directory: ${virtualenv}"
    [[ -f "$virtualenv/bin/activate" ]] || usage "Doesn't appear to be a virtualenv: ${virtualenv}"

    fix_bad_symlinks "$old_path" "$new_path" "$virtualenv"
    purge_pycs "$virtualenv"
    rename_refs "$old_path" "$new_path" "$virtualenv"

}
main "$@"
