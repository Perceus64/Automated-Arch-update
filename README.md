# Arch Linux Continuous Update Automation

This repository provides a bash script that automates the process of updating and cleaning up an Arch Linux system. The script is modified to run continuously in the background, periodically updating the system at specified intervals.

## Prerequisites

To use this script, you need to have the following installed on your Arch Linux system:

- `bash`: The bash shell is required to execute the script.
- `sudo`: The script uses `sudo` to run commands with administrative privileges.
- `pacman`: The default package manager for Arch Linux.
- `yay` (optional): If you want to update AUR packages, you need to have `yay` installed. Alternatively, you can modify the script to use a different AUR helper.

## Usage

1. Clone this repository or download the `update.sh` file.

2. Open a terminal and navigate to the directory containing the script.

3. Make the script executable by running the following command:

```
chmod +x update.sh
```
   
## Run the script

```
nohup ./update.sh > update_log.txt &
```

The script will start running in the background, continuously updating the system and cleaning up unused packages. The output will be saved to the update_log.txt file.

Note: The script will sleep for a specified duration (e.g., 24 hours) between updates. You can adjust the sleep duration as per your preference by modifying the script.

Monitor the log file (update_log.txt) to check the script's progress and any potential errors.

## Stopping the Script
To stop the continuous update process, you need to find the process ID (PID) of the script and terminate it. You can use the following command to find the PID:
```
ps aux | grep update.sh
```

Look for the line that contains the script's information and note the corresponding PID. Then, terminate the process using the kill command:
```
kill <PID>
```
Replace <PID> with the actual process ID of the script.
