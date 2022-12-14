inoremap jk <Esc>

set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noshowmatch
set relativenumber
set nu
set nohlsearch
set noerrorbells
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set noshowmode
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

highlight ColorColumn ctermbg=0 guibg=lightgrey

" Make Y behave like rest of cap
nnoremap Y y$

" Undo Break Points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving Text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
