#!/bin/bash
# 1. Default Value /Data of a Variable
name="Prameshwar Thapa"
echo "The default user name is : ${name}"

# Re-assigning a Variable
name="Jane Smith"
echo "The default user name has been chanaged to : ${name}"

#3. Unseetting/clearing/Deleting a variable
unset name
echo "value of 'name' is deleted : ${name}"

#4. Scope of varibale
global_scope="I am global"

# cm: Defining a function to demonstrate local and global scope
print_scope() {
  # cm: Local variable inside function
  local local_var="I am local"

  echo "Inside function:"
  echo "Global Variable: $global_var"    # cm: Accessible
  echo "Local Variable: $local_var"      # cm: Accessible
}

# cm: Calling the function
print_scope

# cm: Outside the function
echo "Outside function:"
echo "Global Variable: $global_var"        # cm: Still accessible
echo "Local Variable: $local_var" 