# Python-Vimrc-config
My Vimrc used for python development

## Prerequisites

* Vim
* [Vundle](https://github.com/gmarik/Vundle.vim.git) - Library for files
* [Dracula](https://draculatheme.com/vim/) - Color format

### Installation
```
brew update
brew install vim
```
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
```
git submodule add git@github.com:dracula/vim.git bundle/dracula-theme
```

### Setup
```
git clone https://github.com/willryan1/Python-Vimrc-config.git ~
mv vimrc .vimrc
```
```
vim .vimrc
:PluginInstall
```

### Background
Many of the .vimrc files I found on github are either error prone or overcomplicated. This is a simple .vimrc file for python development. I recommend uncommenting certain lines to add more functionality.
