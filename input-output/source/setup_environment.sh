#!/bin/bash
# setup_environment.sh

# Source the user's profile to ensure environment is loaded
if [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
    echo "Environment loaded successfully."
else
    echo "No profile found."
fi

# Now you can use any environment variable or alias
echo "Your PATH is: $PATH"
