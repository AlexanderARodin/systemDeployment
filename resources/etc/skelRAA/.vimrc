"~/.vimrc				"file location
set nocompatible		"with Vi
filetype on
filetype plugin on
filetype indent on

set tabstop=3		"position for tubbing
set shiftwidth=4	"aply for >> and <<
set t_Co=256		"terminal coloring

"syntax on          'incompatible with vi (vim.tiny)

"set number			"line numbering
set numberwidth=3	"width for line numbering

set mouse=a			"mouse supporting

"set showtabline=3   "tabs on screen top
set autoindent
set foldcolumn=1

set listchars=tab:▸·,eol:¬,precedes:«,extends:»
set list
