" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

filetype plugin on
set history=1000
set nocompatible
filetype on
set vb t_vb=
set ruler

set noai
set autoindent
set smartindent
set cindent

set nu
set tabstop=8
set softtabstop=8
set shiftwidth=8
set shortmess=atI

set nobackup
set noswapfile

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
""inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap { {<CR>}<ESC>O
inoremap , ,<Space>
"inoremap if if<Space>()<Space><ESC>hi
"inoremap while while<Space>()<Space><ESC>hi
"inoremap else if else if<Space>()<Space><ESC>hi
"inoremap switch switch<Space>()<Space><ESC>hi

"NERD_commenter

let mapleader = ";"

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin	'L9'	

Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup',  {'rtp': 'vim/'}
Plugin 'user/L9',  {'name': 'newL9'}

call vundle#end()
filetype plugin indent on
"vim nerdcommenter plugin 在注释下面添加下一行会自动在行首添加注释标签下面这行代码可以关闭这个功能
""autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
