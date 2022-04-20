" Let's save undo info!
if !isdirectory($HOME."/.nvim")
    call mkdir($HOME."/.nvim", "", 0770)
endif
if !isdirectory($HOME."/.nvim/undodir")
    call mkdir($HOME."/.nvim/undodir", "", 0700)
endif

"Initial Undo settings
set nocompatible
set history=10000
set undolevels=10000
set nobackup
set nowritebackup
set noswapfile
set undodir=~/.nvim/undodir
set undofile
set background=dark "for the dark version
set backspace=indent,eol,start
set clipboard=unnamedplus
set colorcolumn=80
set encoding=utf-8
set expandtab
set fo-=t
set foldlevel=99
set formatoptions=tcqrn1
set hidden
set ignorecase
set nohlsearch
set incsearch
set laststatus=2
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set matchpairs+=<:> " use % to jump between pairs
set modelines=0
set mouse=a         
set noshiftround
set nowrap
set number relativenumber
set ruler
set scrolloff=10
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=4
set spell
set spelllang=en_us
set tabstop=4
set timeoutlen=1000
set ttimeoutlen=100
set ttyfast
set visualbell
set textwidth=79
set textwidth=0
set wrapmargin=0

filetype off
filetype plugin indent off
call plug#begin('~/.local/share/nvim/plugged')
" New Splits
Plug 'scrooloose/nerdtree', { 'off':  'NERDTreeToggle' }
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'vim-scripts/YankRing.vim'
"
"
" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'rhysd/clever-f.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'phaazon/hop.nvim' 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sharkdp/fd'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'romgrk/barbar.nvim'
"
"
"
" Python
Plug 'airblade/vim-rooter'
Plug 'godlygeek/tabular'
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/simpylfold'
Plug 'jupyter-vim/jupyter-vim'
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-fugitive'
Plug 'Chiel92/vim-autoformat'
"
"
"
" Prose
Plug 'ap/vim-css-color'
Plug 'tpope/vim-abolish'
"
"
"
" Other
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'matze/vim-move'
"
"
"
" Display
Plug 'kien/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'markonm/traces.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'miyakogi/conoline.vim'
Plug 'vim-airline/vim-airline'
"
" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'savq/melange'
Plug 'arcticicestudio/nord-vim'
"
" Verb
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'  
Plug 'christoomey/vim-titlecase'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-surround' 
Plug 'vim-scripts/ReplaceWithRegister'
"
"
"
" Text Objects
Plug 'bps/vim-textobj-python'
Plug 'coderifous/textobj-word-column.vim'
Plug 'h1mesuke/textobj-wiw'
Plug 'kana/vim-arpeggio'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-textobj-delimited'
Plug 'mattn/vim-textobj-url'
Plug 'michaeljsmith/vim-indent-object'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'saaguero/vim-textobj-pastedtext'
Plug 'saihoooooooo/vim-textobj-space'
Plug 'terryma/vim-expand-region'
Plug 'thalesmello/vim-textobj-multiline-str'
Plug 'vimtaku/vim-textobj-keyvalue'

" New Plugins
Plug 'RRethy/vim-illuminate'
Plug 'junegunn/vim-peekaboo'
Plug 't9md/vim-textmanip'
Plug 'kana/vim-textobj-fold'
Plug 'tommcdo/vim-nowchangethat'
Plug 'dkarter/bullets.vim'
Plug 'pseewald/vim-anyfold'
Plug 'keith/swift.vim'
Plug 'reedes/vim-wheel'
Plug 'dyng/ctrlsf.vim'
Plug 'houtsnip/vim-emacscommandline'
Plug 'sheerun/vim-polyglot'
Plug 'justinmk/vim-sneak'
Plug 'andrewradev/tagalong.vim'
Plug 'mattn/emmet-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'terryma/vim-multiple-cursors'
Plug 'glepnir/dashboard-nvim'
Plug 'wfxr/minimap.vim'
" Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

filetype plugin indent on
syntax on

colorscheme gruvbox
" colorscheme melange
" colorscheme nord

