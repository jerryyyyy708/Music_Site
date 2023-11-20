#!/bin/bash

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
    echo "No commit message provided"
    exit 1
fi

# Handling different ways of providing the message
if [ "$1" == "-m" ]; then
    MESSAGE="$2"
else
    MESSAGE="$1"
fi

# Executing the Git commands
git add .
git commit -m "$MESSAGE"
git push origin hugo_site