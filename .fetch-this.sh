#!/bin/bash

printf ">\n>\n> ${PWD##*/}: " &&
echo "$(PWD)" &&
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&
git fetch --all &&
git status &&
echo "merged:" &&
git branch -av --merged &&
echo "non-merged:" &&
git branch -av --no-merged &&
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&
printf "\n"
