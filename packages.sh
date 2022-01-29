###-------------------###
### homebrew packages ###
###-------------------###

# homebrew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

brew_pkgs=(
    ## development ##
    visual-studio-code 
    python

    ## cli tools ##
    docker
    mas
    git
    gh
    htop
    curl
    wget
    archey
    you-get
    wifi-password
    bash-completion
    duti
    howdoi
    node

    ## utilities ##
    aerial 
)

for i in "${brew_pkgs[@]}"
do
   brew install "$i"
done
brew tap homebrew/services

###--------------------###
### app store packages ###
###--------------------###

mas_pkgs=(
    ## development ##
    #497799835  ##Xcode##
    1530751461  ##Snippety##
    1512799017  ##Cypt##
    #985614903  ##SQLPro Studio##
    #1481027119 ##Navicat Data Modeler Essentials
    #1533756032 ##DevUtils

    ## utilities ##
    1320666476  ##Wipr##
    411643860   ##DaisyDisk##
    1470584107  ##Dato##
    417375580  ##BetterSnapTool##
    1595464182  ##MonitorControlLite##
    #1200445649  ##VirusBarrier Scanner##
    905953485 ##NordVPN##
    #1044549675 ##Elmedia Video Player##
    1136220934  ##Infuse##
    1450504903 ##Night Eye

    ## productivity ##
    1276248849  ##Diagrams##
    462054704  ##Microsoft Word##
    462058435  ##Microsoft Excel##

    ## work ##
    1333542190 ## 1Password 7
    1085114709  ##Parallels Desktop
    1295203466  ##Microsoft Remote Desktop##
)
for i in "${mas_pkgs[@]}"
do
   mas install "$i"
done

###-----------------###
### vscode packages ###
###-----------------###
vsc_pkgs=(
    "ms-azuretools.vscode-docker"
    "ms-vscode-remote.remote-containers"
    "ms-vscode-remote.remote-ssh"
)

for i in "${vsc_pkgs[@]}"
do
   code --install-extension $i
done