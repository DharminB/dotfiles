nnoremap <leader>TT :split<CR>:terminal<CR>i
nnoremap <leader>Tb :split<CR>:terminal bash -x .editor/build_cmd<CR>i
nnoremap <leader>Tt :split<CR>:terminal bash -x .editor/test_cmd<CR>i

autocmd TermClose term://*build_cmd lua vim.api.nvim_input("<c-\\><c-n>")
autocmd TermClose term://*test_cmd lua vim.api.nvim_input("<c-\\><c-n>")

" find cmake errors and warning
nnoremap <leader>Te gg/\v([/a-zA-z0-9_\n]+)\/\zs([a-zA-z0-9_\n]+)\.([hcp\n]+)\ze:([0-9\n]+):([0-9\n]+):\_s([\n erowanigftl]+):<CR>
" Command explained
" gg                        go to beginning of file
" /                         search for the following pattern
"    \v                     enable very magic
"    ([/a-zA-z0-9_\n]+)\/   all alpha numeric chars including / and \n (file path)
"    \zs                    search highlight start
"    (\S+)                  all non space chars (file name)
"    \.([hcp\n]+)           file extensions containing h,c or p (intended '.h' and '.cpp', unintended '.php')
"    \ze                    search highlight end
"    ([0-9\n]+)             row number
"    ([0-9\n]+)             col number
"    ([\n erowanigftl]+)     char matching (intended for 'error', 'fatal' and 'warning')
" :set ft=terminal<CR>      set filetype to 'terminal'

nnoremap <leader>cbt :split<CR>:terminal bash -c "catkin build --this"<CR>
