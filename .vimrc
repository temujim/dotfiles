" disable legacy VI mode
" default install of VIM are in legacy mode
set nocompatible

"
"::::==-- START PLUGIN --==::::
" VUNDLE | VIM Plugins 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"-- NerdTree
Plugin 'scrooloose/nerdtree'
"" open a NERDTree automatically when Vim Starts
"autocmd vimenter * NERDTree
"" open NERDTree if no file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"-- CTRL+P
Plugin 'ctrlpvim/ctrlp.vim'
" include hidden files in search
let g:ctrlp_show_hidden = 1
" Persist cache between sessions
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_use_caching = 1

"-- Vim.WIki
Plugin 'vimwiki/vimwiki'

"-- YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

" molokai color scheme
Plugin 'tomasr/molokai'

" vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" Vim airline for status/tabline
" airline is 100%vim script, no python needed
" powerline requires python
Plugin 'bling/vim-airline'
" Below is optional only, for theme
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline_powerline_fonts = 1

" zshrc vim mode
"Plugin 'file:///home/linus/.vim/bundle/vi-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required, equivalent below
"filetype on
"filetype plugin on
"filetype indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on


" VUNDLE  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"::::==-- END PLUGIN --==::::

""""""""""""""""""""""""""""""""""
""" Vim Apperaance

" set the theme to murhpy
" applies to gVim only
colo molokai

" font family to Lucide console, for gvim only
" set guifont=Lucida_Console

" Enable syntax highlighting
syntax on

" Show number lines
set nu

" Set number width to 2 (in number lines)
set numberwidth=2

" show relative number on the gutter
"   for easier navigation
set relativenumber

" highlight linec containing the cursor
set cursorline

""""""""""""""""""""""""""""""""
"    Navigation Settings

""""""""""""""""""""""""""""""""

" Make backspace work like most apps
" Set unrestricted backspacing in insert mode
" Value   Effect
"   0     same as ":set backspace="
"   1     same as ":set backspace=indent,eol"
"   2     same as ":set backspace=indent,eol,start"
set backspace=2

" <c-h> is interpreted as <bs> in neovim
" This is a bandaid fix until the team decides how
" they want to handle fixing it...(https://github.com/neovim/neovim/issues/2048)
nnoremap <silent> <bs> :TmuxNavigateLeft<cr>

" Allow navigation to automatically go to next line
" h,l VIM navs and <> Keyboard Arrow keys, [] Arrow keys 'value' in Insert Mode
set whichwrap+=h,l,<,>,[,]

"""""""""""""""""""""""""""""""
" Keyboard Mapping

 " Navigate properly when lines are wrapped
nnoremap j gj
nnoremap k gk

" Maps the double semicolon to escape key
" keeps the fingers in home keys
" imap ;; <Esc>

" UNMAP KEYS <F2><F3><F4><F5><F6><F7><F8><F9><F12>

" Map newline key within Normal Mode
" Cursor stays in line
" ### this is not disabled due to conflict with VimWiki
" nmap <S-Enter> O<Esc>
" # Cursor goes with new line
" nmap <Enter> o<Esc> 

" Map Leader key to spacebar
"
:let mapleader = "\<Space>"

" quicker global copy-pasting to Vim to windows
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p
vnoremap <Leader>y "+y

" Open last Buffer
nnoremap <Leader><Leader> <C-^>
" go to next buffer
nnoremap <Leader>b :bprev<CR>
" go to previous buffer
nnoremap <Leader>f :bnext<CR>
"quit buffer
nnoremap <Leader>q :quit<CR>    
"save file
nnoremap <Leader>w :write<CR>   
"save and exit
nnoremap <Leader>x :xit<CR>     

" Split navigation, pane nav shortcuts
"#Taken care by vim-tmux navigator plugin now
" nnoremap <silent> <C-j> <C-w>j
" nnoremap <silent> <C-k> <C-w>k
" nnoremap <silent> <C-h> <C-w>h
" nnoremap <silent> <C-l> <C-w>l

" SPlit pane nav on visual mode
xnoremap <C-j> <C-w>j
xnoremap <C-k> <C-w>k
xnoremap <C-h> <C-w>h
xnoremap <C-l> <C-w>l

"""""""""""""""""""""""""""""""
" Autocompletion

" enable wildcard for autocompletion
" enables the menu of wildecard at the bottom
set wildmenu
" shows a list autocomplete items in list
" first tab matches the longest
" second tab shows the list
" 3rd tab cycles through the items
set wildmode=longest:list,full

" Exclude files in wildmode
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.exe,*.pdf,*.zip,*.djvu,*.xls,*.xlsx,*.doc,*.docx,*.mp3
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" mouse testing
" Currently now working in terminal vim
set mouse=a
" enable drag events for terminal 
set ttymouse=xterm2

""""""""""""""""""""""""""
" Split settings

" set splitbelow is enough even without condition
" if condition is copied from Greg Hurrel (FB dev)
if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

""""""""""""""""""""""""
" Tab and autoindent

set expandtab   " use spaces instead of tabs
" uses the "shiftwidth" setting for inserting <TAB>
" this is because some files will have shiftwidth=8
set smarttab

" four-space tab indent
set tabstop=4
"1 tab = 4 spaces
" sets the > and < command to 3 width
set shiftwidth=4
" due to "expandtab" which uses spaces of tabs
" treats the 4 spaces as one character, so easier
" backspace or deletion of characters
set softtabstop=4

" set autoindent
" autoindent means the enter key (Carriage Return) 
" will drop right below the previous line.
set ai  "autoindent


""""""""""""""""""""""""""""""
" Folding
" :mkview saves the folds
" :loadview loads the folds for the file
"augroup AutoSaveFolds
"  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent loadview
"augroup END
 
