PWD?=	.
HOME?=	~

init:
	ln -s ${PWD}/.gitconfig	${HOME}/.gitconfig
	ln -s ${PWD}/.gitignore	${HOME}/.gitignore
	ln -s ${PWD}/.zshrc	${HOME}/.zshrc
	ln -s ${PWD}/.oh-my-zsh	${HOME}/.oh-my-zsh
	ln -s ${PWD}/.zsh	${HOME}/.zsh
	ln -s ${PWD}/.vimrc	${HOME}/.vimrc
	ln -s ${PWD}/.vim	${HOME}/.vim
	ln -s ${PWD}/.screenrc	${HOME}/.screenrc
	ln -s ${PWD}/.tmux.conf	${HOME}/.tmux.conf
