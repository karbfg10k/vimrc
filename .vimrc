set nocompatible              " be iMproved, required
set pastetoggle=<F2>
filetype off                  " required
set smartindent
set spell spelllang=en_us
set relativenumber
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-fugitive'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'Conque-Shell'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-sensible'
Bundle 'Raimondi/delimitMate'

call vundle#end()            " required
filetype plugin indent on

" move vertically by visual line
nnoremap j gj
nnoremap k gk

syntax enable
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall"
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_auto_loc_list = 0

let g:syntastic_always_populate_loc_list = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

