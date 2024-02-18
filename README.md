# Tmux Configuration Readme

This Tmux configuration is designed to enhance your terminal multiplexer experience with customized keybindings, improved usability, and integration with plugins for added functionality. Below, you'll find an overview of the functionality provided by this `.tmux.conf` file and the plugins it utilizes.

## Key Features

- **Prefix Key**: The prefix key is set to `Ctrl + Space`, a departure from the default `Ctrl + b`, for a more comfortable command initiation.
- **Vi-style Pane Selection**: Navigate between panes using Vi keybindings (`k`, `j`, `h`, `l`) for a seamless experience for Vi/vim users.
- **Enhanced Window and Pane Management**: Commands for cycling through windows and improved pane splitting (`|` for vertical, `-` for horizontal splits) are included, with windows and panes starting at index 1 instead of 0 for easier access.
- **Mouse Support**: Mouse support is enabled, allowing for resizing panes, scrolling, and selecting windows/panes with your mouse.
- **Clipboard Integration for macOS**: Utilizes `pbcopy` for clipboard integration, enabling copying from Tmux to the system clipboard on macOS.
- **Status Bar Customization**: Provides a method for displaying pane numbers temporarily with `bind-key q` and includes comments for further customizing the status bar's appearance.
- **Theme and Visual Enhancements**: Sets the terminal to `xterm-256color` for broad color support, with commented options for setting the default terminal to `tmux-256color` and terminal overrides for color consistency.

## Plugins

The configuration utilizes Tmux Plugin Manager (TPM) for managing plugins, with the following plugins included:

- **[tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)**: Tmux Plugin Manager, essential for installing and managing Tmux plugins.
- **[tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)**: Provides a set of sensible default settings for Tmux.
- **[tmux-plugins/resurrect](https://github.com/tmux-plugins/tmux-resurrect)**: Allows saving and restoring Tmux sessions across system restarts.
- **[tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)**: Automatically saves Tmux environment periodically and restores it after system restarts.
- **[tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control)**: Enhanced pane management, including resizing panes.
- **[tmux-plugins/tmux-logging](https://github.com/tmux-plugins/tmux-logging)**: Adds easy logging and screen capturing functionality to Tmux sessions.
- **[tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)**: Integrates system clipboard with Tmux copy mode.
- **[imomaliev/tmux-keyboard-layout](https://github.com/imomaliev/tmux-keyboard-layout)**: Automatically switches keyboard layout when entering and leaving Tmux.
- **[nordtheme/tmux](https://github.com/nordtheme/tmux)**: Applies the Nord theme to Tmux for a clean and comfortable visual experience.
- **[erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)**: A status line configuration for Tmux that includes various status indicators.
- **[kiyoon/treemux](https://github.com/kiyoon/treemux)**: Integration with Neovim, providing a sidebar for file navigation within Tmux.
- **[christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)**: Seamless navigation between Tmux panes and Vim splits.

## Installation and Usage

To use this configuration:
1. Install Tmux and ensure it's available in your command line.
2. Clone or download this configuration file into your home directory as `.tmux.conf`.
3. Install TPM (if not already installed) by cloning the TPM repository into `~/.tmux/plugins/tpm`.
4. Start Tmux and press `prefix + I` to install the plugins listed in the configuration.
5. Customize the `.tmux.conf` file as needed to suit your workflow.

This Tmux configuration aims to provide a robust, visually appealing, and highly functional Tmux environment, leveraging the power of plugins to extend its capabilities. Whether you're a developer, system administrator, or terminal enthusiast, this setup is designed to enhance your terminal multiplexing experience.
