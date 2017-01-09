" status lines
set laststatus=2
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m

" print
set ruler
set noautoindent
set showcmd
set autoread
set wildmenu
set showmatch
set scrolloff=2
set number
syntax on


" encoding
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

" backup files
set nobackup
set noswapfile
set viminfo=
set nowritebackup

" backspace key
"set t_kb=^?
set backspace=indent,eol,start
"fixdel

" edit
set hidden
set wildmenu
set wildchar=<tab>
set wildmode=list:full
set history=1000
set complete+=k

" search
set wrapscan
set ignorecase
set smartcase
set incsearch
set hlsearch


" tab
set ts=2
"set ts=4
set expandtab
set smarttab
set autoindent
"set smartindent
"set cindent
autocmd FileType c,cpp,perl,rb,php,html,erl set cindent
autocmd FileType python set tabstop=2 shiftwidth=2 expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4


set printoptions=number:y
set printoptions=duplex:off

set vb t_vb=
"set t_Co=256

colorscheme desert


" hi-light 'zenkaku' space
if has("syntax")
  syntax on
    function! ActivateInvisibleIndicator()
        syntax match InvisibleJISX0208Space "a??" display containedin=ALL
            highlight InvisibleJISX0208Space term=underline ctermbg=Cyan guibg=Cyan
            "    syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
            "    highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=Red
            "    syntax match InvisibleTab "\t" display containedin=ALL
            "    highlight InvisibleTab term=underline ctermbg=Cyan guibg=Cyan
              endf
                augroup invisible
                    autocmd! invisible
                        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
                        augroup END
                    endif

" TOhtml
let html_number_lines = 1
let html_use_css = 1
let html_use_encoding = "utf-8"

let g:php_noShortTags=1
let g:php_asp_tags=1

" directory tree
let g:netrw_liststyle=3

" for search
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
