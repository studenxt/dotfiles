#!/bin/bash

xcode-select --install

echo "installing homebrew..."
if ! (type brew > /dev/null 2>&1); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew doctor
brew update
brew upgrade


formulas=(
    r
)

echo "brew tap"
# brew tap thirdparty
brew tap homebrew/cask-fonts

echo "brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

# install gui up
casks=(
    alfred
    clipy
    firefox
    google-chrome
    rstudio
    visual-studio-code
    shiftit
    zoom
)

echo "brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done


#stores=(
#)


#echo "app stores"
#for store in "${stores[@]}"; do
#    mas install $store
#done


brew cleanup


