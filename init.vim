set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set cursorline
set noshowmode
set wildmenu
set wildmode=list:full
set path+=**
set wildignorecase

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let mapleader=" "

nmap <Leader>m <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
" regex completion instead of whole word completion
nnoremap <leader>ff :find *
" restrict the matching to files under the directory
" of the current file, recursively
nnoremap <leader>FF :find <C-R>=expand('%:p:h').'/**/*'<CR>

" same as the two above but opens the file in an horizontal window
nnoremap <leader>sf :sfind *
nnoremap <leader>SF :sfind <C-R>=expand('%:p:h').'/**/*'<CR>

" same as the two above but with a vertical window
nnoremap <leader>vf :vert sfind *
nnoremap <leader>VF :vert sfind <C-R>=expand('%:p:h').'/**/*'<CR>
