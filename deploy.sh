#!/usr/bin/env bash
set -o errexit #abort if any command fails
STATUS='git status'
if $STATUS | grep -q "Changes not staged for commit"
    then
        echo "The are changes that are not staged for commit. Are you sure you would like to ignore the changes and continue commiting? (y/n) "
        read ANSWER
        if [ "$ANSWER" == "y" ]
            then
                clear
                echo "Please enter a commit message: "
                read -e MESSAGE
                git commit -m "$MESSAGE"
            else
                clear
                echo "Please review the following status and fix the pending items to be committed. "
                echo
                git status
        fi;
elif $STATUS | grep -q "Changes to be committed"
    then
        echo "Please enter a git commit message: "
        read message
        git commit -m $message
else
    echo "Wrong."
fi;