# Installed Packages
dpkg --get-selections > installed_packages.txt
# Global Config
sudo tar -czvf etc_configs_backup.tar.gz /etc
# User Config
tar -czvf user_configs_backup.tar.gz ~/.profile ~/.config