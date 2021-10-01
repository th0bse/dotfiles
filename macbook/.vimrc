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
