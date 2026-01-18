###-------------------###
### homebrew packages ###
###-------------------###

# homebrew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

# install rosetta
softwareupdate --install-rosetta

brew_pkgs=(
    ## development ##
    visual-studio-code 
    python
    postman
    go
    php
    python@3.10
    powershell
    node
    chromedriver
    azure/functions/azure-functions-core-tools@4
    azure-cli
    helm
    minikube
    numpy
    docker
    virtualbuddy
    gh
    colima
    cmake
    ninja

    ## cli tools ##
    mas
    htop
    curl
    wget
    archey
    you-get
    youtube-dl
    thefuck
    wifi-password
    bash-completion
    duti
    howdoi
    tccutil
    transmission-cli
    ffmpeg
    imagemagick
    gobuster

    ## utilities ##
    aerial 
    monitorcontrol
    swiftbar
    homerow
    superkey
    webtorrent
    transmission

    ## monitoring ##
    netiquette
    knockknock
    oversight

    ## device companion ##
    opal-composer
    logitech-g-hub
    xtool-creative-space
    bambu-studio

    ## uncategorized ##
    brave-browser
    chatgpt
    signal 

    ## no cask available yet ##
    #wootility-lekker
    #octarine
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
    1533756032  # DevUtils

    ## utilities ##
    411643860   # DaisyDisk
    1470584107  # Dato
    417375580   # BetterSnapTool
    1595464182  # MonitorControlLite
    905953485   # NordVPN
    1198176727  # Controller
    1453293391  # Signals
    1330266650  # HomePass
    639968404   # Parcel
    1136220934  # Infuse
    899247664   # TestFlight

    ## monitoring ##
    1629008763  # Little Snitch Mini

    ## safari ##
    1571283503  # Redirect Web for Safari
    1591303229  # Vinegar
    1601151613  # Baking Soda
    1608665824  # Blockalicious
    1320666476  # Wipr
    1450504903  # Night Eye
    1592844577  # Dark Night
    1463298887  # Userscripts-Mac-App
    1188020834  # OverPicture
    1544743900  # Hush

    ## productivity ##
    1276248849  # Diagrams
    6636493997  # ExcalidrawZ
    1032670789  # News Explorer
    409201541   # Pages
    409203825   # Numbers

    ## work ##
    1295203466  # Microsoft Remote Desktop

    ## ios app (not yet supported by mas)##
    #WiFiman
    #FYTA
    #Eve
    #Protect
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
    "ms-toolsai.datawrangler"
)

for i in "${vsc_pkgs[@]}"
do
   code --install-extension $i
done

###-----------------------###
### remove stock packages ###
###-----------------------###

sudo rm -rf /Applications/GarageBand.app 
sudo rm -rf /Applications/iMovie.app  
