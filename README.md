# Installation

```
git clone --recursive https://github.com/PublicVar/vim-setup ~/.vim
```

Make the symlink for the .vimrc

```
ln -s ~/.vim/.vimrc ~/.vimrc
```

# Add a plugins

In general, just need to add the submodule and commit the changes.

## At vim starting

```
git submodule add https://github.com/plugins-to-install.git pack/plugins/start/plugins-to-install
```

## At demand

```
git submodule add https://github.com/plugins-to-install.git pack/plugins/opt/plugins-to-install
```
