#!/bin/bash
set -eo pipefail

TEMPLATE_DIR=py-template-project

replace_str(){
    declare projname="$1"
    grep -rl '__project-name__' "$TEMPLATE_DIR" | \
       xargs sed -i "s/__project-name__/$projname/g"
}

mv_files(){
    declare projname="$1"
    mv "$TEMPLATE_DIR"/project_name "$TEMPLATE_DIR"/"$projname"
    mv "$TEMPLATE_DIR" "$projname"
}

del_files(){
    declare projname="$1"
    rm -rf "$projname"/.git
    rm -f "$projname"/rename.sh
}

main(){
    declare projname="$1"
    replace_str "$projname"
    mv_files "$projname"
    del_files "$projname"
    git init "$projname"
}

main "$@"
