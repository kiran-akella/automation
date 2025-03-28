# Shell Scripting Guide 🐧

## 🔍 **Introduction**
Shell scripting is a powerful way to automate tasks in Unix/Linux systems using command-line interpreters like Bash, Zsh, or Sh. It helps users execute commands, automate workflows, and simplify system administration.

---

## 🏗️ **Why Use Shell Scripts?**
✅ Automate repetitive tasks  
✅ Simplify system administration  
✅ Improve efficiency and productivity  
✅ Schedule tasks using cron jobs  
✅ Process large amounts of data  

---

## 🖥️ **Basic Shell Script Structure**
A shell script is a file containing a sequence of commands executed by a shell interpreter.

### 📌 **Hello World Example**
```bash
#!/bin/bash
# This is a comment

echo "Hello, World!"
```
- `#!/bin/bash` → Shebang (specifies the shell interpreter)
- `echo` → Prints output to the terminal
- `#` → Comment symbol

Save the file as `script.sh` and run:
```bash
chmod +x script.sh  # Make it executable
./script.sh         # Execute the script
```

---

## 🔄 **Variables in Shell Scripts**
Variables store values and can be used throughout the script.

```bash
#!/bin/bash
NAME="Alice"
echo "Hello, $NAME!"
```
- `$VARIABLE` → Access a variable
- `"$VARIABLE"` → Best practice to prevent word splitting

### 📌 **Reading User Input**
```bash
#!/bin/bash
echo "Enter your name: "
read USERNAME
echo "Hello, $USERNAME!"
```

---

## ⚙️ **Conditional Statements**
### 📌 **If-Else Statement**
```bash
#!/bin/bash
NUMBER=10
if [ $NUMBER -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is 5 or less"
fi
```

| Operator | Meaning |
|----------|---------|
| `-eq`   | Equal to |
| `-ne`   | Not equal to |
| `-gt`   | Greater than |
| `-lt`   | Less than |
| `-ge`   | Greater than or equal to |
| `-le`   | Less than or equal to |

---

## 🔁 **Loops in Shell Scripts**
### 📌 **For Loop**
```bash
#!/bin/bash
for i in 1 2 3 4 5; do
    echo "Number: $i"
done
```

### 📌 **While Loop**
```bash
#!/bin/bash
COUNT=1
while [ $COUNT -le 5 ]; do
    echo "Count: $COUNT"
    COUNT=$((COUNT + 1))
done
```

---

## 🛠️ **Functions in Shell Scripts**
Functions allow code reuse and modularity.
```bash
#!/bin/bash
greet() {
    echo "Hello, $1!"
}
greet "Alice"
greet "Bob"
```
- `$1` → First argument passed to the function

---

## 📂 **Working with Files**
### 📌 **Check if a File Exists**
```bash
#!/bin/bash
FILE="test.txt"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
fi
```

| Operator | Meaning |
|----------|---------|
| `-f`   | File exists |
| `-d`   | Directory exists |
| `-r`   | Readable file |
| `-w`   | Writable file |
| `-x`   | Executable file |

---

## 📅 **Scheduling Shell Scripts**
### 📌 **Using Cron Jobs**
Cron jobs allow scheduled execution of scripts.
```bash
crontab -e
```
Example cron job (runs every day at 5 AM):
```bash
0 5 * * * /path/to/script.sh
```

---
