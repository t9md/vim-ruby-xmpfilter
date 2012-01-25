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
    nmap <buffer> <M-r> <Plug>(xmpfilter-run)
    xmap <buffer> <M-r> <Plug>(xmpfilter-run)
    imap <buffer> <M-r> <Plug>(xmpfilter-run)

    nmap <buffer> <M-m> <Plug>(xmpfilter-mark)
    xmap <buffer> <M-m> <Plug>(xmpfilter-mark)
    imap <buffer> <M-m> <Plug>(xmpfilter-mark)

    " Terminal
    nmap <buffer> <F5> <Plug>(xmpfilter-run)
    xmap <buffer> <F5> <Plug>(xmpfilter-run)
    imap <buffer> <F5> <Plug>(xmpfilter-run)

    nmap <buffer> <F4> <Plug>(xmpfilter-mark)
    xmap <buffer> <F4> <Plug>(xmpfilter-mark)
    imap <buffer> <F4> <Plug>(xmpfilter-mark)
