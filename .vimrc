filetype plugin indent on
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


colorscheme gruvbox
set background=dark

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
