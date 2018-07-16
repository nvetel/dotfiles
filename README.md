dotfiles
========

## Installation

```
git clone https://github.com/nicov/dotfiles $HOME/.dotfiles
~/.dotfiles/script/install
```

### Ajouter dans ~/.bashrc

```
if [ -d $HOME/.bashrc.d ]; then
  for x in $HOME/.bashrc.d/* ; do
    test -f "$x" || continue
    test -x "$x" || continue
  . "$x"
  done
fi
```

### Plugins VIM

Lancer VIM et jouer la command :PlugInstall
