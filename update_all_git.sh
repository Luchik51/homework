#!/bin/bash
# This script update remote repository^ github, gitlab, bitbucket
comment=$1
git add --all
git commit -m "$comment"
Green=\033[32m
git push origin_github --all
echo -e "\033[32mGithub updated!\033[m"
git push origin_gitlab --all
echo -e "\033[32mGitlab updated!\033[m"
git push origin_bitbucket --all
echo -e "\033[32mbitbucket updated!\033[m"
