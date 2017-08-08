sudo pacman -Sy
sudo pacman-mirrors --country all
sudo pacman -Syy

archInstall() {
  yaourt -Sy --needed --noconfirm
}

source ./arch/util.sh
source ~/.zshrc
