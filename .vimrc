set nocompatible                                    "We want the latest Vim settings/options

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start                      "Make bakspace behave like every other editor.
let mapleader = ','                                 "The default leader is \, bu a comma is much better.
set number                                          "Let's activate line numbers.




"-----------Visuals-------------"
set background=dark
colorscheme solarized
set t_Co=256                                        "Use 256 colors. This is useful for Terminal Vim.
let g:solarized_termcolors=256

set guifont=Fira_Code:h14

set guioptions-=l                                   "Hides scrollbars on left hand side 
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e                                   "We don't want Gui tabs

set linespace=15                                    "Macvim-specific line-height

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"-----------Search------------"
set hlsearch
set incsearch

"-----------Split management--"
set splitbelow                                      "Creates the new vsplit below the current one.
set splitright                                      "Creates the new hsplit to the right of the current one.

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-----------Mappings----------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highligt removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <Leader>nt :NERDTreeToggle<cr>




"-----------Plugins----- --------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:crtlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"Search for symbols in file
nmap <c-R> :CtrlPBufTag<cr>

"Show opened files
nmap <D-e :CtrlPMRUFiles<cr>



"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"----------Auto-Commands --------"

"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


