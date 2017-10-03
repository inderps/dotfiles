language en_US
call plug#begin('~/.config/nvim/plugged')
  Plug 'sjl/badwolf'  
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'dyng/ctrlsf.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-ruby/vim-ruby'
  Plug 'kassio/neoterm'
  Plug 'elixir-lang/vim-elixir'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-sort-motion'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'kchmck/vim-coffee-script'
  Plug 'isRuslan/vim-es6'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme badwolf
let g:airline_theme='badwolf'
syntax enable

"To map <Esc> to exit terminal-mode
  tnoremap <Esc> <C-\><C-n>

"To simulate |i_CTRL-R| in terminal-mode:
  tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

" clear terminal
  nnoremap <silent> ,tl :call neoterm#clear()<cr>

"To use `Ctrl+{h,j,k,l}` to navigate windows from any mode:
  nnoremap <C-j> <C-w><C-j>
  nnoremap <C-k> <C-w><C-k>
  nnoremap <C-l> <C-w><C-l>
  nnoremap <C-h> <C-w><C-h>
  " nnoremap <C-u> :tabprevious<CR>
  " nnoremap <C-i> :tabnext<CR>

"Text Search shortcuts
  nmap     <C-F>f <Plug>CtrlSFPrompt
  vmap     <C-F>f <Plug>CtrlSFVwordPath
  vmap     <C-F>F <Plug>CtrlSFVwordExec
  nmap     <C-F>n <Plug>CtrlSFCwordPath
  nmap     <C-F>p <Plug>CtrlSFPwordPath
  nnoremap <C-F>o :CtrlSFOpen<CR>


"Switch buffers easily
  nnoremap <Leader>b :ls<CR>:b<Space>


"File search with new tab
  let g:fzf_layout = { 'window': '-tabnew' }

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set lazyredraw
set showmatch
set foldenable
set foldlevelstart=10 
set foldnestmax=10
set number
set list
set shell=zsh
set hidden

nnoremap <C-p> :FZF<CR>

filetype indent on

" smarter tab line enable
let g:airline#extensions#tabline#enabled = 1
let g:indentLine_color_term = 239
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_winsize = '100%'

"Git Highlighting
hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse

map !s :T bundle exec rspec %:<C-r>=line('.')<CR><CR>

:nnoremap <C-.> :set hlsearch!<CR>
" Workspace Setup
" ----------------
" function! DefaultWorkspace()
"     term git status
"     sp
" endfunction
" command! -register DefaultWorkspace call DefaultWorkspace()
