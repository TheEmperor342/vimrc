" STARTER COMMANDS
" ===========================
set clipboard=unnamed
set number
syntax on
set ruler
set mouse=a

" FONT
" ===========================

let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

" CHANGE TAB SIZE TO 2 
" ===========================
set tabstop=2
set shiftwidth=2

" PLUGINS
" ===========================
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'dracula/vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'andweeb/presence.nvim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim

" CHANGE THEME
" ===========================
colorscheme catppuccin

autocmd VimEnter * NERDTree
