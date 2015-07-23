set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here') 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"


syntax on
"filetype plugin indent on
set runtimepath+=~/.vim_runtime
"source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

" i added this
try
"   source ~/.vim_runtime/my_configs.vim
catch
endtry

nnoremap qq :tabprevious<CR>
nnoremap pp :tabnext<CR>
set nu
highlight LineNr guifg=#4d4d4
colorscheme solarized 

" tab == n spaces
set shiftwidth=4
set tabstop=4
set autoindent
let html_no_rendering=1 

try
   execute pathogen#infect()
catch
endtry


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
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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
"---------- indent-guides--------------
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"---------- tagbar --------------
map <leader>[ :TagbarToggle<CR>
"---------- indentline --------------
imap jj <Esc>
set backspace=indent,eol,start
