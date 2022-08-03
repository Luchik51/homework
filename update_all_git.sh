#!/bin/bash
# This script update remote repository^ github, gitlab, bitbucket
comment=$1
git add --all
git commit -m "$comment"
Green="\033[0;32m"
git push origin_github --all
echo "${green}Github updated!"
git push origin_gitlab --all
echo "Gitlab updated!"
git push origin_bitbucket --all
echo "bitbucket updated!"
