" VIM 64Bit to use Python 
" Vim with all enhancements
" source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
" if &diffopt !~# 'internal'
"   set diffexpr=MyDiff()
" endif
" function MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg1 = substitute(arg1, '!', '\!', 'g')
"   let arg2 = v:fname_new
"   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"   let arg2 = substitute(arg2, '!', '\!', 'g')
"   let arg3 = v:fname_out
"   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"   let arg3 = substitute(arg3, '!', '\!', 'g')
"   if $VIMRUNTIME =~ ' '
"     if &sh =~ '\<cmd'
"       if empty(&shellxquote)
"         let l:shxq_sav = ''
"         set shellxquote&
"       endif
"       let cmd = '"' . $VIMRUNTIME . '\diff"'
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   let cmd = substitute(cmd, '!', '\!', 'g')
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
"   if exists('l:shxq_sav')
"     let &shellxquote=l:shxq_sav
"   endif
" endfunction


"-------------------------------7huai-----------------------------------"
"--------------------------vim config file------------------------------"
"git 个人令牌
"git token: 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
"           gvim 文件默认保存位置
" 格式： exec 'cd' fnameescape('path')
"
" exec 'cd' fnameescape('D:\Program_temp')
" exec 'cd' fnameescape('C:\Users\7huai\Desktop\FreeRTOS\freertos')

"           使用jk作为<ESC>与<Ctrl>[的remap
inore jk <ESC>

"           重映射光标键
"   普通模式
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"   插入模式
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>


"           记不住这个是啥作用了
cnoremap <expr>%% getcmdtype()==':'?expand('%:h').'/':'%%'


"           全局配置

let mapleader = ","
set mousehide
set nospell
set nowrap
set nu
set helplang=cn
set hlsearch
"   快速取消搜索高亮
noremap <leader><space> :set nohlsearch<CR>
set incsearch
" set background=dark
set background=light
syntax enable
set ignorecase
set backspace=indent,eol,start
set autoindent
set scrolloff=0
set tabstop=4
set shiftwidth=4
set expandtab
set history=25
set ruler
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>
set showcmd
filetype plugin indent on
filetype plugin on
set sidescroll=10
set whichwrap=b,s,<,>,[,]
"display the \t and \v
set nolist
"set list
"set listchars=tab:----,trail:
set cmdheight=2
set autowrite
set equalalways
autocmd GUIEnter * simalt ~x

" 窗口快捷操作
noremap <silent> <tab> :tabnext<CR>
noremap <silent> bp :bp<CR>
noremap <silent> bn :bn<CR>

"           文件的代码格式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936,gbk,big5

"   菜单乱码解决
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"   设置中文提示
language messages zh_CN.utf-8
"   设置双字宽显示
set ambiwidth=double

"   配色方案
" colorscheme darkblue
" colorscheme delek
colorscheme solarized
" colorscheme molokai
" colorscheme desert
"
" awesome-vim-colorschemes
" colorscheme abstract
" colorscheme Atom
" colorscheme deep-space
" colorscheme deus
" colorscheme dogrun
" colorscheme flattened
" colorscheme github
" colorscheme gotham
" colorscheme gruvbox
" colorscheme papercolor


"           光标定位到上次退出的位置
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif

"           Python run in DOS
noremap <leader>p :!python %<CR>
"           Python run in shell
" noremap <leader>p :! clear;python %<CR>
"           Html run in browser(DOS)
noremap <leader>h :!%<CR>
"           Html run in browser(shell)
" noremap <leader>h :firefox %<CR>
" Python dll path
set pythonthreedll=E:\Python\python39.dll

"           括号自动补全(自定义)
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

