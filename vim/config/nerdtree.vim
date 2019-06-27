"
" ####################################################################
" NERDtree configuration
" ####################################################################
"

let NERDTreeChDirMode = 0
let NERDTreeShowHidden = 1

" Icons
let g:WebDevIconsNerdTreeBeforeGlyphPadding = "" " To fix wrong padding
"let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
set encoding=UTF-8

" Highlight current cursor line
augroup NerdCursor
  autocmd!
  autocmd BufEnter NERD_tree_* hi CursorLine gui=underline
  autocmd BufLeave NERD_tree_* highlight clear CursorLine
  autocmd BufAdd * highlight clear CursorLine
augroup END
