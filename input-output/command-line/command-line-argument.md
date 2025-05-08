📢 Introduction

In Bash, command-line arguments allow you to pass input directly to your script at runtime.

    These arguments are automatically stored in special variables called positional parameters.

    This method is clean, quick, and does not require read or export.

    It’s ideal for automating scripts and making them reusable with different inputs.

🖥️ Basic Syntax

When running a Bash script:

./script_name.sh arg1 arg2 arg3

Inside the script:

    $0 → Name of the script itself

    $1 → First argument (arg1)

    $2 → Second argument (arg2)

    $3 → Third argument (arg3)

    ...

    $@ → All arguments as separate words

    $* → All arguments as a single string

    $# → Total number of arguments

📜 Example: Simple Usage
Script: greet.sh

#!/bin/bash
# greet.sh
# Using command-line arguments to provide input

first_name=$1
last_name=$2

echo "Hello, $first_name $last_name!"

✅ Here:

    $1 is assigned to first_name

    $2 is assigned to last_name

Running the Script

bash greet.sh Renu Thapa

Output:

Hello, Renu Thapa!

📦 Summary of Special Variables
Variable	Meaning
$0	Script name
$1, $2, etc.	First, second, ... arguments
$#	Number of arguments passed
$@	All arguments individually
$*	All arguments as a single string
🔥 Real World Example: Passing Database Connection Inputs

Script: connect_db.sh

#!/bin/bash
# connect_db.sh
# Accept database connection details via command-line

db_user=$1
db_pass=$2
db_name=$3

echo "Connecting to database '$db_name' as user '$db_user'..."
# Simulating database connection (just echo)

Running:

bash connect_db.sh admin secret123 mydatabase

Output:

Connecting to database 'mydatabase' as user 'admin'...

✅ No read, no export — fully automatic input!
