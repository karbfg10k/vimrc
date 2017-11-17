
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'w0rp/ale'
NeoBundle 'sebastianmarkow/deoplete-rust'
NeoBundle 'mklabs/split-term.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set pastetoggle=<F2>
set smartindent
set autoindent
set relativenumber
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set background=dark
colorscheme solarized
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set splitright
syntax enable

" move vertically by visual line
nnoremap j gj
nnoremap k gk
map <c-up> <C-w><up>
map <c-down> <C-w><down>
map <c-left> <C-w><left>
map <c-right> <C-w><right>
cnorea <expr> te getcmdtype() == ':' && getcmdline() ==# 'te' ? 'VTerm' : 'te'
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
tnoremap <Esc> <C-\><C-n>

let g:split_right_vertical = 1
let g:rustfmt_autosave = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/home/karthik/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/karthik/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/'
let g:deoplete#sources#rust#show_duplicates=1
let g:deoplete#sources#rust#disable_keymap=1
let g:deoplete#sources#rust#documentation_max_height=20
