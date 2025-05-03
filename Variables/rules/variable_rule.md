📘 Rules to Define Variables in Bash

In Bash scripting, defining variables follows specific rules to ensure they are properly created and used. This section outlines the key rules, along with practical examples to help you avoid common mistakes.
✅ Basic Syntax

variable_name=value

    ❗ No spaces before or after the = sign.

🧠 Rules for Defining Variables
1. Variable names must start with a letter or underscore

    It cannot start with a number or special character.

name="Alice"        # ✅ valid
_name="Hidden"      # ✅ valid
1name="Error"       # ❌ invalid: starts with a number

2. Use only letters, numbers, and underscores (_)

    No special characters like @, !, %, - allowed.

user_name="Bob"     # ✅ valid
user-name="Bob"     # ❌ invalid: dash not allowed

3. No spaces around =

    Adding spaces will result in an error or command not found.

age=30              # ✅ valid
age = 30            # ❌ invalid

4. Use quotes for strings with spaces

    Strings with spaces should be enclosed in double or single quotes.

city="New York"     # ✅ valid
greeting=Hello World    # ❌ invalid: unquoted space
greeting="Hello World"  # ✅ valid

5. Access variables using $ prefix

    To print or use a variable, prefix it with a $.

name="Sam"
echo $name         # ✅ outputs: Sam

6. Case-sensitive variable names

    Name, NAME, and name are treated as three different variables.

name="jack"
Name="john"
echo $name         # Outputs: jack
echo $Name         # Outputs: john

7. Use curly braces {} for clarity (especially in strings)

    Helps avoid ambiguity when combining variables with text.

fruit="apple"
echo "I have an ${fruit}pie."    # ✅ Outputs: I have an applepie

8. Avoid using reserved Bash keywords

    Keywords like if, then, fi, for should not be used as variable names.

if="bad"            # ❌ not recommended