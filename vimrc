execute pathogen#infect()
set nu
filetype plugin indent on
syntax enable

if has('gui_running')
	set background=light
else
	set background=dark
endif

colorscheme solarized

" Custom mapping 
"

" NERD_TREE
"
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
