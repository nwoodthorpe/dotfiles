set encoding=utf8

" NeoBundle Plugin Manager

if has('vim_starting')
    if &compatible
        set nocompatible               " Be iMproved
    endif

    " Required:
    set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundle list {{{

" Required
NeoBundle 'Shougo/vimproc.vim', {'build': {'linux': 'make'}}

" Appearance
NeoBundle 'flazz/vim-colorschemes'          " color schemes
NeoBundle 'zenorocha/dracula-theme', {'rtp': 'vim/'} " color scheme
NeoBundle 'morhetz/gruvbox'                 " color scheme
NeoBundle 'rakr/vim-two-firewatch'          " colorscheme
NeoBundle 'aliou/moriarty.vim'
NeoBundle 'notpratheek/vim-luna'
NeoBundle 'mhartington/oceanic-next'

NeoBundle 'bling/vim-airline'               " powerline status bar
NeoBundle 'vim-airline/vim-airline-themes'  " vim-airline theme
NeoBundle 'joshdick/airline-onedark.vim'    " vim-airline theme

"NeoBundle 'ryanoasis/vim-devicons'          " Nerd font icons

" Basic configuration
NeoBundle 'Yggdroot/indentLine'             " indent guide
NeoBundle 'jiangmiao/auto-pairs'            " auto close bracets
NeoBundle 'kien/rainbow_parentheses.vim'    " bracket color support
NeoBundle 'gorodinskiy/vim-coloresque'      " Color preview

" Extended feature
NeoBundle 'sjl/gundo.vim'                   " Undo tree
NeoBundle 'chrisbra/NrrwRgn'                " Narrow Range
NeoBundle 'scrooloose/nerdcommenter'        " commenter

" Development
NeoBundle 'Shougo/neocomplete.vim'          " autocomplete
NeoBundle 'SirVer/ultisnips'                " snippet module
NeoBundle 'honza/vim-snippets'              " snippets
NeoBundle 'airblade/vim-rooter'             " Automatic change working dir
NeoBundle 'tpope/vim-fugitive'              " Git commands for vim
NeoBundle 'scrooloose/nerdtree'             " project navigator
NeoBundle 'majutsushi/tagbar'               " outline class viewer
NeoBundle 'Shougo/context_filetype.vim'     " context filetype for neocomplete
NeoBundle 'xolox/vim-easytags'              " auto ctags
NeoBundle 'xolox/vim-misc'                  " Misc functions - helper for other plugins
NeoBundle 'Chiel92/vim-autoformat'          " Code formatter
NeoBundle 'airblade/vim-gitgutter'          " Git left column
NeoBundle 'mattn/emmet-vim'                 " HTML/CSS Quick coding
NeoBundle 'godlygeek/tabular'               " vim-markdown dependency
NeoBundle 'plasticboy/vim-markdown'         " markdown control
NeoBundle 'jtratner/vim-flavored-markdown'  " github markdown for vim
NeoBundle 'hynek/vim-python-pep8-indent'    " Python indentation helper
NeoBundle 'bookletchoir/vim-vala'           " Vala Syntax Highlight

" Input method
NeoBundle 'vim-scripts/fcitx.vim'           " Fcitx Input Method autoswitch

" Misc
NeoBundle 'tmux-plugins/vim-tmux'           " tmuxconf color
NeoBundle 'vimperator/vimperator.vim'       " vimperatorrc color
NeoBundle 'PotatoesMaster/i3-vim-syntax'

" }}}

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" Plugin Configuration

" vim-airline {{{

"" Disable powerline completely
let g:powerline_loaded = 1
let g:powerline_pycmd = 'py3'

set laststatus=2

" Exclude preview buffer
let g:airline_exclude_preview = 1

" Use airline fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


"if has("gui_running")
"    "old vim-powerline symbols
"    let g:airline_left_sep = '⮀'
"    let g:airline_left_alt_sep = '⮁'
"    let g:airline_right_sep = '⮂'
"    let g:airline_right_alt_sep = '⮃'
"    let g:airline_symbols.branch = '⭠'
"    let g:airline_symbols.readonly = '⭤'
"    let g:airline_symbols.linenr = '⭡'
"    let g:airline_symbols.paste = 'Þ'
"    let g:airline_symbols.whitespace = 'Ξ'
"else
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.whitespace = 'Ξ'
"endif

" Tabline enhancement
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1

"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
"nmap <leader>p <Plug>AirlineSelectPrevTab
"nmap <leader>n <Plug>AirlineSelectNextTab

"let g:airline#extensions#tabline#show_close_button = 1
"let g:airline#extensions#tabline#close_symbol = 'X'

 " Syntastic integration
let g:airline#extensions#syntastic#enabled = 1

" gitgutter/signify/changesPlugin//quickfixsigns intergration
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

" ctrlp integration
let g:airline#extensions#ctrlp#color_template = 'insert'

" tagbar integration
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 's'

" fugitive/lawrencium integration
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#format = 2

" csv integration
"let g:airline#extensions#csv#enabled = 1

" virtualenv integration
"let g:airline#extensions#virtualenv#enabled = 1

" Nrrwrgn integration
let g:airline#extensions#nrrwrgn#enabled = 1

" vim-windowswap integration
let g:airline#extensions#windowswap#enabled = 1

" integration with vim-bufferline
"let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#bufferline#overwrite_variables = 1

" YouCompleteMe integration
"let g:airline#extensions#ycm#enabled = 1
"let g:airline#extensions#ycm#error_symbol = '✗'
"let g:airline#extensions#ycm#warning_symbol = '⚡'

" word counting
"let g:airline#extensions#wordcount#enabled = 1

" whitespace error detection
let g:airline#extensions#whitespace#enabled = 1

" Airline Theme
if has('gui_running')
    let g:airline_theme = "molokai"
else
    let g:airline_theme = "wombat"
endif

" }}}

" vim-devicons {{{
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" }}}

" NERDTree {{{

" Auto open NERDTree on startup
"autocmd vimenter * NERDTree

autocmd VimEnter * wincmd p

let g:NERDTreeWinPos = "left"

"NERDTree size
let g:NERDTreeWinSize=30

" Quit on open
let NERDTreeQuitOnOpen=1


" Close vim on last file with NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" }}}

