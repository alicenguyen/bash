set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'https://github.com/vim-scripts/JavaScript-Indent.git'
Plugin 'git://github.com/tpope/vim-commentary.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'git://github.com/digitaltoad/vim-jade.git'
Plugin 'https://github.com/burnettk/vim-angular.git'
Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/rust-lang/rust.vim.git'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'diepm/vim-rest-console'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" solarized configuration
"let g:solarized_termcolors=256


syntax on
set background=dark
colorscheme solarized 
" shut that bell up
set noerrorbells visualbell t_vb= 

set shiftwidth=4
set tabstop=4
set autoindent
let html_no_rendering=1 
highlight LineNr guifg=#4d4d4
set nu

nnoremap qq :tabprevious<CR>
nnoremap pp :tabnext<CR>

map <leader>] :NERDTreeToggle<CR>
set guifont=Menlo:h11

autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()


" window
nmap <leader>sw<left>  :topleft  vnew<CR>
nmap <leader>sw<right> :botright vnew<CR>
nmap <leader>sw<up>    :topleft  new<CR>
nmap <leader>sw<down>  :botright new<CR>
" buffer
nmap <leader>s<left>   :leftabove  vnew<CR>
nmap <leader>s<right>  :rightbelow vnew<CR>
nmap <leader>s<up>     :leftabove  new<CR>
nmap <leader>s<down>   :rightbelow new<CR>


set nobackup
set nowb
set noswapfile
"" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>                                                                                                   
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" inoremap {      {}<Left>
noremap ]] /}<CR>

set expandtab

au BufNewFile,BufRead *.ejs set filetype=html
noremap % v%

map <leader>- :%w !pbcopy <CR>
map <leader>+ :r !pbcopy <CR>
" Mappings to access buffers (don't use "<Plug>PeepOpen" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \b \f \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" " It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" 80-column layout guide
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" ui config "
set showcmd         " show command in bottom bar.
set cursorline      " highlight current line.
set wildmenu        " visual autocomplete for command mene.
set lazyredraw      " redraw only when we need to.
set showmatch       " highlight matching [{()}]

" searching "
set incsearch       " search as characters are enered
set hlsearch        " highlight matches

" folding "
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level

" movement "
nnoremap j gj           " move vertically by visual line
nnoremap k gk
nnoremap B ^            " move to beginning/end of line
nnoremap E $
nnoremap $ <nop>        " $/^ doesn't do anything
nnoremap gV `[v`]

"*************************************
"***** PLUGIN CONFIGURATINS **********
"*************************************
"
"---------- Syntastic --------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']
"---------- indent-guides--------------
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"---------- tagbar --------------
map <leader>[ :TagbarToggle<CR>
"---------- indentline --------------
imap jj <Esc>
set backspace=indent,eol,start
" --------- window resize at vertical split ------------
"  The windows resize so that the current split is maximised. The other splits
"  are automatically resized to be smaller
" Always show line numbers, but only in current window.
set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber
 " Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =
"---------- continuous line number ----------
"http://i.imgur.com/Td8Jd.png
noremap <silent> <leader>sb :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

" this allows you to undo changes to a file after closing and reopening it
set undofile
set undodir=~/.vim/undodir
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

