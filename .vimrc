filetype off
execute pathogen#infect()

" Basics {
	set nocompatible
	syntax on
	let mapleader = ","
	set encoding=utf-8

        " }
" Syntastic {
    let g:syntastic_check_on_open=1
    let g:syntastic_enable_signs=1
" }

" General {
	set number                  " turn on line numbers
	set history=10000           " remember 10000 history

	set hlsearch                " highlight searches
	set incsearch               " Highlight matches as you type

	set ignorecase              " Case-insensitive searching
	set smartcase               " Except when using caps

	set backspace=indent,eol,start  " make backspace sane

	set wildmenu                " Turn on WiLd menu

        set cursorline  

	set autoindent
	set smartindent

        set expandtab
	set shiftwidth=4
	set softtabstop=4

        set noerrorbells
        set novisualbell

        " auto reload vimrc when editing it
        autocmd! bufwritepost .vimrc source ~/.vimrc
" }

" Vundle {
	set rtp+=~/.vim/bundle/Vundle.vim 	" set the runtime path to include Vundle and initialize
	call vundle#begin()

	Plugin 'gmarik/Vundle.vim' 		" let Vundle manage Vundle, required

	Plugin 'airblade/vim-gitgutter' 	" git diff marks in gutter

	Plugin 'godlygeek/tabular'		" Markdown
	Plugin 'plasticboy/vim-markdown'	" Markdown

	Plugin 'scrooloose/nerdtree'		" NerdTree
	nnoremap <leader>nt :NERDTree<CR>

        Bundle 'bling/vim-airline'
        let g:airline_powerline_fonts = 1
        let g:airline_theme='powerlineish'
        set laststatus=2

	Bundle 'Lokaltog/vim-easymotion'

        call vundle#end()            " required
	filetype plugin indent on    " required
" }

" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo

" Mapping {
	" ,l -> display whitespace "
	nmap <leader>l :set list!<CR>

	" ,,w -> Clear trailing whitespace"
	nmap <leader>w :%s/\s\+$//e<CR>

	" toggle search highlighting "
	nmap <leader><leader>h :set hlsearch!<CR>

	" Clone paragraph with cp "
	noremap cp yap<s-}

	" Jump with ctrl-arrow
        nmap <C-Right> $
        imap <C-Right> <Esc>$i<Right>

        nmap <C-Left> 0
        imap <C-Left> <Esc>0i<Left>

        nmap <C-Down> G
        imap <C-Down> <Esc>Gi<Down>

        nmap <C-Up> gg
        imap <C-Up> <Esc>ggi<Up>

        nmap <S-Up> 5k
        imap <S-Up> <Esc>5ki

        nmap <S-Down> 5j
        imap <S-Down> <Esc>5ji

        nmap <S-Left> 5h
        imap <S-Left> <Esc>5hi

        nmap <S-Right> 5l
        imap <S-Right> <Esc>5li

        " Quit files with Leader + q
	noremap <leader>q :q<CR>

	" Save files with Leader + s
	noremap <leader>s :w<CR>

        " Jump between windows with ctrk-hjkl
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-l> <C-W>l
        map <C-h> <C-W>h

        " ,ss will toggle and untoggle spell checking
        map <leader>ss :setlocal spell!<cr>

        " Automatically close curly brace blocks
        inoremap {<CR>  {<CR><BS>}<Esc>O

        nmap <Leader>. :set cursorcolumn!<CR>
" }