" IndentLine {{{

" vim
let g:indentLine_color_term = 239
" gvim
let g:indentLine_color_gui = '#A4E57E'
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:indentLine_char = '┆'

" }}}

" YouCompleteMe {{{

"let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

""let g:ycm_key_detailed_diagnostics = '<leader>w'
"let g:ycm_open_loclist_on_ycm_diags = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_auto_trigger = 1
"let g:ycm_min_num_of_chars_for_completion = 2
"let g:ycm_echo_current_diagnostic = 0
"let g:ycm_warning_symbol = '∆'
"let g:ycm_error_symbol = '✗'
"let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_always_populate_location_list = 0
"let g:ycm_complete_in_comments = 0
"let g:ycm_complete_in_strings = 0
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 0
"let g:ycm_server_use_vim_stdout = 0
"let g:ycm_server_keep_logfiles = 0
"let g:ycm_server_log_level = 'info'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_max_diagnostics_to_display = 15
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_seed_identifiers_with_syntax = 1

"let g:ycm_cache_omnifunc = 1
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_goto_buffer_command = 'same-buffer'
"let g:ycm_disable_for_files_larger_than_kb = 1000

"let g:ycm_register_as_syntastic_checker = 1

"let g:ycm_filetype_whitelist = {
            "\ '*': 1
            "\}

"let g:ycm_filetype_blacklist = {
            "\ 'tagbar': 1,
            "\ 'qf': 1,
            "\ 'notes': 1,
            "\ 'markdown': 1,
            "\ 'unite': 1,
            "\ 'text': 1,
            "\ 'vimwiki': 1,
            "\ 'pandoc': 1,
            "\ 'infolog': 1,
            "\ 'mail': 1
            "\}

