set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
"
Plugin 'faith/vim-go'
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'

Plugin 'buoto/gotests-vim'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
"syntax on

set ts=2
"set expandtab
set autoindent
set sw=2


set number


let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
"ycm自动补全后,关闭split window
let g:ycm_autoclose_preview_window_after_insertion = 1


syntax enable  
filetype plugin on  
set number  
let g:go_disable_autoinstall = 0
let g:tagbar_type_go = { 
              \ 'ctagstype' : 'go', 
              \ 'kinds' : [ 
                 \ 'p:package',
                 \ 'i:imports:1',
                 \ 'c:constants', 
                 \ 'v:variables', 
                 \ 't:types', 
                 \ 'n:interfaces', 
                 \ 'w:fields', 
                 \ 'e:embedded', 
                 \ 'm:methods', 
                 \ 'r:constructor', 
                 \ 'f:functions' 
              \ ], 
              \ 'sro' : '.', 
              \ 'kind2scope' : { 
                \ 't' : 'ctype', 
                \ 'n' : 'ntype' 
              \ }, 
              \ 'scope2kind' : { 
              \ 'ctype' : 't', 
              \ 'ntype' : 'n' 
              \ }, 
              \ 'ctagsbin' : 'gotags', 
              \ 'ctagsargs' : '-sort -silent' 
         \ }

nmap <F9> :TagbarToggle<CR>

map <F7> :NERDTreeToggle<CR>
map <F4> :Ack -i

au FileType go nmap gi <Plug>(go-implements)
au FileType go nmap gr <Plug>(go-referrers)
au FileType go nmap gs <Plug>(go-callees)

colorscheme molokai

let g:netrw_liststyle=3
let g:netrw_winsize = 16
let mapleader=" "
map <F6> :Vexplore<CR> 

