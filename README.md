# Documentation for AutoHotkey Script

This documentation will guide the user through the use of the provided AutoHotkey script, explaining its purpose, functionality, and usage instructions.

## AutoHotkey Script for Managing Dragon NaturallySpeaking

### Purpose
This script automates closing and reopening Dragon NaturallySpeaking and enabling the microphone using simple keyboard shortcuts. It also ensures that the script always runs with administrative privileges, which is necessary for interacting with background processes.

### System Requirements
- **Operating System**: Windows
- **Software**: 
  - Dragon NaturallySpeaking 15 installed.
  - AutoHotkey (v1.1.26+ for running `.ahk` script).

Alternatively, the script can be compiled into an executable (`.exe`), in which AutoHotkey does not need to be installed on the user's system.

### How to Use
1. **Script Setup**:
   - If AutoHotkey is installed, simply run the `.ahk` file.
   - If not installed, use the compiled `.exe` version of the script. (AutoHotkey is not required to run the `.exe` file.)

2. **Keyboard Shortcuts**:
   - **Alt + Shift + D** (`!+d`): This combination closes Dragon NaturallySpeaking and all related processes.
   - **Alt + Shift + R** (`!+r`): This combination reopens Dragon NaturallySpeaking and automatically enables the microphone after a brief delay.

### Features
1. **Run as Administrator**:
   - The script checks if it's running with administrative privileges. If not, it restarts itself with admin rights automatically. This is crucial for managing system processes like Dragon NaturallySpeaking.

2. **Closing Dragon NaturallySpeaking**:
   - The script uses the `TaskKill` command to forcefully close all processes related to Dragon NaturallySpeaking. This includes any background tasks related to the software.

3. **Reopening Dragon NaturallySpeaking**:
   - Once the processes are closed, the script can restart Dragon NaturallySpeaking by running the executable located at the specified path.
   - After a 5-second delay (to allow the software to fully initialize), the script sends a command (`NumPad+`) to toggle the microphone on.

### Instructions for Editing the Script
1. **Adjusting the Path to Dragon NaturallySpeaking**:
   - If Dragon NaturallySpeaking is installed in a different directory, modify the path in the script:
     ```ahk
     Run, "C:\Program Files (x86)\Nuance\NaturallySpeaking15\Program\natspeak.exe"
     ```
   - Ensure the correct path to `natspeak.exe` is provided.

2. **Changing the Key Combinations**:
   - The hotkeys can be easily changed. For example:
     - **Alt + Shift + D** (`!+d`) can be modified to another combination like **Ctrl + Shift + X** by replacing `!+d` with `^+x`.
     - **Alt + Shift + R** (`!+r`) can be changed similarly.

3. **Modifying the Wait Time**:
   - If Dragon NaturallySpeaking takes more or less time to start, adjust the sleep duration by changing:
     ```ahk
     Sleep, 5000
     ```
   - Change `5000` to the desired number of milliseconds (1000 = 1 second).

---

### How to Compile the Script to an Executable
1. **Install AutoHotkey**: If AutoHotkey is not already installed, download and install it from [AutoHotkey's official website](https://www.autohotkey.com/).
   
2. **Compile Script**: 
   - Right-click the `.ahk` file and select `Compile Script`.
   - This will create an `.exe` version of the script that can run without AutoHotkey installed on the system.

3. **Run the Executable**:
   - Double-click the `.exe` file to run it. The script will ask for administrative privileges automatically.

---

### Troubleshooting
- **The Script Isn’t Closing Dragon NaturallySpeaking**:
  - Make sure the Dragon processes are named correctly. You may need to adjust the process name in the script from `"dragon*"` to another matching name.

- **The Microphone Doesn’t Toggle On**:
  - Ensure that `NumPad+` is the correct hotkey for enabling the microphone. You can change the key in the script if necessary.

### Security and Privacy
- The script requests admin privileges for managing processes, but it only interacts with the Dragon NaturallySpeaking application.
- The script can be reviewed and modified before use, especially if used in a sensitive environment.
