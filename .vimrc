set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'arcticicestudio/nord-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'KeitaNakamura/tex-conceal.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'itchyny/lightline.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin '907th/vim-auto-save'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if !has('gui_running')
  set t_Co=256
endif

map <C-n> :NERDTreeToggle<CR>
set laststatus=2
set relativenumber 

set spelllang=en
set spell
hi clear SpellBad
hi SpellBad ctermfg=red

set background=dark
set clipboard=unnamed

let g:auto_save = 1
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'

map Y "+y

colorscheme nord
let g:nord_italic = 1

hi Conceal ctermbg=NONE
hi Conceal ctermfg=NONE
hi Conceal guifg=NONE
hi Conceal guibg=NONE

