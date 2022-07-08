## Mangoer's Vim IDE

这套Vim IDE集成了众多方便的功能，使用Vundle管理插件。
主要包含以下功能：
    
    状态栏
    Tab栏
    Tagbar
    终端
    目录树
    快速注释
    文件查找，函数查找 
    语法检测，错误提示
    代码补全，自动补全
    代码折叠
    代码格式化
    代码编译调试
    Git支持
    历史修改
    快速移动
    快速对齐
    代码快速生成
    多光标编辑
    翻译
    日历
    ...


### 效果图

![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-4.png)
![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-3.png)

### 依赖

    [必须]Vim 8.0+
    ftp://ftp.vim.org/pub/vim/unix/vim-8.1.tar.bz2 
    https://github.com/vim/vim/archive/master.zip
    +lua

    [必须]字体
    github.com/powerline/fonts
    github.com/ryanoasis/nerd-fonts
    
    Ack

### 终端设置

    Font: 12pt Monaco
    Non-ASCII Font: 13pt Hack Regular Nerd Font Complete

### 安装

    1. git clone https://github.com/mangoer-ys/vim-conf.git
    2. cd vim-conf; sh build.sh

然后在shell中使用 *vj* 命令即可以上图样式打开当前所在文件夹。

### 快捷键

|快捷键|说明|
|-|-|
| ctrl + p | 查找文件 |
| \\bm | 查找文件 最近打开文件 |
| \\ + f | 查找文件 |
| \\\c | 关键词查找，界面友好 |
| ctrl + b | 关键字查找 |
| ctrl + ] | 代码跳转 |
| \\\\w | 行内跳转 每个单词头部 |
| \\\\W | 行内跳转 每个单词尾部 |
| \\\\f | 行内跳转 按照输入字符 |
| \\\\s | 窗口内跳转 按照输入字符 |
| \\\\j | 行级跳转 向下 |
| \\j | 行级跳转 向下 |
| \\\\k | 行级跳转 向上 |
| \\k | 行级跳转 向上 |
| \\\\h | 行内跳转 向左 |
| \\\\l | 行内跳转 向右 |
| ctrl + e | 多tab向右切换 |
| ctrl + r | 多tab向左切换 |
| ctrl + xo | 代码补全 |
| ctrl + n | 代码补全 |
| ctrl + wv | 快速竖向分屏 |
| \\1 | 快速竖向分屏 |
| :sp | 快速横向分屏 |
| \\- | 快速横向分屏 |
| ctrl + ww | 顺时针切换分屏 |
| 空格键 | 顺时针切换分屏 |
| ctrl + wl | 向右切换分屏 |
| ctrl + wh | 向左切换分屏 |
| ctrl + wj | 向上切换分屏 |
| ctrl + wk | 向下切换分屏 |
| ctrl + wo | 最大化当前分屏 |
| \\i | 查看golang实现interface的struct |
| \\r | 查看golang中的引用 |
| \da | 文件头部加作者时间等注释 |
| \dc | 自动为函数增加注释 |
| \c | 增加注释 /* */ |
| \x | 增加或取消注释 |
| \sf | 跳到当前文件在目录树中的位置 |
| \\\w \\\b \\\s \\\j \\\k | 快速移动 |
| \\n | 打开或关闭左侧目录树 |
| \\t | 窗口右侧显示文件结构 方法变量等 |
| \\V | 快速使.vimrc配置生效 |
| \`s | 快速保存 | 
| \\t | 翻译文本 弹窗形式 | 
| \\\\t | 翻译文本 cmdline形式 | 
| \\\\r | 翻译文本 替换显示 | 
| gg=G | 对整个文本进行格式化 |
| shift+v = | 用shift+v选中多行后，按=号，可以格式化所选行 |
| zm | 全部关闭代码折叠 |
| zn | 全部展开代码折叠 |
| zc | 展开一级代码折叠 |
| zR | 打开markdown全部的折叠 |
| zr | 打开markdown当前的折叠 |
| zm | 折叠markdown |
| \<Enter\> \":"/./= | Visual Mode对齐 |
| ctrl + n | 终端下进入normal模式 |
| F2 | 打开终端 |
| F3 | 查找文件 |
| F4 | 文件头部加作者时间等注释 |
| F5 | 刷新目录树 |
| F6 | 修复代码 |
| F7 | 窗口右侧显示文件结构 方法变量等 |
| F8 | 打开undotree窗口 |
| F9 ctrl + ] | 函数跳转 |
| F10 | 打开或关闭左侧目录树 |
| ; | : |
| Ctrl + c | 复制 |
| Ctrl + v | 粘贴 |
| Q | 关闭窗口 |

#### 常用命令
| 命令 | 说明 |
|-|-|
| :MarkdownPreview | markdown浏览器预览 |
| :MarkdownPreviewStop | 停止markdown预览 |
| :help map-overview | 查看map命令使用方式 |
| :verbose map \<key\> | 查看快捷键映射 |
| :map\|nmap\|vmap\|cmap\|xmap\|noremap\|nnoremap | 查看已绑定的快捷键 |
| :Ack \<pattern\> | 关键字查找 |
| :GoTests | golang生成单测函数 |
| :GoTest | 运行单元测试 |
| :GoTestFunc | 运行单个单元测试函数 |
| :GoAddTags | 增加tag |
| :GoRemoveTags | 删除tag |
| :GoFillStruct | 填充struct |
| :GoRename | 重命名 |
| :copen | 打开quickfix窗口 |
| :term | 打开终端窗口, 窗口内exit退出 |
| :below term | 在当前窗口下方打开终端 |
| :vert term | 竖直方向打开终端 |
| :Calendar | 查看日历 |


#### 目录树操作

| 快捷键 | 说明 |
|-|-|
| m | 调出文件操作：在当前光标路径下新建/移动/复制/删除/重命名 |
| u | 目录树转到父目录上 |
| C | 目录树转到当前光标目录下 |

### Q&A

