" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
set guioptions=aAce
set backupdir=/Users/mmaheu/.vim_tmp
set noswapfile
set number

colorscheme mirodark

let mapleader=","
 
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


set guifont=Monaco:h12
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

nmap <silent> <C-D> :NERDTreeToggle<CR>

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
