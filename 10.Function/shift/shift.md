✅ Syntax
bash
Copy
Edit
function_name() {
    # Initialization
    total=0

    # Loop through all arguments
    while [ $# -gt 0 ]; do
        total=$((total + $1))
        shift
    done

    echo $total
}

result=$(function_name 10 20 30)
echo "Result: $result"
❓ What is shift in Bash?
The shift command is used to move the positional parameters to the left. After calling shift, $2 becomes $1, $3 becomes $2, and so on. $# (number of arguments) decreases by one each time.

🎯 Why is shift Used?
✅ To iterate over function arguments without using for loops

✅ To consume and process each argument one-by-one

✅ To write cleaner, readable, and efficient code

🌟 Importance of Using shift
Benefit	Explanation
✅ Clean iteration	Allows loop-based argument processing
✅ No need for index variables	You just use $1 and shift instead of $1, $2, etc.
✅ Dynamic argument handling	Works with variable-length arguments
✅ Great for math and string operations	Especially when number of arguments is unknown