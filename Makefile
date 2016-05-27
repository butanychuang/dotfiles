PWD?=	.
HOME?=	~

install:
	test -e ${HOME}/.gitconfig	|| ln -s ${PWD}/.gitconfig	${HOME}/.gitconfig
	test -e ${HOME}/.gitignore	|| ln -s ${PWD}/.gitignore	${HOME}/.gitignore
	test -e ${HOME}/.zshrc		|| ln -s ${PWD}/.zshrc		${HOME}/.zshrc
	test -e ${HOME}/.antigen	|| ln -s ${PWD}/.antigen	${HOME}/.antigen
	test -e ${HOME}/.zsh		|| ln -s ${PWD}/.zsh		${HOME}/.zsh
	test -e ${HOME}/.vimrc		|| ln -s ${PWD}/.vimrc		${HOME}/.vimrc
	test -e ${HOME}/.vim		|| ln -s ${PWD}/.vim		${HOME}/.vim
	test -e ${HOME}/.screenrc	|| ln -s ${PWD}/.screenrc	${HOME}/.screenrc
	test -e ${HOME}/.tmux.conf	|| ln -s ${PWD}/.tmux.conf	${HOME}/.tmux.conf
	vim +PluginInstall +PluginUpdate +PluginClean +qall
	antigen update

uninstall:
	test -L ${HOME}/.gitconfig	&& rm ${HOME}/.gitconfig
	test -L ${HOME}/.gitignore	&& rm ${HOME}/.gitignore
	test -L ${HOME}/.zshrc		&& rm ${HOME}/.zshrc
	test -L ${HOME}/.antigen	&& rm ${HOME}/.antigen
	test -L ${HOME}/.zsh		&& rm ${HOME}/.zsh
	test -L ${HOME}/.vimrc		&& rm ${HOME}/.vimrc
	test -L ${HOME}/.vim		&& rm ${HOME}/.vim
	test -L ${HOME}/.screenrc	&& rm ${HOME}/.screenrc
	test -L ${HOME}/.tmux.conf	&& rm ${HOME}/.tmux.conf
