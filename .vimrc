"== NEOVIM SPECIFIC ======================================

set termguicolors

"== BASIC INTERFACE PREFERENCES ==========================

set nocompatible
set statusline=%f\ []\ %{fugitive#head()}
set background=dark
set shell=/usr/local/bin/zsh
set splitright
set nobackup
set noswapfile
set guioptions=r " Only display a scroll bar on the right

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

" text selection to not include character under cursor
set selection=exclusive
behave mswin

" code folding? meh.
set nofoldenable

" wrap like I'm used to
se wrap
set formatoptions=1
set lbr

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw

" == PLUGINS ==============================================
call plug#begin()

"Navigation
Plug 'preservim/nerdtree'

" Git
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive' 

"Utils
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'

" Search
Plug 'mhinz/vim-grepper'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax support
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hail2u/vim-css3-syntax'

" Themes
Plug 'tristen/superman'

call plug#end()

" == PLUGIN OPTIONS =======================================

colorscheme superman

" coc
let g:coc_global_extensions = [ 'coc-tsserver' ]
nmap <leader>c <Plug>(coc-codeaction)
nmap <leader>f <Plug>(coc-fix-current)

" Nerdtree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

" Grepper
let g:grepper = {}
let g:grepper.tools = ['ag']
let g:grepper.simple_prompt = 1
let g:grepper.quickfix = 1
let g:grepper.highlight = 1
nmap <leader>a :Grepper -tool ag

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

" == FUNCTIONS =============================================

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
