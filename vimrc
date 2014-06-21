"version 6.0
"if &cp | set nocp | endif
set nocp
if has("gui_running") | set lines=999 columns=999 | endif
set guioptions-=T "remove toolbar
"set guioptions-=m "remove menubar
"let s:cpo_save=&cpo
"set cpo&vim
"map! <S-Insert> <MiddleMouse>
"nmap gx <Plug>NetrwBrowseX
"nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
"map <S-Insert> <MiddleMouse>
"let &cpo=s:cpo_save
"unlet s:cpo_save
" vim: set ft=vim :
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline
set mouse=a
set printoptions=paper:a4
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8

"========== Custom settings ==========
set winaltkeys=no
set shiftwidth=4 softtabstop=4 tabstop=4
set number
filetype plugin indent on
syntax on
let fortran_free_source=1
let fortran_have_tabs=1
hi Comment guifg=#939393
set incsearch ignorecase hlsearch
"set smartcase
set autoindent
set nostartofline
set laststatus=2
"set cmdheight=2
set shortmess=at
"set notimeout ttimeout ttimeoutlen=200
set vb t_vb=
set confirm
set pastetoggle=<F11>
let fortran_fold=1
let fortran_fold_conditionals=1
"let fortran_more_precise=1
set foldmethod=syntax
set hidden
set autoread
"set ruler
set foldlevelstart=3
set cursorline
let g:netrw_silent=1
set sps=fast,5
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set autochdir
set wrap linebreak nolist
set formatoptions+=a

"=============== BUFTABS ===============
" let g:buftabs_in_statusline=1
" let g:buftabs_only_basename=1
" set statusline=%<%f\ %h%m%r%=\|Col:%3v\ %3p%% 
" let g:buftabs_active_highlight_group="Visual"
" let g:buftabs_marker_modified="[+]"
" let g:buftabs_separator=":"
" set statusline=%<%f\ %h%m%r%=%-10.(%l,%c%V%)\ %p%% 
" let g:buftabs_marker_start="|"
" let g:buftabs_marker_end="|"

"=============== CMDs & ABBR ===============
"command! -nargs=1 Silent
"\ | execute ':silent !'.<q-args>
"\ | execute ':redraw!'
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
 	\ | wincmd p | diffthis
command! W write | !scp -q % mendieta:~/cfd/
cabbrev vd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'vert diffsplit' : 'vd')<CR>
cabbrev vimrc ~/.vimrc
"cabbrev w <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent w' : 'w')<CR>
"cabbrev wa <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent wa' : 'wa')<CR>
"cabbrev e <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent e' : 'e')<CR>
"cabbrev tn <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent tabnew' : 'tn')<CR>
"cabbrev vd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'silent vert diffsplit' : 'vd')<CR>
"cabbrev mendieta scp://mendieta/~
"cabbrev 0012 scp://mendieta/~/0012.gid

"============== Remaps ================
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
nmap <C-tab> :tabn<CR>
nmap <C-S-tab> :tabp<CR>
vmap <C-tab> :tabn<CR>
vmap <C-S-tab> :tabp<CR>
imap <C-tab> <ESC>:tabn<CR>
imap <C-S-tab> <ESC>:tabp<CR>
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
vnoremap <C-h> :bp<CR>
vnoremap <C-l> :bn<CR>
inoremap <C-h> <ESC>:bp<CR>
inoremap <C-l> <ESC>:bn<CR>
noremap <C-j> 5<C-e>
noremap <C-k> 5<C-y>
noremap <M-C> <ESC>
noremap <M-c> <ESC>
inoremap <M-C> <ESC>
inoremap <M-c> <ESC>
cnoremap <M-C> <C-c>
cnoremap <M-c> <C-c>
noremap <M-j> 5j
noremap <M-J> 5j
noremap <M-k> 5k
noremap <M-K> 5k
noremap <M-l> 5l
noremap <M-L> 5l
noremap <M-h> 5h
noremap <M-H> 5h
"noremap J j
noremap K k
" noremap L l
" noremap H h
noremap <C-c> "+y
inoremap <C-c> <ESC>"+y a
noremap <C-v> "+p
inoremap <C-v> <ESC>"+p a
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
cabbrev tabv tab sview +setlocal\ nomodifiable
nnoremap <C-I> <TAB>
nnoremap <TAB> za
noremap 0 ^
noremap ^ 0
noremap q <C-q>
noremap Q <C-Q>
noremap <M-q> q
noremap <M-Q> q
inoremap <M-/> <C-n>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nnoremap Y y$
vmap u <Nop>
vmap U <Nop>
map <F7> :setlocal spell! spelllang=es<CR>
hi CursorLine term=underline cterm=underline guibg=#E8F2FE
hi Folded term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=White
autocmd! InsertEnter * hi CursorLine term=underline cterm=underline guibg=PaleTurquoise1
autocmd! InsertLeave * hi CursorLine term=underline cterm=underline guibg=#E8F2FE
augroup filetype_fortran
	autocmd!
	autocmd FileType fortran setlocal colorcolumn=132
augroup END
autocmd! FileType tex setlocal spell spelllang=es | set tw=80

"========== Trick for commenting DEBUG section ==========
syn region MySkip contained start="^\s*#\s*\(if\>\|ifdef\>\|ifndef\>\)" skip="\\$" end="^\s*#\s*endif\>" contains=MySkip

let g:CommentDefines = ""

hi link MyCommentOut2 MyCommentOut
hi link MySkip MyCommentOut
hi link MyCommentOut Comment

map <silent> ,a :call AddCommentDefine()<CR>
map <silent> ,x :call ClearCommentDefine()<CR>

function! AddCommentDefine()
  let g:CommentDefines = "\\(" . expand("<cword>") . "\\)"
  syn clear MyCommentOut
  syn clear MyCommentOut2
  exe 'syn region MyCommentOut start="^\s*#\s*ifdef\s\+' . g:CommentDefines . '\>" end=".\|$" contains=MyCommentOut2'
  exe 'syn region MyCommentOut2 contained start="' . g:CommentDefines . '" end="^\s*#\s*\(endif\>\|else\>\|elif\>\)" contains=MySkip'
endfunction
function! ClearCommentDefine()
  let g:ClearCommentDefine = ""
  syn clear MyCommentOut
  syn clear MyCommentOut2
endfunction

"========== Workaround for Alt- in terminal ==========
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
set ttimeout ttimeoutlen=50

"=============== Replace under cursor =============== 
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

"=============== Scrolling ===============
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
