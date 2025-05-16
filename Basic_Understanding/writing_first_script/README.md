# My First Bash Script

This project demonstrates how to write and execute a basic Bash shell script on Ubuntu.

## 🛠️ Prerequisites

- Ubuntu or any Linux distribution with Bash installed
- Terminal access

## 📝 Steps to Create and Run the Script

### 1. Create a New File

Open your terminal and create a new file named `hello.sh`:

```bash
vim hello.sh

 Add the Following Script

Paste the code below into the file:

#!/bin/bash

echo "Hello, World!"

📘 Explanation:

    #!/bin/bash: Tells the system to run this script using the Bash shell.

    echo: Prints text to the terminal.

💾 Save and exit:

    Press esc :wq

    

3. Make the Script Executable

Give the script permission to run:

chmod +x hello.sh

4. Run the Script

Now run the script with:

./hello.sh

✅ Expected Output

Hello, World!
