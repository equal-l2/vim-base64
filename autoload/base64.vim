let s:V = vital#base64#new().import('Data.Base64')

function! base64#encode(data)
  return s:V.encode(a:data)
endfunction

function! base64#decode(data) abort
  try
    return s:V.decode(a:data)
  catch
  endtry
endfunction
