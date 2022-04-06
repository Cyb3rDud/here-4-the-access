"	" Autogroups
"	" {{{
set shiftwidth=4
"	" }}}


"	" Backups
"	" {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
"	" }}}


"	" Basic Options
"	" {{{
set nocompatible
set mouse=a								" enable the mouse in all four modes
set shell:/bin/sh
"	" }}}


"	" Colors
"	" {{{
syntax enable           				" enable syntax processing
colorscheme elflord						" set colorscheme for vim

syntax match timestamp '\d\d-\a\a\a-\d\d\d\d \d\d:\d\d:\d\d'
highlight timestamp ctermbg=yellow ctermfg=black
	"	" man bash > PROMPTING
		"	" \a     an ASCII bell character (07)
		"	" \d     the date in "Weekday Month Date" format (e.g., "Tue May 26")

syntax match comments '\\.*'
highlight comments ctermfg=blue

syntax match ipaddr '\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}'
highlight ipaddr ctermfg=green

syntax match paste '<\S\{-}>'
highlight paste ctermfg=14

syntax match socket '/tmp/t\d\{1,4}' contains=paste
highlight socket ctermfg=red

syntax match ports ' -p \zs\d\{1,5}\ze '
syntax match ports '\zs\d\{1,5}\ze:\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}'
syntax match ports ':\zs\d\{1,5}\ze' contains=ipaddr
highlight ports ctermfg=202
"	" }}}


"	" Folding
"	" {{{
set foldmethod=marker
set foldmarker=start,end
set foldmarker={{{,}}}
set foldlevelstart=10
"	" }}}


"	" Organization
"	" {{{
set modelines=1							" gives the number of lines that is checked for set commands
"	" }}}


"	" Searching
"	" {{{
set ignorecase          				" ignore case when searching
set incsearch           				" search as characters are entered
set hlsearch            				" highlight matches
	" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
"	" }}}


"	" Set command keys
"	" {{{
let mapleader=','
let maplocalleader=' '
"	" }}}


"	" Spaces & Tabs
"	" {{{
set tabstop=4           				" number of spaces that a <Tab> in the file counts for
set expandtab           				" use spaces for tabs
set softtabstop=4       				" number of spaces that a <Tab> counts for while editing
" set autoindent						" copy indent from current line when starting a new line
"	" }}}


"	" UI Config
"	" {{{
filetype indent on						" enable loading the indent file for specific file types
filetype plugin on						" enable loading the plugin files for specific file types
set nonumber							" show line numbers
set showcmd             				" show command in bottom bar
" set cursorline        					" highlight current line; makes screen redrawing slower
set wildmenu							" command-line completion operates in an enhanced mode. On pressing 'wildchar' (usually <Tab>) to invoke completion, the possible matches are shown just above the command line
set lazyredraw							" screen will not be redrawn while executing macros, registers and other commands that have not been typed
set showmatch           				" highlight matching [{()}]
set fillchars+=vert:┃					" characters to fill the statuslines and vertical separators
nmap <Leader>eh :set list!<CR>			" show hidden characters
"	" }}}


