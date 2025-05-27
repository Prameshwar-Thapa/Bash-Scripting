Loops in Bash Scripting
Loops in Bash scripting are used to automate repetitive tasks. They allow a set of commands to be executed repeatedly based on conditions. Bash supports several types of loops: for, while, until, select, and loop control statements like break and continue.

📘 Table of Contents
For Loop

While Loop

Until Loop

Select Loop (for Menus)

Loop Control: break and continue

Looping Through Files, Arrays, and Commands

🔂 For Loop
✅ Syntax:

for var in list
do
  commands
done
🔸 Description:
Iterates over a list of values, executing commands for each item.

🔸 Examples:
Example 1: Loop over numbers


for i in 1 2 3 4 5
do
  echo "Number: $i"
done
Example 2: Loop using brace expansion

for i in {1..5}
do
  echo "Counting: $i"
done
Example 3: Loop over strings


for name in Alice Bob Charlie
do
  echo "Hello $name"
done
🔁 While Loop
✅ Syntax:

while [ condition ]
do
  commands
done
🔸 Description:
Executes the loop as long as the condition is true.

🔸 Examples:
Example 1: Basic counter


i=1
while [ $i -le 5 ]
do
  echo "i = $i"
  ((i++))
done
Example 2: Read file line-by-line


while read line
do
  echo "$line"
done < myfile.txt
Example 3: Wait for file to exist


while [ ! -f "ready.txt" ]
do
  echo "Waiting for file..."
  sleep 2
done
echo "File is ready!"
🔄 Until Loop
✅ Syntax:

Edit
until [ condition ]
do
  commands
done
🔸 Description:
Opposite of while. Executes until the condition becomes true.

🔸 Examples:
Example 1: Count until 5

i=1
until [ $i -gt 5 ]
do
  echo "i = $i"
  ((i++))
done
Example 2: Wait until file exists

until [ -f "done.txt" ]
do
  echo "Waiting for done.txt..."
  sleep 1
done
echo "done.txt is now available!"
Example 3: Keep pinging until host is reachable


until ping -c 1 example.com &> /dev/null
do
  echo "Waiting for network..."
  sleep 2
done
echo "Host is reachable!"
🔘 Select Loop
✅ Syntax:

select var in list
do
  commands
done
🔸 Description:
Generates a numbered menu from a list of items. Useful for user input.

🔸 Examples:
Example 1: Simple menu


select fruit in Apple Banana Orange Quit
do
  echo "You chose $fruit"
  [ "$fruit" = "Quit" ] && break
done
Example 2: File options

select file in *.sh
do
  echo "You selected: $file"
  break
done
Example 3: Menu with action


select option in "List files" "Disk usage" "Quit"
do
  case $option in
    "List files") ls ;;
    "Disk usage") df -h ;;
    "Quit") break ;;
    *) echo "Invalid option" ;;
  esac
done
⏹️ Loop Control
✅ Commands:
break: Exit the loop

continue: Skip the rest of the loop and go to the next iteration

🔸 Examples:
Example 1: Break on condition

for i in {1..10}
do
  if [ $i -eq 5 ]; then
    break
  fi
  echo "Number: $i"
done
Example 2: Continue on condition

for i in {1..5}
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo "i = $i"
done
Example 3: Break in while loop

count=0
while true
do
  ((count++))
  echo "Count: $count"
  [ $count -eq 3 ] && break
done
📂 Practical Looping
🔸 Loop through files in a directory

for file in /path/to/dir/*
do
  echo "File: $file"
done
🔸 Loop through an array

colors=("red" "green" "blue")
for color in "${colors[@]}"
do
  echo "Color: $color"
done
🔸 Loop through command output

Edit
for user in $(cut -d: -f1 /etc/passwd)
do
  echo "User: $user"
done
🧠 Summary
Loop Type	Description
for	Loop over lists, ranges, arrays
while	Loop while condition is true
until	Loop until condition is true
select	Create simple user menus
break	Exit loop early
continue	Skip current iteration

Loops are essential for automating tasks and processing data efficiently in Bash scripts.