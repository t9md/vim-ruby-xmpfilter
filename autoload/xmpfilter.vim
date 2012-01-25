function! xmpfilter#run(mode) range "{{{
  if     a:mode == 'n'
    let range_str = '%'
  elseif a:mode == 'v'
    let range_str = "'<,'>"
  elseif a:mode == 'i'
    let range_str = '%'
  end
  let cursor_pos = getpos(".")
  let wintop_pos = getpos('w0')
  set lazyredraw
  execute ":" . range_str . "!xmpfilter -a"
  call setpos('.', wintop_pos)
  normal! zt
  call setpos('.', cursor_pos)
  set nolazyredraw
  redraw
endfun "}}}

function! xmpfilter#toggle_mark(mode) range "{{{
  let mark_str = " # =>"
  let cursor_pos = getpos(".")
  let wintop_pos = getpos('w0')
  set lazyredraw
  for line in range(a:firstline,a:lastline)
    let org_line = getline(line)
    let marked = strridx(org_line, mark_str)
    let new_line = marked != -1
          \ ? strpart(org_line, 0, marked)
          \ : org_line . mark_str
    call setline(line, new_line)
  endfor
  call setpos('.', wintop_pos)
  normal zt
  call setpos('.', cursor_pos)
  set nolazyredraw
  redraw
endfun "}}}
