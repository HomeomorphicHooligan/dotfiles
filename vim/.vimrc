" This file contains all the plugins for my Vim configuration.
" It also contains all the configuration for them

" For plug-ins to load correctly.
filetype plugin indent on

"=======================PLUGINS================================•
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()        
"------------------Required plugins---------------------
Plugin 'VundleVim/Vundle.vim'                   " The Vundle plugin itself
"------------------Essential plugins--------------------
Plugin 'tpope/vim-fugitive'                     " Git plugin for vim
Plugin 'preservim/nerdtree'                     " file tree in Vimm
Plugin 'Raimondi/delimitMate'                   " Auto brackets, quotes, angles...
Plugin 'junegunn/fzf.vim'                       " Better file search for Vim
Plugin 'mg979/vim-visual-multi'                 " Multiple cursors as in Sublimetext3
Plugin 'mhinz/vim-signifY'                      " Show line differences in most scm's as Git/mercuria
Plugin 't9md/vim-choosewin'                     " Really good navigation between windowsin Vim
"------------Usefull plugins for most languages---------
Plugin 'hdima/python-syntax'                    " Specific syntax for Python
Plugin 'sheerun/vim-polyglot'                   " Syntax for most modern programming languages
Plugin 'mattn/emmet-vim'                        " Emmet for VIM (for web development)
Plugin 'compnerd/arm64asm-vim'                  " Assembly .asm syntax
"--------------Autocompletion---------------------------
Plugin 'davidhalter/jedi-vim'                   " The best autocompletion for VIM
Plugin 'ervandew/supertab'                      " Complete code using the tab key instead of the arrows
"-------------------Style-------------------------------
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sebmaynard/vim-ligatures'               " Simple ligatures for vim
Plugin 'ehamberg/vim-cute-python'               " Really good ligatures for Vim, but just for Python files
Plugin 'ryanoasis/vim-devicons'                 " File icons in the treefile explorer
Plugin 'lilydjwg/colorizer'                     " Colors in CSS

" All the Plugins must be added before the following line
call vundle#end()

"=======================CONFIGURATION=============================
" Change the color scheme
colorscheme dracula
" nerd Tree configuration
map <C-k> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'
autocmd vimenter * NERDTree     
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | e
" Select the windows using the dash key
nmap - <Plug>(choosewin)

" Set compatibility to Vim only because this script will not work in 
" the neovim editor
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set relativenumber

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

nnoremap <C-S> :update<cr>

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

