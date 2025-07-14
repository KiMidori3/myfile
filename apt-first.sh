env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update
setxkbmap -model jp106 -layout jp -option ctrl:nocaps
sudo apt install -f
sudo dpkg --configure -a
sudo apt install -f
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install git curl snapd -y
sudo snap install --classic aria2c
rm -rf apt-fast
git clone https://github.com/ilikenwf/apt-fast.git
cd apt-fast
sudo mkdir -p /usr/local/bin
sudo cp apt-fast /usr/local/bin/apt-fast
sudo chmod +x /usr/local/bin/apt-fast
sudo cp apt-fast.conf /etc/apt-fast.conf
sudo apt-fast update -y
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.floorp.app/Floorp.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt-fast install nodejs npm language-pack-ja fonts-noto-cjk floorp code virt-manager -y
sudo npm -g install @google/gemini-cli
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up --ssh
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean
sudo apt autoclean
sudo systemctl reboot