"let g:ycm_filetype_specific_completion_to_disable = {
            "\ 'gitcommit': 1
            "\}

"let g:ycm_semantic_triggers =  {
            "\   'c' : ['->', '.'],
            "\   'objc' : ['->', '.'],
            "\   'ocaml' : ['.', '#'],
            "\   'cpp,objcpp' : ['->', '.', '::'],
            "\   'perl' : ['->'],
            "\   'php' : ['->', '::'],
            "\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            "\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
            "\   'ruby' : ['.', '::'],
            "\   'lua' : ['.', ':'],
            "\   'erlang' : [':'],
            "\ }

" Recompile and check for errors
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

"Jump to parent of child class's function
"nmoremap <F3> :YcmCompeter GetParent<CR>


" }}}

" NeoComplete {{{

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" }}}

" deoplete {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 0
" }}}

" UltiSnips {{{

let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsListSnippets = "<c-x>"
" }}}

" Syntastic {{{

""let g:syntastic_cpp_compiler = 'gcc'
"let g:syntastic_cpp_compiler_options = " -std=c++11 -Wall -Wextra -Wpedantic $(pkg-config gtkmm-3.0 --libs --cflags)" "$(pkg-config gstreamer-0.10 --libs --cflags)
"let g:syntastic_python_checkers = ['flake8', 'python']
"let g:syntastic_html_checkers = ['pylint']
"let g:syntastic_python_pylint_args = "--load-plugins pylint_django"
"let g:syntastic_python_python_exec = "ipython"
"let g:syntastic_python_flake8_exec = 'flake8'
"let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'
""let g:syntastic_html_tidy_empty_tags = ['<i>']
"let g:syntastic_html_tidy_ignore_errors = ['trimming empty', '<a> escaping malformed URI reference']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_auto_jump = 0
"let g:syntastic_loc_list_height = 10

"highlight SyntasticErrorSign guifg=white guibg=pink
"highlight SyntasticWarningSign guifg=black guibg=yellow

"set sessionoptions-=blank

"let g:syntastic_mode_map = { 'passive_filetypes': ['sbt', 'java'] }

"" Disable Eclim plugin (enable on filetype specific behavior setting)
"let g:EclimFileTypeValidate = 0

"" Symbols ☢✗✠∆»☡☣☩
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_style_error_symbol = '☢'
"let g:syntastic_warning_symbol = '⚡'
"let g:syntastic_style_warning_symbol = '☩'

" }}}

" Tagbar {{{
let g:tagbar_left = 0
let g:tagbar_width = 30
" }}}

" ListToggle {{{
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10
" }}}

" Ruby debugger {{{
"map <F7>  :call g:RubyDebugger.step()<CR>
"map <F5>  :call g:RubyDebugger.next()<CR>
"map <F8>  :call g:RubyDebugger.continue()<CR>
" }}}

" vim-vebugger {{{
" TODO reconfig

let g:vebugger_leader='<Leader>d'
"Hook <F5> to debug mode
"autocmd FileType ruby map <buffer> <F5> :VBGstartRDebug "%"
"autocmd filetype cpp nnoremap <F5> :!g++ % -ggdb -o %:r && ./%:r <CR> :VBGstartGDB %:r
"autocmd FileType python map <buffer> <F5> :VBGstartPDB "%"
"autocmd FileType scala map <buffer><F5> :!scala "%"

"Toggle breakpoint
"autocmd filetype ruby map <buffer><F6> :VBGtoggleBreakpointThisLine<CR>

"To next debug point
"autocmd filetype ruby map <buffer><F7> :VBGcontinue<CR>


"autocmd filetype ruby map <buffer><F8> :VBGexecute

" Get value of current visual
"autocmd filetype ruby map <buffer> vnoremap <F1> :VBGevalSelectedText<CR>
"autocmd filetype ruby map <buffer> nnoremap <F1> :VBGevalWordUnderCursor<CR>

