#
# File for initializing shared config files of my linux systems
#


#
# Global gitignore
#
RC_PATH=~/.rc

git config --global core.excludesfile ~/.gitignore_global
ln -s $RC_PATH/linux/.gitignore_global ~/.gitignore_global

# init backup scripts
mkdir ~/.bak
cp bak/bak.sh ~/.bak/bak.sh
cp bak/backup.service /lib/systemd/system/backup.service
sudo systemctl start backup
sudo systemctl enable backup
