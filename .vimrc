" Initial Undo settings
set nocompatible
set history=10000
set undolevels=10000
set nobackup
set nowritebackup
set noswapfile
set undodir=/home/matt/.vim/undodir
set undofile

" Disable polyglot for markdown
let g:polyglot_disabled = ['markdown']

" Plugins
filetype off
filetype plugin indent off
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'off':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'tmhedberg/simpylfold'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/fountain.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'vim-airline/vim-airline'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-repeat'
Plug 'jupyter-vim/jupyter-vim'
Plug 'easymotion/vim-easymotion'
Plug 'markonm/traces.vim'
Plug 'tpope/vim-abolish'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-unimpaired'
Plug 'machakann/vim-highlightedyank'
Plug 'sheerun/vim-polyglot'
Plug 'brooth/far.vim'
Plug 'miyakogi/conoline.vim'
Plug 'Chiel92/vim-autoformat'
call plug#end()
filetype plugin indent on
syntax on

" Force to use underline for spell check results
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
    \ highlight SpellBad
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellCap
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellLocal
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellRare
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
augroup END

" Remaps!
:ab matty Matthew Jay Kreidler
colorscheme gruvbox
imap jk <Esc>
nnoremap <SPACE> <Nop>
let mapleader = " "
nnoremap / :set hlsearch<CR> /
nnoremap <leader>EOL :set list!<CR> " Toggle tabs and EOL
nnoremap <leader>vimrc :tabe $MYVIMRC<cr>
nnoremap ,, <C-w>v          " Vertical split
nnoremap ,m <C-w>s         " Horizontal split 
nnoremap <c-J> <PageDown>  
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>x :b#<CR>
nmap Y y$

" Add a new line, then go back to normal mode
nnoremap <leader>o mzo<Esc>k`z
nnoremap <leader>O mzO<Esc>j`z

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

" change the arrow keys
nnoremap <Left> <<
nnoremap <Right> >>
vnoremap <Left> <gv
vnoremap <Right> >gv
nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

" Quit
noremap <leader>q :q<CR>

" Sets
runtime! macros/matchit.vim
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
set listchars=tab:▸\ ,eol:¬
set matchpairs+=<:> " use % to jump between pairs
set modelines=0
set mouse=a         
set noshiftround
set nowrap
set number relativenumber
set ruler
set scrolloff=3
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
set ttymouse=xterm2
set visualbell
set textwidth=79
set textwidth=0
set wrapmargin=0

" Saving
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded .VIMRC"
nnoremap zz :update<cr> 
noremap <c-s>s :update<cr>

" Filetype-specific
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
function! <SID>StripTrailingWhitespaces()
  if !&binary && &filetype != 'diff'
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
  endif
endfun
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,txt call pencil#init({'wrap': 'soft'})
                            \ | call lexical#init()
                            \ | call litecorrect#init()
augroup END

" Python files
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd FileType python imap <buffer>  <leader>, <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer>  <leader>, :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd BufWritePost *.py call flake8#Flake8()
autocmd FileType python inoremap """ """"""<left><left><left>

" Plugin mappings
nnoremap <silent> // :BLines!<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-h> :History<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>/ :Files<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>commits :Commits<CR>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <Leader>; :FZF<CR>
imap <leader>11 <plug>(fzf-complete-line)
inoremap <expr> <leader>22 fzf#vim#complete#path('rg --files')
inoremap <expr> <leader>33 fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})
let NERDTreeShowHidden=1
let g:UltiSnipsExpandTrigger="<F12>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:jupyter_mapkeys = 0
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
nnoremap <Leader>gg :Goyo<CR>
nnoremap <Leader>tt :Limelight!!<CR>
nmap <Leader>L <Plug>(easymotion-overwin-line)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Control left and right arrows for limelight and goyo                
noremap <ESC>[1;5D :Goyo<CR>
noremap <ESC>[1;5C :Limelight!!<CR>

"Control up and down to go through yands
nmap <ESC>[1;5A <Plug>yankstack_substitute_older_paste
nmap <ESC>[1;5B <Plug>yankstack_substitute_newer_paste

" Function Keys
noremap <F1> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
noremap <F2> :TogglePencil<CR>
noremap <F3> :set hlsearch!<CR>
noremap <F4> :e /home/matt/.vimrc<CR>
noremap <F5> :UndotreeToggle<CR>
noremap <F6> :NERDTreeToggle<CR>
noremap <F7> :TagbarToggle<CR>
noremap <F8> :ConoLineToggle<cr>
noremap <F9> :set wrap!<cr>

" Select all
nnoremap <leader>a ggVG

" Yank Blink
let g:highlightedyank_highlight_duration = 200

" Edit a file with :e
nnoremap <Leader>e :e 

" Highlight current line
let g:conoline_auto_enable = 1
let g:conoline_color_insert_nr_dark = 'guibg=#000000'

" Yank to end of line
nnoremap Y y$<cr>

" Python autoformatter
noremap <F10> :Autoformat<CR>
