# There are Hotsuitorr's vimmc filess

## directory


```
│   README.md
│
└───.config  # Neovim 配置
    └───nvim
        │   .vimrc # 从0到1个人配置的vim配置文件
        │   init.vim # 从别人那里参考的现成配置文件，比较好用
        │
        └───autoload
                plug.vim
│
└───.vim # vim 配置
        vimrc  # 从0到1个人配置的vim配置文件
```

## Usage

### Neovim
git clone the `init.vim` to the `user\nvim\` configuration directory on window

install the Plugin


```
vim init.vim " 打开配置文件
: source % " 载入当前配置
:PlugInstall " 安装插件
```

愉快地使用配置好的vim

### Vim

`.vim/vimrc` 安装比较少的插件，主要是给 `vscode vim` 插件使用的
> 为什么 vscode 不用 neovim 插件？

> 因为vscode neovim插件实在太卡了，非常影响使用 `vim` 的体验

git clone the `vimrc` to the `user\vim\` configuration directory

#### Windows (PowerShell)
```
iwr -useb https://raw.githubusercontent.com/touxing/dotfiles-public/master/.config/.vim/vimrc |`
    ni $HOME/vimfiles/vimrc -Force
```
`:version` 查看vim配置文件存放位置
```
    系统 vimrc 文件: "$VIM\vimrc"
     用户 vimrc 文件: "$HOME\_vimrc"
 第二用户 vimrc 文件: "$HOME\vimfiles\vimrc"
 第三用户 vimrc 文件: "$VIM\_vimrc"
```

#### 安装`Vim-Plug`插件

**`vimrc`配置文件已经写了自动安装`Vim-Plug`**

```
 if empty(glob('~/vimfiles/autoload/plug.vim'))
    silent !curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
```

#### [可选]手动安装

- [vim-plug](https://github.com/junegunn/vim-plug)

**注意**
如果安装后`PlugInstall`命令不生效，注意看 `vim` 的执行脚本

```
:scriptname
```

plug.vim 要确保在执行脚本里面
