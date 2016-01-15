#!/usr/bin/env bash
set -o errexit #abort if any command fails

if git commit
    then
        echo "Please enter a git commit message: "
        read message
        git commit -m $message
    else
        echo "Wrong."
fi;