
" UNDO SETTINGS 
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "", 0700)
endif

" PLUGINS
filetype off
filetype plugin indent off
call plug#begin('~/.vim/plugged')

" New Splits
Plug 'scrooloose/nerdtree', { 'off':  'NERDTreeToggle' }
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'vim-scripts/YankRing.vim'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'rhysd/clever-f.vim'
Plug 'easymotion/vim-easymotion'

" Python
Plug 'airblade/vim-rooter'
Plug 'godlygeek/tabular'
Plug 'nvie/vim-flake8'
Plug 'tmhedberg/simpylfold'
Plug 'jupyter-vim/jupyter-vim'
Plug 'Konfekt/FastFold'
Plug 'tpope/vim-fugitive'
Plug 'Chiel92/vim-autoformat'

" Prose
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/fountain.vim'
Plug 'tpope/vim-abolish'

" Other
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufOnly.vim'
Plug 'matze/vim-move'

" Display
Plug 'kien/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'markonm/traces.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'miyakogi/conoline.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
"
"
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
Plug 'AndrewRadev/bufferize.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'tommcdo/vim-exchange'
Plug 'RRethy/vim-illuminate'
Plug 'lfv89/vim-interestingwords'
Plug 'AndrewRadev/linediff.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'chrisbra/nrrwrgn'
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
Plug 'wfxr/minimap.vim'


Plug 'brooth/far.vim'
Plug 'kqito/vim-easy-replace'


call plug#end()
filetype plugin indent on
syntax on


" SETS
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
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
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
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set nocompatible
set history=10000
set undolevels=10000
set nobackup
set nowritebackup
set noswapfile
set undodir=~/.vim/undodir
set undofile

" Remaps!
nnoremap <SPACE> <Nop>
let mapleader = " "
colorscheme gruvbox
imap jk <Esc>
nnoremap  / :set hlsearch<CR> /
nnoremap <leader>EOL :set list!<CR> " Toggle tabs and EOL
nnoremap \e :set list!<CR>
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
" Quit
noremap qq :q<CR>
" Saving
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded .VIMRC"
nnoremap zz :update<cr>
noremap <c-s> :update<cr>

