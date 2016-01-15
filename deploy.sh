
#!/usr/bin/env bash
set -o errexit #abort if any command fails
clear

if  git commit | grep 'nothing to commit'
    then 
        echo "Found" 
    else 
        echo "Not found" 
fi;