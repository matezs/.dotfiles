" Enable syntax highlighting and filetype detection
syntax on
filetype plugin indent on

" Search settings
set hlsearch
set smartcase
set incsearch

" Tab and indentation settings
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Display settings
set showmatch
set ruler
set number
set relativenumber
set noerrorbells
set numberwidth=3

" Key mappings
set pastetoggle=<F11>
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
nnoremap <silent> <F10> :call ToggleLineNumbers()<CR>

" Set the window title to be the filename and hostname
if has('title')
  set title
  let &titlestring = expand('%:t') . ' - ' . hostname()
endif

" Function to toggle between showing and hiding line numbers
let g:line_number_toggle = 0
function! ToggleLineNumbers()
    if g:line_number_toggle == 0
        set number relativenumber
        let g:line_number_toggle = 1
    else
        set nonumber norelativenumber
        let g:line_number_toggle = 0
    endif
endfunction
augroup line_number_toggle
    autocmd!
    autocmd BufEnter * call ToggleLineNumbers()
augroup END

" Disable mouse interaction
set mouse=
