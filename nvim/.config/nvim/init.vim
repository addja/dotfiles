" Turn on syntax highlighting
syntax on

" Show line numbers
set number relativenumber

" Encoding
set encoding=utf-8

" Indentation
filetype plugin indent on
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces
set ai "Auto indent
set si "Smart indent


" No error beeping or visualbell
set visualbell
set t_vb=

" Max number of chars per line 85
set textwidth=85
set colorcolumn=+1
highlight ColorColumn ctermbg=7

" Set clipboard as default buffer (only if vim --version | grep clipbard are +)
set clipboard+=unnamedplus

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" show statusbar
set laststatus=2

" Define whitespace coloring
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme,TabEnter,WinEnter * match ExtraWhitespace /\s\+$/

" Make vim compatible with 256 color palettes
set t_Co=256

" Hide status mode (shown in theme)
set noshowmode

" Do not copy the line numbers
set mouse+=a

"pluggins, to install pluggin just type :PlugInstall
" also paste sourcecode of pluggin manager at .vim/autoload/plug.vim
call plug#begin() 
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'derekwyatt/vim-fswitch'
Plug 'tpope/vim-surround' " ci)] di) yip}
Plug 'tpope/vim-commentary' " gcl gc10j gcip
Plug 'vim-scripts/ReplaceWithRegister' " griw grip
Plug 'kien/ctrlp.vim' " ctl-p + ctl-v/h/t
Plug 'basilsaji/vim-signify' " diff in vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " fzf (ctlr-t)
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" Colorscheme
colorscheme gruvbox
set background=dark " Setting dark mode

" Remap fswitch
nmap S :FSHere<cr>
