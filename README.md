# System Maintenance Script

## Description

This script performs essential system maintenance tasks such as cleaning temporary files, package cache, and removing unnecessary packages. Additionally, it updates the system to ensure that all packages are up to date.

## Usage

To integrate this script into your Zsh configuration, follow these steps:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/tizimotta/System-Maintenance-Script.git
    cd system_maintenance_Script
    ```

2. **Add the script to your Zsh configuration:**

    Append the contents of the script to your Zsh configuration file (`~/.zshrc`):

    ```bash
    cat maintenance.sh >> ~/.zshrc
    ```

3. **Reload your Zsh configuration:**

    Close your current terminal session and open a new one to apply the changes.

4. **Run the maintenance command:**

    You can now run the maintenance script by simply typing `zzz` in your terminal:

    ```bash
    zzz
    ```

    > **Note:** You might need to run the script with `sudo` to ensure it has the necessary permissions to clean package caches and update the system.

## Script Details

### Colors for Output

The script uses colors to make the output more readable:

- **YELLOW:** Informational messages
- **GREEN:** Success messages
- **RED:** Error messages
- **NC:** No color (reset)

### Cleaning Temporary Files

The script checks if the `/tmp` directory exists. If it does, it deletes all temporary files within this directory.

### Cleaning Package Cache

The script cleans the package cache using `apt-get clean` and `apt-get autoclean` commands.

### Removing Unnecessary Packages

It removes unnecessary packages using `apt-get autoremove -y`.

### Updating the System

The script updates the system using `apt update` and `apt upgrade -y`. It checks the exit status of the update command and prints a success or error message based on the result.

## Contributing

If you have any suggestions or improvements, feel free to create an issue or submit a pull request.

## Author

- **Tiziano Motta** - [tizimotta](https://github.com/tizimotta)

