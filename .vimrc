set runtimepath+=~/.vim_runtime
filetype indent on
let g:syntastic_mode_map = { 'mode': 'passive' }

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

"autocmd VimEnter * SyntasticToggleMode " disable syntastic by default

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set t_Co=256
colo default

""setting cursor"
set cursorline
highlight LineNr term=underline ctermfg=20 guifg=blue
highlight Cursorline ctermbg=LightBlue

"color setting
hi Normal guifg=White guibg=Black



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

syntax enable
set number

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal 'z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()

