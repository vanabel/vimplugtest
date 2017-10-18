" Callback function
fu! Handler(channel, msg)
  echo a:msg
endf

" Job
fu! GetDate()
  call job_start( ['/bin/bash', '-c', 'sleep 3s; date' ], { 'callback', 'Handler' })
endf

nnoremap <F3> :call GetDate()<cr>
