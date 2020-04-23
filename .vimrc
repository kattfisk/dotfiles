" Use file type indentation scripts from vim folder
filetype plugin indent on

" Settings for space indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Settings for tab indentation
"set shiftwidth=4
"set tabstop=4

" Indent next line to same level as current
"set autoindent

set background=dark
syntax enable
colorscheme torte
set hlsearch
set ignorecase
set smartcase
set mouse=r
set relativenumber
set number

command WQ wq
command Wq wq
command W w
command Q q

" show full path in statusline always
set laststatus=2
set statusline+=%F

set nomodeline
