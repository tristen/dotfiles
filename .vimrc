"== BASIC INTERFACE PREFERENCES ==========================

set nocompatible

" backspace/delete like I'm used to
set backspace=indent,eol,start
set history=100
set showcmd
set colorcolumn=80

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

" text selection to not include character under cursor
set selection=exclusive
behave mswin

" change indent settings according to filetype
filetype plugin indent on

" code folding? meh.
set nofoldenable

" wrap like I'm used to
set wrap
set formatoptions=1
set lbr

" Per directory .vimrc
set exrc
set secure

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw

" == PLUGIN OPTIONS =======================================

execute pathogen#infect()

" Ack
nnoremap <leader>a :Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" gist-vim
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '[ -f $(npm bin)/eslint ] && $(npm bin)/eslint || eslint'

set wildmode=list:longest

"stuff to ignore when tab completing
set wildignore=*.o,*.obj,*.zip,*~
set wildignore+=*DS_Store*
set wildignore+=vendor/cache/**
set wildignore+=tmp/**
set wildignore+=_site/**     " Jekyll generated dir
set wildignore+=*.jpg,*.gif

" Nerdtree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

" Ignore files
let NERDTreeIgnore=['_site']

" TagBar
noremap  <F8> :TagbarToggle<cr>

" vim-jsx
let g:jsx_ext_required = 0

" vim-javascript
let g:javascript_plugin_flow = 1

" == KEY BINDINGS =========================================

" Disable the arrow keys to learn the hard way
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Visually select text again after indentation
:vmap < <gv
:vmap > >gv

" Disable <F1> help key. I hit it all the time.
noremap <F1> <nop>

" == MacVim vs Vim ========================================

if has('gui_macvim') && has('gui_running')
  "colorscheme molokai
  colorscheme superman
  set guifont=M+_1m_light:h12
  set guioptions=egmrt  " Remove the toolbar in MacVim
else
  colorscheme superman
  set mouse=a   " Mouse support
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

" Swap quotations types a file
noremap ,' :%! tr \"\' \'\"<CR>

" == TABS & FORMATTING ====================================

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

autocmd FileType json,py,python,txt,mkd,md setlocal shiftwidth=4 tabstop=4 softtabstop=4

" == CODE HIGHLIGHTING  ===================================
au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.mss set filetype=carto
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.{_,ejs} set filetype=html
au BufRead,BufNewFile *.{bones,json,geojson,mml} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=mkd