" Python files
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd FileType python imap <buffer>  <leader>, <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer>  <leader>, :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
" autocmd BufWritePost *.py call flake8#Flake8()
autocmd FileType python inoremap """ """"""<left><left><left>

" Plugin mappings
nnoremap <silent> // :BLines<CR>
nnoremap <silent> <Leader>\ :CtrlSF<CR>
nnoremap <silent> \\ :Lines<CR>
nnoremap <silent> <C-h> :History<CR>
nnoremap <silent> ?? :Rg<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>/ :Files<CR>
nnoremap <silent> <Leader>t :BTags<CR>
nnoremap <silent> <Leader>H :History:<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>commits :Commits<CR>
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
" " Control left and right arrows for limelight and goyo                
noremap <ESC>[1;5D :Goyo<CR>
noremap <ESC>[1;5C :Limelight!!<CR>

"Control up and down to go through yanks
" nmap <ESC>[1;5A <Plug>yankstack_substitute_older_paste
" nmap <ESC>[1;5B <Plug>yankstack_substitute_newer_paste

" Function Keys
noremap <F1> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
" noremap <F2> :TogglePencil<CR>
noremap <F2> :set list!<CR>
noremap <F3> :set hlsearch!<CR>
noremap <F10> :e /home/matt/.vimrc<CR>
noremap <F4> :YRShow<cr> 
noremap <F5> :UndotreeToggle<CR>
noremap <F6> :NERDTreeToggle<CR> <c-w><c-p>
noremap <F7> :ConoLineToggle<cr>
noremap <F8> :TagbarToggle<CR>

" Python autoformatter
noremap <F9> :Autoformat<CR>
" Yank Blink
let g:highlightedyank_highlight_duration = 200

" Edit a file with :e
nnoremap <Leader>e :e 

" Highlight current line
let g:conoline_auto_enable = 1
let g:conoline_color_insert_nr_dark = 'guibg=#000000'

" Yank to end of line
nnoremap Y y$<cr>

" use keypad plus and minus etc to open and close folds
" note that numlock needs to be off for this to work
nnoremap <kPlus> zR<CR>
nnoremap <kMinus> zM<CR>
nnoremap <kDivide> zC<CR>
nnoremap <kMultiply> zO<CR>

" PLUGIN MAPPINGS
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBrace

let g:skip_default_textobj_word_column_mappings = 1
xnoremap <silent> am :<C-u>call TextObjWordBasedColumn("aw")<cr>
xnoremap <silent> aM :<C-u>call TextObjWordBasedColumn("aW")<cr>
xnoremap <silent> im :<C-u>call TextObjWordBasedColumn("iw")<cr>
xnoremap <silent> iM :<C-u>call TextObjWordBasedColumn("iW")<cr>
onoremap <silent> am :call TextObjWordBasedColumn("aw")<cr>
onoremap <silent> aM :call TextObjWordBasedColumn("aW")<cr>
onoremap <silent> im :call TextObjWordBasedColumn("iw")<cr>
onoremap <silent> iM :call TextObjWordBasedColumn("iW")<cr>
xmap Ada <Plug>(textobj-datetime-auto)
xmap Add <Plug>(textobj-datetime-date)
xmap Adt <Plug>(textobj-datetime-time)
xmap Adz <Plug>(textobj-datetime-tz)
omap Ida <Plug>(textobj-datetime-auto)
omap Idd <Plug>(textobj-datetime-date)
omap Idf <Plug>(textobj-datetime-full)
omap Idz <Plug>(textobj-datetime-tz)
omap Idt <Plug>(textobj-datetime-time)
xmap Adf <Plug>(textobj-datetime-full)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
set guifont=Consolas:h16
" This is a sentence
"here we go
set spell spelllang=en_us 
" in visual mode, map '\c' to move the cursor to the other end of the selection
" in our case it has no effect because there is no 'other end' but we need a silly
" hack like this for our use case: doing 'vic'
xnoremap \c o

" in operator-pending mode, use 'vic' to define what text to operate on
omap <silent> \c :normal v\c<CR>

nmap \c <Plug>(textmanip-duplicate-down)
xmap \C <Plug>(textmanip-duplicate-up)
nmap \C <Plug>(textmanip-duplicate-up)

xmap <Down> <Plug>(textmanip-move-down)
xmap <Up> <Plug>(textmanip-move-up)
xmap <Left> <Plug>(textmanip-move-left)
xmap <Right> <Plug>(textmanip-move-right)

" toggle insert/replace with \ir
nmap \ir <Plug>(textmanip-toggle-mode)
xmap \ir <Plug>(textmanip-toggle-mode)
" " change the arrow keys
nnoremap <Left> <<
nnoremap <Right> >>
nmap <Up> [e
nmap <Down> ]e
nnoremap <leader>rr yiw:%s/\<<C-r>"\>//g<left><left>
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>
" COC stuff
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

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

" MK MAPPINGS
" insert mode navigation
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" fast insert mode navigation
" inoremap <C-K> <ESC>{i
" inoremap <C-J> <ESC>}i
" inoremap <C-H> <ESC>^i
" inoremap <C-L> <ESC>$i

" quicker folds, open and close
nnoremap <Leader><Leader>c zM
nnoremap <Leader><Leader>o zR

" faster up and down with ctrl j and k
nnoremap <c-j> <c-f>
nnoremap <c-k> <c-b>

" get to beginning and end of line ctrl H and L
nnoremap <C-H> ^
nnoremap <C-L> $

" surround the current word in quotes
nmap <Leader>' ysiw'
nmap <Leader>" ysiw"
nnoremap <Leader><Leader>t :terminal<CR>
nnoremap ; :
vnoremap ; :
nnoremap <Leader>cursor *`` 
nnoremap Y y$
inoremap jj <ESC>
nnoremap <Leader>yr :YRShow<CR>
nnoremap <Leader>nt :NERDTreeToggle %<CR> <c-w><c-p>
nnoremap <Leader>un :UndotreeToggle<CR> <c-w><c-p>
nnoremap <Leader>tg :TagbarToggle<CR> <c-w><c-p>
nnoremap <Leader><Leader><Leader> :NERDTreeToggle<CR> :TagbarToggle<CR> 
nnoremap <Leader><Leader>r *``cgn
nnoremap <Leader><Leader>R #``cgN

" forward and back tabs
nmap <Leader>a <Plug>(easymotion-overwin-line)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <leader>s <Plug>(easymotion-overwin-f2)
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

nnoremap <Leader>m :MinimapToggle<CR>
noremap <F5> :NERDTreeToggle<CR> <c-w><c-p>
noremap <F6> :UndotreeToggle<CR>
noremap <F7> :YRShow<CR>
noremap <F8> :TagbarToggle<CR>
noremap <Leader>5 :NERDTreeToggle<CR><c-w><c-p>
noremap <Leader>6 :UndotreeToggle<CR>
noremap <Leader>7 :YRShow<CR>
noremap <Leader>8 :TagbarToggle<CR>
nnoremap <Leader><Leader>h <C-w>v          " Vertical split
nnoremap <Leader><Leader>v <C-w>s         " Horizontal split 

" folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" change the cursor per mode
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise

" faster navigation
noremap K     {
noremap J     }
" back and forth with shift H and L
nnoremap H     <c-o>
nnoremap L     <c-i>
nnoremap <Leader><Leader>t :terminal<CR>

" delete all white space
" this works in a visual selection
nnoremap <leader>% :g/^$/d <cr>
vnoremap <leader>% :g/^$/d <cr>
nnoremap <leader>- :g/^$/d <cr>
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>
nnoremap <leader>vimrc :tabe $MYVIMRC<cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


let g:easy_replace_enable = 1
