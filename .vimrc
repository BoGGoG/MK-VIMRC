" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker :
" Marco Knipfer .vimrc
" lastname at F I A S dot uni - frankfurt dot de


"--------------------------------------------------------------
"|                                                            |
"|                                                            |
"--------------------------------------------------------------
"|   MM          MM   KK    KK   V           I M V        M   |
"|   MMM        MMM   KK   KK     V          I MV        MM   |
"|   MM M      M MM   KK  KK       V         I V M      M M   |
"|   MM  M    M  MM   KK KK         V        IVM  M    M  M   |
"|   MM   MMMM   MM   KKK            V       V M   MMMM   M   |
"|   MM    MM    MM   KK KK           V     VI M    MM    M   |
"|   MM          MM   KK  KK           V   V I M          M   |
"|   MM          MM   KK   KK           V V  I M          M   |
"|   MM          MM.  KK    KK.          V   I M          M   |
"--------------------------------------------------------------
"|                                                            |
"--------------------------------------------------------------
                                                                                       
                                                                                       

" Structure:
" - Environment
"   - Letting Vundle work
"   - Plugins
" - General settings
" - Vim UI
" - Keymappings
" - Pluginsettings
" - Functions

" Requirements:
" - [vundle](https://github.com/gmarik/Vundle.vim)
" - sauce code powerline font

" Environment/Vundle/Plugins:
" {
" Let Vundle work
    " {
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'


    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    " }

    " Here are all the plugins:
    " Plugins:
    "{
    "Plugin 'tpope/vim-fugitive'        " Git Plugin
    Plugin 'Lokaltog/vim-easymotion'    " Neat! Maybe switch to stupideasymotion
    "Plugin 'altercation/vim-colors-solarized'
    "Plugin 'spf13/vim-colors'
    "Plugin 'spf13/vim-autoclose'        
    Plugin 'flazz/vim-colorschemes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'   " ,cc for comment / ,cu for uncomment
    Plugin 'scrooloose/syntastic'
    Plugin 'tpope/vim-surround'         " Brackets --> read!
    Plugin 'bling/vim-airline'          " better status bar
    Plugin 'vim-scripts/sessionman.vim' " :SessionSave
    Plugin 'majutsushi/tagbar'          " tags 
    Plugin 'ervandew/supertab'          " Tab completion
    Plugin 'mbbill/undotree'
    Plugin 'jlanzarotta/bufexplorer'
    Plugin 'jcf/vim-latex'             " Maybe use other latex plugin (latex auto ...)
    " https://github.com/gerw/vim-latex-suite     someday test it!
    Plugin 'tpope/vim-repeat.git'       " Repeat surround
    Plugin 'Raimondi/delimitMate'       " Ok try this, think it's good :P
    Plugin 'jeffkreeftmeijer/vim-numbertoggle'  " Plugin for toggling line numering and having abs. numbers in insert mode
    " http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
    Plugin 'godlygeek/tabular'  "also for alignment
    Plugin 'vim-scripts/Vimball'
    "Plugin 'jistr/vim-nerdtree-tabs'
    "Plugin 'nathanaelkane/vim-indent-guides'
    "Plugin 'godlygeek/tabular'
    "Plugin 'vim-scripts/Align'          " for alignment of eg tables
    "Plugin 'vim-scripts/AutomaticLaTexPlugin'
    "Plugin 'Townk/vim-autoclose'        " autoclosing brackets
    "Plugin 'wincent/Command-T'          " For opening files
    "Plugin 'kien/ctrlp.vim'
    "Plugin 'terryma/vim-multiple-cursors'
    "Plugin 'bling/vim-bufferline'
    " }
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required

    " Identify platform 
    " {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
    " }
" }

" General Settings:
"{
    filetype on
    filetype plugin indent on   " Automatically detect file types.
    set fileformats=unix,dos,mac "allowes my alfred-plugin (mac) to work properly
    syntax on                   " Syntax highlighting
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    "scriptencoding utf-8       " what does this thing?
    set encoding=utf-8 fileencoding=utf-8
    set clipboard=unnamed       " in order to have the same clipboard as elsewhere
    "set autowrite              " Automatically write a file when leaving a modified buffer, interesting, but not using it for now
    set virtualedit=onemore     " Allow for cursor beyond last character
    set history=1000            " Store a ton of history (default is 20)
    set spell                   " Spell checking on, I don't really like it
    set hidden                  " Allow buffer switching without saving (Keybindings -> switching buffers with arrow keys)
    set backupdir=~/.vim/backup// " saves all ~ files in the same directory
    "set directory=~/.vim/swap//   " same for swap
    "set nobackup
    set noswapfile
    set undodir=~/.vim/undo//
    set visualbell              " turn off annoying bell (eg when pressing esc)    
"}

