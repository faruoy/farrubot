syntax on         
inoremap ( ()<Left>
inoremap [ []<left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap < <><Left>
inoremap ' ''<Left>
nnoremap <C-f> <Esc>:wq <CR>
nnoremap <C-s> :w <CR>
nnoremap <C-q> :q! <CR> 
nnoremap <C-f> :wq <CR>
nnoremap <CR> i
set number                     
set mouse=a
set showmatch
set cursorline
set termguicolors
set completeopt=menu,menuone,noselect
colorscheme desert
"Status line background ko transparent ya light karo
highlight StatusLine cterm=none ctermbg=black ctermfg=white guibg=NONE guifg=white
autocmd BufWritePost *.py :silent! !clear && python3 %