" }}}

" Rainbow parantheses {{{

let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons

" }}}

" vim-easytag {{{
let b:easytags_auto_highlight = 0
let g:easytags_file = '$HOME/.vim/tags/others'

" }}}

" vim-autoformat {{{

" C++ custom style
let g:formatdef_astyle_cpp = "astyle --option=$HOME/.styles/cpp.astyle"
let g:formatter_cpp = ['astyle_cpp']

let g:formatdef_astyle_cs = "astyle --option=$HOME/.styles/cpp.astyle"
let g:formatter_cs = ['astyle_cs']
" }}}

" vim-gitgutter {{{
let g:gitgutter_max_signs = 1000
" }}}

" CtrlP {{{
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
" }}}

" jedi-vim {{{
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#use_splits_not_buffers = "right"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "<F12>"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
" }}}

" pydiction {{{
"let g:pydiction_location = "$HOME/.vim/bundle/pydiction/complete-dict"
"let g:pydiction_menu_height = 5
" }}}

" python-mode (heavy conflict) {{{
"let g:pymode_options = 0

"let g:pymode_trim_whitespaces = 1
"let g:pymode_options_max_line_length = 79

"let g:pymode_indent = 1
"let g:pymode_folding = 1

"let g:pymode_doc = 1
"let g:pymode_doc_bind = '<F1>'

"let g:pymode_run = 1
"let g:pymode_run_bind = '<C-R>'

"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>m'

"let g:pymde_lint = 0

"let g:pymode_rope = 1
"let g:pymode_rope_show_doc_bind = '<leader>d'
"let g:pymode_rope_regenerate_on_write = 1

"let g:pymode_rope_completion = 0
"let g:pymode_rope_completion_on_dot = 1
"let g:pymode_rope_completion_bind = '<C-Space>'
"let g:pymode_rope_autoimport = 0
""let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'datetime']
"let g:pymode_rope_autoimport_after_complete = 0

"let g:pymode_rope_goto_definition_bind = '<leader>['
"if has('gui_running')
    "let g:pymode_rope_goto_definition_cmd = 'e'
"else
    "let g:pymode_rope_goto_definition_cwd = 'vnew'
"endif

"let g:python_rope_rename_bind = '<leader>r'
"let g:python_rope_rename_modile_bind = '<leader>R'

"let g:pymode_rope_autoimport_bind = '<leader>A'
"let g:pymode_conver_module_to_package_bind =
"let g:pymode_rope_extract_method_bind = '<C-c>rm'
"let g:pymode_rope_extract_variable_bind = '<C-c>rl'

" }}}

" emmet-vim {{{
"let g:user_emmet_leader_key='<C-x>'
" }}}

" vim-rooter {{{

"let g:rooter_use_lcd = 0
"let g:rooter_change_directory_for_non_project_files = 1
"let g:rooter_silent_chdir = 1

" }}}

" NrrRgn {{{
"let g:nrrw_rgn_vert = 1
"let g:nrrw_rgn_resize_window = 'relative'
"let g:nrrw_rgn_rel_min = 50
" }}}

" vim-php-refactoring {{{
let g:php_refactor_command='php ~/.vim/refactor.phar'
" }}}

" gundo {{{
let g:gundo_width = 40
let g:gundo_preview_height = 40
let g:gundo_help=0

let g:gundo_preview_bottom=1
let g:gundo_close_on_revert=1
"map <leader>u :GundoToggle<CR>
" }}}

"vim-markdown {{{
let g:vim_markdown_folding_disabled = 1
"}}}

" END NeoBundle Plugin Manager

" User Configuration

" Common settings {{{


" remap leader key
let mapleader = ","

" Set number column for help page
augroup filetype_misc
    autocmd!
    autocmd filetype help set number
augroup END

" Mouse support
if !has('nvim')
    set mouse=a
    set ttymouse=xterm2
endif

" Syntax Highlight
syntax on

