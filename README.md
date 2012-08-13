dotfiles, yet another
=================




Usage
----------

```
$ git clone git://github.com/butanychuang/dotfiles.git && cd dotfiles
$ git submodule update --init
$ make install
```



Uninstallation
----------

```
$ cd dotfiles && make uninstall
```



After make install
----------

* set git username and email

```
git config --global user.name example
git config --global user.email example@localhost
```

* open vim and ":BundleInstall"
* customize .zsh/ssh-accounts.zsh
* enable ssh-agent plugin in .zshrc



TODOs
----------

* rewrite Makefile
* solve "After make install"
