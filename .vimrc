" ------------------------------------------------------------
set encoding=UTF-8
"shell 指定
set shell=/bin/zsh
"行番号を表示
set number

syntax enable

"クリップボート連携
set clipboard+=unnamed
"入力中移動
inoremap <c-h> <left>
inoremap <c-j> <Down>
inoremap <c-k> <Up>
inoremap <c-l> <right>
inoremap <c-a> <c-o>^
inoremap <c-e> <c-o>$

" 括弧の補完
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
" クオーテーションの補完
inoremap ' ''<LEFT>
inoremap " ""<LEFT>


