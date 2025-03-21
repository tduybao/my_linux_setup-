install-unikey:
	-sudo apt update && sudo apt install language-pack-vi
	-sudo apt install ibus-unikey
	-ibus restart
	-ibus-daemon -drx

#kiem-tra-ibus: 
# -ps aux | grep ibus

install-google-chrome:
	-wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	-sudo apt install -f
	-sudo dpkg -i -force-depends google-chrome-stable_current_amd64.deb
	-sudo dpkg -i google-chrome-stable_current_amd64.deb

install-nodejs:
	-sudo apt update && sudo apt upgrade -y
	-sudo apt install curl -y
	-curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
	-sudo apt install nodejs -y
	-node --version
	-npm --version
#update-nodejs:
#thay "20" bằng phiên bản mới nhất nếu có
#  -curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
#  -sudo apt install nodejs -y



install-neovim:
	-sudo add-apt-repository ppa:neovim-ppa/stable
	-sudo apt update
	-sudo apt install neovim
	-sudo apt update && sudo apt upgrade neovim
	-nvim --version

install-plug-vim:
	-sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

install-all:
	-make install-unikey
	-make install-google-chrome 
	-make install-nodejs 
	-make install-neovim 
	-make install-plug-vim

