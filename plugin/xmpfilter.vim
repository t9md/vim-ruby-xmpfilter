"=============================================================================
" File: xmpfilter.vim
" Author: t9md <taqumd@gmail.com>
" WebPage: http://github.com/t9md/vim-ruby-xmpfilter
" License: BSD
" Version: 0.1

" GUARD: {{{
"============================================================

if exists('g:loaded_xmpfilter')
  " finish
endif
let g:loaded_xmpfilter = 1

let s:old_cpo = &cpo
set cpo&vim
"}}}

" VARIABLES: {{{
"=================================================================
if !exists('g:xmpfilter_cmd')
  let g:xmpfilter_cmd = "xmpfilter -a"
endif
"}}}

" KEYMAP: {{{
"=================================================================
" xmpfilter
nnoremap <silent> <Plug>(xmpfilter-mark)      :call xmpfilter#toggle_mark('n')<CR>
vnoremap <silent> <Plug>(xmpfilter-mark)      :call xmpfilter#toggle_mark('v')<CR>
inoremap <silent> <Plug>(xmpfilter-mark) <C-o>:call xmpfilter#toggle_mark('i')<CR>

nnoremap <silent> <Plug>(xmpfilter-run)        :call xmpfilter#run('n', '')<CR>
vnoremap <silent> <Plug>(xmpfilter-run)        :call xmpfilter#run('v', '')<CR>
inoremap <silent> <Plug>(xmpfilter-run)   <C-o>:call xmpfilter#run('i', '')<CR>

" seeing_is_believing
nmap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)
vmap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)
imap <silent> <Plug>(seeing_is_believing-mark) <Plug>(xmpfilter-mark)

nnoremap <silent> <Plug>(seeing_is_believing-run_-x)      :call xmpfilter#run('n', '-x')<CR>
vnoremap <silent> <Plug>(seeing_is_believing-run_-x)      :call xmpfilter#run('v', '-x')<CR>
inoremap <silent> <Plug>(seeing_is_believing-run_-x) <C-o>:call xmpfilter#run('i', '-x')<CR>

" Only for seeing_is_believing
nnoremap <silent> <Plug>(seeing_is_believing-run)      :call xmpfilter#run('n', '')<CR>
vnoremap <silent> <Plug>(seeing_is_believing-run)      :call xmpfilter#run('v', '')<CR>
inoremap <silent> <Plug>(seeing_is_believing-run) <C-o>:call xmpfilter#run('i', '')<CR>

"}}}

let &cpo = s:old_cpo
" vim: foldmethod=marker
