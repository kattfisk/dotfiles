call plug#begin('~/.vim/plugged')
  " NERDTree - File explorer
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Syntax
  Plug 'gerw/vim-HiLinkTrace'
  Plug 'luochen1990/rainbow'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'thosakwe/vim-flutter'
  " Installs a bunch of languages
  Plug 'sheerun/vim-polyglot'

  " Autocomplete
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

  Plug 'Shougo/echodoc.vim'
call plug#end()

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Echodoc
" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'
" To use a custom highlight for the float window,
" change Pmenu to your highlight group
highlight link EchoDocFloat Pmenu

" CoC
" if hidden is not set, TextEdit might fail.
set hidden

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-type-definition) 
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>

" Use vertical splits for diffs
set diffopt+=vertical

" Disable scratch window preview
set completeopt-=preview

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
"set laststatus=2
"set statusline+=%F
"set nomodeline

" Settings for space indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Settings for tab indentation
"set shiftwidth=4
"set tabstop=4

" Indent next line to same level as current
"set autoindent
