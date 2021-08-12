" 防止中文乱码
set encoding=utf-8
" 不与vi兼容
set nocompatible

if !has('nvim')
  " 设置 leader 键
  let mapleader=','
  " 语法高亮
  " syntax on
  set number
  " 缩进2个空格单位
  set shiftwidth=2
  set background=dark
  colorscheme hybird
  set t_Co=256
  " 自动缩进
  set autoindent
  set tabstop=2
  set expandtab " 不同编辑器tab缩进会存在不一致，将tab转为空格
  set softtabstop=2 " tab转为2个空格
  " gui_vim 才生效
  " set guifont=FantasqueSansMono\ Nerd\ Font\ Mon:h24

  " set relativenumber " 显示当前行号，其他行为相对该行的行号
  set cursorline
  set hlsearch " 高亮最近的匹配搜索

  " 自定义按键映射
  " 使用jj 进入normal 模式
  inoremap jj <Esc>`^
  " 显示文件在目录中的位置
  nnoremap <leader>v :NERDTreeFind<cr>
  " 显隐文件目录
  nnoremap <leader>g :NERDTreeToggle<cr>

  " ctrlp插件配置 ===
  " let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_map =  '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  " 设置搜索的目录是当前打开的目录
  let g:ctrlp_cmd='CtrlP :pwd'
  " let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
  " ctrlp ===

  " easymotion 配置
  nmap ss <Plug>(easymotion-s2)


  " Ag 命令配置
  let g:ackprg = 'ag --nogroup --nocolor --column'

  let g:plug_url_format='https://git::@hub.fastgit.org/%s.git'
  call plug#begin('~/.vim/plugged')

  " 首页插件
  Plug 'mhinz/vim-startify'
  " 底部状态栏插件
  Plug 'vim-airline/vim-airline'
  " 文件管理器插件
  Plug 'scrooloose/nerdtree'
  " 文件快速搜索插件
  Plug 'ctrlpvim/ctrlp.vim'
  " 文件内容快速定位插件
  Plug 'easymotion/vim-easymotion'
  " 标记成对修改插件
  Plug 'tpope/vim-surround'
  " 命令行快速搜索文件插件
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " golang插件，代码补全不生效，奇怪
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " 代码补全插件，还没研究怎么用
  " Plug 'valloric/youcompleteme'

  call plug#end()

endif
