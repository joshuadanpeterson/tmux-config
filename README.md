# Tmux Configuration Readme

This Tmux configuration enhances your terminal multiplexer experience with customized keybindings, improved usability, integration with plugins for added functionality, and a dynamic commands menu inspired by the functionality of Telescope in Neovim and the command palette in VS Code.

## Key Features

### Original Features

- **Prefix Key**: Set to `Ctrl + Space`, providing a comfortable alternative to the default `Ctrl + b`.
- **Vi-style Pane Selection**: Navigate panes using Vi keybindings (`k`, `j`, `h`, `l`).
- **Enhanced Window and Pane Management**: Includes commands for cycling through windows, improved pane splitting, and indexing windows and panes starting at 1.
- **Mouse Support**: Enables resizing panes, scrolling, and selecting windows/panes with the mouse.
- **Clipboard Integration for macOS**: Utilizes `pbcopy` for integrating Tmux with the system clipboard on macOS.
- **Status Bar Customization**: Temporarily display pane numbers with `bind-key q` and customize the status bar's appearance.
- **Theme and Visual Enhancements**: Sets the terminal to `xterm-256color` for broad color support, with options for further customization.

### New Features

- **Dynamic Commands Menu**: Introduces a fuzzy-search enabled commands menu using `fzf`, allowing quick access to tmux commands and custom scripts. Access this menu by pressing `<prefix> + m`.
- **Modular Script Design**: Separates menu commands from their execution logic, improving modularity and maintainability.
- **Helper Scripts**: Includes scripts for listing windows and sessions, creating new sessions, and more, enhancing the commands menu functionality.
- **Ranger Integration**: Adds a command to launch Ranger, demonstrating the menu's extensibility. Additionally, integrates [ranger-tmux](https://github.com/joouha/ranger_tmux) for seamless ranger usage within Tmux.

## Plugins

This configuration utilizes the Tmux Plugin Manager (TPM) for managing a selection of plugins aimed at enhancing the overall Tmux experience:

- **[tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)**: Essential for installing and managing Tmux plugins.
- **[tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)**: Provides a set of sensible Tmux settings for an improved default experience.
- **[tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)**: Enables saving and restoring of Tmux sessions and windows.
- **[tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)**: Automates saving of Tmux environments and restores them on system restart.
- **[tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control)**: Offers enhanced pane management capabilities.
- **[tmux-plugins/tmux-logging](https://github.com/tmux-plugins/tmux-logging)**: Facilitates easy logging and screen capturing.
- **[tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)**: Allows integration of the system clipboard with Tmux's copy mode.
- **[imomaliev/tmux-keyboard-layout](https://github.com/imomaliev/tmux-keyboard-layout)**: Automatically switches keyboard layout when entering and leaving Tmux.
- **[nordtheme/tmux](https://github.com/nordtheme/tmux)**: Applies the Nord color scheme to Tmux.
- **[erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)**: A customizable status line utility.
- **[kiyoon/treemux](https://github.com/kiyoon/treemux)**: Offers Neovim integration, allowing for sidebar file navigation.
- **[christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)**: Enables seamless navigation between Tmux panes and Vim splits.

## Installation and Usage

```bash
# Install Tmux
sudo apt install tmux # For Debian/Ubuntu
brew install tmux # For macOS

# Clone the configuration repository
git clone https://github.com/joshuadanpeterson/tmux-config.git ~/.tmux

# Link the .tmux.conf file to your home directory
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Start Tmux and press `prefix + I` to install the plugins

# Install ranger-tmux for enhanced Tmux integration with ranger
pip install ranger-tmux
python -m ranger_tmux install


```

### ranger-tmux Features

- Open files from ranger in a new Tmux window or pane.
- Sync the current working directory between ranger and other Tmux panes.
- Set Tmux window title to show ranger is running.
- Drop-down file manager in your Tmux session.
- Split a ranger pane to launch a shell in the current folder.

For more detailed usage, please refer to [ranger-tmux's GitHub page](https://github.com/joouha/ranger_tmux).

## Challenges and Solutions

- Overcame challenges in displaying commands without immediate execution and integrating Tmux commands with shell scripts through associative arrays and scripting.

## Acknowledgments

Special thanks to [jdhao's blog post](https://jdhao.github.io/2021/11/20/tmux_fuzzy_session_switch/) for inspiring the dynamic commands menu's development, and to the creators and contributors of the listed plugins and [ranger-tmux](https://github.com/joouha/ranger_tmux) for extending Tmux's capabilities.

This enhanced Tmux configuration aims to provide a comprehensive terminal multiplexing experience, combining traditional features with innovative enhancements to cater to developers, system administrators, and terminal enthusiasts alike.
