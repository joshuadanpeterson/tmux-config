#! /usr/bin/env bash
# Script to create a new tmux session with a UUID as the name and switch to it.

# Generate a session name using UUID
session_name="$(uuidgen)"

# Create a new session with the generated name
tmux new-session -s "$session_name" -d
echo "New session '$session_name' created."

# Switch to the newly created session
tmux switch-client -t "$session_name"
