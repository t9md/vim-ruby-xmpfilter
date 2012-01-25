"=============================================================================
" File: xmpfilter.vim
" Author: t9md <taqumd@gmail.com>
" WebPage: http://github.com/t9md/vim-ruby-xmpfilter.vim
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
vnoremap <silent> <Plug>(xmpfilter) <Esc>:<C-u>call xmpfilter#run(v')<CR>
nnoremap <silent> <Plug>(xmpfilter)      :<C-u>call xmpfilter#run(n')<CR>
vnoremap <silent> <Plug>(xmpfilter) <Esc>:<C-u>call xmpfilter#toggle_mark(v')<CR>
nnoremap <silent> <Plug>(xmpfilter)      :<C-u>call xmpfilter#toggle_mark(n')<CR>
"}}}

let &cpo = s:old_cpo
" vim: foldmethod=marker
