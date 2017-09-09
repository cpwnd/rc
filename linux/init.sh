#
# File for initializing shared config files of my linux systems
#


#
# Global gitignore
#
RC_PATH=~/.rc

git config --global core.excludesfile ~/.gitignore_global
ln -s $RC_PATH/linux/.gitignore_global ~/.gitignore_global
