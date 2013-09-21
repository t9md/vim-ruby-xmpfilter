" function! s:get_pos() "{{{
  " return [getpos("."), getpos("w0")]
" endfun "}}}

" function! s:restore_pos(pos) "{{{
  " call setpos('.', a:pos[1])
  " normal! zt
  " call setpos('.', a:pos[0])
" endfun "}}}

function! s:winview_save() "{{{
  let s:win_view = winsaveview()
endfun "}}}

function! s:winview_restore() "{{{{
  call winrestview(s:win_view)
endfunction "}}}

function! xmpfilter#run(mode, option ) range "{{{
  let range_str = (a:mode == 'v') ? "'<,'>" : '%'
  call s:winview_save()
  set lazyredraw
  execute ":" . range_str . "!" . g:xmpfilter_cmd . " " . a:option
  call s:winview_restore()
  if a:mode == 'v'
    normal! gv
  endif
  set nolazyredraw
  redraw
endfun "}}}

function! xmpfilter#toggle_mark(mode) range "{{{
  let mark_str = " # =>"
  call s:winview_save()
  set lazyredraw
  for line in range(a:firstline,a:lastline)
    let org_line = getline(line)
    let marked = strridx(org_line, mark_str)
    let new_line = marked != -1
          \ ? strpart(org_line, 0, marked)
          \ : org_line . mark_str
    call setline(line, new_line)
  endfor
  call s:winview_save()
  if a:mode == 'v'
    normal! gv
  endif
  set nolazyredraw
  redraw
endfun "}}}
" vim: foldmethod=marker
