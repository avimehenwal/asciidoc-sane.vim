" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup

if exists("g:loaded_asciidoc")
  finish
endif
let g:loaded_asciidoc = 1

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

" Restore cpotions.
let &cpo = s:cpo_save
unlet s:cpo_save

" END
