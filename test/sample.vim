" yank into register " and run :@"

let s:i = 1
while s:i <= 5
    echo "count =" s:i
    let s:i += 1
endwhile

for i in range(2,8)
    echo "i equals" i
    source other.vim
endfor

" echo converts hexadecimanl and octal to decimal numbers
echo 0x7f 036

" destroy variable and supress error if var doesn't exists
unlet! s:i

exists("s:i")

let v = 4
echo v > 5 ? "v is >5" : "v is <5"

echo v:version

function Show(start, ...)
  echohl Title
  echo "start is " . a:start
  echohl None
  let index = 1
  while index <= a:0
    echo "  Arg " . index . " is " . a:{index}
    let index = index + 1
  endwhile
  echo ""
endfunction
