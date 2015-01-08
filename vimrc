" ==== Visual Settings ==== "

  " --- BASE16 Color --- "
  let base16colorspace=256  " base16 requires this to tell it to use 256 color space in iTerm
  set background=dark       " Tell vim that colorscheme is on a dark background
  colorscheme base16-ocean  " Use the base16-ocean colorscheme

set relativenumber " Line numbers relative to the cursor

set ruler " Turn on rulers

set number " Show line numbers

syntax on " enable syntax

set cursorline " Underlines the cursors current line in the file

" ==== Feature Settings ==== "

set nocompatible " Tell vim NOT to run in Vi compatible mode

  " --- Tabs --- "
  set expandtab     " Use spaces to skip or insert when <BS>ing or <Tab>ing
  set tabstop=2     " Two spaces for tab
  set shiftwidth=2  " Number of spaces to use in each autoindent step
  set softtabstop=2 " Number of spaces to skip or insert when <BS>ing or <Tab>
  set shiftround    " Rounds the tab spaces when using > command

let mapleader = "," " Remap <Leader> key from \ (backslash) to , (comma)

set textwidth=78  " Set the word wrap character limit to 78

set history=10000 " Number of : command entries to keep in history

set showmatch " Show matching bracket when a bracket is inserted

  " --- Searching --- "
  set incsearch   " Find the next match as we type the search
  set hlsearch    " Highlight searches matching the search pattern
  set ignorecase  " ignore case when searching

set cmdheight=2 " Make the command entry area consume two rows

