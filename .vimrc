set number
set mouse=a  "Control del mouse, habilita el uso
set numberwidth=1 "Ancho de los números de linea
set clipboard=unnamedplus "Habilita el clipboard para todo el sistema
"set clipboard=unnamed "windows
syntax enable "habilita colores de sintaxis
set showcmd "habilita que se muestre los comandos que se esten pulsando
set ruler "habilita la posicion (7,34) 
set encoding=utf-8 "Enconding del archivo
set showmatch "Cuando el cursor este sobre un parentesis, se colorea el de cierre
"set rnu "Lineas de posicion relativas
"set laststatus=2 "barra inferior visible
"set noshowmode "no muestra el modo actual p.e --insertar--
"set paste
set cursorline "linea debajo del cursor
set termguicolors "Algo de los colores
function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).

  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  "set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

call UseSpaces() "or :call UseTabs()

let g:coc_global_extensions = [
\ 'coc-ultisnips',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-python',
\ 'coc-stylelintplus',
\ 'coc-clangd',
\ 'coc-cssmodules',
\ 'coc-eslint',
\ 'coc-sh',
\ 'coc-highlight'
\ ]

call plug#begin('~/.vim/plugins')

Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"Lineas de identacion
Plug 'Yggdroot/indentLine' 

"Comentarios
Plug 'tpope/vim-commentary'

"Nightfly theme
Plug 'bluz71/vim-nightfly-guicolors'

"Lineas de identacion
Plug 'Yggdroot/indentLine' 

"Prettier para lenguajes
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x'}

"Nightfly theme
Plug 'bluz71/vim-nightfly-guicolors'

"JS & JSX
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

"EasyGrep (Search and Replace)
Plug 'vim-scripts/EasyGrep' 

"Pug 
Plug 'digitaltoad/vim-pug' 

"Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"C
Plug 'vim-scripts/c.vim'

"COC
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() } }

call plug#end()

"Aplicando tema
"colorscheme gruvbox
colorscheme nightfly
"let g:gruvbox_contrast_dark = "hard"

"Tecla lider para ejecutar macros
let mapleader=" " "Tecla lider para ejecutar macros

"Shortcuts
noremap / :Commentary
nmap <Leader>s :w<CR>
nmap <Leader>nt :NERDTreeFind<CR> 
nmap <Leader>w <Plug>(Prettier):w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>ww :wq<CR>
nmap <Leader>wq <Plug>(Prettier):wq<CR>
nmap <Leader>qq :qa!<CR>
nmap <Leader>p <Plug>(Prettier)
nmap <Leader>l :tabn<CR>
nmap <Leader>h :tabp<CR>
nmap <Leader>n :tabnew<CR>

let NERDTreeQuitOnOpen=1 "Cierra nerdtree cuando se abre un archivo
"NERDTree
let NERDTreeShowHidden=1 "Archivos ocultos

"IndentLines
let g:indentLine_char = '|'
let g:indentLine_enabled = 1
let g:indentLine_setColors = 0 "Para el tema nightfly, comentar en caso de problemas 


"Prettier
" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'auto'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = ''

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')
