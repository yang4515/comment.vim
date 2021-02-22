function! comment#do()
  let text = getline(line("."))
  if text=~#'^\s*//'
    :s#^\(\s*\)// #\1
    :noh
  else
    :s#\(\S\)#// \1
    :noh
  endif
endfunction
