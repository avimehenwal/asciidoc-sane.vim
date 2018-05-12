" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup


function! Bold()
    execute "normal!  Bi#\<esc>ea#\<esc>"
endfunction


nnoremap <buffer> r :call Bold()<CR>
" END


