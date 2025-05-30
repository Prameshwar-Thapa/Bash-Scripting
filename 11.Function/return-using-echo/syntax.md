✅ Syntax
bash
Copy
Edit
function_name() {
    echo "your return value"
}

output=$(function_name)
echo "Returned: $output"
echo is used to output a value from the function.

$(...) captures the echoed value into a variable.

🎯 Why It Is Used
In Bash, functions do not return values like in Python or JavaScript. The return keyword in Bash is only for exit status codes (0–255), not data. To return a value such as a number, string, or computed result, we use echo.

🌟 Importance of Using echo to Return Values
Reason	Description
✅ Modular scripting	You can build small reusable functions that output results
✅ Value capturing	Enables assigning function outputs to variables
✅ Supports composition	You can pass output between functions
✅ Script automation	Required when extracting values from logic or commands