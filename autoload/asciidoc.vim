" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup


" Save cpoptions.
let s:cpo_save = &cpo
set cpo&vim

" Bold, Italics, Monospaces, hotlinks
function! asciidoc#WrapLastWord(delimiter)
    let l:command = "normal! Bi" . a:delimiter . "\<ESC>ea" . a:delimiter
    execute l:command
    echom l:command
endfunction

" Heading 0-5
function! asciidoc#Heading(size)
    if a:size <= 5
        let l:cmd = "normal! mm0i" . repeat("#",a:size+1) . " \<ESC>`m"
        execute l:cmd
        echom l:cmd
    endif
endfunction


command! -nargs=0 -buffer Bold      :call asciidoc#WrapLastWord('*')
command! -nargs=0 -buffer Italics   :call asciidoc#WrapLastWord('_')
command! -nargs=0 -buffer Monospace :call asciidoc#WrapLastWord('`')
command! -nargs=0 -buffer Hotlink   :call asciidoc#WrapLastWord('|')

nnoremap <Leader>1 :call asciidoc#Heading(0)<CR>
nnoremap <Leader>2 :call asciidoc#Heading(1)<CR>
nnoremap <Leader>3 :call asciidoc#Heading(2)<CR>
nnoremap <Leader>4 :call asciidoc#Heading(3)<CR>
nnoremap <Leader>5 :call asciidoc#Heading(4)<CR>
nnoremap <Leader>6 :call asciidoc#Heading(5)<CR>


" Restore cpotions.
let &cpo = s:cpo_save
unlet s:cpo_save
