## run this script first if secure boot supportted then run nvidia-drv2.sh
## if secure boot not supportted, dont run this script
sudo dnf install -y \
    kmodtool \
    akmods \
    mokutil \
    openssl

sudo kmodgenca -a
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
sudo reboot
