#!/bin/bash


# Install zsh + OMZ
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install antigen
curl -L git.io/antigen > antigen.zsh
chmod +x antigen.zsh
mv antigen.zsh ~/antigen.zsh
echo "source ~/antigen.zsh" >> ~/.zshrc

# Set up .zshrc
cp .zshrc_additions ~/.zshrc_additions
chmod +x ~/.zshrc_additions
echo "source ~/.zshrc_additions" >> ~/.zshrc

# Install common utilities
sudo apt install fzf # Fuzzy find CLU
sudo apt install ack # grep for code
sudo apt install jq # sed for JSON

# Node
sudo apt install nodejs
sudo apt install npm
