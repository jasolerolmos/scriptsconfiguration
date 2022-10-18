#!/bin/bash

echo "Install zsh"
sudo apt-get install zsh -y

echo "Install Oh My zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install PowerLevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Change Theme to powerlevel10k"
mv .zshrc .zshrc.old
sed 's/robbyrussell/powerlevel10k\/powerlevel10k/g' .zshrc.old > .zshrc

