call plug#begin()
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'xavierd/clang_complete'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-endwise'
call plug#end()
set number
colorscheme nord
let g:clang_library_path='/usr/lib/libclang.so'
let g:cpp_class_scope_highlight = 1
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
map <C-n> :NERDTreeToggle<CR>
set tabstop=2
set shiftwidth=2