" Vim UI:
" {
"   colors, font:
"   {
        set guifont=Sauce\ Code\ Powerline\ Light:h16            " Font family and font size.
        " solarized theme{
        "set guifont=Sauce\ Code\ Powerline\ Light:h13
        "let g:solarized_termcolors=256
        "let g:solarized_termtrans=1
        "let g:solarized_contrast="normal"
        "let g:solarized_visibility="normal"
        " }
        highlight NonText guifg=#4a4a59     "other colors for the tab-symbols
        highlight SpecialKey guifg=#4a4a59
        color desert                " Load a colorscheme
        set antialias               " MacVim: smooth fonts.
"   }
"   misc:
"   {
    set nohlsearch                  " turn off highlighting for searched expressions, have shortcut "-"
    set incsearch                   " highlight as we search however
    set matchtime=5                 " blink matching chars for .x seconds
    set cursorline                  " Highlight current line
    let g:CSApprox_hook_post = ['hi clear SignColumn'] " do not highlight current line number
    set ruler                       " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set backspace=indent,eol,start  " see :help backspace
    "set nu                          " Line numbers on
    set rnu                         " relative line numbering, toggle with <C-N> (plugin?)
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set ignorecase                  " Case insensitive search
    set smartcase                   " only case insensitive, when only lowercase letters
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
    set foldenable                  " Auto fold code
    set list                        " in order to see tabs, keybinding ,l
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
    "set listchars=tab:\|\<Space>
    set ttyfast                     " Improves redrawing, don't know if this really does anything
    set foldcolumn=2                " indicates folding on left corner
"   }
"   Formatting:
"   {
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set smartindent                 " try to be smart about indenting (C-style)
    set shiftwidth=4                " Use indents of 4 spaces
    set copyindent                  " use existing indents for new indents
    set preserveindent              " save as much indent structure as possible
    set listchars=tab:▸\ ,eol:¬     " Use the same symbols as TextMate for tabstops and EOLs
                                    " --> shortcut for to toggle :set list!
    set showmatch                   " Show matching brackets/parenthesis
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set shiftround                  " always round indents to multiple of shiftwidth
    set guioptions-=r               " don't show right scrollbar (maybe only on mac)
    set guioptions-=T               " Disable the macvim toolbar
    set guioptions-=L
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set nolist                      " list shows whitespaces, toggle with ,l (see keymappings below)
    "}
"   statusbar:
"   {
"       I'll have to work on that one. 
        set showmode                     "Display the current mode
        set showcmd                      "shows info about current line
        set laststatus=2                          "to display the status line always
        set statusline=%<%f\                     " Filename
        set statusline+=%w%h%m%r                 " Options
        "set statusline+=%{fugitive#statusline()} " Git Hotness
        set statusline+=\ [%{&ff}/%Y]            " Filetype
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
"   }
" }
"
" Keymappings:
"{
"   Very cool, saves pinky pain :P
"   but I'll have get used to it ... sometime ...
    "nore ; :
    "nore , ;

    " better mapleader
    let mapleader = ','

" Moving in tabs/windows
    " Comment: in the spf13 vimrc S and C are the other way round for
    " switching tabs\windows. I like this
    " better, because in safari I have shortcuts to switch tabs with <C-H/L>
    " Also very good reason: <C-J> ist used in latex-suite to jump to
    " placeholder

    " Easier moving in tabs and windows
    " The lines conflict with the default digraph mapping of <C-K>
    " also joining lines is now ,j instead of J
    map <S-J> <C-W>j<C-W>_
    map <S-K> <C-W>k<C-W>_
    map <S-L> <C-W>l<C-W>_
    map <S-H> <C-W>h<C-W>_
    " The following two lines conflict with moving to top and
    " bottom of the screen, whith it you can jump between tabs
    map <C-H> gT
    map <C-L> gt
    " joining lines
    nmap <leader>j ^d0i<BS><space>
    " Left and right are for switching buffers, not moving the cursor:
    nmap <right> :bn<RETURN>
    nmap <left> :bp<RETURN>
    " up and down 
    nmap <up> :BufExplorer<RETURN>
    nmap <down> :b#<RETURN>

    " Jump to beginning/end of line while in insert
    inoremap <c-i> <esc>I
    inoremap <c-a> <esc>A
    " and while in normal
    if OSX()
        nnoremap ˙ ^
        nnoremap ¬ $
    else
        nmap <A-h> ^
        nnoremap <A-l> $
    end

    " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk
    noremap gj j
    noremap gk k    
    " move up/down fast with alt j alt k
    if OSX()
        nmap ∆ 10jzz
        noremap ∆ 10jzz
        nmap ˚ 10kzz
        noremap ˚ 10kzz
    else
        nmap <A-j> 10jzz
        noremap <A-j> 10jzz
        nmap <A-k> 10kzz
        noremap <A-k> 10kzz
    end
    " open split with ,v
    noremap <leader>v <C-w>v
    " Insert empty line.
    if OSX() 
        nmap ø o<ESC>k
        noremap Ø O<ESC>j
    " ok I included the normal commands too :P
    else
        nmap <A-o> o<ESC>k
        nmap <A-O> O<ESC>j
    end 
    " Problem: Conflicts with my movement above
    " <m-j> and <m-k> to drag lines in any mode
    "if OSX() 
        "noremap º :m+<CR>
        "noremap ∆ :m-2<CR>
        "inoremap º <Esc>:m+<CR>
        "inoremap ∆ <Esc>:m-2<CR>
        "vnoremap º :m'>+<CR>gv
        "vnoremap ∆ :m-2<CR>gv
    "end

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    " Code folding options
    "nmap <leader>f0 :set foldlevel=0<CR>
    "nmap <leader>f1 :set foldlevel=1<CR>
    "nmap <leader>f2 :set foldlevel=2<CR>
    "nmap <leader>f3 :set foldlevel=3<CR>
    "nmap <leader>f4 :set foldlevel=4<CR>
    "nmap <leader>f5 :set foldlevel=5<CR>
    "nmap <leader>f6 :set foldlevel=6<CR>
    "nmap <leader>f7 :set foldlevel=7<CR>
    "nmap <leader>f8 :set foldlevel=8<CR>
    "nmap <leader>f9 :set foldlevel=9<CR>

    " Shortcut to rapidly toggle `set list` (see whitespaces etc)
    nmap <leader>l :set list!<CR>

    " Space to toggle folds.
    nnoremap <Space> za
    vnoremap <Space> za

    "Refocus" folds, awesome!  zM closes all folds, zv opens fold in current line, zz focus to middle of screen
    nnoremap <leader>z zMzvzz

    " Disable search highlighting with a single keypress
    map - :nohls<cr>

    " Center screen on next/previous selection.
    map n nzz
    map N Nzz

    " Quick editing -----------------------------------------------------------
        nnoremap <leader>ev :tabnew $MYVIMRC<cr>
    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv
    " Allow using the repeat operator with a visual selection (!)
    " http://stackoverflow.com/a/8064607/127816
    vnoremap . :normal .<CR>   
    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
