What is this?
==================================
vim-ruby-xmpfilter provide utility function which make easily following

* insert/delete annotation mark `# =>`.
* virtual keymap for marking and executing xmpfilter against current bufffer.

xmpfilter is provided as part of [rcodetools](http://www.youtube.com/watch?v=rXeendPlUBA).

Configuration
==================================
vim-ruby-xmpfilter doesn't provide any default keymap.
Set following line in your `.vimrc`

    " Gvim
    autocmd FileType ruby nmap <buffer> <M-r> <Plug>(xmpfilter-run)
    autocmd FileType ruby xmap <buffer> <M-r> <Plug>(xmpfilter-run)
    autocmd FileType ruby imap <buffer> <M-r> <Plug>(xmpfilter-run)

    autocmd FileType ruby nmap <buffer> <M-m> <Plug>(xmpfilter-mark)
    autocmd FileType ruby xmap <buffer> <M-m> <Plug>(xmpfilter-mark)
    autocmd FileType ruby imap <buffer> <M-m> <Plug>(xmpfilter-mark)

    " Terminal
    autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
    autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
    autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-run)

    autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-mark)
    autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-mark)
    autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-mark)
