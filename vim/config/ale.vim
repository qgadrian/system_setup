"
" ####################################################################
" ALE mapping and configs
" ####################################################################
"

let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 0
let g:ale_close_preview_on_insert = 1
let g:ale_c_parse_makefile = 1
let g:ale_fix_on_save = 1
let g:ale_elixir_elixir_ls_release = $HOME.'/.vim/elixir-ls/rel'
let g:ale_linters = {
\ 'elixir': ['elixir-ls'],
\ 'json': ['prettier'],
\ 'rust': ['rustc'],
\}
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'elixir': ['mix_format'],
\ 'rust': ['rustfmt'],
\ 'json': ['prettier'],
\ }

autocmd CompleteDone * pclos " Closes preview window

imap <C-Space> <Plug>(ale_complete)
noremap <Leader>gd :ALEGoToDefinition<CR>
noremap <Leader>gdt :ALEGoToDefinitionInTab<CR>
