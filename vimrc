" Don't emulate vi's suck
set nocompatible

" Indent
set autoindent
set smartindent
set breakindent " Indent wrapped lines
set breakindentopt+=shift:4 " Indent wrapped lines 4 more
set linebreak " Break on words

" Tabs
set tabstop=4 " Real tabs are 4
set softtabstop=4 " If expandtab is set, 'tab' is 4 spaces
set shiftwidth=4 "Auto indent is 4
set smarttab

" Hop to matching brace
set showmatch

" Show cursor position
set ruler

" Search
set incsearch "Incremental
set ignorecase "Ignore case when searching
set smartcase "Uppercase=case sensetive, lowercase=not ?
set hlsearch

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Syntax highlighting on by default
syntax on

" Tell vim my background is dark so it doesn't use the bad blue
set background=dark

" Screen and vim and scrollwheel on mouse play nice
set mouse=a             " hold shift to copy xterm
set ttymouse=xterm2     " necessary for gnu screen & mouse

" Show line numbers by default
set number

" Allow right/left arrow keys to go to next/previous line
set whichwrap=b,s,<,>,[,]

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
