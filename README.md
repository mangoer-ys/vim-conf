## Mangoer's Vim IDE

这套Vim IDE集成了众多方便的功能，使用Vundle管理插件。

### 效果图

![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-2.png)
![image](https://raw.githubusercontent.com/mangoer-ys/vim-conf/master/image/screenshot-3.png)

shell中使用 *vj* 命令即可以上图样式打开文件夹。

### 安装

    1. git clone https://github.com/mangoer-ys/vim-conf.git
    2. cd vim-conf; sh build.sh

### 快捷键


|快捷键|说明|
|-|-|
| ctrl + p | 查找文件 |
| ctrl + e | 多tab切换 |
| \dc | 自动为函数增加注释 |
| \c | 增加注释 /* */ |
| \x | 增加或取消注释 |
| gg=G | 对整个文本进行格式化 |
| shift+v = | 用shift+v选中多行后，按=号，可以格式化所选行 |
| zm | 全部关闭代码折叠 |
| zn | 全部展开代码折叠 |
| zc | 展开亿级代码折叠 |
| ctrl + wv | 快速竖向分屏 |
| :sp | 快速横向分屏 |
| ctrl + ww | 顺时针切换分屏 |
| ctrl + wl | 向右切换分屏 |
| ctrl + wh | 向左切换分屏 |
| ctrl + wj | 向上切换分屏 |
| ctrl + wk | 向下切换分屏 |
| :set paste | 进入粘贴模式，不会自动缩进 |
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
