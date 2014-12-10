" enable syntax
syntax on

" Tell vim NOT to run in Vi compatible mode
set nocompatible

" Turn on ruler
set ruler

" Show line numbers
set number

" Line numbers relative to the cursor
set relativenumber

" Remap <Leader> key from \ (backslash) to , (comma)
let mapleader = ","

" Set the word wrap character limit to 78
set textwidth=78

" Underlines the cursors current line in the file
set cursorline

" --- BASE16 Color ---
let base16colorspace=256  " base16 requires this to tell it to use 256 color space in iTerm
set background=dark       " Tell vim that colorscheme is on a dark background
colorscheme base16-ocean  " Use the base16-ocean colorscheme

