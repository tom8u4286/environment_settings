set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set t_Co=256

syntax on
"set the color scheme. from: https://github.com/jonathanfilip/vim-lucius
colorscheme lucius
LuciusDark
let g:lucius_no_term_bg = 1
set background=dark


"set cursorline
set cursorline
hi CursorLine ctermbg=None gui=underline cterm=underline

"set the line number
set number
hi LineNr cterm=bold ctermfg=75 ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=15 ctermbg=None
set foldcolumn=0


set fileencoding=utf-8
set encoding=utf-8

set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ai
set si
set wrap
set expandtab
set so=8
set ruler
set cmdheight=1


func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal 'z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

