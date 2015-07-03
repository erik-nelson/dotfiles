" This line ensures various options are properly set to work with the Vim-related
" packages available in Debian.
runtime! debian.vim

" Set the color scheme
set t_Co=256
colorscheme devbox-dark-256
"set background=light
"colorscheme solarized

" Set font to inconsolata
if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_win32")
		set guifont=Consolas:h11:cANSI
	endif
endif

" Enable syntax highlighting
syntax on

" Manage packages with pathogen
execute pathogen#infect()

" Enable plugins
set nocp
filetype plugin on
filetype indent on

" Make Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd           " Show (partial) command in status line.
set showmatch         " Show matching brackets.
set ignorecase        " Do case insensitive matching
set smartcase         " Do smart case matching
set incsearch         " Incremental search
set mouse=a           " Enable mouse usage (all modes)

set cul               " Highlight current line
set cursorline
hi CursorLine term=bold cterm=bold
set ruler             " Show the line number on the bar
set number            " Line numbers


" These all get set in ~/.vim/indent/cpp.vim according to Google style guide
set tabstop=2
set shiftwidth=2      " 2 spaces for indents
set smarttab          " a <Tab> in an indent inserts 'shiftwidth' space
set expandtab         " spaces instead of tabs


"" Recommended settings for Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Settings for NERDtree
" - open when vim opens
" - close if last window open
" - remap to Ctrl+n
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" Options for YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <C-e> :YcmCompleter GoToDefinition<CR>
nnoremap <C-r> :YcmDiag<CR>


" Clang formatting
map <silent> <Tab> :pyf /usr/share/vim/addons/syntax/clang-format-3.4.py<CR><CR>
imap <silent> <Tab> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.4.py<CR><CR>

set showmode          " show which mode (insert, replace, visual)

set tw=80                  " start newlines after 80 columns
match ErrorMsg '\%>80v.\+' " highlight all text past 80 columns

" Redefine tab to reformat the buffer (in normal mode only)
map <S-Tab> 0mz:set fileformat=unix<cr>:set endofline<cr>A<C-V><Tab><esc>:%s/<C-V><Tab>/  /g<cr>:%s/\s*$//<cr>:nohlsearch<cr>ggVG=`z

" Move up or down 5 lines with shift
:map <C-k> 5k
:map <C-j> 5j
:map <C-l> 5l
:map <C-h> 5h

" F10 displays the vim word group underneath the cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Remove trailing white space when writing
autocmd BufWritePre * :%s/\s\+$//e

" XML Formatting
map <Leader>x :set filetype=xml<CR>
			\:source $VIMRUNTIME/syntax/xml.vim<CR>
			\:set foldmethod=syntax<CR>
			\:source $VIMRUNTIME/syntax/syntax.vim<CR>
			\:colors peachpuff<CR>
			\:source $ADDED/xml.vim<CR>
			\:iunmap <buffer> <Leader>.<CR>
			\:iunmap <buffer> <Leader>><CR>
			\:inoremap \> ><CR>

au BufNewFile,BufRead *.launch set filetype=xml
au BufNewFile,BufRead *.yaml set filetype=yaml
au BufNewFile,BufRead *.xaml set filetype=xml
au BufNewFile,BufRead *.txt set filetype=cmake
au BufNewFile,BufRead *.{cc,cxx,cpp,h,hh,hpp,hxx} set filetype=cpp
au BufNewFile,BufRead *.{unused,broken,broke,borked,old} set filetype=cpp

set clipboard=unnamedplus

" press w to cycle through open windows
:map w <C-W>w

" Doxygen setup
let g:DoxygenToolkit_briefTag_pre=""
let g:DoxygenToolkit_paramTag_post=" : "
let g:DoxygenToolkit_authorName="Erik Nelson"
let g:DoxygenToolkit_compactOneLineDoc="yes"
let g:DoxygenToolkit_compactDoc="yes"

:map <C-g> :Dox <CR>
:map <C-h> <esc> gg :DoxAuthor <CR>
:map <C-l> :DoxLic <CR>
let g:load_doxygen_syntax=0

""""""""""""""""""""""""" Other tips
" Plugins:
" - NERD commenter: commenting
" - Syntastic: C++/C syntax highlighting
" - YouCompleteMe: auto complete
" - NERD tree: file browser
" - hicursorwords: highlight the word under the cursor
" - DoxygenToolkit: add doxytags
" - ClangFormat: http://clang.llvm.org/docs/ClangFormat.html#vim-integration
