# homebrew intel install
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

HOMEBREW_ACCEPT_EULA=Y
brow_pkgs=(
    ## development ##
    "python"
    "azure-functions-core-tools@4"
    "msodbcsql18" 
    "mssql-tools18"
)

brow tap azure/functions

for i in "${brow_pkgs[@]}"
do
   arch -x86_64 /bin/bash -c "/usr/local/bin/brew install $i"
#    brow install "$i"
done

###-----------------###
### python packages ###
###-----------------###


intpip_pkgs=(
    "virtualenv"
)

for i in "${intpip_pkgs[@]}"
do
   intpip install $i
done