" Text width
"set textwidth=80

" Show current line
set cursorline

" toggle menu for vim completion
set wildmenu

" Limit completion popup height
set pumheight=20

" only redraw vim window when needed
set lazyredraw
set ttyfast

" folding
set foldenable
set foldmethod=marker
set foldlevel=0

" Space behavior for code folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Save view on exit
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

" Hide status
set noshowmode

" Color scheme
if has('gui_running')
    "color gruvbox
    color molokai
    set background=dark
    "colo two-firewatch
    "let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
    "color luna
    "color OceanicNext
else
    set t_Co=256
    set background=dark
    color monokain
endif

" Tabstop 4 and replace tab with spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Clipboard sync with Xorg clipboard
set clipboard=unnamedplus

" Fix backspace and delete button
if !has('nvim')
    set backspace=indent,eol,start
    fixdel
endif

" Set line number
set number

" Rule for 80th column
let &colorcolumn=81

" Search function
if !has('nvim')
    set hlsearch
endif
set ignorecase
set smartcase
set incsearch

" Match brackets
set showmatch
let loaded_matchparen = 1

" text wrapping
set nowrap

" Highlight traling characters passed 80th columns
"if exists('+colorcolumn')
"  set colorcolumn=81
"else
"  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

" Highlight trailing whitespaces
set list " show special characters
set listchars=tab:→\ ,trail:·,nbsp:·

" Open help menu to the right
if has('autocmd')
    function! ILikeHelpToTheRight()
        if !exists('w:help_is_moved') || w:help_is_moved != "right"
            wincmd L
            let w:help_is_moved = "right"
        endif
    endfunction

    augroup HelpPages
        autocmd FileType help nested call ILikeHelpToTheRight()
    augroup END
endif

" Popup window color
highlight Pmenu ctermfg=255 ctermbg=0
highlight PmenuSel ctermfg=0 ctermbg=lightblue

" Diff check color modify
highlight DiffAdd    ctermbg=20

" GUI settings

if has("gui_running")
    set lines=45 columns=90
    set guifont=Powerline\ Consolas\ 10
    "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
    "set guifont=Fira\ Code\ Regular\ 9
    "set guifont=PragmataPro\ for\ Powerline\ 9

    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar

    set guiheadroom=0
    set linespace=0

endif

" }}}

" Custom functions {{{

" Execute shell command in a new buffer {{{
function! s:ExecuteInShell(command)
  let command = join(map(split(a:command), 'expand(v:val)'))
  let winnr = bufwinnr('^' . command . '$')
  silent! execute  winnr < 0 ? 'botright new ' . fnameescape(command) : winnr . 'wincmd w'
  setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile number wrap
  echo 'Execute ' . command . '...'
  silent! execute 'silent %!'. command
  silent! execute 'resize ' . line('$')
  silent! redraw
  silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
  silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>'
  echo 'Shell command ' . command . ' executed.'
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
" }}}

" Restore mouse cursor in previous position {{{
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
" }}}

" Read CPP tags (incomplete) {{{
function! ReadCPPTags()
    for tagfile in split(glob('~/.vim/tags/*'), "\n")
        let &tags .= ',' . tagfile
    endfor
endfunction
" }}}

" Switch between tabs and spaces {{{
function! TabSwitch()
    set expandtab!
endfunction
" }}}

" Move vim dest to "src" folder {{{
function! ToSrcFolder()
    cd %:p:h:s?/src/.*?/src/?
endfunction
" }}}

" Highlight keywords for vim {{{
function! PythonKeywordHighlight()
    syn keyword pythonThis cls self

    syn match pythonChain '\v(^|\W)(cls|self)\zs(\s*\.\s*\h\w*)+' contains=pythonMember
    syn match pythonMember '\h\w*\(\w*\)' contained

    hi link pythonThis Keyword
    hi link pythonMember Function
endfunction
" }}}

