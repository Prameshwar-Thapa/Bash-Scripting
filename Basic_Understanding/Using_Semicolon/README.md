# 📘 Using Semicolons (`;`) in Bash Scripting

In Bash scripting, a **semicolon (`;`)** is used to separate multiple commands on a single line. This allows you to run multiple commands in sequence, even if they’re written on the same line.

---

## 🧠 Why Use a Semicolon?

- To shorten scripts by placing commands on one line.
- To make one-liners in terminal more readable.
- To execute multiple commands sequentially.

---

## 🧪 Example: Script Using Semicolons

Let’s write a script that:

1. Prints a welcome message.
2. Lists all files in the current directory.
3. Prints a completion message.

#!/bin/bash

echo "Welcome to my script"; ls; echo 
💾 Save & Make Executable
vim semicolons.sh
Give execute permission:

chmod +x semicolons.sh

▶️ Run the Script

./semicolons.sh

✅ Expected Output (example)

Welcome to my script
Desktop  Documents  Downloads  hello.sh  semicolons.sh
✅ All done!
