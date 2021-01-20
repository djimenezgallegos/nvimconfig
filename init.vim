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
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'

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
colorscheme OceanicNext
"let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let g:airline_powerline_fonts = 1

let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

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

nmap <c-p> :FZF<CR>

nmap <Leader>j 30j
nmap <Leader>k 30k
nmap // :noh<CR><Esc>
