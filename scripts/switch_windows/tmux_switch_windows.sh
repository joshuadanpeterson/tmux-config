#! /usr/bin/env bash
# Switch Tmux Windows

# List all windows in all sessions, format: session_name:window_index.window_name
tmuxwindows=$(tmux list-windows -a -F "#{session_name}:#{window_index}.#{window_name}")

tmux_switch_to_window() {
    target="$1"
    if [[ -n "$target" ]]; then
        # Switch to the selected window; assumes format session:window
        tmux select-window -t "$target"
    fi
}

choice=$(printf "%s\n" "$tmuxwindows" \
    | fzf-tmux -p 50%,70% \
    | cut -d '.' -f 1 \
    | tr -d '\n')

tmux_switch_to_window "$choice"

