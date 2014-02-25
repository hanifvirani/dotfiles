" For compatibility stuff
set nocompatible

"-------Vundle---------------

" Required
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let Vundle manage Vundle
Bundle 'gmarik/vundle'

"NERD tree for browsing project
Bundle 'scrooloose/nerdtree'

"YouCompleteMe for code completion
Bundle 'Valloric/YouCompleteMe'

"Tern for JS code completion
"Bundle 'marijnh/tern_for_vim'

"Ctrl+P for opening files
Bundle 'kien/ctrlp.vim'

"Code snippets
Bundle 'UltiSnips'

"matchit for matching brackets
Bundle 'matchit.zip'

"emmet for faster webdev
Bundle 'mattn/emmet-vim'

"For file syntax
Bundle 'sheerun/vim-polyglot'

"Auto-close braces, etc.
Bundle 'Raimondi/delimitMate'

"For syntax checking
Bundle 'scrooloose/syntastic'

"-------Interface-------------

"Set font

"Set colorscheme
colorscheme rdark2

"Turn on line numbers
set number

"Disable menu and toolbar
:set guioptions-=m
:set guioptions-=T
"
"Disable left and right scrollbars
:set guioptions-=l
:set guioptions-=r

"Toggle line numbers and fold column
nnoremap <F2> :set nonumber!<CR>


"-------Editor----------------
"Turn on syntax
syntax on

"Turn on file detection
filetype plugin indent on

"Disable bells and blinks
set noerrorbells
autocmd VimEnter * set vb t_vb=

"Always use four spaces for tabs and indent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Correct backspace setting"
set backspace=2

"tab settings by file type
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype sass setlocal ts=2 sts=2 sw=2

"Incremental search
set incsearch

"Ignore case when searching
set ignorecase

"When searching try to be smart about cases
set smartcase

"Show braces matching
set showmatch
set matchtime=5

"Display symbols for tabs, whitespaces, and EOL
set list
set listchars=tab:?\ ,trail:-

"Store swap files seperately
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

"-----Plugin settings---------------

"Toggle NERDTree
map <F3> :NERDTreeToggle<CR>

"Ignore file extensions for CtrlP
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|\.pyc$'

"Working mode for CtrlP
let g:ctrlp_working_path_mode = 'ra'

"YouCompleteMe
"Don't auto select first match and show menu even for one match
set completeopt=longest,menuone

"Ultisnips Setup
let g:UltiSnipsExpandTrigger = '<c-a>'

"Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers=['pyflakes']
