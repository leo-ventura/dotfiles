DST := ${HOME}
SRC := .
OHMYZSH_CUSTOM_THEME_PATH := .oh-my-zsh/custom/themes/custom.zsh-theme
CONFIG_DIR := .config
DST_CONFIG_DIR = ${DST}/${CONFIG_DIR}
SRC_CONFIG_DIR = ${SRC}/${CONFIG_DIR}
ZSHRC := .zshrc


features-targets := nvim zshrc.d

oh-my-zsh:
	@echo "[*] Downloading oh-my-zsh intall script"
	curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o install.sh
	@echo "[*] Running installation script"
	sh ./install.sh
	@echo "[!] Moving installation script to /tmp"
	mv install.sh /tmp/oh-my-zsh-installation-script.sh

$(features-targets):
	mkdir -p ${DST_CONFIG_DIR}/$@
	cp -r ${SRC_CONFIG_DIR}/$@/* ${DST_CONFIG_DIR}/$@

copy-zshrc:
	cp ${SRC}/${ZSHRC} ${DST}/${ZSHRC}

config-files: $(features-targets) copy-zshrc

oh-my-zsh-theme:
	cp ${SRC}/${OHMYZSH_CUSTOM_THEME_PATH} ${DST}/${OHMYZSH_CUSTOM_THEME_PATH}

copy-files: oh-my-zsh-theme config-files
	@echo "[*] Finished copying files"

nvim-plug-install:
	sh -c 'curl -fLo ${DST}/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

install: oh-my-zsh copy-files nvim-plug-install
	@echo "[*] Installation complete"

