set nu
set ruler
set relativenumber
set bg=dark
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
set nowrap
"plugins=(git zsh-autosuggestions)
"Better command-line completion.
set wildmenu

"Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

"Deactivate vim sounds.
set noerrorbells visualbell t_vb=

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set updatetime=100
let g:ale_completion_enabled = 1
call plug#begin('~/.vim/plugs')

syntax on
filetype plugin indent on

Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'

call plug#end()

"set ts=2 sw=2 et 
"colorscheme Revolution
colorscheme gruvbox
"colorscheme badwolf
autocmd vimenter * NERDTree

"ALE configs
let g:ale_completion_autoimport=1
let g:airline#entensions#ale#enabled=1
let g:ale_lint_on_text_changed=1
let g:ale_lint_on_save=1
let g:ale_fix_on_save=1
let g:ale_sign_error='=>'
let g:ale_sign_warning='##'
"let g:airline_theme='bubblegum'

"git-gutter configs
let g:gitgutter_enabled=1
let g:gitgutter_signs=1
let g:gitgutter_highlight_lines=1
let g:gitgutter_highlight_linenrs=1
let g:gitgutter_async=1

"Airline configs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
"let g:airline#extensions##tabline#formatter='unique_tail_improved'
"let g:airline_theme='badwolf'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
