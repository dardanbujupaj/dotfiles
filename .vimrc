set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'python-mode/python-mode'
Plugin 'jalvesaq/nvim-r'
Plugin 'fatih/vim-go'
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set tabstop=2
set shiftwidth=2
set expandtab

set hidden
set number
set hlsearch
set ignorecase
set incsearch

set laststatus=2
set wildmenu

syntax on

" solarized colors by altercation
" depends on solarized terminalcolors, see .zshrc
colorscheme solarized
set background=dark

" escape when typing jj in insert mode
imap jj <Esc>

let mapleader = " "
" buffermanagement
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
map <Leader>l :ls<cr>

" map <Leader>r :call RunFile(expand('%'))<cr>
map <Leader>t :NERDTreeToggle<cr>
" open fzf filechooser
map <Leader>f :FZF<cr>
" run fzf and insert result
map <Leader>i :call fzf#run({'sink': 'read ! echo '})<cr>


" run current buffer as python. experimental
"function RunFile(filename)
"    " call writefile(['running '. a:filename], 'dummy', 'a')
"    let job = job_start('python '. a:filename, {'out_io': 'buffer', 'out_name': 'dummy'})
"
"    if bufwinnr('dummy') == -1
"        sbuf dummy
"    endif
"
"endfunction
