""""""""""""""""""""""""
" Global Configuration "
""""""""""""""""""""""""

"" general vim-wide configuration
filetype plugin indent on
syntax enable " enable syntax highlighting by default
set number! relativenumber! " enable 'hybrid' line numbering
set tabstop=8 " tab is 8 characters long
set expandtab " use spaces, not actual tabs
set shiftwidth=4 " standard indenting is 4 spaces

"" 'important' keymappings
let mapleader = "," " map leader to <,>
let maplocalleader = ";" " map local leader to <S-,>


"""""""""""""""""""""""
" Plug Configuration  "
"""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim'

call plug#end()

""""""""""""""""""""""""
" Plugin Configuration "
""""""""""""""""""""""""

"" deoplete
let g:deoplete#sources#clang#libclang_path = "/usr/local/Cellar/llvm/13.0.0_2/lib/libclang.dylib"
let g:deoplete#enable_at_startup = 1 " enable deoplete at startup
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']}) " disable autocomplete with words in the same buffer
" remap the up and down keys in the completion window to something sensible
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" configure deoplete for vimtex, see :help vimtex-complete-deoplete for
call deoplete#custom#var('omni', 'input_patterns', {
			\ 'tex': g:vimtex#re#deoplete
			\})


"" colorscheme (gruvbox)
colorscheme gruvbox
set background=dark

"" vimtex 
let g:vimtex_view_method = 'zathura'
