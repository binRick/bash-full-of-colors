#!/bin/bash
set -e
cd $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ $# -eq 0 ]; then
     echo -e "Usage:\n$0 user@host"
     exit 1
fi

rsync bashrc.sh $1:~/.bashrc
rsync bash_profile.sh $1:~/.bash_profile
rsync bash_aliases.sh $1:~/.bash_aliases
rsync bash_logout.sh $1:~/.bash_logout
