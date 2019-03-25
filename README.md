## Mangoer's Vim IDE

这套Vim IDE集成了众多方便的功能，使用Vundle管理插件。
主要包含以下功能：
    
    状态栏
    Tab栏
    Tagbar
    目录树
    快速注释
    文件查找，函数查找 
    语法检测，错误提示
    代码补全
    代码折叠
    代码格式化
    <F8>一键编译
    ...


### 效果图

![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-2.png)
![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-3.png)

### 依赖

    Vim 7.2+

    字体
    github.com/powerline/fonts
    
    Golang 
    代码跳转 godef  github.com/rogpeppe/godef
    代码补全 gocode github.com/mdempsky/gocode


### 安装

    1. git clone https://github.com/mangoer-ys/vim-conf.git
    2. cd vim-conf; sh build.sh

然后在shell中使用 *vj* 命令即可以上图样式打开当前所在文件夹。

### 快捷键

|快捷键|说明|
|-|-|
| ctrl + p | 查找文件 |
| ctrl + e | 多tab向右切换 |
| ctrl + r | 多tab向左切换 |
| ctrl + xo | 代码补全 |
| ctrl + n | 代码补全 |
| ctrl + wv | 快速竖向分屏 |
| :sp | 快速横向分屏 |
| ctrl + ww | 顺时针切换分屏 |
| ctrl + wl | 向右切换分屏 |
| ctrl + wh | 向左切换分屏 |
| ctrl + wj | 向上切换分屏 |
| ctrl + wk | 向下切换分屏 |
| ctrl + wo | 最大化当前分屏 |
| \dc | 自动为函数增加注释 |
| \c | 增加注释 /* */ |
| \x | 增加或取消注释 |
| gg=G | 对整个文本进行格式化 |
| shift+v = | 用shift+v选中多行后，按=号，可以格式化所选行 |
| zm | 全部关闭代码折叠 |
| zn | 全部展开代码折叠 |
| zc | 展开一级代码折叠 |
| F4 | 文件头部加作者时间等注释 |
| F5 | 刷新目录树 |
| F7 | 窗口右侧显示文件结构 方法变量等 |
| F8 | 执行当前目录下 _prj/init.sh 自定义脚本 |
| F9 ctrl + ] | 函数跳转 |
| F10 | 打开或关闭左侧目录树 |

#### 目录树操作

光标停留在目录树上，输入`o`即可对改目录进行操作：

| 快捷键 | 说明 |
|-|-|
| a | 新建文件夹/文件 |
| m | 移动 |
| c | 复制 |
| d | 删除 |

### Q&A

