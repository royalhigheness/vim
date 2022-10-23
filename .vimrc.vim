set nocompatible
filetype plugin indent on

call plug#begin("C:Users\\DELL\\vimfiles\\autoload\\plug.vim")

Plug 'dracula/vim'
Plug 'fatih/vim-go'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
call plug#end()

if has("autocmd")
	filetype on
	autocmd filetype python setlocal tabstop=4
	autocmd filetype go setlocal tabstop=4 
	autocmd filetype lua setlocal tabstop=2 
	autocmd filetype javascript setlocal tabstop=2 
endif

set autoindent                  "inherits indentation from previous lines
set expandtab                   "inserts tabs which is 4spaces
set tabstop=4  			        "tab equals 4columns or spaces
set linebreak                   "line break at convenient points

syntax enable                   "syntax highlighting
set fileencoding=utf-8
colo 256_noir
set noswapfile
set nowb
set nobackup
set shell=C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe

" Mapping leader key
let mapleader=','

" Set mapping directory
nnoremap <leader>. :lcd %:p:h<CR>

"Remapping some windows commands
nnoremap <leader>vi <C-w>s 
nnoremap <leader>nv <C-w>n 

" Remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

" Opens an edit command with the path of the currently edited file filled in
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens explorer
nnoremap <leader>x :Lexplore <CR>
