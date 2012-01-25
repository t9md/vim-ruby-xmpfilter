"=============================================================================
" File: xmpfilter.vim
" Author: t9md <taqumd@gmail.com>
" WebPage: http://github.com/t9md/vim-ruby-xmpfilter
" License: BSD
" Version: 0.1

" GUARD: {{{
"============================================================

if exists('g:loaded_xmpfilter')
  finish
endif
let g:loaded_xmpfilter = 1

let s:old_cpo = &cpo
set cpo&vim
"}}}

" KEYMAP: {{{
"=================================================================
nnoremap <silent> <Plug>(xmpfilter-run)        :call xmpfilter#run('n')<CR>
vnoremap <silent> <Plug>(xmpfilter-run)        :call xmpfilter#run('v')<CR>
inoremap <silent> <Plug>(xmpfilter-run)   <C-o>:call xmpfilter#run('i')<CR>

nnoremap <silent> <Plug>(xmpfilter-mark)      :call xmpfilter#toggle_mark('n')<CR>
vnoremap <silent> <Plug>(xmpfilter-mark)      :call xmpfilter#toggle_mark('v')<CR>
inoremap <silent> <Plug>(xmpfilter-mark) <C-o>:call xmpfilter#toggle_mark('i')<CR>
"}}}

let &cpo = s:old_cpo
" vim: foldmethod=marker
