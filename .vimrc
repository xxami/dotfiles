
set encoding=utf-8

" vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vundle managed plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'

call vundle#config#require(g:bundles)
call vundle#end()
filetype plugin on

" etc
set backspace=2
set nobackup
set nowritebackup
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set list listchars=tab:»·,trail:·,nbsp:·

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

set splitbelow
set splitright

set diffopt+=vertical
sy on
set clipboard=unnamedplus
set number

" key mappings
map <C-n> :NERDTreeToggle<CR>
set t_Co=256
colorscheme peachpuff

let g:airline_powerline_fonts=1"
