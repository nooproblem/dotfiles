" Para VUndle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'Smart-Home-Key'
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdcommenter'

"for vim-snipmate:
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

"for syntax checker
Plugin 'scrooloose/syntastic'

"Plugin 'valloric/youcompleteme'
"Plugin 'rdnetto/YCM-Generator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





nmap <Space> i<Space><Esc>
nnoremap <Leader>y :let @+=@"<cr>
nnoremap <Leader>p "+p

set encoding=utf-8
set list lcs=trail:¬,tab:»¬

map <space> i<space><esc>

"colorscheme delek
"colorscheme desert

"colorscheme 256-grayvim
"colorscheme gardener
"colorscheme 256mongo
"colorscheme inkpot
"colorscheme desert256
"colorscheme gotham256
colorscheme  summerfruit256

syntax on
set number
set nowrap
set visualbell
set backspace=2
set expandtab
set cindent
set tabstop=4
set shiftwidth=4

"Fuck off Ex mode!
nnoremap Q <nop>

imap kj <Esc>

" Para plugins
" for nerdtree
nmap <Leader><tab> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" for taglist
nmap <Leader>tl :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Auto_HighLight_Tag=1
let Tlist_Close_On_Select=1

" for easymotion
map <Leader>f <Plug>(easymotion-bd-f)

" for smart home key
map <silent> <Home> :SmartHomeKey<cr>
map <silent> 0 :SmartHomeKey<cr>

" for syntastic
let g:syntastic_c_checkers = ['gcc','make']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" for you complete me
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/youcompleteme/.ycm_extra_conf.py'
"let g:ycm_server_keep_logfiles = 0
"let g:ycm_server_log_level = 'debug'
"let g:ycm_key_list_select_completion = ['<C-n>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_key_list_previous_completion = ['<C-p>']
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_open_loclist_on_ycm_diags = 0

" NERD commenter
let g:NERDSpaceDelims = 2
let g:NERDDefaultAlign='none'
let g:NERDAltDelims_c=1





set cursorline                " turn on cursorline

"highlight clear CursorLine    " highlight line-number only

map <f1> :make<CR>

set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
