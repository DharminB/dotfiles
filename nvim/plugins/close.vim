" Close buffer or window

function! MyClose()
    let num_of_buffers = len(getbufinfo({'buflisted':1}))
    if (num_of_buffers == 1)
        let command = "quit"
    elseif ( stridx(bufname("%"), "term") >= 0) " a terminal buffer
        let command = "bdelete!" " require ! at end
    else
        let command = "bdelete"
    endif
    execute command
endfunction

nnoremap <leader>q :call MyClose()<CR>
nnoremap <leader><ESC> :call MyClose()<CR>