noremap <leader>{ "cdi{}<ESC>h"cp
noremap <leader>[ "cdi[]<ESC>h"cp
noremap <leader>( "cdi()<ESC>h"cp
noremap <leader>" "cdi""<ESC>h"cp
noremap <leader>' "cdi''<ESC>h"cp

"   光标十字架
set cursorline
" set cursorcolumn
"   十字架相关设置
" highlight CursorLine cterm=none ctermbg=236 ctermfg=236 ctermul=none
" highlight CursorColumn cterm=none ctermbg=236
"   字体格式
set guifont=consolas:h12:cANSI:qDRAFT

" set ctags
" 执行下列命令加入系统函数的tags
" ctags -I __THROW –file-scope=yes –langmap=c:+.h –languages=c,c++ –links=yes –c-kinds=+p --fields=+S -R -f ~/.vim/systags /usr/include /usr/local/include
" set tags = ~/E:/program/Gvim82/Tags_stm32f10x
" set tags = /C:/Users/7huai/Desktop/FreeRTOS/freertos/Source/tags
set tags=tags;
set autochdir

"-------------------------Plug-----------------------------"
filetype plugin indent on
syntax enable
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('E:\Vim\Plugins')

Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/L9'
" Plug 'git://git.wincent.com/command-t.git'
" Plug 'yggdroot/leaderf'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'othree/html5.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/vim-autopep8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/winmanager'
Plug 'http://github.com/terryma/vim-smooth-scroll'
" Plug 'bufexplorer.vim'
Plug 'voldikss/vim-translator'
Plug 'w0rp/ale'
Plug 'junegunn/gv.vim'
Plug 'yianwillis/vimcdoc'
Plug 'tpope/vim-surround'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kkoenig/wimproved.vim'
" Plug 'https://github.com/altercation/vim-colors-solarized.git'
call plug#end()

"-------------------------Markdown syntax-----------------
"https://vimawesome.com/plugin/markdown-syntax
augroup vimrcEx
    autocmd!
    "highlight
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    "spell check
    autocmd FileType markdown setlocal nospell
    "a line show 80 chars
    autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

"--------------------------NerdTree-----------------------
"           将dir设置为开关NerdTree的快捷键
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

"   打开vim时自动打开NerdTree
" autocmd VimEnter * NERDTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
"   修改树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"   窗口位置
let g:NERDTreeWinPos='left'
"   窗口尺寸
let g:NERDTreeSize=30
"   窗口是否显示行号
let g:NERDTreeShowLineNumbers=0
"   不显示隐藏文件
let g:NERDTreeHidden=0
"   NerdTree是最后一个窗口时关闭vim
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
            \ quit | endif

"---------------------MiniBufExplorer--------------------
"   gvim下没有作用
"   支持<C-Tab> and <C-S-Tab>
"let g:miniBufExplMapCTabSwitchBufs=1
"<C-w> <C-h> <C-j> <C-k> <C-l>
" let g:miniBufExplMapWindowNavVim = 1
"<C> + up + down + left + right
" let g:miniBufExplMapWindowNavArrows = 1

" -------------------------vim-powerline----------
"   let g:Powerline_symbols = 'fancy'

"------------------------------indentLine----------------
"   let g:indentLine_char='┆'
"   let g:indentLine_enabled = 1

"------------------------------- emmet-----------

"   Enable in different mode
"   If you don't want to enable emmet in all modes, you can use set these options in vimrc:

"   let g:user_emmet_mode='n'    "only enable normal mode functions.
"   let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"   let g:user_emmet_mode='a'    "enable all function in all mode.
"
"   Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"   Redefine trigger key
"   To remap the default <C-Y> leader:
"   let g:user_emmet_leader_key='<C-Z>'

"   Note that the trailing, still needs to be entered, so the new keymap would be <C-Z>,
"
" ------------------------vim-markdown-------------
let g:markdown_fenced_languages = ['c', 'c++', 'python', 'html']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100
" ----------------------------vim-commentary-------------
"
" Relax! You just have to adjust 'commentstring':

" autocmd FileType apache setlocal commentstring=#\ %s

"-------------------------airline-------------------------
"这个得看一个它的配置了
"底部增强栏
"安装字体后 必须设置此项
let g:airline_powerline_fonts=1
"底部栏主题
" let g:airline_theme="molokai"
"打开tabline功能， 方便查看Buffer 切换
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"-----------------------autoformat------------------------
"只是一个框架，还要安装格式化程序 可以是clang-format\autopep8
"我这里用的是autopep8
"格式化代码风格：C为ANSI
let g:formatdef_ansi='"astyle --style=allman --pad-oper"'
let g:formatters_c=['ansi']
let g:formatters_cpp=['ansi']
" au BufWrite * :Autoformat
"设置快捷键 自动格式化并保存
noremap <leader>F :Autoformat<CR>

"-----------------------rainbow----------------------------
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
" 开启16对括号匹配
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"-------------------indent_guide------------------------------"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
let g:indent_guides_space_guides = 1

"-------------------taglist-----------------------------------"
set tags+=~\.vim\systags\tags
" set tags += E:\program\Gvim82\Tags_stm32f10x\tags
" set tags
"   设定windows中ctags程序的位置
let Tlist_Ctags_Cmd = 'ctags'
"   不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1
"   如果taglist是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"   在右侧窗口中显示taglist窗口 使用了winmanager显示由其控制
"   let Tlist_Use_Right_Window = 1

"--------------------winmanager-------------------------------"
let g:winManagerWindowLayout = "BufExplorer|FileExplorer|TagList"
" let g:winManagerWindowLayout ="BufExplorer,FileExplorer|TagList"
""let g:winManagerWindowLayout='FileExplorer|TagList'
" let g:winManagerWindowLayout="TagList|FileExplorer,BufExplorer"
nmap wm :WMToggle<cr>
"   设置winmanager的宽度，默认为25
let g:winManagerWidth = 30

"-------------------vim-translator-----------------------------"
"   目标语言
let g:translator_target_lang = 'zh'
"   源语言
let g:translator_source_lang = 'auto'
"   中文的话的是以下 其它语言的话是谷歌
let g:translator_default_engines = ['youdao', 'bing', 'google', 'haici', 'youdao']

" g: translator_proxy_url = 'socks5://127.0.0.1:1080'
"   可选项为popup preview
let g:translator_window_type = 'popup'

let g:translator_history_enable = v:false
"列数 或是一个在0到1的浮点数 与&line有关
let g:translator_window_max_width = 0.6
" 默认值为下面的列表值
" let g:translator_window_borderchars = ['─', '│', '─', '│', '┌', '┐', '┘', '└']
"       快捷键 Key Mappings
" Text highlight of translator window
"       Configuration example
"   Echo translation in the cmdline
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
"   Display translation in a window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
"   Replace the text with translation
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV
"   Translate the text in clipboard
nmap <silent> <Leader>x <Plug>TranslateX
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement
"   Background of translator window border
hi def link Translator                  Normal
hi def link TranslatorBorder            NormalFloat
" 使用<C-w>p 可以调出上一个窗口
" 使用中文->英语
nnoremap <leader>T :<CR>:Translate --engines=youdao --target_lang=english --source_lang=zh

"-------------------------a.vim---------------------------
" A few of quick commands to swtich between source files and header files quickly.

" :A switches to the header file corresponding to the current file being edited (or vise versa)
" :AS splits and switches
" :AV vertical splits and switches
" :AT new tab and switches
" :AN cycles through matches
" :IH switches to file under cursor
" :IHS splits and switches
" :IHV vertical splits and switches
" :IHT new tab and switches
" :IHN cycles through matches
" <Leader>ih switches to file under cursor
" <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
" <Leader>ihn cycles through matches

" E.g. if you are editing foo.c and need to edit foo.h simply execute :A and you will be editting foo.h, to switch back to foo.c execute :A again.

" Can be configured to support a variety of languages. Builtin support for C, C++ and ADA95

"--------------------------ale----------------------------------------"
"   始终开启标志列
let g:ale_sign_column_always = 0
let g:ale_set_highlights = 0
" "   自定义error和warning图标
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
"     在vim自带的状态栏中整合ale
"  let g:ale_statusline_format = ['✗ %d', ' %d', ' OK']
"    显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" "   普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
" "   <Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"    <Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 'never'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pylint'],
            \}
"   Java如果安装在中文系统可能出现乱码 如下解决
let g:ale_java_javac_options = '-encoding UTF-8 -J-Duser.language=en'

" scroor soomth
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" vim-fullscreen
" 去掉Gvim难看的工具栏与菜单栏，滚动条
" set guioptions-=T
" set guioptions-=r
" set guioptions-=L
" set guioptions-=m
" autocmd GUIEnter * silent! WToggleClean
autocmd GUIEnter * silent! WToggleFullscreen
