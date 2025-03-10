# Dotfiles Repository

## Overview
This repository contains my personal dotfiles, which are configuration files for various applications and tools I use. The goal is to maintain a consistent development environment across different machines.

## Installation
To install the dotfiles and build the necessary packages from source, follow these steps:

1. Clone the repository to your home directory:

   ```bash
   git clone https://github.com/csode/dotfiles.git ~/.dotfiles
   ```

2. Navigate to the dotfiles directory:
   ```bash
   cd ~/.dotfiles
   ```

3. Make the installation script executable:
   ```bash
   chmod +x install.sh
   ```

4. Run the installation script:
   ```bash
   ./install.sh
   ```

## Dependencies
The following packages will be installed during the setup:
- **build-essential**: A package that contains essential tools for building software.
- **git**: A version control system to manage your code.
- **wget**: A utility for downloading files from the web.

## Configuration Files
Here is a list of the main configuration files included in this repository:

- **.zshrc**: Configuration for the Zsh shell.
- **.vimrc**: Configuration for Vim editor.
- **.tmux.conf**: Configuration for Tmux.
- **i3.conf**: Configuration for i3-window manager.
- **nvim.conf**: Configuration for Neovim.
- **ghostty.conf**: Configuration for Terminal.
- **neofetch.conf**: Configuration for Info Fetching.
- **Thunar**: Configuration for GUI File Management.
- **nnn**: Configuration for commandline File Management.

## Usage
After installation, you can customize the dotfiles as per your requirements. 

## Change Log
This project uses a markdown file to track changes and updates. You can find the change log in the [`CHANGELOG`](CHANGELOG.md) file.

## Package Catalog
Below is a list of packages I use, along with links to their official repositories for more information:

- **vim**: [Vim Editor](https://www.vim.org/)
- **neovim**: [Vim Editor](https://neovim.io/)
- **Tmux**: [Tmux](https://github.com/tmux/tmux)
- **Neofetch**: [Tmux](https://github.com/dylanaraps/neofetch)
- **Zsh**: [Zsh](https://www.zsh.org/)
- **i3**: [i3](https://i3wm.org/)
- **ghostty**: [ghostty](https://ghostty.org/)

## Additional Resources
- [Bash Scripting Guide](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [Vim Documentation](https://www.vim.org/docs.php)
- [Git Documentation](https://git-scm.com/doc)

## Contributing
Feel free to fork the repository and submit pull requests for any improvements or additional configurations.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
