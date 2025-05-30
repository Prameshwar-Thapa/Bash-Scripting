✅ Syntax:

variable_name="global_value"
function_name() {
    echo "$variable_name"  # Accessible inside the function
}
❓ Why Is It Used?
To share values between functions and the main script.

Useful when the same data is needed across multiple scopes.

Helps maintain state across function calls.

🌟 Importance
Benefit	Explanation
🔄 Shared Data	Multiple functions can access and modify the same value
📦 Store App State	Ideal for configs, counters, user info, etc.
💡 Simplifies Simple Scripts	Good for small scripts where encapsulation isn’t needed