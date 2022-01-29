###----------------###
### macOS settings ###
###----------------###

## variables ##
mac_name="mini"

## finder ##

# show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true 

# show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show file path
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# disable press-and-hold for keys
#defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# remove repeat delay
#defaults write NSGlobalDomain KeyRepeat -bool false

# disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

#change default screesnshot save location
defaults write com.apple.screencapture location ~/Library/Mobile\ Documents/com~apple~CloudDocs/Screenshots

# search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# enable snap-to-grid for icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# restart finder 
killall Finder

## dock ##

# customize dock size 
defaults write com.apple.dock tilesize -int 45

# wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# enable autohide dock
defaults write com.apple.dock autohide -bool true

# dock autohide animation delay
defaults write com.apple.Dock autohide-delay -float 0 

# dock autohide animation duration 
defaults write com.apple.dock autohide-time-modifier -float 0.35

# hide recent items in dock
defaults write com.apple.dock show-recents -bool false

# minimize apps to icon
defaults write com.apple.dock minimize-to-application -bool true

# restart Dock
killall Dock

## menubar ##

# # show bluetooth in menubar
# defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

# # show timemachine
# defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/TimeMachine.menu"

# # show volume icon
# defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Volume.menu"

# # disabled menubar autohide
# defaults write NSGlobalDomain _HIHideMenuBar -bool false

# # restart menubar
# killall SystemUIServer

## OS ##

# set keyboard shortcuts
sudo defaults write -globalDomain NSUserKeyEquivalents -dict-add "Lock Screen" "@L"

# set sleep and screen timeout
sudo systemsetup -setcomputersleep Never
sudo defaults -currentHost write com.apple.screensaver idleTime -10

# require password on screensaver or sleep mode start
defaults write com.apple.screensaver askForPassword -int 1

# require password imediately after lock
defaults write com.apple.screensaver askForPasswordDelay -int 0

# set hostname
sudo scutil --set ComputerName $mac_name
sudo scutil --set HostName $mac_name
sudo scutil --set LocalHostName $mac_name
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $mac_name

# supress bash login message
touch ~/.hushlogin

# create iCloud symlink
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ~/iCloud

# create Downloads symlink
sudo rm -rf ~/Downloads 
ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads/ ~/Downloads

# restart shell
exec bash

###--------###
### safari ###
###--------###

# show the full URL in the address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# show Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool true

# enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# warn about fraudulent websites
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true

# block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# enable “Do Not Track”
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"