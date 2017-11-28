let s:V = vital#base64#new().import('Data.Base64')

function! base64#encode()
  let l:tmp=@"
  execute 'normal! gvd'
  execute 'normal! a' . s:V.encode(@")
  let @"=l:tmp
  execute 'normal! `[v`]h'
endfunction

function! base64#decode()
  let l:tmp=@"
  execute 'normal! gvd'
  execute 'normal! a' . s:V.decode(@")
  let @"=l:tmp
  execute 'normal! `[v`]h'
endfunction
