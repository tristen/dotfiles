" == BASIC INTERFACE PREFERENCES ==========================
set nocompatible

set t_Co=256
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" backspace/delete like I'm used to
set backspace=indent,eol,start
set history=100
set showcmd

" show matching braces/parens
set nocompatible
syntax enable
filetype on
filetype plugin on
filetype plugin indent on
set showmatch
set ruler
set number
set nowrap
set hlsearch
set cursorline

" disables both audio & visual bell
set vb t_vb=

" Stylez
colorscheme molokai
if has('gui_running')
  colorscheme molokai
  set guifont=Droid\ Sans\ Mono:h12
  " Remove the toolbar in MacVim
  set guioptions=egmrt
endif

" text selection to not include character under cursor
set selection=exclusive
behave mswin

" change indent settings according to filetype
filetype plugin indent on

" wrap like I'm used to
set wrap
set formatoptions=1
set lbr

" == PLUGIN OPTIONS =======================================
" gist-vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" == KEY BINDINGS =========================================

"Disable the arrow keys to learn the hard way
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" == MacVim vs Vim ========================================
if has('gui_macvim') && has('gui_running')
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<


else
  vmap <A-]> >gv
  vmap <A-[> <gv

  nmap <A-]> >>
  nmap <A-[> <<

  omap <A-]> >>
  omap <A-[> <<

  set mouse=a " Mouse support
endif


" == TABS & FORMATTING ===================================

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"autocmd FileType javascript,txt,mkd setlocal shiftwidth=4 tabstop=4 softtabstop=4

" == CODE HIGHLIGHTING  ==================================
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.mss set filetype=carto
au BufRead,BufNewFile *.{_,ejs} set filetype=html
au BufRead,BufNewFile *.{bones,json} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=mkd
