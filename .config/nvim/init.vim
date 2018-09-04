
set nocompatible
syntax enable
set number
set ruler

set ignorecase
set smartcase

set copyindent
set expandtab
autocmd FileType make set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set textwidth=110
set visualbell
set autoread
set hidden

set nowrap
set encoding=utf-8
set fileencoding=utf-8

set scrolloff=3
set mouse=a

set clipboard+=unnamedplus

set runtimepath+=/home/lilah/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/lilah/.cache/dein')
  call dein#begin('/home/lilah/.cache/dein')
  call dein#add('/home/lilah/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('tpope/vim-eunuch')
  call dein#add('justinmk/vim-dirvish')
  call dein#add('junegunn/fzf.vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('flazz/vim-colorschemes')


  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

colorscheme nightshade

set splitbelow
set splitright

let mapleader = " "

nnoremap <silent> <C-p> :FZF -m<cr>
nnoremap <leader>f :Dirvish<cr>

