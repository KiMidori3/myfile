sudo pacman -Syurs
sudo pacman -S qemu-full qemu-img libvirt virt-install virt-manager virt-viewer edk2-ovmf dnsmasq swtpm libosinfo tuned ntfs-3g cockpit cockpit-machines
sudo systemctl enable libvirtd.service
sudo virt-host-validate qemu
curl -fsSL tailscale.com/install.sh | sh
sudo tailscale up --ssh
sudo pacman -Syurscc
sudo shutdown now
