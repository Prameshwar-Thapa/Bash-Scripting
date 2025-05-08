📢 Introduction: What is export?

The export command in Bash is used to make a variable available to child processes (i.e., processes launched from your script or terminal).

When you export a variable:

    It is added to the environment.

    Any script or program you run from your shell will inherit that variable.

    It is useful for passing input to scripts automatically without asking the user interactively.

🖥️ Basic Syntax

export VARIABLE_NAME="value"

    VARIABLE_NAME: The name of the environment variable.

    "value": The value assigned to the variable.

⚙️ Why Export Variables?
Without export	With export
Variable exists only in current shell	Variable available to child processes
Not visible to scripts	Automatically passed to scripts
Lost after session ends	Only lasts during the session or shell
🛠️ Simple Example
1. Set and Export a Variable

export USER_NAME="James"

    Now, USER_NAME is available to all scripts and programs started from this terminal.

2. Access it in a Script

Create a script greet.sh:

#!/bin/bash
# greet.sh
# Script to greet user using environment variable

echo "Hello, $USER_NAME!"


🔥 Practical Real-World Use Case

You are writing a deployment script that requires AWS credentials.

Instead of typing credentials each time, you can export them once:

export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"

Now any script using AWS CLI or SDK will automatically pick these credentials from environment variables.

📋 Important Behavior of export
Situation	Behavior
Session ends	Exported variables are lost. (Only in that shell session.)
Use in child processes	Child processes inherit exported variables automatically.
Overwriting	You can export a new value any time.