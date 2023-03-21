dotfiles, yet another
=================




Usage
----------

```
$ git clone --recurse-submodules https://github.com/butanychuang/dotfiles.git
$ cd dotfiles
$ make install
```



Uninstallation
----------

```
$ cd dotfiles
$ make uninstall
```



After make install
----------

* set git username and email

```
git config --global user.name example
git config --global user.email example@localhost
```

TODOs
----------

* rewrite Makefile
* solve "After make install"
