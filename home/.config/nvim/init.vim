set number
set list

set listchars=tab:▸\ ,eol:¬

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

call minpac#add('tpope/vim-unimpaired')
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-projectionist')
"call minpac#add('chriskempson/base16-vim')
"call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('sgur/vim-editorconfig')
call minpac#add('tpope/vim-obsession')
call minpac#add('rakr/vim-one')
" call minpac#add('othree/yajs.vim')
" call minpac#add('othree/es.next.syntax.vim')
" call minpac#add('mxw/vim-jsx')
call minpac#add('pangloss/vim-javascript')
"call minpac#add('yuezk/vim-js')
call minpac#add('maxmellon/vim-jsx-pretty')
call minpac#add('styled-components/vim-styled-components', { 'branch': 'main' })
call minpac#add('tpope/vim-rails')
call minpac#add('w0rp/ale')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('rizzatti/dash.vim')
"call minpac#add('leafgarland/typescript-vim')
call minpac#add('HerringtonDarkholme/yats.vim')
"call minpac#add('mhartington/nvim-typescript', {'do': './install.sh'})
"call minpac#add('Shougo/deoplete.nvim')
"call minpac#add('wincent/terminus')

"call minpac#add('neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install() } })

call minpac#add('tpope/vim-commentary')
"call minpac#add('norcalli/nvim-colorizer.lua')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

call minpac#add('jparise/vim-graphql')

" :PackUpdate to update plugins, and :PackClean to clean out removed ones.

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" FZF Mappings
nnoremap <C-p> :<C-u>call fzf#run({'source': 'fd --type f', 'down': '40%', 'sink': 'e'})<CR>

set termguicolors
colorscheme one
set background=dark
highlight Comment cterm=italic

" Linting preferences
"let g:ale_linters = {'ruby': ['rubocop'], 'javascript': ['eslint'], 'typescript': ['eslint']}
let g:ale_linters = {'ruby': ['rubocop']}
let g:ale_linters_explicit = 1
"let g:ale_fixers = {'json': ['prettier'], 'typescript': ['prettier'], 'typescriptreact': ['prettier']}

" nmap <silent> [W <Plug>(ale_first)
" nmap <silent> [w <Plug>(ale_previous)
" nmap <silent> ]w <Plug>(ale_next)
" nmap <silent> ]W <Plug>(ale_last)

au BufNewFile,BufRead *.jsx.erb set filetype=javascript.jsx
au BufNewFile,BufRead *.tsx set filetype=typescript.tsx

set mouse=a

" Colorizer
"lua require'colorizer'.setup()

" CoC
" function! s:check_back_space() abort
" 	let col = col('.') - 1
" 	return !col || getline('.')[col - 1] =~ '\s'
" endfunction

" inoremap <silent><expr> <Tab>
" 	\ pumvisible() ? "\<C-n>" :
" 	\ <SID>check_back_space() ? "\<Tab>" :
" 	\ coc#refresh()

" inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <silent> K :call CocAction('doHover')<CR>
