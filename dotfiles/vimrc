" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'GEverding/vim-hocon'
" Plug 'tpope/vim-ragtag'
" Plug 'mfukar/robotframework-vim'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'glench/vim-jinja2-syntax'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'rbgrouleff/bclose.vim'
" Plug 'dhruvasagar/vim-zoom'
" Plug 'jlanzarotta/bufexplorer'
" Plug 'airblade/vim-gitgutter'
" Plug 'ryanoasis/vim-devicons'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'craigmac/vim-mermaid'
" Plug 'fatih/vim-go'
" Plug 'godlygeek/tabular'
" Plug 'preservim/vim-markdown'

" Initialize plugin system
call plug#end()

syntax enable

" colorscheme solarized

" Only needed on graphical Ubuntu
if $DESKTOP_SESSION == 'ubuntu'
    let g:solarized_termcolors=256
endif

if $SOLARIZED_BG == 'light'
    set background=light
else
    set background=dark
endif
colorscheme solarized
"
" Show buffer line at top with buffer number with Airline.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 0

""
" Automatically append closing characters
" http://vim.wikia.com/wiki/Automatically_append_closing_characters
"

inoremap {<CR>  {<CR>}<Esc>O
inoremap [<CR> [<CR>]<C-o>O

"
""

set pastetoggle=<F2>
map <F5> :tabmove -1<CR>
map <F6> :tabmove +1<CR>
map <C-n> :Ex<CR>

""
" Quick change window keys
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

" Python Mode
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = ["E501"]

" Insert autocompletion
set completeopt=menuone,noinsert

" function Git(args)
"   call terminal("git -" . a:args)
" endfunction

function! Solar_swap()
    if &background ==? 'dark'
        set background=light
        execute "silent !tmux source-file " . shellescape(expand('~/tmux-colors-solarized/tmuxcolors-light.conf'))
        execute "silent !source ~/mintty-colors-solarized/sol.light"
    else
        set background=dark
        execute "silent !tmux source-file " . shellescape(expand('~/tmux-colors-solarized/tmuxcolors-dark.conf'))
        execute "silent !source ~/mintty-colors-solarized/sol.dark"
    endif
    silent !osascript -e 'tell app "System Events" to keystroke "s" using {shift down, option down, control down}'
endfunction

command! SolarSwap call Solar_swap()

" FZF
nnoremap <C-P>  :FZF<CR>
" cnoremap b<TAB>  Buffers<CR>

" Vim Fugitive
set statusline+=%{FugitiveStatusline()}

" bufexplorer
nnoremap ù  :BufExplorer<CR>

" Test ls config
" luafile ~/.vim/lsp_config.lua

" sign define LspDiagnosticsSignError text=🔴
" sign define LspDiagnosticsSignWarning text=🟠
" sign define LspDiagnosticsSignInformation text=🔵
" sign define LspDiagnosticsSignHint text=🟢

" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <leader>f    <cmd>lua vim.lsp.buf.formatting()<CR>
" nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>
" 
" nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
" xmap <silent> <leader>a <cmd>lua vim.lsp.buf.range_code_action()<CR>
"
