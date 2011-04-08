"Set how many lines of history
set history=1000

"Show line number
set nu

"Enable paste mode,"+p
set paste

"Use mouse in all modes
set mouse=a

"Do not redraw while executing macros (much faster) 
set lazyredraw 

"Text options
"Write code must set it,the default is 4,you can change it to 2 or 8.
set shiftwidth=4
set expandtab
set tabstop=4
set smarttab
set lbr

"Set c-style indent
set cindent
set smartindent

"Set auto indent
set autoindent

"Show the matching bracets
set showmatch

"Auto load the file when changed from the outside.
set autoread

"Wwrap line:auto break the line
set wrap

"Enable filetype plugin
"Enable file type detection
filetype on
"Enable loading the plugin for appropriate file type
filetype plugin on
filetype indent on

"Enable syntax on 
syntax enable
syntax on

"Turn backup off
set nobackup
set nowb
set noswapfile

"Set title string
set titlestring=%f%(\ %m%h%r%)\ -\ pjq's\ Vim

"Color
colorscheme desert

"Enable hight light search
set hlsearch
"Search ignorecase
set ignorecase

"Highlight current line
set cursorline

"Set 7 lines to the curors - when moving vertical..
"set so=7

"Turn on wildmenu
"set wildmenu

"Always show current position on the bottom bar.
set ruler

"Set the commandbar height to 2 line on the bottom
set cmdheight=2

"Set backspace
set backspace=eol,start,indent

"Set incsearch,when search it will auto hight light the first match.
set incsearch


"Set magic on
set magic
"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"Set enable folding
set foldenable
set fdl=0

"Set encoding
"Chinese support
set encoding=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set ambiwidth=double

"Visit for detail:http://forum.ubuntu.org.cn/viewtopic.php?f=24&t=41058
"Format the statusline
"Nice statusbar
set laststatus=2
set statusline=
set statusline+=%2*%-3.3n%0*\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&encoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
set statusline+=\ %{VimBuddy()} " vim buddy
endif
set statusline+=%= " right align
set statusline+=%2*0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" special statusbar for special window
if has("autocmd")
au FileType qf
\ if &buftype == "quickfix" |
\ setlocal statusline=%2*%-3.3n%0* |
\ setlocal statusline+=\ \[Compiler\ Messages\] |
\ setlocal statusline+=%=%2*\ %<%P |
\ endif

fun! FixMiniBufExplorerTitle()
if "-MiniBufExplorer-" == bufname("%")
setlocal statusline=%2*%-3.3n%0*
setlocal statusline+=\[Buffers\]
setlocal statusline+=%=%2*\ %<%P
endif
endfun

if v:version>=600
au BufWinEnter *
\ let oldwinnr=winnr() |
\ windo call FixMiniBufExplorerTitle() |
\ exec oldwinnr . " wincmd w"
endif
endif

" Nice window title
if has('title') && (has('gui_running') || &title)
set titlestring=
set titlestring+=%f\ " file name
set titlestring+=%h%m%r%w " flag
set titlestring+=\ -\ %{v:progname} " program name
endif

"change statusbar color
set laststatus=2
if version >= 700
  au InsertEnter * hi StatusLine guibg=Green guifg=Black gui=bold
  au InsertLeave * hi StatusLine guibg=Black guifg=White gui=bold
endif


"Display incomplete commands
set showcmd


"==================================
"Right now,I don't understand what's the meaning of them,so just disable it.
"==================================
"How many tenths of a second to blink
"set mat=4



"Size of foding marks
"set foldcolumn=2

"Folding mode
"set fdm=syntax



