#! /usr/bin/env bash
# Switches Tmux sessions

tmuxsessions=$(tmux list-sessions -F "#{session_name}")

tmux_switch_to_session() {
    session="$1"
    if [[ $tmuxsessions = *"$session"* ]]; then
        tmux switch-client -t "$session"
    else
        echo "Session '$session' not found." >&2
    fi
}

# Updated fzf-tmux command with preview
choice=$(printf "%s\n" "$tmuxsessions" | fzf-tmux -p 50%,70% --preview 'tmux list-windows -t {}' | tr -d '\n')

if [ -z "$choice" ]; then
    echo "No session selected. Exiting." >&2
    exit 1
fi

tmux_switch_to_session "$choice"
