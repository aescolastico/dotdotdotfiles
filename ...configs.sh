###-------------###
### dock config ###
###-------------###
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$script_dir"

cp ./config_backups/com.apple.dock.plist "$HOME/Library/Preferences/com.apple.dock.plist" 

killall cfprefsd
killall Dock

###---------------###
### vscode config ###
###---------------###
vscSettings=`cat <<EOF
{

}
EOF
`
"${vscSettings}"
settingsPath="$HOME/Library/Application Support/Code/User/settings.json"
echo "${vscSettings}" >> ${settingsPath}

###------------###
### git config ###
###------------###

git config --global user.name "Andy Escolastico"
git config --global user.email "aesubs@icloud.com"
git config --global commiter.email "aesubs@icloud.com"

###----------------###
### duti file asc. ###
###----------------###

vsCext=( ".md" ".sh" ".c" ".js" ".conf" ".cfg" ".ini" ".json" ".jsp" ".js" ".java" ".scss" ".css" ".sql" ".sqlite" ".mysql" ".txt" ".less" ".src" ".cmd" ".hta" ".lua" ".m" ".m4" ".h" ".php" ".pl" ".pm" ".py" ".rb" ".vbs" ".tlc" ".bat" ".asm" ".cgi" ".rss" ".xml" ".atom" ".csv" ".bak" ".cnf" ".log" ".asc" ".diff" ".temp" ".tmp" ".class" ".yml" ".sh" ".ps1" ".tf" ".tfvars" ".go" )

for i in "${vsCext[@]}"
do
   duti -s "com.microsoft.VSCode" "$i" "all"
done
