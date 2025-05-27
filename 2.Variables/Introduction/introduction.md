📦 Introduction to Variables in Bash

In Bash scripting, variables are used to store values that can be referenced and manipulated throughout the script. A variable is simply a name given to a value, and you can use that name to retrieve or modify the value.
🧪 How to Declare a Variable

To declare a variable in Bash, you simply assign a value to a name. The syntax is straightforward:

variable_name="value"

    Important: There must be no spaces around the equal sign (=).

For example:

name="Alice"

In this case, we’ve created a variable called name and assigned it the value "Alice". To access the value of the variable, you use a dollar sign ($) before the variable name:

echo "Hello, $name"

This would output:

Hello, Alice

🗂️ How Bash Stores Variables

In Bash, variables are not typed like in many other programming languages (e.g., integers, strings). Instead, they are treated as strings by default.

When you assign a value to a variable in Bash, the shell stores the value in memory. This value can be used throughout the script or session. However, variables in Bash do not "remember" their type; they simply store the data as-is.

For instance:

age=25
echo "Age is $age"

Here, the age variable stores the numeric value 25, but it's treated as a string internally. Bash will treat it as a string unless an operation specifically treats it as a number.
⚠️ Common Mistakes with Variables
1. Space Around Equal Sign

One common mistake is to include spaces around the equal sign (=) when declaring a variable. Bash will not recognize the assignment if spaces are included.

# Incorrect syntax:
name = "Alice"    # This will not work

# Correct syntax:
name="Alice"

    Error Explanation: The incorrect syntax will result in an error because Bash treats the spaces as separate commands or arguments. You need to ensure there are no spaces around the equal sign.

2. Unquoted Variable Expansion

Another common issue is not quoting variables when they are expanded, especially when the variable may contain spaces or special characters.

# Incorrect syntax:
greeting="Hello World"
echo $greeting   # Will not print "Hello World" properly

# Correct syntax:
echo "$greeting"  # Properly prints "Hello World"

    Error Explanation: Without quotes, the $greeting might break into multiple words or lose its intended value if there are spaces or special characters in it.

3. Variable Not Initialized

If a variable is used before it’s initialized, it will be treated as an empty string, which can lead to unexpected results:

echo "Your age is $age"   # Will print: Your age is

In this case, the variable age was not initialized, so it defaults to an empty string.
🧑‍💻 Example of Working with Variables

Here’s a simple script using variables:

#!/bin/bash

# Declare variables
name="Alice"
age=30

# Display variable values
echo "Hello, $name!"
echo "Your age is $age."

# Modify variables
age=$((age + 1))

# Display updated age
echo "Next year, you'll be $age years old."

Output:

Hello, Alice!
Your age is 30.
Next year, you'll be 31 years old.

In this example:

    We created two variables: name and age.

    We modified the age variable using an arithmetic operation ($((age + 1))).

    Bash automatically treats age as a number for arithmetic purposes, even though it's still stored as a string internally.