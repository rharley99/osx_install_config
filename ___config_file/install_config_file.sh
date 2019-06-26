#!/bin/zsh

### shell specific script dir
if [[ -n "$BASH_SOURCE" ]]
then
    SCRIPT_PATH="$BASH_SOURCE"
elif [[ -n "$ZSH_VERSION" ]]
then
    SCRIPT_PATH="${(%):-%x}"
fi
SCRIPT_DIR="$(cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd)"


### variables
SHELL_SCRIPTS_CONFIG_FILE="shellscriptsrc"
SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH=~/."$SHELL_SCRIPTS_CONFIG_FILE"

### installation
echo ''
if [[ -e "$SCRIPT_DIR"/"$SHELL_SCRIPTS_CONFIG_FILE".sh ]]
then
    echo "installing config file from local directory..."
    #echo ''
    cp "$SCRIPT_DIR"/"$SHELL_SCRIPTS_CONFIG_FILE".sh "$SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH"
    if [[ $? -eq 0 ]]; then SUCCESSFULLY_INSTALLED="yes"; else SUCCESSFULLY_INSTALLED="no"; fi
else
    echo "installing config file from github..."
    echo ''
    curl https://raw.githubusercontent.com/tiiiecherle/osx_install_config/master/___config_file/"$SHELL_SCRIPTS_CONFIG_FILE".sh -o "$SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH"
    if [[ $? -eq 0 ]]; then SUCCESSFULLY_INSTALLED="yes"; else SUCCESSFULLY_INSTALLED="no"; fi
fi

# ownership and permissions
chown 501:staff "$SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH"
chmod 600 "$SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH"

# checking if installation was successful
echo ''
if [[ -f "$SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH" ]] && [[ "$SUCCESSFULLY_INSTALLED" == "yes" ]]
then
    echo -e "config file was \033[1;32msuccessfully\033[0m installed to $SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH..."
else
    echo -e "\033[1;31merror installing config file to $SHELL_SCRIPTS_CONFIG_FILE_INSTALL_PATH, please install it manually...\033[0m"
fi
echo ''
    