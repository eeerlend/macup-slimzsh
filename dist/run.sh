#!/bin/bash

# Install slimzsh
if [ ! -d "$HOME/.slimzsh" ]; then
	git clone --recursive https://github.com/changs/slimzsh.git ~/.slimzsh
else
	report_from_package " slimzsh already installed (todo: should pull latest changes)"
fi

# Set default shell to zsh
if [ "$ZSH_NAME" != 'zsh' ]; then
	report_from_package " Setting default shell to /bin/zsh (password required)"
	chsh -s /bin/zsh
fi
