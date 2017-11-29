let s:V = vital#base64#new().import('Data.Base64')

function! base64#encode(data)
  return s:V.encode(a:data)
endfunction

function! base64#decode(data)
  return s:V.decode(a:data)
endfunction

function! base64#encode_and_substitute()
  let l:tmp=@"
  execute 'normal! gvy'
  let @"=substitute(@",'\n$','','')
  execute 'normal! gv"_c' . base64#encode(@")
  let @"=l:tmp
  execute 'normal! `[v`]h'
endfunction

function! base64#decode_and_substitute()
  let l:tmp=@"
  execute 'normal! gvy'
  try
    execute 'normal! gv"_c' . base64#decode(@")
    execute 'normal! `[v`]h'
  catch
    execute 'normal! `[v`]'
    echo 'Error: Invalid Base64 string'
  finally
    let @"=l:tmp
  endtry
endfunction
