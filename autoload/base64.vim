let s:V = vital#base64#new().import('Data.Base64')

function! base64#encode(data)
  return s:V.encode(a:data)
endfunction

function! base64#decode(data)
  return s:V.decode(a:data)
endfunction

function! base64#encode_and_substitute()
  let l:tmp = @"
  normal! gvy
  let @" = substitute(@",'\n$','','')
  execute 'normal! gv"_c' . base64#encode(@")
  let @" = l:tmp
  normal! `[v`]h
endfunction

function! base64#decode_and_substitute()
  let l:tmp = @"
  normal! gvy
  let @" = substitute(@",'\n$','','')
  try
    execute 'normal! gv"_c' . base64#decode(@")
    normal! `[v`]h
  catch
    normal! `[v`]
    echoerr 'Error: Invalid Base64 string'
  finally
    let @" = l:tmp
  endtry
endfunction
