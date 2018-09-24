set number
set list

set listchars=tab:▸\ ,eol:¬

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-projectionist')
"call minpac#add('chriskempson/base16-vim')
"call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('sgur/vim-editorconfig')
call minpac#add('tpope/vim-obsession')
call minpac#add('rakr/vim-one')
call minpac#add('othree/yajs.vim')
call minpac#add('othree/es.next.syntax.vim')
call minpac#add('mxw/vim-jsx')
call minpac#add('tpope/vim-rails')
call minpac#add('w0rp/ale')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('rizzatti/dash.vim')

" :PackUpdate to update plugins, and :PackClean to clean out removed ones.

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" FZF Mappings

nnoremap <C-p> :<C-u>call fzf#run({'source': 'fd --type f', 'down': '40%'})<CR>

set termguicolors
colorscheme one
set background=dark

" Linting preferences
let g:ale_linters = {'ruby': ['rubocop']}

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
