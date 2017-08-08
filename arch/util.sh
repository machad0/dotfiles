tools=(git terminator emacs neovim zsh curl xclip spotify-stable)

for i in ${tools[@]}; do
  archInstall ${i}
done

source ~/.zshrc
source ./tools/defaults.sh
source ./nodejs/npm_dependencies.sh

