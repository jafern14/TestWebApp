#!/usr/bin/env bash
set -o errexit #abort if any command fails
STATUS=(git status)
echo $STATUS
if $STATUS | grep -q "Changes not staged for commit";
    then
        echo "The are changes that are not staged for commit. Please resolve first."
        echo $STATUS
elif $STATUS | grep -q "Changes to be committed";
    then
        echo "Please enter a git commit message: "
        read message
        git commit -m $message
else
    echo "Wrong."
fi;