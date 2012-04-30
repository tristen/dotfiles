" == BASIC INTERFACE PREFERENCES ==========================

set nocompatible

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
set clipboard=unnamed

" disables both audio & visual bell
set vb t_vb=

" Don't swap in my working directory
set directory^=$HOME/.vim/swap//

" Stylez
colorscheme fallsemo
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

" Ctrlp
let g:ctrlp_map = '<c-p>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Nerdtree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

" TagBar
noremap  <F8> :TagbarToggle<cr>

" == KEY BINDINGS =========================================

" Disable the arrow keys to learn the hard way
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Visually select text again after indentation
:vmap < <gv
:vmap > >gv

" == MacVim vs Vim ========================================

if has('gui_macvim') && has('gui_running')
else
  set mouse=a " Mouse support
  set t_Co=256
endif

" == FUCTIONS =============================================

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack ()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
noremap   <F3> :call <SID>SynStack()<CR>
inoremap  <F3> :call <SID>SynStack()<CR>

" Strip whitespace from a file
function! StripWhitespace ()
  exec ':%s/ \+$//gc'
endfunction
noremap ,s :call StripWhitespace()<CR>

" == TABS & FORMATTING ====================================

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"autocmd FileType javascript,txt,mkd setlocal shiftwidth=4 tabstop=4 softtabstop=4

" == CODE HIGHLIGHTING  ===================================
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.mss set filetype=carto
au BufRead,BufNewFile *.{_,ejs} set filetype=html
au BufRead,BufNewFile *.{bones,json} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=mkd
