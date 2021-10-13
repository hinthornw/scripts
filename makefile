all: .vim.done .tmux.done

.system.done:
	sudo apt-get -y --allow-releaseinfo-change update

.tmux.done: .system.done
	sudo apt-get -y install tmux

.vim.done: .system.done
	bash go.initialize.vim.sh

.zsh.done: .system.done
	sudo apt install zsh
	chsh -s $(which zsh)

.ohmyzsh.cone: .zsh.done
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
