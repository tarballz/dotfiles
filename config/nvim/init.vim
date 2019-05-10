" Bring in vim stuff
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" init minpac
packadd minpac
call minpac#init()

" Update minpac w/ ':call minpac#update()'
call minpac#add('k-takata/minpac', {'type': 'opt'})
" Make updating easier w/ macros
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Esc = exit term mode
nnoremap <C-p> :<C-u>FZF<CR>
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-v><Esc> <Esc>
endif

" Universal window switching in and out of term mode
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l
if has('nvim')
	tnoremap <M-h> <c-\><c-n><c-w>h
	tnoremap <M-j> <c-\><c-n><c-w>j
	tnoremap <M-k> <c-\><c-n><c-w>k
	tnoremap <M-l> <c-\><c-n><c-w>l
endif

" Switch to nvr editor when in nvim
if has('nvim') && executable('nvr')
	let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

" Case insensitive search
set ignorecase
set smartcase

