    call plug#begin()
    Plug 'dracula/vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'w0rp/ale'
    Plug 'cohama/lexima.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    call plug#end()

    syntax on
    color dracula

    set hidden
    set number
    set relativenumber
    set mouse=a
    set inccommand=split
    set tabstop=3
    set expandtab
    set laststatus=2
    set guifont=Fira\ Code:h16

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSpinppetsDir='~/.config/nvim/UltiSnips'