" Add highlighting for function definition in C++ {{{
function! EnhanceCppSyntax()
  syn match cppFuncDef "::\~\?\zs\h\w*\ze([^)]*\()\s*\(const\)\?\)\?$"
  hi def link cppFuncDef Special
endfunction

" }}}

" Text folding Format {{{
function! FoldText1()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

fu! FoldText2()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

function! FoldText1()
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    let line = '# ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

function! NeatFoldText()
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

set foldtext=NeatFoldText()

"set foldtext=FoldText1()

" }}}

" Trim whitespaces {{{
function! ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction
" }}}

" }}}

" vimfiles setting {{{

" Auto reload vim settings
augroup autoreload
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" backup dir
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
    :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif

set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backup

" swap dir
" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
    :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" vim info
" viminfo stores the the state of your previous editing session
if !has('nvim')
    set viminfo+=n~/.vim/viminfo
endif

" undo dir
if exists("+undofile")
    " undofile - This allows you to use undos after exiting and restarting
    " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
    " :help undo-persistence
    " This is only present in 7.3+
    if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif
    set undodir=./.vim-undo//
    set undodir+=~/.vim/undo//
    set undofile
endif

" Expand Undo
set undofile
set undodir=$HOME/.vim/history

" tagfiles
set tags=./tags,tags

" }}}

" Keyboard binding {{{

" Disable arrow movement
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable built-in vim help
nmap <F1> <nop>

" Toggle highlight search
map <F2> :set hlsearch!<CR>

" Navigation through windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Open NERDTree
nmap <Leader>e :NERDTreeToggle<CR><C-w>=

" Open Tagbar
nmap <leader>t :TagbarToggle<CR><C-w>=

" Aligned comment (C-/)
nmap <C-_> <leader>cb
vmap <C-_> <leader>cb

" Buffers {

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Open new vertial buffer to the right
"set splitright

" Resize buffer
nmap <leader>b <C-w>=

" Move to the next buffer
nmap gt :bnext<CR>

" Move to the previous buffer
nmap gT :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
"nmap bq :bp <BAR> bd #<CR>

" Go to first buffer
"nmap b0 :bfirst<CR>
"nmap b^ :blast<CR>

" Go to last buffer
"nmap b$ :blast<CR>

" flake8 mapping
"autocmd FileType python map <buffer> <F5> :call Flake8()<CR>

" Show all open buffers and their status
"nmap <leader>bl :ls<CR>

" Split buffers
"nmap <C-i> :vsplit<CR>

" Swap buffers {{{
"function! MarkWindowSwap()
"    " marked window number
"    let g:markedWinNum = winnr()
"    let g:markedBufNum = bufnr("%")
"endfunction

"function! DoWindowSwap()
"    let curWinNum = winnr()
"    let curBufNum = bufnr("%")
"    " Switch focus to marked window
"    exe g:markedWinNum . "wincmd w"

"    " Load current buffer on marked window
"    exe 'hide buf' curBufNum

"    " Switch focus to current window
"    exe curWinNum . "wincmd w"

"    " Load marked buffer on current window
"    exe 'hide buf' g:markedBufNum
"endfunction

"nnoremap H :call MarkWindowSwap()<CR> <C-w>h :call DoWindowSwap()<CR>
"nnoremap J :call MarkWindowSwap()<CR> <C-w>j :call DoWindowSwap()<CR>
"nnoremap K :call MarkWindowSwap()<CR> <C-w>k :call DoWindowSwap()<CR>
"nnoremap L :call MarkWindowSwap()<CR> <C-w>l :call DoWindowSwap()<CR>

" }}}

" Go to definition/declaration
"nnoremap <F3> :YcmCompleter GoTo<CR>

" Reformat file
noremap <leader>fm :Autoformat<CR>

" change dir to src folder
"nmap <leader>cd :cd "%:p:h"<CR>

" Gundo toggle
map <leader>r :GundoToggle<CR>
" }}}

" Filetype specific behavior {{{

" c {{{

