#!/usr/bin/env bash
# ------------------------------------------------------------------
# Author: Tony Benoy
# ------------------------------------------------------------------

# https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
authorization=""
#Github username
username=""
# My project path 
myprojectpath=""
curl -X POST -v "https://api.github.com/repos/$2/$1/forks" -H "authorization: bearer $authorization"
sleep 5
cd $myprojectpath
git clone git@github.com:"$username"/"$1".git
cd $myprojectpath/"$1"
git remote add upstream git@github.com/"$2"/"$1"
