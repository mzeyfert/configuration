#!/bin/bash -eus

PYTHON_PATH="/usr/bin/python3"

function install_apt_packages() {
    sudo apt update && sudo apt install -y \
        python3-venv
}

function install_python_environment() {
    local python_env_path="$HOME/.env"
    if [ ! -d "$python_env_path" ]; then
        "$PYTHON_PATH" -m venv "$python_env_path"
    fi
}

install_apt_packages
install_python_environment
