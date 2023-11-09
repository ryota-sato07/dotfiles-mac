"-------------------------------------------------------------------------------
" プラグイン
"-------------------------------------------------------------------------------

call plug#begin()

Plug 'simeji/winresizer'                           "ウィンドウサイズの変更を簡単にする
Plug 'itchyny/lightline.vim'                       "ステータスバーのカスタマイズ
Plug 'tpope/vim-fugitive'                          "gitの情報を表示
Plug 'mattn/emmet-vim'                             "エメット
Plug 'vim-jp/vimdoc-ja'                            "vim helpを日本語化
Plug 'w0rp/ale'                                    "各種Lintを非同期実行
Plug 'tyru/caw.vim'                                "visual + gci でコメントアウト
Plug 'mattn/sonictemplate-vim'                     "テンプレートを管理するプラグイン
Plug 'ryanoasis/vim-devicons'                      "タブにアイコンフォントを表示するために使用
Plug 'skanehira/qfopen.vim'                        "quickfixで自由にファイルを開けるようにするためのプラグイン
Plug 'pechorin/any-jump.vim', { 'on': 'AnyJump' }  "定義元ジャンプ
Plug 'rking/ag.vim', { 'on': ['Ag', 'AgFile'] }    "Vimからagを使えるようにする
Plug 'thinca/vim-qfreplace', { 'on': 'Qfreplace' } "複数ファイルの一括置換
Plug 'tomasiser/vim-code-dark'                     "カラースキームをVSCodeライクにする
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" vim-scala の設定
" Plug 'derekwyatt/vim-scala'
" au BufRead,BufNewFile *.sbt set filetype=scala

call plug#end()
