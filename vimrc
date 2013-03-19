
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:syntastic_c_compiler_options = '-Wall -Wextra -Werror'
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -Werror'

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=light

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \   if &omnifunc == "" |
                \           setlocal omnifunc=syntaxcomplete#Complete |
                \   endif
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

"tab stuff
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set shiftround

set hlsearch
set incsearch

set nobackup

"other
set backspace=indent,eol,start
set showtabline=2

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'xpdf'

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"    source /etc/vim/vimrc.local
"endif

set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set number
set numberwidth=6
color zellner

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P,%{SyntasticStatuslineFlag()}
set history=1000

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

autocmd Filetype xml setlocal ts=2 sw=2
autocmd Filetype html setlocal ts=2 sw=2
autocmd Filetype json setlocal ts=2 sw=2

