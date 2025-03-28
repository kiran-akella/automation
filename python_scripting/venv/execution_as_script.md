# executing python as script

### usage : /path/to/file/filename.py
```bash
/home/kiran/app.py
```
### prerequisite

Script will be executed only when we provide the shebang line of python in the initial lines of code.

### Advantage

Instead of providing global python interpreter such as `#! /usr/bin/python`, we can use the isolated virtual environment by specifying it's absolute path : `#! /home/kiran/env/bin/python`. Thus we dont need to activate the `venv` prior. 

**pwd**
```output
/home/kiran
```
**ls -lrt**
```output
total 8
drwxrwxr-x 5 kiran kiran 4096 Mar 28 09:47 env
-rwxr-xr-x 1 kiran kiran 1079 Mar 28 09:57 app.py
```

#### cat app.py

```python
#! /home/kiran/env/bin/python

from flask import Flask, Response
import time

app = Flask(__name__)

# This function will yield file contents in chunks to simulate continuous streaming
def generate_file_content(file_path):
    try:
        with open(file_path, 'r') as f:
            while True:
                # Read a chunk of data from the file
                line = f.readline()
                
                # If there is content, yield it to the response
                if line:
                    yield line
                else:
                    # Wait for the file to be updated or new content to be written
                    time.sleep(1)
    except FileNotFoundError:
        yield "File not found.\n"

@app.route('/ssh_log')
def stream_file():
    file_path = "/var/log/auth.log"  # Replace this with the actual file path
    return Response(generate_file_content(file_path), content_type='text/plain;charset=utf-8')


if __name__ == '__main__':
    #app.run(debug=True, threaded=True)
    app.run(host="0.0.0.0", port=50100, debug=True, threaded=True)

```
