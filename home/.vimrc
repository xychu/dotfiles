" Ethan Chu added
set pastetoggle=<F3>
" pathogen
call pathogen#infect()

" tagbar
nmap <silent> <F9> :TagbarToggle<CR>

" nerdtree
nmap <silent> <F7> :NERDTreeToggle<CR>

" powerline
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" openstack
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" python indent
filetype plugin indent on
" use vim-python-pep8-indent instead of below
" autocmd FileType python setlocal et sta sw=4 sts=4

" python complete
" use jedi-vim
" instead of omnifunc

" other type code complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete

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

" vim-markdown
let g:vim_markdown_folding_disabled=1

" vim-javascript
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" kolor
let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=0    " Gray 'MatchParen' color. Default: 0
colorscheme kolor

" highlight spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" golang support
"filetype off
"filetype plugin indent off
"set runtimepath+=/usr/lib64/golang/misc/vim
"filetype plugin indent on
"syntax on
