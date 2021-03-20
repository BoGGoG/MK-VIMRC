""" Optixal's Neovim Init.vim
" stolen from https://github.com/Optixal/neovim-init.vim
""" Vim-Plug
call plug#begin()

"" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' }
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'drmingdrmer/vim-tabbar'
Plug 'junegunn/seoul256.vim'
Plug 'zaki/zazen'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Luxed/ayu-vim'
Plug 'joshdick/onedark.vim'

"" Functionalities
Plug 'machakann/vim-highlightedyank'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tpope/vim-sensible'
"Plug 'tpope/vim-surround'
"Plug 'majutsushi/tagbar'
"Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/vim-easy-align'
"Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-abolish'
Plug 'Yggdroot/indentLine'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'sheerun/vim-polyglot'
"Plug 'chrisbra/Colorizer'
"Plug 'KabbAmine/vCoolor.vim'
"Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
"Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'metakirby5/codi.vim'
"Plug 'dkarter/bullets.vim'
Plug 'voldikss/vim-mma'
Plug 'jlanzarotta/bufexplorer'

call plug#end()

"""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

"""" Coloring
syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
set termguicolors

set termguicolors

"" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

"""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
"set list listchars=trail:»,tab:»\ 
set fillchars+=vert:\ 
set wrap breakindent
set encoding=UTF-8
set number
set title
set mouse=a
set backspace=indent,eol,start
set scrolloff=7
set fileformat=unix

" Perform dot commands over visual blocks:
vnoremap . :normal .<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

"""" Plugin Configurations

"" NERDTree
"let NERDTreeShowHidden=1
"let g:NERDTreeDirArrowExpandable = '↠'
"let g:NERDTreeDirArrowCollapsible = '↡'

"" Airline
let g:airline_powerline_fonts = 1
"set guifont=DroidSansMono\ Nerd\ Font:h11
"let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
"let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'


"" Neovim :Terminal
tmap <Esc> <C-\><C-n>

"autocmd BufWinEnter,WinEnter term://* startinsert
"autocmd BufLeave term://* stopinsert

"" Deoplete
"let g:deoplete#enable_at_startup = 1
"" Disable documentation window
"set completeopt-=preview

"" vim-pydocstring
"let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

"" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

"" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

"" EasyAlign
"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

"" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

"slime
let g:slime_target = "neovim"
let g:slime_python_ipython = 1
" let g:slime_no_mappings = 1
"
map <leader>qq :call RestartWolframKernel() <CR>

function! RestartWolframKernel()
    :SlimeSend1 Quit[]
    sleep 100m
    :SlimeSend1 wolframscript
endfunction

xmap <leader>c <Plug>SlimeRegionSend
nmap <leader>c <Plug>SlimeParagraphSend


"" TagBar
"let g:tagbar_width = 30
"let g:tagbar_iconchars = ['↠', '↡']

""" Markdown
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2

let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
nmap <SPACE> <plug>NERDCommenterToggle
vmap <SPACE> <plug>NERDCommenterToggle

"""" Custom Functions

"" Trim Whitespaces
"function! TrimWhitespace()
    "let l:save = winsaveview()
    "%s/\\\@<!\s\+$//e
    "call winrestview(l:save)
"endfunction

"" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

function! ColorAyu()
    set background=dark
    let g:ayucolor="dark"
    let g:ayu_italic_comment = 1
    colorscheme ayu
endfunction

function! ColorAyuLight()
    set background=light
    let g:ayucolor="mirage"
    let g:ayu_italic_comment = 1
    colorscheme ayu
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
    colorscheme seoul
endfunction

function! ColorMolokai()
    colorscheme molokai
endfunction

function! ColorOneDark()
    colorscheme onedark
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='badcat'
    color zazen
    IndentLinesEnable
endfunction

" Use K to show documentation in preview window.
nnoremap <leader>k :call Show_documentation()<CR>
function! Show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"""" Custom Mappings

let mapleader=","
"nmap \ <leader>q
"nmap <leader>w :TagbarToggle<CR>
"nmap <leader>ee :Colors<CR>
"nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorMolokai()<CR>
nmap <leader>e4 :call ColorAyu()<CR>
nmap <leader>e5 :call ColorAyuLight()<CR>
nmap <leader>e6 :call ColorOneDark()<CR>
nmap <leader>r :so ~/.config/nvim/init.vim<CR>
"nmap <leader>t :call TrimWhitespace()<CR>
"xmap <leader>a gaip*
"nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
"nmap <leader>d <Plug>(pydocstring)
"nmap <leader>f :Files<CR>
"nmap <leader>g :Goyo<CR>
"nmap <leader>h :RainbowParentheses!!<CR>
"nmap <leader>j :set filetype=journal<CR>
"nmap <leader>k :ColorToggle<CR>
"nmap <leader>l :Limelight!!<CR>
"xmap <leader>l :Limelight!!<CR>
"autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
map <S-h> <C-w>h
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-l> <C-w>l
nmap <right> :bn<RETURN>
nmap <left> :bp<RETURN>
" up and down
nmap <up> :BufExplorer<RETURN>
nmap <down> :b#<RETURN>

