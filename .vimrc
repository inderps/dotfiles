call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dyng/ctrlsf.vim'
  Plug 'Yggdroot/indentLine'
  Plug 'sheerun/vim-polyglot'
  Plug 'leafgarland/typescript-vim'
  Plug 'tpope/vim-commentary'
  Plug 'jparise/vim-graphql'
  Plug 'vim-test/vim-test'
  Plug 'github/copilot.vim'
  Plug 'phanviet/vim-monokai-pro'
  Plug '~/vim-pair-with-ai', {'name': 'vim-pair-with-ai'}
call plug#end()

let mapleader = "," " map leader to comma

"File search with new tab
  let g:fzf_layout = { 'window': '-tabnew' }

nnoremap <C-p> :FZF<CR>

filetype indent on

""Text Search shortcuts
 nmap     <C-F>f <Plug>CtrlSFPrompt
 vmap     <C-F>f <Plug>CtrlSFVwordPath
 vmap     <C-F>F <Plug>CtrlSFVwordExec
 nmap     <C-F>n <Plug>CtrlSFCwordPath
 nmap     <C-F>p <Plug>CtrlSFPwordPath
 nnoremap <C-F>o :CtrlSFOpen<CR>

let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_winsize = '100%'
let g:ctrlsf_auto_focus = { "at":"start" }
let g:ctrlsf_default_view = 'normal'
let g:ctrlsf_default_root = 'cwd'
let g:ctrlsf_auto_preview = 0

if exists('+termguicolors')
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
endif

colorscheme monokai_pro
set termguicolors
highlight Normal guibg=black guifg=white

" let g:airline_theme = 'solarized'

let g:indentLine_color_term = 239

""https://vi.stackexchange.com/questions/25086/vim-hangs-when-i-open-a-typescript-file
"set re=2

""set linenumber
set number

""highlight search
set hlsearch
"" hi Search cterm=NONE ctermfg=black ctermbg=yellow


"change cursor in insert mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

let &t_SI="\033[4 q" " start insert mode
let &t_EI="\033[1 q" " end insert mode

"" /vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
set tabstop=2
