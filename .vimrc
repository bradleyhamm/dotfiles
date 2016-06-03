colorscheme slate           " color scheme
set whichwrap+=<,>,h,l,[,]  " wrap cursor movement between lines
set nostartofline           " vertical movements not effected by blank lines
set wildmenu                " tab completion
set history=700             " lines of history to remember
set nrformats=alpha         " increment alpha as well as digits
set ruler                   " show position of cursor
set cmdheight=1             " command bar height
set hid                     " allow changing buffers without saving first
set ignorecase              " case insensitive searching
set smartcase               " case sensitive if capital present
set hlsearch                " highlighted searches
set incsearch               " jump to matches while searching
set nolazyredraw            " redraw while executing macros
set magic                   " less escaping in regex
set showmatch               " highlight other bracket
set novisualbell            " no bells
set noerrorbells            " no bells
set t_vb=                   " no bells
set expandtab               " spaces instead of tabs
set shiftwidth=4            " indent 4 spaces
set tabstop=4               " tab 4 spaces
set smarttab                " make tabbing smarter
set shiftround              " make tabbing smarter
set ai                      " match previous line's indentation
set si                      " smart indenting
set wrap                    " wrap instead of truncate long lines
set laststatus=2            " show status bar

autocmd FileType xml    setlocal shiftwidth=2 tabstop=2 textwidth=120
autocmd FileType html   setlocal shiftwidth=2 tabstop=2 textwidth=120
