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
- **Ranger Integration**: Adds a command to launch Ranger, demonstrating the menu's extensibility.

## Plugins

Leverages Tmux Plugin Manager (TPM) for managing plugins, including:
- **[tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)**: Tmux Plugin Manager.
- **[tmux-plugins/tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)**: Sensible default settings for Tmux.
- **[tmux-plugins/tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)**: Save and restore Tmux sessions.
- **[tmux-plugins/tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)**: Automatic Tmux environment saving and restoration.
- **[tmux-plugins/tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control)**: Enhanced pane management.
- **[tmux-plugins/tmux-logging](https://github.com/tmux-plugins/tmux-logging)**: Logging and screen capturing.
- **[tmux-plugins/tmux-yank](https://github.com/tmux-plugins/tmux-yank)**: System clipboard integration.
- **[imomaliev/tmux-keyboard-layout](https://github.com/imomaliev/tmux-keyboard-layout)**: Keyboard layout auto-switching.
- **[nordtheme/tmux](https://github.com/nordtheme/tmux)**: Nord theme for Tmux.
- **[erikw/tmux-powerline](https://github.com/erikw/tmux-powerline)**: Customizable status line.
- **[kiyoon/treemux](https://github.com/kiyoon/treemux)**: Neovim integration for file navigation.
- **[christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)**: Seamless navigation between Tmux and Vim.

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
```

## Challenges and Solutions

- Displaying commands without immediate execution and integrating tmux commands with shell scripts were achieved through associative arrays and careful scripting.
- The development process emphasized modularity, extensibility, and user experience, leading to a robust and customizable tmux environment.

## Acknowledgments

Special thanks to [jdhao's blog post](https://jdhao.github.io/2021/11/20/tmux_fuzzy_session_switch/) for inspiring the dynamic commands menu's development, and to the creators and contributors of the listed plugins for extending Tmux's capabilities.

This enhanced Tmux configuration aims to provide a comprehensive terminal multiplexing experience, combining traditional features with innovative enhancements to cater to developers, system administrators, and terminal enthusiasts alike.

---

Please replace `<REPOSITORY_URL>` with the actual URL of your Tmux configuration repository. This README provides a thorough guide for users to install, utilize, and understand the enhancements made to the Tmux environment, offering a seamless integration of powerful features and plugins.
