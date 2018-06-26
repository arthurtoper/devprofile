set number
set list

set listchars=tab:▸\ ,eol:¬

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

packadd minpac
call minpac#init()

"call minpac#add('tpope/vim-unimpaired')
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

" :PackUpdate to update plugins, and :PackClean to clean out removed ones.

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" FZF Mappings

nnoremap <C-p> :<C-u>FZF<CR>

set termguicolors
colorscheme one
set background=dark
