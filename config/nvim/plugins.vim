" Use deoplete
let g:deoplete#enable_at_startup = 1

" Indent li and p tags properly
let g:html_indent_tags = 'li\|p'

" ctrlp - Don't cache
let g:ctrlp_use_caching=0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_reuse_window = 'netrw'
let g:ctrlp_types = ['fil', 'mru', 'tags']
let g:ctrlp_extensions = ['tag']

" custom projections
let g:rails_projections = {
\ "test/integration/*_test.rb": {
\   "type": "integration test",
\   "alternate": "app/controllers/{}.rb"
\ },
\ "app/controllers/*_controller.rb": {
\    "affinity": "controller",
\    "template": [
\      "class {camelcase|capitalize|colons}Controller < ApplicationController",
\      "end"
\    ],
\    "type": "controller",
\    "alternate": "test/integration/{}_controller_test.rb"
\ }
\}

" Use ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  let g:ackprg = 'ag --vimgrep'
endif

" Set Gists to secret by default
let g:gist_post_private = 1

" vinegar hide dotfiles
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro nonumber'
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_retmap = 1

" disable left click open
let g:netrw_retmap = 1

" disable netrw history
let g:netrw_dirhistmax = 0

" vim-rspec - Use Tbro to run rspec
let g:rspec_command = "Tbro bin/tt {spec}"

" Set airline theme
" let g:airline_solarized_bg='dark'
let g:airline_theme="gruvbox"
let g:airline_solarized_dark_inactive_border=1
let g:airline_solarized_normal_green=1

" Don't use new symbols symbols
let g:airline_symbols_ascii = 1

" Disable annoying whitespace indicator
let g:airline#extensions#whitespace#enabled=0

" Better tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#ale#enabled = 1

" Don't show modes
let g:airline#extensions#ctrlp#show_adjacent_modes = 0

" Better line/column information
let g:airline_section_b = ""
let g:airline_section_z = "%#__accent_bold#%l%#__restore__#:%c"

let g:ale_sign_error="△"
let g:ale_sign_warning="✕"

let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\}
let g:ale_fix_on_save=1

" Single character modes
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

let g:test#custom_strategies = {'tbro': function('tbro#send')}
let g:test#strategy = 'tbro'

let g:UltiSnipsSnippetsDir = "~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories=["snips"]
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsExpandTrigger="<Nop>"

" Don't hide quotes in json
let g:vim_json_syntax_conceal = 0
