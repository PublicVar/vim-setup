let g:airline_powerline_fonts=1


" NERDTree CONFIGS

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" NERDTree SHORTCUTS
nnoremap <leader>n :NERDTreeFocus<CR>
" Go the panel
nnoremap <C-n> :NERDTree<CR>
" Hide and show the panel
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" CHANGE CURSOR COLOR IN INSERT MODE

" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine ctermbg=Yellow ctermfg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None
