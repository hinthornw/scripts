all: .vim.done .tmux.done

.system.done:
	sudo apt-get -y update

.tmux.done: .system.done
	sudo apt-get -y install tmux

.vim.done: .system.done
	bash go.initialize.vim.sh
