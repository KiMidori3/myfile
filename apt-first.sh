env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update
setxkbmap -model jp106 -layout jp -option ctrl:nocaps
sudo apt-get update 
sudo apt-get install aptitude -y
sudo aptitude update -y
sudo aptitude install -f
sudo dpkg --configure -a
sudo aptitude install -f
sudo aptitude update -y
sudo aptitude upgrade -y
sudo aptitude install git curl snapd -y
sudo snap install --classic aria2c
sudo rm -rf apt-fast
git clone https://github.com/ilikenwf/apt-fast.git
cd apt-fast
sudo mkdir -p /usr/local/bin
sudo cp apt-fast /usr/local/bin/apt-fast
sudo chmod +x /usr/local/bin/apt-fast
sudo cp apt-fast.conf /etc/apt-fast.conf
sudo aptitude update -y
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo aptitude update -y
sudo aptitude install nodejs npm fonts-noto-cjk code virt-manager cockpit neofetch byobu -y
neofetch
sudo npm -g install @google/gemini-cli
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up --ssh
sudo aptitude update -y
sudo aptitude upgrade -y
sudo aptitude dist-upgrade -y
sudo aptitude full-upgrade -y
sudo aptitude clean
sudo aptitude autoclean
yes | sudo do-release-upgrade
