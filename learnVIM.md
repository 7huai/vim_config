# 学习VIM
## vim配置
具体见我的配置文件: `_vimrc`
### 显示
`:WSetalpha <value>` 设置窗口的透明度  推荐值：日落黑（222）日落白（200）
`:WToggleClean` 工具栏，菜单栏 显示开关
`:WToggleFullscreen` 全屏显示开关

**设置透明度以后就可以一边看学习视频一边记笔记了**
于是面临一个现实的问题，我要如何在vim里面点击视频的暂停呢？
解决方法肯定是要在系统层面，要将vim内部击键由外部系统捕获，可能要用到python或者vim脚本
但是现在的解决方法是用win自带的花键+tab来达到快速切换的目的，之后点击视频暂停，再回到vim内部。
## 基本操作
**对多行进行操作：** Ctrl+v 选中 I（光标前）A（光标后）
### 文件切换
`gf` 跳到光标下的当前目录文件中（但限于当前目录）
`gt` = `:tabnext` 到下一个tab（标签页）
`gT` = `tabprevious`
`gt {counter}`
`gT {counter}`
`:tabs` 列出标签页和它们的窗口

:{count}tabn[ext]
:tabn[ext] {count}
		转到第 {count} 个标签页。首个标签页编号为一。 >
		    :-tabnext	" 转到上个标签页
		    :+tabnext	" 转到下个标签页
		    :+2tabnext	" 转到往后第二个标签页
		    :1tabnext	" 转到首个标签页
		    :$tabnext	" 转到末个标签页
		    :tabnext $	" 同上
		    :tabnext #  " 转到最近访问的标签页
		    :tabnext -	" 转到上个标签页
		    :tabnext -1	" 同上
		    :tabnext +	" 转到下个标签页
		    :tabnext +1	" 同上

### 窗口操作
#### 窗口大小 
`Ctrl + =`  所有窗口大小相同
`Ctrl + +` = `:resize + n`  窗口高度增加
`Ctrl + -` = `:resize - n`  窗口高度减少
`Ctrl + <` 窗口宽度增加
`Ctrl + >` 窗口宽度减少
`Ctrl + |` 将当前窗口调到最大

`Ctrl + w + b` 光标到右下窗口
`Ctrl + w + p` 光标到上一窗口
`Ctrl + w + w` 光标循环移动
`Ctrl + w + t` 光标到左上窗口
## 进阶

## 插件收集与使用


