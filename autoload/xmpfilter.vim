function! s:get_pos() "{{{
  return [getpos("."), getpos("w0")]
endfun "}}}

function! s:restore_pos(pos) "{{{
  call setpos('.', a:pos[1])
  normal! zt
  call setpos('.', a:pos[0])
endfun "}}}

function! xmpfilter#run(mode) range "{{{
  let range_str = (a:mode == 'v') ? "'<,'>" : '%'
  let pos = s:get_pos()
  set lazyredraw
  execute ":" . range_str . "!xmpfilter -a"
  call s:restore_pos(pos)
  if a:mode == 'v'
    normal! gv
  endif
  set nolazyredraw
  redraw
endfun "}}}

function! xmpfilter#toggle_mark(mode) range "{{{
  let mark_str = " # =>"
  let pos = s:get_pos()
  set lazyredraw
  for line in range(a:firstline,a:lastline)
    let org_line = getline(line)
    let marked = strridx(org_line, mark_str)
    let new_line = marked != -1
          \ ? strpart(org_line, 0, marked)
          \ : org_line . mark_str
    call setline(line, new_line)
  endfor
  call s:restore_pos(pos)
  if a:mode == 'v'
    normal! gv
  endif
  set nolazyredraw
  redraw
endfun "}}}
" vim: foldmethod=marker
