" You need to have vim 7.* or above,
" compiled with support for Python, Ruby, Go etc.
" This is your ~/.vimrc file.

" start pathogen
execute pathogen#infect()

" Colors
"--------------------
set background=dark
colorscheme monokai   " You will love monokai.vim, remember sublime_text?


" Backups - Remove annoying swap files (.swp)
" ---------------------
set noswapfile

" enable syntax highlighting
syntax enable 

" Spaces and Tabs
"--------------------
set tabstop=2   " number of visual spaces per TAB

set softtabstop=2	" number of spaces in tab when editing

set shiftwidth=2

set expandtab	" tabs are spaces

" UI Config
" -------------------
set number	" show line numbers

set showcmd	" show commmand in bottom bar

set cursorline  " highlight current line

filetype indent on  " load filetype-specific indent files

set wildmenu    " visual autocomplete for command menu

set lazyredraw  " redraw only when we need to

set showmatch   " highlight matching [{()}]

set incsearch   " search as characters are entered
set hlsearch    " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
" -------------------

set foldenable  " enable folding

set foldlevelstart=10   " open most folds by default

set foldnestmax=10  " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level

" Movement
" -------------------

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" movement across windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
"--------------------

" edit vimrc/bashrc and load vimrc bindings
nnoremap <leader>env :vsp $MYVIMRC<CR>
nnoremap <leader>esh :vsp ~/.bashrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" automatically open NERDTree on startup
nnoremap <C-N> :NERDTreeToggle<CR>

" changing arrow for NERDTree from `>`
let g:NERDTreeDirArrowExpandable= '▸'
let g:NERDTreeDirArrowCollapsible= '▾'

" use system clipboard
set clipboard=unnamed


" Some python specifics
"
" run flake8 on current buffer
" <F7> is still the default
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>


" run Flake8 check everytime you write Python file
" autocmd BufWritePost *.py call Flake8() " syntastic error on compile.py


" NERDTree hide .pyc files in python
let NERDTreeIgnore=['\.pyc$', '\~$']


" Fugitive and Lighline: diplay the current branch and filename
" ...so painful!
let g:lightline={'active':{'left':[['mode', 'paste'],['gitbranch','readonly','filename','modified']]},'component_function':{'gitbranch':'fugitive#head'},}


" Any corrections are welcome.
