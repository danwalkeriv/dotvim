runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

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
set formatprg=par\ -w80

" Not sure what these do
filetype plugin on
set ofu=syntaxcomplete#Complete

map <F11> :let &background = ( &background == "dark"? "light" : "dark" )

" Or this
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" ipython gets the same highlighting as python
au BufNewFile,BufRead *.ipy set filetype=python
