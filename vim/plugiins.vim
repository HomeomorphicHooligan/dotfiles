
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
Plugin 'vim-syntastic/syntastic'
"--------------Autocompletion---------------------------
Plugin 'davidhalter/jedi-vim'                   " The best autocompletion for VIM
Plugin 'ervandew/supertab'                      " Complete code using the tab key instead of the arrows
"-------------------Style-------------------------------
Plugin 'morhetz/gruvbox'
Plugin 'sebmaynard/vim-ligatures'               " Simple ligatures for vim
Plugin 'ehamberg/vim-cute-python'               " Really good ligatures for Vim, but just for Python files
Plugin 'ryanoasis/vim-devicons'                 " File icons in the treefile explorer
Plugin 'lilydjwg/colorizer'                     " Colors in CSS

" All the Plugins must be added before the following line
call vundle#end()

"=======================CONFIGURATION=============================
" Change the color scheme
set bg=dark
colorscheme gruvbox
" nerd Tree configuration
map <C-k> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '→'
let g:NERDTreeDirArrowCollapsible = '↓'
autocmd vimenter * NERDTree     
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | e
" Select the windows using the dash key
nmap - <Plug>(choosewin)
" syntactic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

