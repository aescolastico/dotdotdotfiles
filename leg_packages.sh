# homebrew intel install
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


brow_pkgs=(
    ## development ##
    "python"
    "azure-functions-core-tools@4"
)

brew tap azure/functions

for i in "${brow_pkgs[@]}"
do
   brow install "$i"
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
