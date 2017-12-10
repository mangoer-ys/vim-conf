"  ---------------------------------------------
source /usr/local/vimide/vimide/.vimrc
"  欢迎使用VJ，该环境已经集成了团建常用的开发配置、快捷键映射和插件。
"  若需要自定义VJ，可参考以下简要说明。
"
"  1. 自定义VJ设置
"       可在当前文件(~/.vimrc)末尾进行增补设置，该操作通常情况不会影响团队开发环境。
"       例如设置即可定义<F5>为 Go 语言的快速编译映射:
"           " au Filetype go set makeprg=go\ build\ ./... "
"           " noremap  <F5> :make<CR>:copen<CR> "
"           " inoremap <F5> <ESC><ESC>:w<CR>:make><CR>:copen<CR>"
"
"       若需取消VJ默认的快捷键映射，您可以设置'unmap'例如：
"           " unmap <F5> "
"
"  2. 自定义VJ插件
"       2.1 传统方式安装
"       您可在 (~/.vim/) 的对应文件夹内直接放置插件文件即可，
"       该操作不会影响团队开发环境。
"
"       2.2 Vunlde.vim安装（推荐）
"       VJ环境使用 Vunlde.vim 安装/管理插件
"       （一）安装插件
"             若需添加 Rails 开发环境，可在本文件中增补如下设置：
"             " Plugin 'tpope/vim-rails' "
"             再通过 :PluginInstall 命令安装插件，通常情况不会影响团队开发环境。
"       （二）取消插件
"             您可以使用 ':PluginList' 命令来查看Vundle.vim正在管理的插件。
"             若需取消当前VJ的某个插件，只需要在本文件中增补Unplug设置，例如：
"             " Unplug 'ervandew/supertab' "
"
"  以上内容请勿修改，以免更新时丢失。使用中如有任何问题可随时联系管理员，谢谢配合。
"  -------- GAME_TEAM_VJ Version 0.0.2 ---------

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append(1,"#================================================================")
    call append(2,"# Filename:      ".expand("%:t"))
    call append(3,"# Author:        yangshuai-g")
    call append(4,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(5,"# Description:   ")
    call append(6,"#================================================================")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction

"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
     let n=1
     while n < 10
      let line = getline(n)
      if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
      endif
      let n = n + 1
     endwhile
     call AddTitle()
endfunction
