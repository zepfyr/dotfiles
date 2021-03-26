" Joshua Zepf

set nocompatible              " be iMproved, required
filetype off                  " required

" Bundles
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " Required
Plugin 'tpope/vim-fugitive' " Git Plugin
Plugin 'vim-airline/vim-airline' " Bottom status bar
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'preservim/nerdtree' " File system explorer
call vundle#end()

" NerdTree
" Open Nerd Tree on ctrl+n
nnoremap <C-n> :NERDTree<CR>

" Colors
set t_Co=256
colorscheme hemisu " Light Color Scheme
let g:airline_theme='monochrome'
" colorscheme molokai " Dark Color Scheme

" Spacing and Tabs
set tabstop=4 " Number of spaces per tab
set softtabstop=4 " Number of spaces per tab while editing
set shiftwidth=4 " When shifting, indent using 4 spaces
set expandtab " Makes tabs into 4 spaces
set autoindent " New lines inherit the indentation of previous lines
set smartindent
set cindent

" UI Config
set number " Shows line numbers
set relativenumber " Shows line numbers relative to the visual line
set showcmd " Shows command in bottom bar
set cursorline " Highlight current line
filetype indent on " Load filetype-specific indent files
set wildmenu " Visual autocomplete for command menu
set lazyredraw " Redraw only when we need to
set showmatch " Shows matching {,[,(
set laststatus=2 " Always display the status bar
set wildmenu " Display command line's tab complete options as a menu
set noerrorbells " Disable beep on errors
set visualbell " Flash screen instead of beeping on errors
set title " Set window's title reflecting the file currently being edited

" Text Rendering
set linebreak " Avoid wrapping a line in the middle of a word
syntax enable " Enable syntax processing
set wrap " Enable line wrapping

" Searching
set incsearch " Search as characters are entered
set nohlsearch " Highlight matches
set ignorecase " Ignore case when searching
" Turn off search highlight with ',<space>'
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable " Enables code folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " Sets max number of folds to 10
" Maps space to open/close folds
nnoremap <space> za
set foldmethod=indent " Fold based on indent level

" Movement
" Move vertically by ~visual~ line
nnoremap j gj
nnoremap k gk
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ don't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" Highlight last inserted text
nnoremap gV '[v']

" Windows
" Natural splitting
set splitbelow
set splitright
" Create better window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Leader Shortcuts
let mapleader="," " Leader is comma
" jk is Esc
inoremap jk <esc>
" Save Session
nnoremap <leader>s :mksession<CR>

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