augroup filetype_c
    autocmd!
    autocmd Filetype c nnoremap <F3> :YcmCompleter GoTo<CR>
    "autocmd FileType c call ReadCPPTags()
    autocmd FileType c set tabstop=8
    autocmd FileType c set softtabstop=8
    autocmd FileType c set shiftwidth=8
    "autocmd FileType c TagbarOpen
    autocmd FileType c autocmd BufWritePre <buffer> :%s/\s\+$//e
    "autocmd FileType c set textwidth=80

    if has('gui_running')
        "autocmd FileType c set lines=50 columns=120
    endif
augroup END

" }}}

" cpp {{{
augroup filetype_cpp
    autocmd!
    autocmd FileType cpp autocmd BufWritePre <buffer> :%s/\s\+$//e
    "autocmd FileType cpp TagbarOpen
    autocmd FileTYpe cpp set makeprg=make\ -C\ ../build\ -j9
    "autocmd FileType cpp set textwidth=80

    autocmd Filetype cpp nnoremap <F3> :YcmCompleter GoTo<CR>
    autocmd FileType cpp call ReadCPPTags()
    autocmd FileType cpp nnoremap <C-f> :%!astyle --options=$HOME/.vim/astyle/cpp-custom<CR>

    autocmd Syntax cpp call EnhanceCppSyntax()

    if has('gui_running')
        "autocmd FileType cpp set lines=50 columns=120
    endif
augroup END

" }}}

" cs {{{

augroup filetype_cs
    autocmd!
    autocmd FileType cs noremap <F5> :!vim-build-cs "%:p"<CR>
    "autocmd FileType cs noremap <buffer> <c-f> :call CSSBeautify()<cr>
    "autocmd FileType cs vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
    autocmd FileType cs nnoremap <C-f> :%!astyle --options=$HOME/.vim/astyle/cpp-custom<CR>
augroup END

" }}}

" css {{{

augroup filetype_css
    autocmd!
    autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
augroup END

" }}}

" html {{{

augroup filetype_html
    autocmd!
    autocmd FileType html set ft=htmldjango
    autocmd FileType html set colorcolumn=81
    autocmd FileType html set tabstop=4
    autocmd FileType html set softtabstop=4
    autocmd FileType html set shiftwidth=4
    "autocmd FileType html vmap <c-f>  :!tidy -config "$HOME/.config/tidy.conf"<CR><CR>
    "autocmd FileType html nnoremap <F5> :silent exec "!firefox-dev \"%:p\" &>/dev/null &"<CR>:redraw!<CR>
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>

augroup END
" }}}

" java {{{

augroup filetype_java
    autocmd!
    "autocmd FileType java let g:EclimFileTypeValidate = 1
    autocmd FileType java set tabstop=2
    autocmd FileType java set softtabstop=2
    autocmd FileType java set shiftwidth=2
    autocmd FileType java set colorcolumn=101
    "autocmd FileType java set textwidth=100
    "autocmd FileType java TagbarOpen
    autocmd FileType java autocmd BufWritePre <buffer> :%s/\s\+$//e

    if has ('gui_running')
        "autocmd FileType java set lines=50 columns=140
    endif
augroup END

" }}}

" javascript {{{

augroup filetype_js
    autocmd!
    "autocmd FileType javascript set textwidth=80
    autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType javascript nmap <F5> :!urxvtc -hold -e seed "%:p"<CR><CR>
    autocmd FileType javascript set tabstop=4
    autocmd FileType javascript set softtabstop=4
    autocmd FileType javascript set shiftwidth=4
    autocmd FileType javascript set colorcolumn=81
augroup END

" }}}

" json {{{

augroup filetype_json
    autocmd!
    autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
    autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
augroup END

" }}}

" jsx {{{

augroup filetype_jsx
    autocmd!
    autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
    autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
augroup END

" }}}

" markdown {{{

augroup filetype_md
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" }}}

" PHP {{{
" Override syntax highlighting
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

