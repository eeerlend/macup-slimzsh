#!/bin/bash

# Install slimzsh
if [ ! -d "$HOME/.slimzsh" ]; then
	git clone --recursive https://github.com/changs/slimzsh.git ~/.slimzsh
	report_from_package " Source ~/.slimzsh/slim.zsh in ~/.zshrc for persistent activation"
else
	report_from_package " slimzsh already installed (todo: should pull latest changes)"
fi

# Set default shell to zsh
if [ "$SHELL" != "/bin/zsh" ]; then
	report_from_package " Setting default shell to /bin/zsh (password required)"
	chsh -s /bin/zsh
	report_from_package " Restart shell for changes to take effect"
fi
