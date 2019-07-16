#!/bin/bash

source $DOTFILES/scripts/Shared/progressBar.sh

mkdir ~/Downloads/temp 

# Install Google Chrome
wget -O ~/Downloads/temp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ~/Downloads/temp/chrome.deb

# Install Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client

# Install Discord
wget -O ~/Downloads/temp/discord.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo apt install ~/Downloads/temp/discord.deb

#Install VSCode
wget -O ~/Downloads/temp/vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install ~/Downloads/temp/vscode.deb
code --install-extension Shan.code-settings-sync
echo "Remember to set up VS Code Settings Sync and fix powerline font\n"

# Install Teamviewer
wget -O ~/Downloads/temp/teamviewer.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ~/Downloads/temp/teamviewer.deb

# Install Tomahawk
wget -O ~/Downloads/temp/harmony.deb https://github.com/vincelwt/harmony/releases/download/v0.9.1/harmony-0.9.1-x64.deb
sudo apt install ~/Downloads/temp/harmony.deb

# Install vlc
sudo apt install vlc

# Install postman
wget -O ~/Downloads/temp/postman.tar.gz https://dl.pstmn.io/download/latest/linux64 
sudo tar -xzf ~/Downloads/temp/postman.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Install Android Studio
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
wget -O ~/Downloads/temp/androidstudio.tar.gz https://dl.google.com/dl/android/studio/ide-zips/3.4.2.0/android-studio-ide-183.5692245-linux.tar.gz
sudo tar -xzf ~/Downloads/temp/androidstudio.tar.gz -C /opt