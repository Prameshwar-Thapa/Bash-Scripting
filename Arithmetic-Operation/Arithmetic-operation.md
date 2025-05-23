Arithmetic Operations in Bash Scripting
Bash provides robust support for performing arithmetic operations directly within scripts, making it a powerful tool for automating tasks involving calculations. Arithmetic expressions in Bash can be evaluated using several methods, each with its own syntax and capabilities.

✅ Supported Operators
Bash supports the following basic arithmetic operators:

Operator	Description	Example
+	Addition	a + b
-	Subtraction	a - b
*	Multiplication	a * b
/	Division	a / b
%	Modulo (remainder)	a % b
**	Exponentiation	a ** b
++	Increment	((a++))
--	Decrement	((a--))

Note: Bash performs integer arithmetic only. For floating-point calculations, you must use external tools like bc or awk.

🔧 Methods for Performing Arithmetic
1. let Command
The let command evaluates arithmetic expressions.

bash
Copy
Edit
let a=5
let b=3
let result=a+b
echo "Result: $result"
2. (( )) – Arithmetic Expansion
Double parentheses allow cleaner syntax and can be used with or without let.

bash
Copy
Edit
a=5
b=3
result=$((a + b))
echo "Result: $result"
Variables can be used directly (without $).

Supports complex expressions and operator precedence.

3. $[ ] – Deprecated Style (Use $(( )) Instead)
bash
Copy
Edit
a=5
b=3
result=$[$a + $b]   # Deprecated
echo "Result: $result"
⚠️ Deprecated: Avoid using this in new scripts. Prefer $(( )) for clarity and future compatibility.

4. expr Command
An external command for basic arithmetic. Requires spaces between operands and operators.

bash
Copy
Edit
a=5
b=3
result=$(expr $a + $b)
echo "Result: $result"
⚠️ Slower than internal arithmetic. Quotes are needed if using *:
expr $a \* $b

5. Using bc for Floating-Point Arithmetic
bash
Copy
Edit
a=5.2
b=3.1
result=$(echo "$a + $b" | bc)
echo "Result: $result"