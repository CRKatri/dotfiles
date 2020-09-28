call plug#begin() 
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-endwise'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'chrisbra/Colorizer'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'gruvbox-community/gruvbox'
call plug#end()
set number
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
map <C-n> :NERDTreeToggle<CR>
set tabstop=2
set shiftwidth=2
set expandtab
set completeopt-=preview

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<Tab>" :
		\ coc#refresh()

" Sourcekit stuff
autocmd BufNewFile,BufRead *.swift set filetype=swift
autocmd BufRead * call s:Swift()
function! s:Swift()
	if !empty(&filetype)
		return
	endif

	let line = getline(1)
	if line =~ "^#!.*swift"
		setfiletype swift
	endif
endfunction
