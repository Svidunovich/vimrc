filetype plugin indent on
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'

call plug#end()


colorscheme sublimemonokai
set termguicolors
set exrc
set secure
set encoding=utf-8
set nocompatible
syntax enable
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Coplete:h16
set cursorline



let g:mapleader=','
set hlsearch
set incsearch
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && ./%:r<CR>
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key,'[jk]'))
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction
