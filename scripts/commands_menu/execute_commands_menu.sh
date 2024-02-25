#! /usr/bin/env bash
# execute_commands_menu.sh

# Check if tmux is available
if ! command -v tmux &> /dev/null; then
    echo "tmux could not be found"
    exit 1
fi

# Source the commands array
source "$(dirname "$0")/tmux_commands_menu.sh"

# Convert associative array keys to a list for fzf
command_names=$(printf "%s\n" "${!commands[@]}")

# Use fzf to select a command name
selected_name=$(echo "$command_names" | fzf-tmux -p 50%,70% --prompt='Select Command: ')

# Retrieve the command action using the selected name
selected_action="${commands[$selected_name]}"

# Check if a command was selected
if [ -z "$selected_action" ]; then
    echo "No command selected or command action not found."
    exit 1
fi

# Assuming we're always in a tmux session for this script's purposes
if [[ "$selected_action" =~ \.sh$ ]]; then
    # It's a shell script; ensure it's executable
    if [ -x "$selected_action" ]; then
        # Construct the command string to execute the script
        selected_action="bash '$selected_action'"
    else
        echo "Error: Script '$selected_action' not found or not executable."
        exit 1
    fi
else
    # It's a tmux command; construct the command string to execute within tmux
    selected_action="tmux $selected_action"
fi

# Use eval to execute the constructed command string
eval "$selected_action"
