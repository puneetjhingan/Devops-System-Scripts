# Devops-System-Scripts
A collection of useful DevOps automation and system health monitoring scripts written in Python and Linux shell. This repository is designed to help system administrators, DevOps engineers, and developers automate routine tasks, monitor system performance, and maintain server health efficiently.

---

## Features

- Python scripts for checking CPU, memory, disk usage, and more using `psutil`.
- Linux shell scripts** for common system administration and automation tasks.
- Easy to customize and extend for your environment.
- Ideal for learning, quick automation, or integrating into your DevOps workflows.

---

## Folder Structure
```
├── LICENSE
├── linux-scripts
├── python-scripts
└── README.md
```

---

## Getting Started with Python 3 in VS Code

1. Install Python 3 on your system if not already installed.

2. Open the project folder in VS Code.

3. Select the Python 3 interpreter (Recommended):

   - Open the Command Palette with ctrl + backtick
   - Search for and select **Python: Select Interpreter**
   - Choose the interpreter located in `.venv/bin/python` (if you created a virtual environment), or your system Python 3 interpreter.

4. Create and activate a virtual environment (optional but recommended):

   Open the VS Code terminal and run:

   ```bash
   python3 -m venv .venv
   source .venv/bin/activate>
   ```

5. Install Python dependencies (psutil):
  Ensure there is a `requirements.txt` file inside `python-scripts/` with the necessary packages, like:
  Then install them with:
  ```bash```
  pip install -r python-scripts/requirements.txt
  Run your Python scripts inside the VS Code terminal:
 ``` python python-scripts/your-script.py```

---
Happy Automating! 🚀


