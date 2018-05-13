" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup

" Bold, Italics, Monospaces, hotlinks
function! WrapLastWord(delimiter)
    let l:command = "normal! Bi" . a:delimiter . "\<ESC>ea" . a:delimiter
    execute l:command
    echom l:command
endfunction

" Heading 0-5
function! Heading(size)
    if a:size <= 5
        let l:cmd = "normal! mm0i" . repeat("#",a:size+1) . " \<ESC>`m"
        execute l:cmd
        echom l:cmd
    endif
endfunction

command! -nargs=0 -buffer Bold      :call WrapLastWord('*')
command! -nargs=0 -buffer Italics   :call WrapLastWord('_')
command! -nargs=0 -buffer Monospace :call WrapLastWord('`')
command! -nargs=0 -buffer Hotlink   :call WrapLastWord('|')

command! -nargs=0 -buffer Heading1 :call Heading(0)
command! -nargs=0 -buffer Heading2 :call Heading(1)
command! -nargs=0 -buffer Heading3 :call Heading(2)
command! -nargs=0 -buffer Heading4 :call Heading(3)
command! -nargs=0 -buffer Heading5 :call Heading(4)
command! -nargs=0 -buffer Heading6 :call Heading(5)

" END
