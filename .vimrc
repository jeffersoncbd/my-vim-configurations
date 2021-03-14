map  <C-k> :tabn<CR>
map  <C-j> :tabp<CR>

call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'    " JavaScript support
  Plug 'leafgarland/typescript-vim' " TypeScript syntax
  Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

  Plug 'preservim/nerdtree' " File System Explorer

  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " LSP

  Plug 'editorconfig/editorconfig-vim' " Editorconfig
  Plug 'terryma/vim-multiple-cursors'  " Multiple cursors
  Plug 'itchyny/lightline.vim'         " Lightline theme
  Plug 'morhetz/gruvbox'               " Vim theme
call plug#end()

colorscheme gruvbox
set bg=dark

nmap <C-a> <Plug>(coc-codeaction)
nmap <C-d> :call CocAction('jumpDefinition')<CR>
map  <C-t> :NERDTree<CR>

let NERDTreeShowHidden=1
let g:coc_global_extensions = [ 'coc-tsserver' ]

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ }

