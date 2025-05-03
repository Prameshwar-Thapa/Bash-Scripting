In Bash scripting, variables can be classified into three main types based on how they are defined and where they come from:

    User-defined Variables

    System-defined Variables (Environment Variables)

    Special Variables (Predefined by Shell)

This guide explains each type with examples and code comments (# cm:) to help you understand their behavior.
🔹 1. User-defined Variables

These are variables that you create and assign values to in your script.

#!/bin/bash

# cm: User-defined variable
username="john_doe"
greeting="Welcome to Bash scripting, $username!"
echo "$greeting"

    What it does: You define the variable username, assign a value, and use it in a string.

    Scope: By default, user-defined variables are local to the script unless exported.

🔹 2. System-defined Variables (Environment Variables)

These are variables that are defined and managed by the system or shell environment.

#!/bin/bash

# cm: Using system-defined variables
echo "Current User: $USER"         # cm: Who is running the script
echo "Home Directory: $HOME"       # cm: Home directory of the user
echo "Shell in Use: $SHELL"        # cm: Default shell for the user
echo "Present Working Directory: $PWD" # cm: Current directory

    Common examples:

        $USER: Current logged-in user

        $HOME: User's home directory

        $PATH: Directories to search for executables

        $PWD: Present working directory

    Usage: Often used to access environment-specific information in scripts.

🔹 3. Special Variables (Predefined by Bash)

These are reserved variables that have special meanings or functionalities in Bash.

#!/bin/bash

# cm: Special Bash variables

echo "Script Name: $0"       # cm: Name of the script
echo "First Argument: $1"    # cm: First argument passed to the script
echo "Total Arguments: $#"   # cm: Number of arguments
echo "All Arguments: $@"     # cm: All arguments
echo "Process ID: $$"        # cm: PID of the current script
echo "Last Command Exit Status: $?" # cm: Status of last executed command

    Description of common special variables:

Variable	Description
$0	Script name
$1, $2, ...	Positional arguments
$@, $*	All arguments passed to the script
$#	Number of arguments
$$	PID of the current shell
$?	Exit status of the last command
$!	PID of the last background process

Usage: Useful for scripting logic, argument parsing, status checking, and process control.