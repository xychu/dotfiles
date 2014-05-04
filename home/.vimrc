set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" " alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
" The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'plasticboy/vim-markdown'
Bundle 'pangloss/vim-javascript'
Bundle 'zeis/vim-kolor'
Bundle 'Valloric/YouCompleteMe'

" need to install ctag first
Bundle 'majutsushi/tagbar'

" Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
" scripts not on GitHub
" Bundle 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required

" tagbar
nmap <silent> <F9> :TagbarToggle<CR>

" nerdtree
nmap <silent> <F7> :NERDTreeToggle<CR>

" pastetoggle
set pastetoggle=<F3>

" powerline
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" openstack
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

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

" spell check only on text formatted files
autocmd BufNewFile,BufRead *.{md,rst,txt} setlocal spell spelllang=en_us
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

" go fmt when save
autocmd BufWritePre *.go :Fmt

" gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
