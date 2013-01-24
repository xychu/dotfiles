" Ethan Chu added
set pastetoggle=<F3>
" pathogen
call pathogen#infect()

" tagbar
nmap <silent> <F9> :TagbarToggle<CR>

" nerdtree
nmap <silent> <F7> :NERDTreeToggle<CR>

" powerline
" set laststatus=2
" set encoding=utf-8
" let g:Powerline_symbols = 'fancy'
"
" " openstack
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" python indent
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4

" highlight spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" " python complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete

" pydiction
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'

" fold
" zc      折叠
" zC     对所在范围内所有嵌套的折叠点进行折叠
" zo      展开折叠
" zO     对所在范围内所有嵌套的折叠点展开
" [z       到当前打开的折叠的开始处。
" ]z       到当前打开的折叠的末尾处。
" zj       向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
" zk      向上移动到前一折叠的结束处。关闭的折叠也被计入。
set foldmethod=indent
set foldlevel=99

" spell check
:map <silent> <F5> :setlocal spell! spelllang=en_us<CR>
" pep8
let g:pep8_map='<leader>8'
let g:pep8_ignore="N4,E12,E711,E721,E712"
