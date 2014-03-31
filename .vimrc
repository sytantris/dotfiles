set nocompatible
so ~/.vim/bundle/.bundlerc

filetype plugin indent on
set shortmess+=I                        " skip splash screen
set clipboard+=unnamed                  " make y copy to the actual real clipboard
set hidden                              " buffers can be hidden while modified
                                        " (use :ls to see buffered files
                                        " and :b to switch between)

" :: navigation {{{1
set ruler                               " add line & column number
set number                              " line numbers (use rnu for relative)
set numberwidth=3                       " width of the ruler
set mouse=a                             " allow mouse scrolling
set foldenable foldlevel=1000 foldmethod=marker
" }}}
" :: tabs & spaces {{{1
set backspace=indent,eol,start          " allows backspacing over lines and indents
set expandtab                           " expand tabs into spaces
set tabstop=2                           " makes the length of a hard tab = 2
set softtabstop=2                       " makes the length of a soft tab = 2
set shiftwidth=2                        " number of spaces used for each step of indent
" }}}
" :: display {{{1
set list                                " show control characters & line ending
set listchars=tab:»\ ,trail:· ",eol:▵   " sets characters for various annoying things
set cursorcolumn                        " show cursor column
set cursorline                          " show cursor line
set colorcolumn=80                      " mark 80 characters with a column
" }}}
" :: behaviour {{{1
set incsearch                           " incremental search : use /
set ignorecase                          " ignore case when searching in lowercase
set smartcase                           " turn off ignore case if caps are present
" }}}


"// use F2 to toggle paste mode.
"// turns off auto-indenting of anything pasted.
set pastetoggle=<F2>


" 256 colours
if &term =~ "256color"
  set t_Co=256
endif


" syntax highlighting
syntax on
if &t_Co > 2
  colorscheme molokai
endif


" recognize eruby
au BufNewFile,BufRead *.eruby set filetype=eruby
au BufNewFile,BufRead *.scss.css set filetype=scss
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufRead .bundlerc set filetype=vim
au FileType mako setlocal sts=4 sw=4
au FileType python setlocal sts=4 sw=4


" colour display
hi NonText ctermfg=black
hi SpecialKey ctermfg=234
hi ColorColumn ctermbg=234
hi CursorLine ctermbg=234
hi CursorColumn ctermbg=234
hi LineNr ctermfg=234 ctermbg=NONE
hi IncSearch ctermfg=000 ctermbg=208



" automatically source .vimrc after writing to it
aug vimrc
  au!
  au BufWritePost .vimrc so %
aug END


" force hjkl navigation
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" jump cursor naturally over wrapped lines
nnoremap j gj
nnoremap k gk

" use arrows to scroll down a page at a time "
nnoremap <up> <c-u>
nnoremap <down> <c-d>

" use ctrl+hjkl to navigate between windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"// use \ to split lines
nnoremap \ i<cr><esc>^

"// use enter to view and switch buffers
nnoremap <cr> :ls<cr>:b

"// remove all trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

vnoremap > >gv
vnoremap < <gv
vnoremap . <esc>.gv

"// persistent undo across sessions
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile
"set undolevels=1000

" set textwidth=85                      " wrap comments and normal text


" shortcut to change tab size
nnoremap <leader>2 <esc>:setlocal expandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
nnoremap <leader>4 <esc>:setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
nnoremap <leader>8 <esc>:setlocal expandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>
nnoremap <leader><leader>2 <esc>:setlocal noexpandtab tabstop=2 softtabstop=2 shiftwidth=2<cr>
nnoremap <leader><leader>4 <esc>:setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4<cr>
nnoremap <leader><leader>8 <esc>:setlocal noexpandtab tabstop=8 softtabstop=8 shiftwidth=8<cr>
