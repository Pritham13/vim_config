" Vim Configuration File

"Basics {
    "set relativenumber
    set termguicolors
    let mapleader = " "
    let &t_SI = "\e[6 q"
    let &t_EI = "\e[2 q"
    set background=dark " we plan to use a dark background
    " Enable 256 colors palette in Gnome Terminal
    if $COLORTERM == 'gnome-terminal'
        set t_Co=256
    endif
    " window change
    noremap <C-k> <C-W>k
    noremap <C-h> <C-W>h
    noremap <C-l> <C-W>l
    " buffer change
    map L :bnext<cr>
    map H :bprevious<cr>
    " quick save
    map <leader>w :w<cr>
    " keybindings for buffer management
    " Close the current buffer
    map <leader>bd :bdelete <cr> :tabnew 
    " Useful mappings for managing tabs
    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>tm :tabmove
    map <leader>t<leader> :tabnext<cr>
    " vertical split
    map <leader>v :vsplit<cr>
    map <leader>h :split<cr>
    " keybindings for NERDTree
    let g:NERDTreeMapActivateNode = 'l'
    " sourcing plugins
    source ~/.vim/plugins/nerdtree.vim
    source ~/.vim/plugins/buftabline.vim
    "source ~/.vim/plugins/bufexplorer.vim
    set nocompatible " explicitly get out of vi-compatible mode
    syntax on " syntax highlighting on

" }


" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace more flexible
    set backup " make backup files
    set backupdir=~/.vim/backup " where to put backup files
    set clipboard=unnamed " share system clipboard
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    set mouse=a " use mouse everywhere
    set wildmenu " turn on command line completion wild style
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    set noshowmode
" }

" Vim UI {
    set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set incsearch " highlight as you type your search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set matchtime=5 " how many tenths of a second to blink matching brackets
    set nostartofline " leave my cursor where it was
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=7 " Keep 7 lines (top/bottom) for scope
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 10 lines at the size
    "set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
" }

" Text Formatting/Layout {
    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be
    set tabstop=8 " real tabs should be 8, and they will show with set list on
" }

" Folding {
    set foldenable " Turn on folding
    set foldmarker={,} " Fold C style code
    set foldmethod=marker " Fold on the marker
    set foldlevel=100 " Don't autofold anything (but I can still fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds
    function! SimpleFoldText() " {
        return getline(v:foldstart).' '
    endfunction " }
    set foldtext=SimpleFoldText() " Custom fold text function
" }
" ColorScheme {
    "colorscheme onedark
    colorscheme catppuccin_mocha
    "colorscheme dracula 
" }
