sudo dpkg --configure -a && \
sudo apt update -y && \
sudo apt upgrade -y && \
sudo apt autoremove -y && \
sudo apt install git curl snapd -y && \
sudo snap install aria2c && \
rm -rf apt-fast && \
git clone https://github.com/ilikenwf/apt-fast.git && \
cd apt-fast && \
sudo mkdir -p /usr/local/bin && \
sudo cp apt-fast /usr/local/bin/apt-fast && \
sudo chmod +x /usr/local/bin/apt-fast && \
sudo cp apt-fast.conf /etc/apt-fast.conf && \
sudo apt-fast update -y && \
sudo apt-fast install nodejs npm -y && \
sudo npm -g install @google/gemini-cli && \
curl -fsSL https://tailscale.com/install.sh | sh && \
sudo tailscale up --ssh && \
sudo apt update -y && \
sudo apt upgrade -y && \
sudo apt autoremove -y && \
sudo apt clean && \
sudo apt autoclean && \
sudo systemctl reboot