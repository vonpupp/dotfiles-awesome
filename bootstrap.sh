#!/bin/sh
DIRNAME=`dirname $0`

git submodule init
git submodule update

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME
