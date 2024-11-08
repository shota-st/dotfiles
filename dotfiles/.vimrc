" download vim-plug, a plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    \ >/dev/null 2>&1
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" plugins list
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tyru/open-browser.vim'
Plug 'previm/previm'
call plug#end()


" color scheme
let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1
let g:sonokai_disable_italic_comment = 1
silent! colorscheme sonokai

" start NERDTree automatically
" autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden = 1
nnoremap ff :NERDTreeFind<CR> 


" keymap for previm
nnoremap <C-p> :PrevimOpen<CR>

" settings for complementation
set completeopt=menuone,noinsert
inoremap <expr><CR> pumvisible()? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible()? "<Down>" : "<C-n>"
inoremap <expr><Tab> pumvisible()? "<Down>" : "<Tab>"
inoremap <expr><C-p> pumvisible()? "<Up>" : "<C-p>"

" basic settings
set autoread
set number
set showmatch
syntax enable
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set incsearch
nmap / /\v

" restriction to practice
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" shortcut to escape insert mode
inoremap jj <ESC>
