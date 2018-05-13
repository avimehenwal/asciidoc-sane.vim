" AUTHOR    : avimehenwal
" CREATED   : Sat 12 May 18:23:44 IST 2018
" FILENAME  : asciidoc-sane/asciidoc-sane.vim
" PROJECT   : asciidoc-sane
"
" Sane human friendly insert mode mapping for asciidoc markup

if exists('g:loaded_asciidoc_plugin') || &cp
  finish
endif
let g:loaded_asciidoc_plugin = 1

command! -nargs=0 Heading1 call asciidoc#Heading(0)
command! -nargs=0 Heading2 call asciidoc#Heading(1)
command! -nargs=0 Heading3 call asciidoc#Heading(2)
command! -nargs=0 Heading4 call asciidoc#Heading(3)
command! -nargs=0 Heading5 call asciidoc#Heading(4)
command! -nargs=0 Heading6 call asciidoc#Heading(5)

command! -nargs=0 Bold      call asciidoc#WrapLastWord('*')
command! -nargs=0 Italics   call asciidoc#WrapLastWord('_')
command! -nargs=0 Monospace call asciidoc#WrapLastWord('`')
command! -nargs=0 Hotlink   call asciidoc#WrapLastWord('|')

nnoremap <Leader>1 :Heading1<CR>
nnoremap <Leader>2 :Heading2<CR>
nnoremap <Leader>3 :Heading3<CR>
nnoremap <Leader>4 :Heading4<CR>
nnoremap <Leader>5 :Heading5<CR>
nnoremap <Leader>6 :Heading6<CR>

nnoremap <Leader>b :Blod<CR>
nnoremap <Leader>i :Italics<CR>
nnoremap <Leader>m :Monospace<CR>
nnoremap <Leader>h :Hotlink<CR>

" END
