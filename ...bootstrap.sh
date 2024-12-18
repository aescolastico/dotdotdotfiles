#!/bin/bash
chsh -s /bin/bash
sudo -v

###--------------###
### manual steps ###
###--------------###

## run bootstrap
## configure apple ID, touch ID, find my
## set favorites in finder
## set control center in menu bar
## enable safari extensions
## run wipr setup
## restore settings
    # vscode
    # bettersnaptool grids
    # aerial

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$script_dir"

###----------###
### settings ###
###----------###
./settings.sh&

###----------###
### packages ###
###----------###
./packages.sh&