augroup filetype_php
    autocmd!
    autocmd FileType php vmap <C-f> :Autoformat<CR>
    if has('gui_running')
        autocmd FileType php nmap <F5> :!urxvtc -hold -e php "%:p" <CR><CR>
    else
        autocmd FileType php nmap <F5> :!clear && php "%:p"<CR>
    endif
augroup END

" }}}

" python {{{
augroup filetype_py
    autocmd!
    " TODO active pygtk completion
    "autocmd FileType python TagbarOpen
    autocmd FileType python set tabstop=4
    "autocmd FileType python set textwidth=79
    autocmd FileType python set colorcolumn=80
    autocmd FileType python set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    autocmd FileType python set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    autocmd FileType python autocmd BufWritePre <buffer> :%s/\s\+$//e
    autocmd FileType python call PythonKeywordHighlight()

    if has('gui_running')
        "autocmd FileType python set lines=50 columns=120
        autocmd FileType python nmap <F5> :!urxvtc -hold -e ipython "%:p"<CR><CR>
        autocmd FileType python nmap <F6> :!urxvtc --title "PuDB - A full-screen, console-based visual debugger for Python" -depth 0 -bg '\#000000' -geometry 130x55 -e ipython -m pudb "%:p" <CR><CR>
    else
        autocmd FileType python nmap <F5> :!clear && ipython "%:p"<CR>
        autocmd FileType python nmap <F6> :!clear && ipython -m pudb "%:p" <CR><CR>
    endif

    autocmd FileType python vmap <C-f> :Autoformat<CR>
augroup END

" }}}

" ruby {{{
augroup filetype_rb
    autocmd!
    "autocmd FileType ruby TagbarOpen
    autocmd FileType ruby autocmd BufWritePre <buffer> :%s/\s\+$//e

    if has ('gui_running')
        "autocmd FileType ruby set lines=50 columns=120
    endif
augroup END

" }}}

" scala {{{

augroup filetype_scala
    autocmd!
    "autocmd FileType scala let g:EclimFileTypeValidate = 1
    autocmd FileType scala set tabstop=2
    autocmd FileType scala set softtabstop=2
    autocmd FileType scala set shiftwidth=2
    autocmd FileType scala set colorcolumn=101
    "autocmd FileType scala set textwidth=100
    "autocmd FileType scala TagbarOpen
    autocmd FileType scala autocmd BufWritePre <buffer> :%s/\s\+$//e

    if has('gui_running')
        "autocmd FileTYpe scala set lines=50 columns=140
    endif
augroup END
" }}}

" sh, bash {{{
augroup filetype_sh
    autocmd!
    autocmd filetype sh nmap <F5> :!bash "%:p"
augroup END
" }}}

" arduino {{{
augroup filetype_arduino
    autocmd!
    "autocmd filetype arduino set ft=c
augroup END

" }}}

" tex {{{

augroup filetype_tex
    autocmd!
    autocmd filetype tex nmap <F5> :!pdflatex "%:p" <CR>
augroup END
" }}}

" vala {{{
augroup filetype_vala
    autocmd!
    autocmd FileType vala autocmd BufWritePre <buffer> :%s/\s\+$//e
augroup END
" }}}

" prolog {{{
augroup filetype_pl
    autocmd!
    "autocmd BufNewFile,BufRead *.pl set filetype=prolog
    autocmd filetype prolog nmap <F5> :!swipl -c "%:p" && ./a.out
augroup END
" }}}

" zsh {{{
"augroup filetype_zsh
    "autocmd!
    "autocmd filetype zsh set syn=sh
    "autocmd filetype zsh nmap <F5> :!zsh "%:p"
"augroup END
" }}}
" }}}

" Autostart {{{

"autocmd BufEnter * call ToSrcFolder()

" Add the current file's directory to the path if not already present.
augroup autostart
    autocmd!
    autocmd BufRead *
                \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
                \ exec "set path+=".s:tempPath
augroup END
" }}}

" END User Configuration
