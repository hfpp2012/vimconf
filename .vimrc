set nocompatible

set number
set guitablabel=%-0.40t%M

" set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=6                   " minimum lines to keep above and below cursor

" 减少刷新和重画
set lz

let html_no_rendering=1

" Open new split windows to the right/bottom
" set splitright splitbelow
set splitright

set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2

set autoindent
set smartindent

" set gcr=n:blinkon0

let mapleader = ','

" 文字过长时断行显示
set wrap

" 设置折叠方法
set fdm=manual

" 进入编辑模式时按tab弹出菜单
set wildmenu
set wildmode=list:longest,full

" 修复backspace键的作用
inoremap <BS> <Left><Del>
set whichwrap+=[

" 设置一行最多80个字符
" set textwidth=80

" 自动重新读入
set autoread

" 备份和缓存
set nobackup
set noswapfile
set nowritebackup

" 高亮搜索
set hlsearch
set incsearch

" no bell
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set mouse=a

" list chars
set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 搜索时忽略大小写
set ignorecase
set smartcase

" 设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 设置标题
set title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70"

" 高亮当前行
set cursorline

" 修改 vmirc 后自动生效
map <leader>l :source ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" 去掉工具栏
set go-=T

" 回到上次编辑的地方
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" vundle setting
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

if filereadable(expand("~/.vimrc.bundle"))
  source ~/.vimrc.bundle
endif

call neobundle#end()

if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

if filereadable(expand("~/.vimrc.map"))
  source ~/.vimrc.map
endif

" colorscheme
set t_Co=256
set background=light
if has("gui_running")
  " colorscheme Tomorrow-Night
  colorscheme molokai
  set linespace=2
  " set lines=35
  set lines=999
  set columns=999
  " set columns=100
  " Remove toolbar, left scrollbar and right scrollbar"
  set guioptions-=T
  set guioptions-=l
  set guioptions-=L
  " set guioptions-=r
  " set guioptions-=R
  " set background=dark
  " let g:solarized_termtrans=1
  " let g:solarized_termcolors=256
  " let g:solarized_contrast="high"
  " let g:solarized_visibility="high"
  " colorscheme solarized
else
  colorscheme molokai
  set nocursorline
endif

if has("gui_macvim")
  set guifont=Monaco:h12
elseif has("gui_gtk")
  set guifont=文泉驿等宽微米黑\ 12
  " set guifont=Menlo\ 12
  " set guifont=Ubuntu\ Mono\ 14
else
  " set guifont=Monaco:h17
end

highlight whitespaceEOL term=reverse ctermbg=red guibg=red
match whitespaceeol /\s\+\(\%#\)\@!$/
syntax match whitespaceEOL /\s\+$/
syntax match ColorColumn /\%>80v.\+/

" hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow

" remove tailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

filetype plugin indent on
syntax on

" easy_align
vnoremap <silent> <Enter> :EasyAlign<cr>
