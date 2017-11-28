let s:V = vital#base64#new().import('Data.Base64')

function! base64#encode()
  let l:tmp=@"
  execute 'normal! gvy'
  execute 'normal! gv"_c' . s:V.encode(@")
  let @"=l:tmp
  execute 'normal! `[v`]h'
endfunction

function! base64#decode()
  let l:tmp=@"
  execute 'normal! gvy'
  try
    execute 'normal! gv"_c' . s:V.decode(@")
    execute 'normal! `[v`]h'
  catch
    execute 'normal! `[v`]'
    echo 'Error: Invalid Base64 string'
  finally
    let @"=l:tmp
  endtry
endfunction
