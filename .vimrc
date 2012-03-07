runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Increase length of commands and search parameters
set history=1000

" So that buffers can stay open in the background
set hidden

" The Leader key, mapped to
let mapleader = "\\"

" For the sake of appearances
syntax on
set number

" Setup colorscheme
set t_Co=256
colorscheme gardener

" Setup tabbing
set smarttab
set smartindent
set et sw=4 sts=4
set shiftround

" Use the par program for re-formatting text
set formatprg=par\ -w79

" Not sure what these do
filetype plugin on
set ofu=syntaxcomplete#Complete

map <F11> :let &background = ( &background == "dark"? "light" : "dark" )

" Setup handling of protocol buffer files
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" ipython gets the same highlighting as python
au BufNewFile,BufRead *.ipy set filetype=python

" Highlight whitespace at the end of lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Gundo is mapped to F5
nnoremap <F5> :GundoToggle<CR>
