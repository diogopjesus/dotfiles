set nocompatible	    	" disable compatibility to old-time vi
set showmatch 			    " show matching
set ignorecase 			    " case insensitive
set mouse=v 			    " middle-click paste with
set hlsearch 			    " highlight search
set incsearch 			    " incremental search
set tabstop=4 			    " number of colunms occupied by a tab
set softtabstop=4 		    " see multiple spaces as tabstops so <BS> does the right thing
set expandtab			    " converts tabs to white space
set shiftwidth=4		    " width for autoidents
set autoindent			    " indent a new line the same amount as the line just typed
set number			        " add line numbers
set wildmode=longest,list	" get bash-like tab completions
set cc=80			        " set an 80 column border for good coding

filetype plugin indent on 	" allow auto-indenting depending on file type

syntax on			        " syntax highlighting

set mouse=a			        " enable mouse click
set clipboard=unnamedplus	" using system clipboard

filetype plugin on

set cursorline			    " highlight current cursorline
set ttyfast			        " speed up scrolling in vim

" plugins
call plug#begin("~/.vim/plugged")
	" Plugin section
    Plug 'dracula/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" color schemes
if (has("termguicolors"))
    set termguicolors
endif
syntax enable

" colorscheme evening
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow


""" KEYBINDINGS

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/ bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-w>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>H
nnoremap <C-j> <C-w>J
nnoremap <C-k> <C-w>K
nnoremap <C-l> <C-w>L

" Press i to enter insert mode, and ii to exit insert mode
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>

" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>


" Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif


""" NerdCommenter

" create default mappings
let g:NERDCreateDefaultMappings = 1

" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'

" set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" add your own custom formats or override the defaults
let g:NERDCustomDelimiters = {'c': {'left': '/**', 'right': '*/' }}

" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhiteSpace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" for motions
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>


""" Vim-startify

" add bookmarks
let g:startify_bookmarks = ['~/.bashrc', '~/Reps/']


""" UltiSnips

" define the snippets directory
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/snippets']

" disable the default Ultisnips tab mapping to free up coc.nvim
let g:UltiSnipsExpandTrigger = "<nop>"


""" Coc.nvim
let g:coc_global_extensions = [
            \ 'coc-pairs',
            \ 'coc-snippets',
            \ 'coc-html',
            \ 'coc-tsserver',
            \ 'coc-css',
            \ 'coc-json',
            \ 'coc-pyright',
            \ 'coc-sh',
            \ 'coc-flutter',
            \ 'coc-git',
            \ 'coc-clangd',
            \ 'coc-clang-format-style-options',
            \ 'coc-cmake',
            \ 'coc-docker',
            \ 'coc-java',
            \ 'coc-lightbulb',
            \ 'coc-markdownlint',
            \ 'coc-markdown-preview-enhanced',
            \ '@yaegassy/coc-nginx',
            \ 'coc-prettier',
            \ 'coc-pydocstring',
            \ 'coc-rust-analyzer',
            \ 'coc-sql',
            \ 'coc-sumneko-lua',
            \ 'coc-swagger',
            \ 'coc-texlab',
            \ 'coc-vimlsp',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ ]

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


""" Trailing spaces
autocmd BufWritePre *.py :%s/\s\+$//e