nnoremap <SPACE> <Nop>
let mapleader = " "
noremap qq :q<CR>
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded .VIMRC"
nnoremap zz :update<cr>
noremap <c-s> :update<cr>
imap jk <Esc>
nnoremap <Leader>9 <C-w>v          " Vertical split
nnoremap <Leader>8 <C-w>s         " Horizontal split 
nnoremap <Leader><Leader>h <C-w>v          " Vertical split
nnoremap <Leader><Leader>v <C-w>s         " Horizontal split 
" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 
nnoremap <silent> // :BLines<CR>
noremap <Leader>1 :Goyo<CR> 
noremap <Leader>2 :Limelight!!<CR>
noremap <Leader><Leader>g :Goyo<CR> 
noremap <Leader><Leader>l :Limelight!!<CR>
noremap <Leader><Leader>f :Goyo<CR> :Limelight!!<CR>

noremap <F5> :NERDTreeToggle<CR> <c-w><c-p>
noremap <F6> :UndotreeToggle<CR>
noremap <F7> :YRShow<CR>
noremap <F8> :TagbarToggle<CR>
noremap <Leader>5 :NERDTreeToggle<CR><c-w><c-p>
noremap <Leader>6 :UndotreeToggle<CR>
noremap <Leader>7 :YRShow<CR>
noremap <Leader>8 :TagbarToggle<CR>

let g:yankring_max_history = 1000
let g:yankring_min_element_length = 2
let g:yankring_max_display = 70

set spell spelllang=en_us 

" " change the arrow keys
nnoremap <Left> <<
nnoremap <Right> >>
nmap <Up> [e
nmap <Down> ]e
" go to the last location
nnoremap <leader>x :b#<CR>

set termguicolors

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

 " autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

nmap <leader>qf  <Plug>(coc-fix-current)
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <Leader>run :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <Leader>0 :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

nnoremap <leader>vimrc :tabe $MYVIMRC<cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

lua require'hop'.setup()

nmap <Leader>a :HopLine<CR>
nmap <Leader>w :HopWord<CR>
nmap <Leader>pat :HopPattern<CR>
nmap <Leader><Leader>/ :HopPattern<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Default value is clap
let g:dashboard_default_executive ='fzf'
" replace current word and repeat with . n will skip R goes backwards
nnoremap <Leader><Leader>r *``cgn
nnoremap <Leader><Leader>R #``cgN

" forward and back tabs
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>
" hi my wife is beautiful  
"
" go to previous/next jump.  <C-i> works but shift backspace does not
nnoremap <Backspace> <C-o>
nnoremap ,<Backspace> <C-i>

" search forward for word under cursor.  use n and N
" nnoremap <Leader><Leader><Leader> *``
nnoremap <Leader>cursor *`` 
nnoremap Y y$
inoremap jj <ESC>
nnoremap <Leader>yr :YRShow<CR>
nnoremap <Leader>nt :NERDTreeToggle %<CR> <c-w><c-p>
nnoremap <Leader>un :UndotreeToggle<CR> <c-w><c-p>
nnoremap <Leader>tg :TagbarToggle<CR> <c-w><c-p>
nnoremap <Leader><Leader><Leader> :NERDTreeToggle<CR> :TagbarToggle<CR> 

nnoremap ; :
vnoremap ; :

nmap p "0p
nmap P "0P
" surround the current word in quotes
nmap <Leader>' ysiw'
nnoremap <Leader><Leader>t :terminal<CR>

let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

nnoremap <Leader>m :MinimapToggle<CR>

" make sure to alias ctags in mac
" alias ctags="`brew --prefix`/bin/ctags"
" set g:tagbar_ctags_bin
"let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" faster navigation
noremap K     {
noremap J     }
noremap H     ^
noremap L     $

" insert mode navigation
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap <C-K> <ESC>{i
inoremap <C-J> <ESC>}i
inoremap <C-H> <ESC>^i
inoremap <C-L> <ESC>$i

" quicker folds, open and close
nnoremap <Leader><Leader>c zM
nnoremap <Leader><Leader>o zR




