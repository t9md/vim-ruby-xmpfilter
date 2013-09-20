What is this?
==================================
vim-ruby-xmpfilter provide utility function which make easily following

* insert/delete annotation mark `# =>`.
* virtual keymap for marking and executing xmpfilter against current bufffer.


vim-ruby-xmpfilter provide keymap that helps you use 'xmpfilter' or
'seeing_is_believing' from Vim.

 * insert/delete annotation mark " # =>".
 * virtual keymap for marking and executing 'xmpfilter' or 'seeing_is_believing'
   against current bufffer.

Link
 * xmpfilter is provided as part of [rcodetools](http://rubygems.org/gems/rcodetools).
 * [seeing_is_believing](https://github.com/JoshCheek/seeing_is_believing)

Configuration
==================================
vim-ruby-xmpfilter doesn't provide any default keymap.
Set following line in your `.vimrc`

'xmpfilter' user

    autocmd FileType ruby nmap <buffer> <D-m> <Plug>(xmpfilter-mark)
    autocmd FileType ruby xmap <buffer> <D-m> <Plug>(xmpfilter-mark)
    autocmd FileType ruby imap <buffer> <D-m> <Plug>(xmpfilter-mark)

    autocmd FileType ruby nmap <buffer> <D-r> <Plug>(xmpfilter-run)
    autocmd FileType ruby xmap <buffer> <D-r> <Plug>(xmpfilter-run)
    autocmd FileType ruby imap <buffer> <D-r> <Plug>(xmpfilter-run)

'seeing_is_believing' user

    let g:xmpfilter_cmd = "seeing_is_believing"

    autocmd FileType ruby nmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
    autocmd FileType ruby xmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
    autocmd FileType ruby imap <buffer> <D-m> <Plug>(seeing_is_believing-mark)

    " xmpfilter compatible
    autocmd FileType ruby nmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
    autocmd FileType ruby xmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
    autocmd FileType ruby imap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)

    " auto insert mark at appropriate spot.
    autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing_is_believing-run)
    autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
    autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run)
