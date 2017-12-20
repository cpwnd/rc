#!/bin/bash
# Backup packages

source /home/chris/rc/linux/alias

# collect all apt packages
ls-apt-pkg > /home/chris/.bak/pkgs-apt

# collect all python packages
pip freeze > /home/chris/.bak/pkgs-pip
pip3 freeze > /home/chris/.bak/pkgs-pip3
