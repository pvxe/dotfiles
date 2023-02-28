"runtime! archlinux.vim
set encoding=utf-8

let g:polyglot_disabled = ['autoindent', 'latex', 'sensible']

"{{{ vim-plug configuration

" Auto-install vim-plug, see wiki for more tips
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'

Plug 'dense-analysis/ale', { 'for': 'python' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/syntastic'

call plug#end()
"}}}
"{{{ Airline configuration
""""""""""""""""""""""""""""""""
"           AIRLINE            "
""""""""""""""""""""""""""""""""
colorscheme wal
set laststatus=2 " In order for Airline to show all the time
set showtabline=1 " Only show tab line when there's more than one tab
let g:airline_theme     = 'wal'
let g:airline_powerline_fonts   = 1
let g:airline#extensions#tabline#enabled = 1
"}}}
"{{{ Syntastic configuration
""""""""""""""""""""""""""""""""
"          SYNTASTIC           "
""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
\    "mode": "passive",
\    "active_filetypes": [],
\    "passive_filetypes": ["tex"] }
"}}}

set background=dark

set wildmenu
set path+=**
" Do not unload buffers when abandoning them
set hidden

set list
set listchars=tab:\|\ ,eol:↲

set noshowmode
set showcmd
set nu
set foldmethod=marker

let g:tex_flavor = 'latex'
