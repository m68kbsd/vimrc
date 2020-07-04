# ~/.vimrc in 2017 :)
* You need to have vim v7.0 or above installed.
* You also need to install Pathogen as your vim dependency manager.
* Pathogen is installed in ~/.vim/autoload/ directory.
* I code mostly in Python, Ruby, Go & JavaScript the relevant plugins are described too.

## Installing pathogen
Create the folder `~/.vim/autoload/` then download and install pathogen.

```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Pathogen is already setup in the file. Now install the plugins below.
It's as simple a git clone <plugin> in `~/.vim/bundle` directory.  

# ctrlp.vim

[ctrlp installation](http://ctrlpvim.github.com/ctrlp.vim#installation)

Full path fuzzy __file__,__ buffer__,__ mru__,__tag__,__...__ finder for Vim

## Basic usage
* Run `:CtrlP` or `:CtrlP [starting-directory]` to invoke CtrlP in find file mode.
* Run `:CtrlPBuffer` or `:CtrlPMRU` to invoke CtrlP in find buffer or find MRU file mode.
* Run `:CtrlPMixed` to search in Files, Buffers and MRU files at the same time.

# lightline
A light and configurable statusline/tabline plugin for Vim

[lightline github repository](https://github.com/itchyny/lightline.vim)

# MRU

[MRU plugin repo](http://github.com/yegappan/mru) 

The Most Recently Used (MRU) plugin provides an easy access to a list of
recently opened/edited files in Vim. This plugin automatically stores the
file names as you open/edit them in Vim.

# NERDTree

[Nerdtree website](https://scrooloose/nerdtree.git)

The NERDTree is a file system explorer for the Vim editor. Using this plugin,
users can visually browse complex directory hierarchies, quickly open files for
reading or editing, and perform basic file system operations.

Toggle NERDTree

```
  CTRL+N
```

# Syntastic

Awesome syntax checking in vim

You now have pathogen installed and can put syntastic into `~/.vim/bundle` like
this:

```sh
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
```

Quit vim and start it back up to reload it, then type:

```vim
:Helptags
```

# Solarized colorscheme

Developed by Ethan Schoonover <es@ethanschoonover.com>

  **Clone:**

    $ cd ~/.vim/bundle
    $ git clone git://github.com/altercation/vim-colors-solarized.git

# vim-flake8

`vim-flake8` is a Vim plugin that runs the currently open file through Flake8,
a static syntax and style checker for Python source code.

[Flake8](https://pypi.python.org/pypi/flake8/) is a wrapper around PyFlakes
(static syntax checker), PEP8 (style checker)

## flake8 Installation

Make sure you've installed the
[flake8](https://pypi.python.org/pypi/flake8/) package

then "git clone"    `TODO: insert repo URL`


# Fugitive Git wrapper

Use git from the comfort of vim

```
$ cd ~/.vim/bundle
$ git clone git://github.com/tpope/vim-fugitive.git
```

# vim-go

Adds Go language support for Vim

```
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
```

# vim monokai

Brings the awesome monokai colorscheme from sublime_text to vim.

```
git clone https://github.com/sickill/vim-monokai.git ~/.vim/bundle/vim-monokai
```

# YouCompleteMe

Best autocompleter for vim. 

## installation

```
$ cd  ~/.vim/bundle
$ git clone https://github.com/Valloric/YouCompleteMe.git YouCompleteMe
$ cd ~/.vim/bundle/YouCompleteMe
$ git submodule --init --recursive

```

Then finally install with `./install.py` in the plugin's directory

```
$ cd ~/.vim/bundle/YouCompleteMe
$ sh install.py

```

The installation for YCM is so long, please head over to the github repo
for further instructions. [link]('https://github.com/Valloric/YouCompleteMe').


Restart your vim!

* Any corrections are welcome, Thanks.
