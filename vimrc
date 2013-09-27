"-------------------------------------
"SoftwareDesign201309号見て修正
"--------------------------------------

"vimの本気をだすための、おまじない
set nocompatible
"挿入モードでBackSpace使えるようにする
set backspace=start,eol,indent 
"矢印キーで移動できるようにする
set whichwrap=b,s,[,],<,>,~ 
"マウスは使えないようにする
set mouse= 
"シンタックスハイライトを有効にする
syntax on 
"検索結果をハイライトしない
set nohlsearch 

"裏が黒のターミナルの場合の色の基本設定
highlight StatusLine ctermfg=black ctermbg=grey
highlight CursorLine ctermfg=none ctermbg=darkgray cterm=none
highlight MatchParen ctermfg=none ctermbg=darkgray
highlight Comment ctermfg=DarkGreen ctermbg=NONE
highlight Directory ctermfg=DarkGreen ctermbg=NONE

"ステータスラインを常に表示する
set laststatus=2
"ステータスラインにパスを表示する
set statusline=%F%r%h%=
"行数を表示する
set number
"インクリメンタルサーチを有効にする
set incsearch
"検索時の大文字小文字を区別しない
set ignorecase
"コマンドラインモードで補完を有効にする
set wildmenu wildmode=list:full

"--------------------------------------
"ショートカット作成
"--------------------------------------

"<tab>で右に15文字、<sift tab>で左に15文字
nmap <silent> <tab> 15<Right>
vmap <silent> <tab> <C-o>15<Right>
nmap <silent> <S-tab> 15<Left>
vmap <silent> <S-tab> <C-o>15<Left>

"複数ファイルを開いた時にバッファを指定して移動しなくても<Ctrl-n>で移動できる
nmap <silent> <C-n>      :update<CR>:bn<CR>
imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>




"---------------------------------------
"NeoBundle
"---------------------------------------
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/vim/bundle/neobundle.vim
  call neobundle#rc(expand('=/vim/bundle'))
endif

NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/vim-scripts/Align.git'
NeoBundle 'https://github.com/glidenote/memolist.vim.git'
NeoBundle 'https://github.com/kien/ctrlp.vim.git'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'vim-scripts/newspaper.vim'



filetype plugin on
filetype indent on
