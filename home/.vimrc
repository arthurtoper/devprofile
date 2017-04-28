call pathogen#helptags()
call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundles'))

set nocompatible

syntax on

filetype off

filetype plugin indent on

set background=dark
set foldenable
set showmode
set showmatch
set hlsearch
set autoindent
set number
set linebreak
set cindent
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set omnifunc=syntaxcomplete#Complete

"let base16colorspace=256
colorscheme Tomorrow-Night
"colorscheme base16-tomorrow
set t_ut=

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set list

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has('gui_running')
  "set guifont=Hack\ Regular:h12
  set lines=50
  set columns=90
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" NERDTree Configuration
map <C-n> :NERDTreeToggle<CR>

" Disable auto-commenting, which is bloody annoying.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Use tabs instead of spaces, and represent them as width 4.
set tabstop=4
set softtabstop=4
set shiftwidth=4 
set noexpandtab

if has("autocmd")
	filetype on
	" ...except for Ruby
	autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab
endif

" Show invisible characters.
set listchars=tab:▸\ ,eol:¬

let g:vim_markdown_folding_disabled=1

autocmd! BufWritePost * Neomake

set pastetoggle=<f5>
