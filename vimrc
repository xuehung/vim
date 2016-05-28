" Check if Vundle is installed. If not, install it.
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif


set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'The-NERD-tree'
Plugin 'majutsushi/tagbar'
Plugin 'MarcWeber/vim-addon-mw-utils' " SnipMate and its dependencies
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tfnico/vim-gradle'
Plugin 'tpope/vim-surround'
Plugin 'raimondi/delimitmate'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ==== Airline
let g:airline_powerline_fonts = 1
set laststatus=2

" ==== solarlized
set background=dark
colorscheme solarized_dark

" alternative color scheme.
"colorscheme Tomorrow-Night-Eighties

syntax on
set number
set encoding=utf-8
set numberwidth=4
set shiftwidth=4
set tabstop=4
set expandtab                 " on pressing tab, insert 4 spaces
set title
set hlsearch                  " search highlighting
set incsearch                 " incremental search
set copyindent                " copy the previous indentation on autoindenting
set smarttab                  " insert tabs on the start of a line according to
set history=100
set showcmd
set showmode
set visualbell

let mapleader=","

" Remember the line in the last open.
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Highlight lines exceeding 80 chracters.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" cancel searched highlight
noremap <CR> :nohlsearch<CR>

" set gradle compiler for .java files
au BufRead *.java :compiler gradle


let g:SuperTabCrMapping=1               " No newline after auto completion

