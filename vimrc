let g:pathogen_disabled = ['vim-gitgutter']

execute pathogen#infect()

" to properly display colorschemes
set t_Co=256

"colorscheme railscasts
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=16

" Buffers
map <F5> :bp<CR>
map <F6> :bn<CR>
map <F3> :b#<CR>
map <F9> :bw<CR>

" Line number
set nu

" CtrlP
map <F2> :CtrlP<CR>

" don't recopy the text wipped by a paste
xnoremap p pgvy

" folding
set foldmethod=syntax
set foldlevelstart=20

" Always show statusline
set laststatus=2

" powerline for ailine
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1

" trailing whitespace
xnoremap RTW %s/\s\+$//e

" airline buffer appearance
let g:airline#extensions#tabline#enabled = 1

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" set bash-like autocompletion
set wildmode=list

" vim-ruby
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent " on a new line, autindenting like previous line

imap <C-B> <CR><CR>end<Esc>-cc
imap <C-F> def <CR>end<Esc>-A