"	" Key Mappings
"	" {{{
" F1 = Opens Help
" F2 = Menu
" F3 = Startup Template
" F4 = Order of Operations
" F5 = Timestamp
" F6 = New Blank Target
" F7 = 
" F8 = 
" F9 = Fold/Unfold
" S-F9 = Fold All


"	" Start Menu
nmap <F2> i<CR>.               MENU            .<CR>--- ------------------------- ---<CR>.   F2- Menu                    .<CR>.   F3- STARTUP Template        .<CR>.   F4- Order of Operations     .<CR>.   F5- Timestamp               .<CR>.   F6- New Blank Target        .<CR>.   F9- Fold/Unfold             .<CR>.      S-F9- Fold All           .<CR>.      {{{  }}}                 .<CR><CR>.                               .<CR>.   <> requires user input      .<CR>--- ------------------------- ---<CR><CR>

imap <F2> <CR>.               MENU            .<CR>--- ------------------------- ---<CR>.   F2- Menu                    .<CR>.   F3- STARTUP Template        .<CR>.   F4- Order of Operations     .<CR>.   F5- Timestamp               .<CR>.   F6- New Blank Target        .<CR>.   F9- Fold/Unfold             .<CR>.      S-F9- Fold All           .<CR>.      {{{  }}}                 .<CR><CR>.                               .<CR>.   <> requires user input      .<CR>--- ------------------------- ---<CR><CR>


"	" Startup Template
nmap <F3> i<CR>----- ------------------------- ----- <CR>  Name: <><CR>  Date: <><CR><CR> Start: <><CR>   End: <><CR>EVAL #: <><CR>----- ------------------------- ----- <CR><CR><CR>== TARGETS  ==<CR>{{{======================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><CR>== CREDENTIALS  ==<CR>{{{======================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><CR>== SSH COMMANDS  ==<CR>{{{========================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><end>

imap <F3> <CR>----- ------------------------- ----- <CR>  Name: <><CR>  Date: <><CR><CR> Start: <><CR>   End: <><CR>EVAL #: <><CR>----- ------------------------- ----- <CR><CR><CR>== TARGETS  ==<CR>{{{======================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><CR>== CREDENTIALS  ==<CR>{{{======================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><CR>== SSH COMMANDS  ==<CR>{{{======================================================<CR><CR><CR><CR>======================================================}}}<CR><CR><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><up><end>


"	" Order of Operations
nmap <F4> i<CR>== Order of Operations (Targets)  ==<CR>----- ------------------------- ----- <CR><CR>1) Mandatory Commands<CR>2) Box is 'clear'<CR>3) Survey Commands (if required)<CR>4) Collection (if required)<CR>5) Redirection (if required)<CR>6) Effect (if required)<CR>7) ...<CR>8) Disconnect Commands<CR><CR>----- ------------------------- ----- <CR><CR>

imap <F4> <CR>== Order of Operations (Targets)  ==<CR>----- ------------------------- ----- <CR><CR>1) Mandatory Commands<CR>2) Box is 'clear'<CR>3) Survey Commands (if required)<CR>4) Collection (if required)<CR>5) Redirection (if required)<CR>6) Effect (if required)<CR>7) ...<CR>8) Disconnect Commands<CR><CR>----- ------------------------- ----- <CR><CR>


"	" Timestamp
nmap <F5> i<C-R>=strftime("%d-%b-%Y %H:%M:%S -- ")<CR>
imap <F5> <C-R>=strftime("%d-%b-%Y %H:%M:%S -- ")<CR>
	"	" man date > FORMAT
		"	" %d     day of month (e.g., 01)
		"	" %b     locale's abbreviated month name (e.g., Jan)
		"	" %Y     year

		"	" %H     hour (00..23)
		"	" %M     minute (00..59)
		"	" %S     second (00..60)


"	" New Blank Target
nmap <F6> i<CR>== ip:port\| <:> -- socket\| /tmp/t<>  ==<CR>{{{======================================================<CR><CR>      OS: <><CR>    Arch: <><CR>  Access: <><CR>    User: <><CR>Password: <><CR><CR>======================================================}}}<CR><up><up><up><up><up><up><up><end>
imap <F6> <CR>== ip:port\| <:> -- socket\| /tmp/t<>  ==<CR>{{{======================================================<CR><CR>      OS: <><CR>    Arch: <><CR>  Access: <><CR>    User: <><CR>Password: <><CR><CR>======================================================}}}<CR><up><up><up><up><up><up><up><end>


"	" Folding Settings
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" za = when on a closed fold, open it; :help fold-commands
" zf = create a fold; :help fold-commands
" zM = close all folds; :help fold-commands
" zR = open all folds; :help fold-commands
" <CR>	carriage-Return; :help key-notation
" <C-C>	quit command-line without executing
" <C-O>	insert register or object under the cursor; :help cmdline-editing
" <C-R>	insert the result of an expression at the cursor; :help cmdline-editing
" inoremap = insert mode; :help map-modes
" nnoremap = normal mode; :help map-modes
" onoremap = operator-pending mode; :help map-modes
" vnoremap = visual and select mode; :help map-modes

"	" }}}


" vim:foldmethod=marker:foldlevel=0
