runtime! archlinux.vim
set encoding=utf-8


"{{{ Vundle configuration
"""""""""""""""""""""""""""""""""
""        VUNDLE PLUGINS        "
"""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'lervag/vimtex'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhinz/vim-startify'

call vundle#end()
filetype plugin indent on

"}}}
"{{{ Airline configuration
""""""""""""""""""""""""""""""""
"           AIRLINE            "
""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set laststatus=2 " In order for Airline to show all the time
set showtabline=1 " Only show tab line when there's more than one tab
let g:airline_theme     = 'solarized'
let g:airline_powerline_fonts   = 1
"let g:airline#extensions#tabline#enabled = 1

"let g:airline_section_z    = '%{getcwd()}'
"let g:airline_symbols.linenr = "¶"
"let g:airline_symbols.linenr = ' ☰ '
"let g:airline_symbols.whitespace = " \ue211 "
"let g:airline_symbols.space = \"*"
"let g:airline_symbols.branch = "\U2387 "

"}}}
"{{{ Solarized colorscheme
" SOLARIZED STUFF "
if $TERM!="linux"
    "Uncomment this if not using solarized color theme in .Xresources
    "let g:solarized_termcolors=256
    "This kills the opaque
    let g:solarized_termtrans=1
    syntax enable
    set background=dark
    colorscheme solarized
    set t_Co=16
endif
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

"}}}
"{{{ Startify configuration
"let g:entry_format =
"". '( '. WebDevIconsGetFileTypeSymbol(entry_path) .') '. entry_path"

let g:startify_fortune_use_unicode = 1
"}}}

let g:vimtex_compiler_latexmk = {'callback' : 0}
"let g:startify_padding_left = 10



set shiftwidth=4
set tabstop=4
set expandtab

set list
set listchars=eol:↲

set noshowmode
set showcmd
set nu
set foldmethod=marker
