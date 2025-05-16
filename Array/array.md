# Bash Scripting: Understanding Arrays

Arrays in Bash are a powerful way to group and manage data efficiently. This README provides a comprehensive overview of arrays in Bash scripting, including declaration, access, manipulation, and common operations.

---

## 📌 What is an Array in Bash?

An **array** is a variable that holds multiple values at once. Unlike some programming languages, Bash supports **indexed arrays** (numerical index) and **associative arrays** (string keys, available in Bash 4.0+).

---

## 🔢 Declaring Indexed Arrays

# Declare an array explicitly
fruits=("apple" "banana" "cherry")

# Add elements individually
fruits[3]="mango"

# Declare an empty array
my_array=()
my_array[0]="value1"
my_array[1]="value2"


🔍 Why declare -A is necessary
By default, Bash arrays are indexed arrays, meaning their keys are numeric (0, 1, 2, …). If you want to use string keys, you must explicitly tell Bash that you're creating an associative array, and that’s what declare -A does.

✅ Example:
# Declare an associative array
declare -A capitals

# Assign string keys and values
capitals[France]="Paris"
capitals[Japan]="Tokyo"

# Access using string keys
echo ${capitals[France]}   # Output: Paris
Without declare -A, Bash wouldn't treat France and Japan as valid keys and would likely result in incorrect behavior or errors.