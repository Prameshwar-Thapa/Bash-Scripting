⚙️ Conditional Operations in Bash Scripting
Conditional operations in Bash scripting allow scripts to make decisions based on logic. These are essential for control flow, enabling branching with if, elif, else, and case statements. Bash supports several types of conditional checks, including comparisons for numbers, strings, and file attributes.

🔹 1. Syntax of if Statements

if [ condition ]; then
    # commands
elif [ another_condition ]; then
    # commands
else
    # commands
fi
Or using double parentheses for arithmetic expressions:

if (( condition )); then
    # commands
fi
🔹 2. Numeric Comparison Operators
Use these operators inside [ ] or (( )):

Operator	Description	Example
-eq	Equal to	[ "$a" -eq "$b" ]
-ne	Not equal to	[ "$a" -ne "$b" ]
-gt	Greater than	[ "$a" -gt "$b" ]
-lt	Less than	[ "$a" -lt "$b" ]
-ge	Greater than or equal	[ "$a" -ge "$b" ]
-le	Less than or equal	[ "$a" -le "$b" ]

Example:

a=5
b=10
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi
🔹 3. String Comparison Operators
Operator	Description	Example
=	Equal	[ "$a" = "$b" ]
!=	Not equal	[ "$a" != "$b" ]
<	Less than (lexicographically)	[ "$a" \< "$b" ]
>	Greater than (lexicographically)	[ "$a" \> "$b" ]
-z	String is empty	[ -z "$a" ]
-n	String is not empty	[ -n "$a" ]

Example:

str="hello"
if [ -n "$str" ]; then
    echo "String is not empty"
fi
🔹 4. File Condition Operators
Operator	Description
-e	File exists
-f	Regular file
-d	Directory
-s	File is not empty
-r	File is readable
-w	File is writable
-x	File is executable

Example:

file="example.txt"
if [ -f "$file" ]; then
    echo "File exists and is a regular file"
fi
🔹 5. Logical Operators
Operator	Description	Example
&&	AND	[ "$a" -gt 0 ] && [ "$b" -gt 0 ]
`		`
!	NOT	if ! [ "$a" -eq 0 ]; then

🔹 6. [[ ... ]] Advanced Test
[[ ... ]] is preferred in modern Bash.

No need to escape <, >.

Supports pattern matching with == and =~.

Example:
word="hello"
if [[ $word == h* ]]; then
    echo "Starts with h"
fi
🔹 7. case Statement
Used for multi-way branching.


read -p "Enter a fruit: " fruit

case $fruit in
    apple) echo "You chose Apple." ;;
    banana) echo "You chose Banana." ;;
    *) echo "Unknown fruit." ;;
esac
🔹 8. Example: Login Checker

read -p "Enter username: " user
if [[ "$user" == "admin" ]]; then
    echo "Access granted"
else
    echo "Access denied"
fi
