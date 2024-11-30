## Setting Up the Environment

To set up the environment for automated project creation and compilation, follow these steps:

---

### Step 1: Clone the Repository

1. Open a terminal.
2. Clone the repository into a directory of your choice:
   ```bash
   git clone <repository-url> ~/dev/project-automation
   ```
3. Navigate to the cloned repository:
   ```bash
   cd ~/dev/project-automation
   ```

---

### Step 2: Make the Script Executable

1. Ensure the `create_project.sh` script is executable:
   ```bash
   chmod +x create_project.sh
   ```

2. Test the script by running:
   ```bash
   ./create_project.sh
   ```
   If the script executes, you’re ready to proceed.

---

### Step 3: Configure an Alias

1. Add an alias to your shell configuration file for easier usage:
   ```bash
   alias gcc_new_project='~/dev/project-automation/create_project.sh'
   ```

2. Edit the shell configuration file:
   - For **Zsh** users:
     ```bash
     nano ~/.zshrc
     ```
   - For **Bash** users:
     ```bash
     nano ~/.bashrc
     ```

3. Append the alias line:
   ```bash
   alias gcc_new_project='~/dev/project-automation/create_project.sh'
   ```

4. Save the file and exit (`CTRL+O` and `CTRL+X` in Nano).

---

### Step 4: Apply the Changes

1. Reload the shell configuration to activate the alias:
   ```bash
   source ~/.zshrc  # For Zsh
   source ~/.bashrc # For Bash
   ```

2. Verify the alias is set:
   ```bash
   alias
   ```
   You should see `gcc_new_project` listed.

---

### Step 5: Test the Setup

1. Run the command to create a test project:
   ```bash
   gcc_new_project test_project
   ```
2. Verify the project structure:
   ```plaintext
   ~/dev/projects/test_project/
   ├── build/          # Directory for generated files (objects and executables)
   ├── include/        # Directory for header files (*.h)
   ├── src/            # Directory for source code (*.c or *.cpp)
   └── Makefile        # Configured Makefile