#!/bin/bash

#############################
# default macos settings list
#https://macos-defaults.com/
#https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# Thank you!!!
#command check
# defaults read > before
# GUIで設定変更
# defaults read > after
# diff before after
############################


# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

#hide Hard drive
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# --- Finder ---
# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
# すべての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# Title Bar icon 表示
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# .DS_Storeを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
# 拡張子変更しても警告されない
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# 30日でゴミ箱から
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
# Desktop hide harddisk
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false" 
#　デフォルトの位置を変更
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Documents"
# ネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# --- Security ---
# ファイアーウォールをオン
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1

# --- Dock ---
# “自動的に非表示”をオン
defaults write com.apple.dock autohide -bool true
# 最近使ったアプリケーションを非表示
defaults write com.apple.dock show-recents -bool false

# --- SystemUIServer関係 ---
# 時計で日付を表示（例：9月20日(木) 23:00）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE MMM d HH:mm'
# バッテリーの割合（%）を表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# スクリーンショットのドロップシャドウを付けない
defaults write com.apple.screencapture disable-shadow -bool true
# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false
# 日付をのける
defaults write com.apple.screencapture "include-date" -bool "false" 
# 保存場所変更
defaults write com.apple.screencapture "location" -string "~/Dowloads" 

#----Vscode--------#
#vim-clipboard
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false


for app in "Activity Monitor" \
	"Address Book" \
	"Calendar" \
	"cfprefsd" \
	"Contacts" \
	"Dock" \
	"Finder" \
	"Google Chrome Canary" \
	"Google Chrome" \
	"Mail" \
	"Messages" \
	"Opera" \
	"Photos" \
	"Safari" \
	"SizeUp" \
	"Spectacle" \
	"SystemUIServer" \
	"Terminal" \
	"Transmission" \
	"Tweetbot" \
	"Twitter" \
	"iCal"; do
	killall "${app}" &> /dev/null
done
echo "########################"
echo "#MacOS setting is done!#"
echo "########################"
echo "########################"
echo "reboot Now"
echo "########################"
