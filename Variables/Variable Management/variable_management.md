📚 Bash Scripting: Variable Management

In this section, we will explore how variables in Bash work, including:

    Default Value/ Data of a Variable

    Re-assigning a Variable with a New Value

    Unsetting/Clearing/Deleting a Variable

    Scope of Variables

Each concept is explained with practical examples and descriptions.
1️⃣ Default Value / Data of a Variable

In Bash, you can assign a default value to a variable. The default value is the initial data stored in the variable when it is first declared.

Example:

#!/bin/bash

# Declaring a variable with a default value
name="John Doe"   # cm: Default value
echo "Name is: $name"  # Output: Name is: John Doe

Explanation:

    The variable name is assigned a default value of "John Doe".

    The variable can be used or accessed at any point in the script after its declaration.

2️⃣ Re-assigning with a New Value

You can re-assign a new value to an existing variable. This is done by simply assigning a new value to the variable name.

Example:

#!/bin/bash

# Declaring a variable with an initial value
age=25
echo "Initial Age: $age"   # Output: Initial Age: 25

# Re-assigning a new value to the variable
age=30
echo "Updated Age: $age"   # Output: Updated Age: 30

Explanation:

    Initially, the variable age holds the value 25.

    We then re-assign the value 30 to age, effectively updating it.

    The updated value is then echoed.

3️⃣ Unsetting / Clearing / Deleting a Variable

You can unset, clear, or delete a variable using the unset command. This removes the variable from the environment, and it no longer exists.

Example:

#!/bin/bash

# Declaring a variable
city="New York"
echo "City before unset: $city"   # Output: City before unset: New York

# Unsetting the variable
unset city
echo "City after unset: $city"    # Output: (No output, variable is unset)

Explanation:

    The variable city is initially set to "New York".

    Using the unset command removes the city variable.

    After unsetting, trying to access the variable will result in no output, as the variable no longer exists.

4️⃣ Scope of Variables

The scope of a variable refers to where the variable is accessible. In Bash, variables have either a local scope (accessible only within a function or script) or a global scope (accessible throughout the script).
Global Scope Example:

#!/bin/bash

# Global variable
global_var="I am global"

# Function accessing global variable
function print_global {
  echo "Global variable is: $global_var"
}

print_global   # Output: Global variable is: I am global

Local Scope Example:

#!/bin/bash

# Global variable
global_var="I am global"

# Function with local variable
function print_local {
  local local_var="I am local"
  echo "Local variable inside function is: $local_var"
}

print_local   # Output: Local variable inside function is: I am local
echo $local_var   # Output: (No output, variable is not accessible outside the function)

Explanation:

    The variable global_var is declared globally, meaning it can be accessed anywhere in the script.

    In the second example, local_var is declared inside the function print_local using the local keyword, which means it is only accessible within the function.

    Trying to access local_var outside the function results in no output since it is not available outside the function's scope.