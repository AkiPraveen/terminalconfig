syntax on
set ruler
colorscheme koehler

if has("autocmd")
    filetype plugin indent on
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

" For everything else, use a tab width of 4 space chars.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" FZF commands, ctrl+f for files, leader+f for find in dir
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" VIM Plugged plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

set rtp+=/usr/local/opt/fzf
