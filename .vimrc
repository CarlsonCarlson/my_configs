"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"---------------- Carlson Cheng .vimrc configuration --------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set compatibility to Vim only.
set nocompatible
" Turn on syntax highlighting.
syntax on
" Automatically wrap text that extends beyond the screen length.
set wrap
set encoding=utf-8
set number
" Turn off modelines (what the hell are these)
" set modelines=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --------------------------- Plugins ------------------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Utility
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch' "edit files in vim
Plug 'tpope/vim-obsession' "save vim sessions
Plug 'frazrepo/vim-rainbow'
Plug 'Valloric/YouCompleteMe'

" General Programming Support
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tcomment_vim'

" Themes
Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ajh17/Spacegray.vim'

" Status Lines
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim' " Type 'PromptlineSnapshot ~/.promptline.sh airline/lightline'
Plug 'edkolev/tmuxline.vim'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"---------------------- Plugin Configurations ----------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable highlighting of the current line
set cursorline

set t_Co=256
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme gotham
colorscheme gotham256
" colorscheme gruvbox
" colorscheme dracula
" colorscheme spacegray

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

" Status line
set ttimeoutlen=1

" Uncomment to enable airline
let g:airline_powerline_fonts = 1

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='hybrid'
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 

" Uncomment to enable lightline
" let g:lightline = { 'colorscheme': 'gotham' }

" Vim Rainbow
let g:rainbow_active = 1

" Enable scroll through vim command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-----------------------Configuration Section ---------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set formatoptions=tcqrn1

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=2
set smarttab
set expandtab
set noshiftround

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar always on
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
 set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [Type=%Y]\ [Position=%p%%]\ [Buffer=%n]

" Highlight matching search patterns
set hlsearch
set incsearch
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Take off redundant command line (when using airline or lightline)
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"---------------------- Mappings Configurations --------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F8> :NERDTreeToggle<CR>

" Auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

