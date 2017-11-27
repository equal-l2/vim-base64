vnoremap <silent> <leader>atob :<c-u>let vimBase64Temp=@"<cr>gvc<c-r>=base64#encode(@")<cr><esc>:let @"=vimBase64Temp<bar>:unlet vimBase64Temp<cr>`[v`]h
vnoremap <silent> <leader>btoa :<c-u>let vimBase64Temp=@"<cr>gvc<c-r>=base64#decode(@")<cr><esc>:let @"=vimBase64Temp<bar>:unlet vimBase64Temp<cr>`[v`]h
