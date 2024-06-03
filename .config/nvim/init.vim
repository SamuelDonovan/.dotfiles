"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set relativenumber
set number

set incsearch  
" Ignore case when searching 
set ignorecase 
" When searching try to be smart about cases 
set smartcase 
" Highlight search results 
set hlsearch 
" Makes search act like search in modern browsers 
set incsearch 

set expandtab
set shiftwidth=4
set tabstop=4

" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=8

" Always show current position
set ruler 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime undotree.vim 

" Open all vim files to the last place 
runtime vim-lastplace.vim 

" Multicursor > macros 
let g:VM_maps                       = {}   
let g:VM_default_mappings           = 0  
let g:VM_maps["Add Cursor Down"]    = '<C-j>'  
let g:VM_maps["Add Cursor Up"]      = '<C-k>'   
let g:VM_maps["Visual Cursors"]     = '<leader>c'  
let g:VM_maps["Start Regex Search"] = '<leader>/'  
let g:VM_maps["Align Regex"]        = '<leader>a'
runtime visual-multi.vim 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Leader is the space, no other answer is correct
let mapleader = " "  

" Open [L]ast file 
map <leader>l <C-^>

" Open file browser 
map <leader>e <Esc>:Lex<cr>:vertical resize 30<cr> 

" Open undotree
map <leader>u <Esc>:UndotreeToggle<cr>:UndotreeFocus<cr> 


