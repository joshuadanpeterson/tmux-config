#! /usr/bin/env bash
# Tmux Commands Menu

# Array of Commands for Menu
declare -A commands=(
    ["New Window (NW)"]="new-window"
    ["New Session (NS)"]="$HOME/.config/tmux/scripts/new_session/new_session.sh"
    ["Split Horizontally (SH)"]="split-window -h"
    ["Split Vertically (SV)"]="split-window -v"
    ["Kill Pane (KP)"]="command-prompt -p 'Kill current pane? (y/n):' \"if-shell -b '[ %1 = y ]' 'kill-pane'\""
    ["Kill Window (KW)"]="command-prompt -p 'Kill current window? (y/n):' \"if-shell -b '[ %1 = y ]' 'kill-window'\""
    ["Kill Server (KS)"]="command-prompt -p 'Kill tmux server? This will end all sessions. (y/n):' \"if-shell -b '[ %1 = y ]' 'kill-server'\""
    ["Kill Session (Ks)"]="command-prompt -p 'Kill current session? This will close all windows in the session. (y/n):' \"if-shell -b '[ %1 = y ]' 'kill-session'\""
    ["Detach Client (DC)"]="command-prompt -p 'Detach current client? (y/n):' 'if-shell -b \"[ %1 = y ]\" \"detach-client\"'"
    ["Next Window (NW)"]="next-window"
    ["Previous Window (PW)"]="previous-window"
    ["Rename Window (RW)"]="command-prompt -I '#W' 'rename-window %%'"
    ["Rename Session (RS)"]="command-prompt -I '#S' 'rename-session %%'"
    ["List Sessions (LS)"]="$HOME/.config/tmux/scripts/switch_sessions/tmux_switch_session.sh"
    ["List Windows (LW)"]="$HOME/.config/tmux/scripts/switch_windows/tmux_switch_windows.sh"
    ["Select Window (SW)"]="command-prompt -T window-target -p index 'select-window -t :%%'"
    ["Rotate Window (RO)"]="rotate-window"
    ["Next Layout (NL)"]="next-layout"
    ["Show Time (ST)"]="clock-mode"
    ["Display Pane Numbers (DP)"]="display-panes -d 0"
    ["Resize Pane Left (RL)"]="resize-pane -L 5"
    ["Resize Pane Down (RD)"]="resize-pane -D 5"
    ["Resize Pane Up (RU)"]="resize-pane -U 5"
    ["Resize Pane Right (RR)"]="resize-pane -R 5"
    ["Select Pane Left (PL)"]="select-pane -L"
    ["Select Pane Down (PD)"]="select-pane -D"
    ["Select Pane Up (PU)"]="select-pane -U"
    ["Select Pane Right (PR)"]="select-pane -R"
    ["Launch Ranger (LR)"]="split-window -vb -c \'#{pane_current_path}\' 'ranger'"
)


export commands
