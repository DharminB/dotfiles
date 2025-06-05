" =============================================================================
" General settings
" =============================================================================

set confirm

" setting to keep cursor line in middle
set scrolloff=5

" Vim jumps to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamedplus

" Automatic reloading of ~/.config/nvim/init.vim
autocmd! bufwritepost ~/.config/nvim/init.vim source %

" make hidden characters like tabs or EOL visible
" set listchars=nbsp:_,trail:.,tab:▸\ ,eol:¬
set listchars=nbsp:_,trail:.,tab:▸\ 
set list

" auto-commenting when pressing <Enter>
set formatoptions+=r
" disable autowrap text when writing in insert mode
set formatoptions-=t

" use every file in current dir and child dir while "find" ind
set path=**

" wildmenu for fuzzy file finding
set wildmenu

" level of nesting to fold
set nofoldenable
" set foldnestmax=0
" set foldlevel=0

" Show line numbers
set number

" Show relative line numbers
" set relativenumber

" Set tabs width to 4, it is still \t
set tabstop=4
" Set shiftwidth to 0 which makes it equal to tabwidth by default. This is
" needed to use proper indentation
set shiftwidth=0

" Expand tabs into spaces
set expandtab|retab

" setting smart indentation
set smartindent

" Show the matching part of the pair for [] {} and ()
set showmatch

" set color column
hi ColorColumn ctermbg=darkgrey guibg=lightgrey
set colorcolumn=80
" set textwidth
set textwidth=80
" disable wrapping the lines
set nowrap

" Make search case insensitive
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Eliminate delay between INSERT and ESCAPE
set ttimeoutlen=0


" =============================================================================
" Key Mappings
" =============================================================================

" map spacebar as leader key
nnoremap <space> <nop>
let mapleader=" "

" my mappings
:command! W w
:command! Q q
:command! WQ wq
:command! Wq wq
:command! RemoveWhiteSpace %s/\s\+$//e

" Mouse click
" set mouse=a
" disable scroll using mouse
set mouse=
map <ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
" because terminal emulator send scroll events as up/down key events
map <up> <nop>
map <down> <nop>

" Copy in the clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" Easier indentation of code blocks
vnoremap < <gv
vnoremap > >gv

" Move between splits
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

" open directory tree on left side
nnoremap <leader>e :20Lexplore<CR>

" search for selected text
vnoremap // y/<C-R>"<CR>

" Y behave like other uppercase letters
nnoremap Y y$

" remove search highlight
nnoremap <leader>n :noh<CR>

nnoremap <leader><space> :b#


" =============================================================================
" Plugins
" =============================================================================

" Automatically download vim-plug if not present
let data_dir = '~/.config/nvim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

colorscheme onedark

" source all plugins
call plug#begin(data_dir . '/plugged')
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/vim-snippets.vim
source ~/.config/nvim/plugins/vim-commentary.vim
source ~/.config/nvim/plugins/vim-fugitive.vim
source ~/.config/nvim/plugins/vim-surround.vim
source ~/.config/nvim/plugins/vim-cpp-enhanced-highlight.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/lightline.vim
" source ~/.config/nvim/plugins/quick-scope.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/plugins/DoxygenToolkit.vim
source ~/.config/nvim/plugins/vim-markdown.vim
source ~/.config/nvim/plugins/vim-javascript-syntax.vim

Plug 'sirtaj/vim-openscad'

call plug#end()

source ~/.config/nvim/plugins/my_autocomplete.vim
source ~/.config/nvim/plugins/switch_source_header.vim
source ~/.config/nvim/plugins/netrw_settings.vim
source ~/.config/nvim/plugins/tag_managment.vim
source ~/.config/nvim/plugins/terminal_build.vim
source ~/.config/nvim/plugins/quick_switch.vim


" =============================================================================
" Color scheme
" =============================================================================
" set background=dark
" transparent background
hi Normal guibg=NONE ctermbg=NONE
