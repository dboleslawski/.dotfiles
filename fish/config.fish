#general stuff
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ~ 'cd ~'
alias pls 'sudo'

#show/hide hidden stuff in finder
alias hideHidden 'defaults write com.apple.finder AppleShowAllFiles -bool false; and killall Finder'
alias showHidden 'defaults write com.apple.finder AppleShowAllFiles -bool true; and killall Finder'

#show/hide desktop icons
alias hideDesktop 'defaults write com.apple.finder CreateDesktop -bool false; and killall Finder'
alias showDesktop 'defaults write com.apple.finder CreateDesktop -bool true; and killall Finder'

#show/hide shadow on screenshots
alias hideShadowScreenshot 'defaults write com.apple.screencapture disable-shadow -bool true; and killall SystemUIServer'
alias showShadowScreenshot 'defaults write com.apple.screencapture disable-shadow -bool false; and killall SystemUIServer'

#fix webcam
alias fixWebcam 'sudo killall VDCAssistant'