"}

" Pluginsettings:
"{
    "VIM Airline:
    "{
        let g:airline_powerline_fonts=1
        let g:airline_left_sep='›'  " Slightly fancier than '>'
        let g:airline_right_sep='‹' " Slightly fancier than '<'
        let g:airline#extensions#tabline#enabled = 1
    "}
    "Vim-autoclose:
    "{
        let g:autoclose_vim_commentmode = 1     " lets me comment .vim files
    "}
    "Tagbar:
    "{
    nnoremap <leader>t :TagbarToggle<CR>
    "}
    "Easymotion:
    "{
    "map \ <Plug>(easymotion-prefix)
    "}
    "LaTeX Suite:
    "{
    " Problem: Alt Keys on mac ...
    if OSX()
        imap ¬ <Plug>Tex_LeftRight
        imap ∫ <Plug>Tex_MathBF
        imap ˆ <Plug>Tex_InsertItemOnThisLine
        imap ç <Plug>Tex_MathCal
    end
    set iskeyword+=: 
    let g:tex_flavor='latex'
    let g:Tex_TreatMacViewerAsUNIX = 1
    let g:Tex_ExecuteUNIXViewerInForeground = 1
    let g:Tex_ViewRule_ps = 'open -a Skim'
    let g:Tex_ViewRule_pdf = 'open -a /Applications/Skim.app'
    "call Tex_SetTeXCompilerTarget('View','pdf')
    "}
    " NerdTree: 
    "   {
        map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1
        "let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=1
    " }
    " UndoTree:
    " {
        nnoremap <Leader>u :UndotreeToggle<CR>
        " If undotree is opened, it is likely one wants to interact with it.
        let g:undotree_SetFocusWhenToggle=1
    " }
    " Supertab:
    " {
        let g:SuperTabDefaultCompletionType = "context"
        :highlight Pmenu guibg=brown gui=bold   " this is actually not a supertab,but a omnicomplete setting
    " }
    " Tabularize:
    "{
        nmap <Leader>a& :Tabularize /&<CR>
        vmap <Leader>a& :Tabularize /&<CR>
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:<CR>
        vmap <Leader>a: :Tabularize /:<CR>
        nmap <Leader>a:: :Tabularize /:\zs<CR>
        vmap <Leader>a:: :Tabularize /:\zs<CR>
        nmap <Leader>a, :Tabularize /,<CR>
        vmap <Leader>a, :Tabularize /,<CR>
        nmap <Leader>a,, :Tabularize /,\zs<CR>
        vmap <Leader>a,, :Tabularize /,\zs<CR>
        nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
    " }
    " Session List: 
    "{
        set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
        nmap <leader>sl :SessionList<CR>
        nmap <leader>ss :SessionSave<CR>
        nmap <leader>sc :SessionClose<CR>
    " }
"}

" Functions:
"{
    " Strip whitespace
    "{
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }
"}


" TODO:
"{
"   - update vundle -> Vundle
"   - read on vim-surround
"   - read :help insert 
"   - supertab better settings
"}


