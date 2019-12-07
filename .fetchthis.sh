#!/bin/bash

printf ">\n>\n> ${PWD##*/}: " &&
echo "$(PWD)" &&
git fetch --all &&
git status &&
echo "merged:" &&
git branch -av --merged &&
echo "not merged:" &&
git branch -av --no-merged &&
printf "\n"
