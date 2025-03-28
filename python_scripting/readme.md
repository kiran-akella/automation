# Python Scripting Guide 🐍

## 🔍 **Introduction**
Python scripting is widely used for automation, data processing, web development, and more. With its simplicity and vast ecosystem of libraries, Python is an excellent choice for scripting tasks.

---

## 🏗️ **Why Use Python for Scripting?**
✅ Easy to learn and write  
✅ Cross-platform compatibility  
✅ Extensive standard library  
✅ Ideal for automation and data manipulation  
✅ Large community support  

---

## 🖥️ **Basic Python Script Structure**
A Python script is a file containing Python code, typically saved with a `.py` extension.

### 📌 **Hello World Example**
```python
#!/usr/bin/env python3  # Shebang to specify Python interpreter
# This is a comment

print("Hello, World!")
```
Run the script:
```bash
python3 script.py
```

---

## 🔄 **Variables and Data Types**
```python
name = "Alice"  # String
age = 25        # Integer
height = 5.7    # Float
is_python_dev = True  # Boolean

print(f"Name: {name}, Age: {age}, Height: {height}, Developer: {is_python_dev}")
```

---

## 🔁 **Conditional Statements**
```python
age = 18
if age >= 18:
    print("You are an adult.")
else:
    print("You are a minor.")
```

---

## 🔄 **Loops in Python**
### 📌 **For Loop**
```python
for i in range(1, 6):
    print(f"Number: {i}")
```

### 📌 **While Loop**
```python
count = 1
while count <= 5:
    print(f"Count: {count}")
    count += 1
```

---

## 🛠️ **Functions in Python**
```python
def greet(name):
    return f"Hello, {name}!"

print(greet("Alice"))
```

---

## 📂 **Working with Files**
### 📌 **Reading a File**
```python
with open("file.txt", "r") as file:
    content = file.read()
    print(content)
```

### 📌 **Writing to a File**
```python
with open("file.txt", "w") as file:
    file.write("Hello, Python!")
```

---

## 📅 **Automating Tasks with Python**
### 📌 **Executing System Commands**
```python
import os
os.system("ls -l")
```

### 📌 **Scheduling a Script (Linux - Cron Job)**
```bash
crontab -e
```
Example cron job (runs every day at 5 AM):
```bash
0 5 * * * /usr/bin/python3 /path/to/script.py
```

---

## 🌐 **Web Scraping with Python**
```python
import requests
from bs4 import BeautifulSoup

response = requests.get("https://example.com")
soup = BeautifulSoup(response.text, "html.parser")
print(soup.title.text)
```

---
