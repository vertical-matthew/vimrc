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
" let g:polyglot_disabled = ['markdown']
" let g:textobj_wiw_no_default_key_mappings = 1
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
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'tmhedberg/simpylfold'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/fountain.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-surround' 
Plug 'godlygeek/tabular'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'vim-airline/vim-airline'
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
" Plug 'sheerun/vim-polyglot'
Plug 'brooth/far.vim'
Plug 'miyakogi/conoline.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'Konfekt/FastFold'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'  
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-line'
Plug 'coderifous/textobj-word-column.vim'
Plug 'bps/vim-textobj-python'
Plug 'jiangmiao/auto-pairs'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-expand-region'
Plug 'kien/rainbow_parentheses.vim'
Plug 'kana/vim-arpeggio'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'rhysd/clever-f.vim'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'thalesmello/vim-textobj-multiline-str'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-datetime'
Plug 'mattn/vim-textobj-url'
Plug 'h1mesuke/textobj-wiw'
Plug 'saihoooooooo/vim-textobj-space'
Plug 'machakann/vim-textobj-delimited'
Plug 'vimtaku/vim-textobj-keyvalue'
Plug 'saaguero/vim-textobj-pastedtext'
call plug#end()

" sudo apt-get install xsel

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
nnoremap <silent> / :set hlsearch<CR> /
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
noremap <c-s> :update<cr>

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
" autocmd BufWritePost *.py call flake8#Flake8()
autocmd FileType python inoremap """ """"""<left><left><left>

" Plugin mappings
nnoremap <silent> // :BLines!<CR>
nnoremap <silent> <C-h> :History<CR>
nnoremap <silent> <C-f> :Rg<CR>
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

nmap <Leader>L <Plug>(easymotion-overwin-line)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Control left and right arrows for limelight and goyo                
noremap <ESC>[1;5D :Goyo<CR>
noremap <ESC>[1;5C :Limelight!!<CR>

"Control up and down to go through yanks
" nmap <ESC>[1;5A <Plug>yankstack_substitute_older_paste
" nmap <ESC>[1;5B <Plug>yankstack_substitute_newer_paste

" Function Keys
noremap <F1> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
noremap <F2> :TogglePencil<CR>
noremap <F3> :set hlsearch!<CR>
noremap <F10> :e /home/matt/.vimrc<CR>
noremap <F4> :YRShow<cr> 
noremap <F5> :UndotreeToggle<CR>
noremap <F6> :NERDTreeToggle<CR> <c-w><c-p>
noremap <F7> :ConoLineToggle<cr>
noremap <F8> :TagbarToggle<CR>

" Select all
nnoremap<silent><nowait> <leader>a ggVG<CR>

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
noremap <F9> :Autoformat<CR>

" use keypad plus and minus etc to open and close folds
" note that numlock needs to be off for this to work
nnoremap <kPlus> zR<CR>
nnoremap <kMinus> zM<CR>
nnoremap <kDivide> zC<CR>
nnoremap <kMultiply> zO<CR>

" COC stuff
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
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

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

nmap <leader>qf  <Plug>(coc-fix-current)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" delete all white space
" this works in a visual selection
nnoremap <leader>% :g/^$/d <cr>
vnoremap <leader>% :g/^$/d <cr>

" delete all python comments, lines where the first character is #
" this works in a visual selection
nnoremap <leader># :g/^\s*#/d <cr>
vnoremap <leader># :g/^\s*#/d <cr>
" Load this plugin at this timing
" to define :Arpeggio, arpeggio#map() and others used later.
" packadd vim-arpeggio
call arpeggio#map('i', '', 0, 'jkl', 'arpeggio')
call arpeggio#map('i', '', 0, 'kl', 'testing')

let g:yankring_max_history = 1000
let g:yankring_min_element_length = 2
let g:yankring_max_display = 70

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


    
    
    
