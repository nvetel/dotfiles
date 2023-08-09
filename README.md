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

### Plugins tmux

Lancer tmux et jouer prefix + I

### Plugins VIM

Lancer VIM et jouer la command :PlugInstall

### Nerd Fonts

https://github.com/ryanoasis/nerd-fonts#font-installation

Installer la police choisie.
Sur Ubuntu ajouter la nouvelle police

```
sudo fc-cache -vf ~/.local/share/fonts
```

Redémarrer X si besoin

Installer gnome-tweaks et modifier la police à chasse fixe du système.
