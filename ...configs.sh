###-------------###
### dock config ###
###-------------###
cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/Backups/configs/dock/com.apple.dock.plist "$HOME/Library/Preferences/com.apple.dock.plist"

# sym link didnt seem to work
# rm ~/Library/Preferences/com.apple.dock.plist
# ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Backups/configs/dock/com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist

killall cfprefsd
killall Dock

###------------------###
### logi ghub config ###
###------------------###
killall lghub_ui lghub_system_tray lghub_agent
rm -f ~/Library/Application\ Support/LGHUB/settings.db
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Backups/configs/g-hub/settings.db ~/Library/Application\ Support/LGHUB/settings.db

###------------###
### btt config ###
###------------###
killall BetterSnapTool

rm -rf ~/Library/Application\ Support/BetterSnapTool
rm -f ~/Library/Preferences/com.hegenberg.BetterSnapTool.plist
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Backups/configs/btt/BetterSnapTool ~/Library/Application\ Support/BetterSnapTool
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Backups/configs/btt/com.hegenberg.BetterSnapTool.plist ~/Library/Preferences/com.hegenberg.BetterSnapTool.plist

###---------------###
### vscode config ###
###---------------###
vscSettings=`cat <<EOF
{
    "editor.wordWrap": "on"
}
EOF
`

settingsPath="$HOME/Library/Application Support/Code/User/settings.json"
echo "${vscSettings}" >> "${settingsPath}"

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
