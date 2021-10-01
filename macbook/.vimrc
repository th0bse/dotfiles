" GENERAL OPTIONS
" enable syntax highlighting
syntax on
" enter the current millenium
set nocompatible
" enable filetype plugins (specific options per filetype)
filetype plugin indent on

" FUZZY FILE FINDING
" search down into subfolders
" provides tab-completion of all file-related tasks
set path+=**
" display all matching files when we tab complete
set wildmenu

" ENABLE LOCAL VIMRC FILES
" source every vimrc file in current root dir
set exrc
" enable secure mode (no shell commands, map commands are displayed
set secure

" MAXIMUM LINE LENGTH, LINE NUMBERS ETC.
set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey	
set relativenumber

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark " set gruvbox to darkmode

" PLUGIN MANAGER STUFF
" install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'morhetz/gruvbox'

call plug#end()
