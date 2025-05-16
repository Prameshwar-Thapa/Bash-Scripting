What is a Dictionary in Bash?
A dictionary in Bash (technically called an associative array) is a key-value pair collection where the keys are strings, not just numbers like in regular (indexed) arrays.

🆚 Indexed Array vs Associative Array
Feature	Indexed Array	Associative Array (Dictionary)
Keys (indices)	Numbers (0, 1, ...)	Strings ("name", "city")
Declared as	array=(a b c)	declare -A dict
Access elements by	array[0]	dict["key"]
Bash version needed	All versions	Bash 4.0 or newer

🚀 Prerequisites
You must be using Bash version 4.0 or higher to use associative arrays. They are not supported in older versions.

✅ How to check your Bash version:

Example output:

GNU bash, version 5.2.15(1)-release
If the major version is 4 or higher, you're good to go.

🛠️ How to Declare a Dictionary
You must use declare -A to create an associative array.

declare -A user
This tells Bash to treat user as an associative array.

