#!/bin/bash
# This script update remote repository^ github, gitlab, bitbucket
comment=$1
git add --all
git commit -m "$comment"
Green=\033[32m
git push origin_github --all
echo -e "${green}Github updated!${green}"
git push origin_gitlab --all
echo "Gitlab updated!${green}"
git push origin_bitbucket --all
echo "bitbucket updated!${green}"
