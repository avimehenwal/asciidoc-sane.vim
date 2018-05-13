" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup

if exists('g:loaded_sane_asciidoc') || &cp
  finish
endif
let g:loaded_sane_asciidoc = 1


command! -nargs=0 -buffer Bold      :call <SID>s:WrapLastWord('*')
command! -nargs=0 -buffer Italics   :call <SID>s:WrapLastWord('_')
command! -nargs=0 -buffer Monospace :call <SID>s:WrapLastWord('`')
command! -nargs=0 -buffer Hotlink   :call <SID>s:WrapLastWord('|')

nnoremap <Leader>1 :call <SID>s:Heading(0)<CR>
nnoremap <Leader>2 :call <SID>s:Heading(1)<CR>
nnoremap <Leader>3 :call <SID>s:Heading(2)<CR>
nnoremap <Leader>4 :call <SID>s:Heading(3)<CR>
nnoremap <Leader>5 :call <SID>s:Heading(4)<CR>
nnoremap <Leader>6 :call <SID>s:Heading(5)<CR>

" END
