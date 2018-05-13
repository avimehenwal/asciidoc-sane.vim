" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup


function! WrapLastWord(delimiter)
    let l:command = "normal! Bi" . a:delimiter . "\<ESC>ea" . a:delimiter
    execute l:command
    return l:command
endfunction

command! -nargs=0 -buffer Bold      :call WrapLastWord('*')
command! -nargs=0 -buffer Italics   :call WrapLastWord('_')
command! -nargs=0 -buffer Monospace :call WrapLastWord('`')

" END


