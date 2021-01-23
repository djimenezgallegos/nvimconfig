set exrc
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set laststatus=2
set cursorline
set noshowmode
set wildmenu
set wildmode=list:full
set path+=**
set wildignorecase
" tabs configuration
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set sw=4

call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'tpope/vim-fugitive' 
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vhdirk/vim-cmake'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

let mapleader = " "

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" CMake configuration

" Theme
syntax enable
colorscheme onehalfdark
let NERDTreeQuitOnOpen=1
let g:airline_powerline_fonts = 1

autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

nmap <Leader>m <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>


nmap <Leader>j 30j
nmap <Leader>k 30k
nmap // :noh<CR><Esc>
"remember as toggle
nmap <c-t> <c-^> 
nmap <c-p> :FZF<CR>
nmap <c-f> :Ag<CR>
