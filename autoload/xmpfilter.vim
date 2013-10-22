" Object:
"=========================
let s:mark = " # =>"
let s:xmpfilter = {}

function! s:xmpfilter.init(mode) "{{{
  let self._mode       = a:mode
  let self._winview    = winsaveview()
  let self._lazyredraw = &lazyredraw
  set lazyredraw
endfunction "}}}

function! s:xmpfilter.finish() "{{{
  call winrestview(self._winview)
  if self._mode == 'v'
    normal! gv
  endif
  let &lazyredraw = self._lazyredraw
  redraw
endfunction "}}}

function! s:xmpfilter.run(mode, option,first_line, last_line) "{{{
  call self.init(a:mode)
  let range = (self._mode == 'v')
        \ ? join([a:first_line, a:last_line], ",")
        \ : '%'
  let cmd = range . "!" . g:xmpfilter_cmd . " " . a:option
  execute cmd
  call self.finish()
endfunction "}}}

function! s:xmpfilter.mark(mode, first_line, last_line) "{{{
  call self.init(a:mode)
  for line in range(a:first_line,a:last_line)
    let line_org = getline(line)
    let marked   = strridx(line_org, s:mark)
    let line_new = (marked ==# -1)
          \ ? line_org . s:mark
          \ : strpart(line_org, 0, marked)
    call setline(line, line_new)
  endfor
  call self.finish()
endfunction "}}}

" PublicInterface:
"=========================
function! xmpfilter#run(mode, option ) range "{{{
  call s:xmpfilter.run(a:mode, a:option, a:firstline, a:lastline)
endfun "}}}

function! xmpfilter#mark(mode) range "{{{
  call s:xmpfilter.mark(a:mode, a:firstline, a:lastline)
endfun "}}}
" vim: foldmethod=marker
