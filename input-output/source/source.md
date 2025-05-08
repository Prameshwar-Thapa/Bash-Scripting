📢 What is source?

The source command in Bash is used to read and execute commands from a file in the current shell environment, without starting a new shell.

Alternate syntax: You can also use . filename (dot space filename).

It is commonly used for:

    Setting environment variables

    Loading configuration files

    Reading user inputs from a file into variables

🖥️ Basic Syntax

source filename

or

. filename

    filename must be a valid Bash script or file containing variable assignments.

⚡ How to Use source to Read Variables

    Create a file with variable assignments.

    Use source to load that file into your script.

🛠️ Practical Example
1. Create an input file: user_input.sh

# user_input.sh
first_name="Renu"
last_name="Thapa"
email="renu@example.com"

    📄 Important:
    Each line should be proper Bash syntax (i.e., key="value").

2. Main Script: main_script.sh

#!/bin/bash
# main_script.sh
# Script to source user inputs from another file

# Source the file
source user_input.sh

# Now the variables are available in this script
echo "First Name: $first_name"
echo "Last Name: $last_name"
echo "Email: $email"

📦 Key Points to Remember
Feature	Description
Same Shell	source loads variables into the current shell (no new process).
Variable Override	If the sourced file reassigns variables, your original variables get overwritten.
File Permissions	The sourced file does not need execute permission (chmod +x) — it's just read.
Syntax Matters	The sourced file must be valid Bash syntax (no typos).
Paths	Always use absolute or relative path correctly if sourcing files from different folders.
🔥 Why Use source Instead of read?
read	source
Takes input interactively from user	Reads pre-written inputs from a file
Used during script execution (user must be present)	Useful for automation without manual typing
One line input at a time	Multiple variables at once
📖 Real World Use Cases

    Loading user profiles (~/.bash_profile, ~/.bashrc)

    Reading environment variables before running a script

    Loading configuration values

    Separating data (inputs) from logic (scripts)