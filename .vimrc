

syntax on
filetype plugin indent on
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" i added this
try
source ~/.vim_runtime/my_configs.vim
catch
endtry

imap jj <Esc>
nnoremap qq :tabprevious<CR>
nnoremap pp :tabnext<CR>
set nu
highlight LineNr guifg=#4d4d4
colorscheme solarized
"set background=dark

" tab == n spaces
set shiftwidth=3
set tabstop=3
set tw=80
   
let html_no_rendering=1 

try
execute pathogen#infect()
catch
endtry


set guifont=Inconsolata:h12

 autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()
