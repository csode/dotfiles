#!/bin/bash

PACKAGES=(
    "build-essential"
    "git"
    "wget"
)

install_dependencies() {
    echo "Checking and installing essential dependencies: ${PACKAGES[*]}..."
    for package in "${PACKAGES[@]}"; do
        if dpkg -l | grep -q "$package"; then
            echo "$package is already installed. Skipping."
        else
            echo "Installing $package..."
            sudo apt install -y "$package"
        fi
    done
}

install_cmake() {
    echo "Fetching the latest version of CMake..."
    LATEST_VERSION=$(curl -s https://api.github.com/repos/Kitware/CMake/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')
    echo "Latest CMake version: $LATEST_VERSION"
    
    wget https://github.com/Kitware/CMake/releases/download/$LATEST_VERSION/cmake-$LATEST_VERSION.tar.gz
    tar -zxvf cmake-$LATEST_VERSION.tar.gz
    cd cmake-$LATEST_VERSION || exit
    ./bootstrap
    make
    sudo make install
    cd .. && rm -rf cmake-$LATEST_VERSION cmake-$LATEST_VERSION.tar.gz
}

install_vim_plug() {
    echo "Installing vim-plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_scripts_repo() {
    echo "Cloning your scripts repository..."
    git clone https://github.com/csode/scripts.git ~/scripts  
}

install_wallpaper_repo() {
    echo "Cloning your scripts repository..."
    git clone https://github.com/csode/wallpaper.git ~/scripts  
}
install_neofetch() {
    git clone https://github.com/dylanaraps/neofetch.git
    cd neofetch || exit
    sudo make install
    cp -r neofetch ~/.config/neofetch
    cd .. && rm -rf neofetch
}

install_ghostty() {
    git clone https://github.com/ghostty-org/ghostty.git
    cd ghostty || exit
    sudo make install
    cp -r ghostty ~/.config/ghostty
    cd .. && rm -rf ghostty
}

install_nnn() {
    git clone https://github.com/jarun/nnn.git
    cd nnn || exit
    sudo make install
    cp -r nnn ~/.config/nnn
    cd .. && rm -rf nnn
}

install_i3() {
    git clone https://github.com/i3/i3.git
    cd i3 || exit
    sudo make install
    cp -r i3 ~/.config/i3
    cd .. && rm -rf i3
}

install_ibus() {
    git clone https://github.com/ibus/ibus.git
    cd ibus || exit
    sudo make install
    cp -r ibus ~/.config/ibus
    cd .. && rm -rf ibus
}

main() {
    if ! grep -q "Pop" /etc/os-release; then
        echo "This script is intended for Pop!_OS only."
        exit 1
    fi

    install_dependencies
    install_cmake
    install_vim_plug
    install_scripts_repo  
    install_wallpaper_repo  
    install_neofetch
    install_ghostty
    install_nnn
    install_i3
    install_ibus

    echo "Installation completed successfully!"
}

main