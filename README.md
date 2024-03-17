# 湖南师范大学研究生毕业论文模板

## 说明

虽然我早就上传了这个仓库，但这个模板一直都存在一些小问题。这几天我对格式问题进行了一些修复，但碍于我要毕业，没办法撰写完整的说明文档，现在要用的同学辛苦自己摸索。

毕业前我会尽力完善这个模板，让后面几届的同学减少一些负担。

## 编译脚本

编译脚本在compile-script/platform/下，请酌情修改 .vscode/settings.json 中的平台，默认 windows。

在linux、macOS下使用时，请先把 windows 的 C:/windows/Fonts/ 下的字体拷贝一份安装，否则字体渲染会出错。

**切记！切记！**

## 使用 Github Action 编译

将这个仓库copy一份到你自己的仓库（fork 或者 自己提交）

首先确保你的文档没有错误（即必须在目录下有一个 main.pdf 文件生成），否则无法编译。

在 Actions 中左侧找到 Workflows，下面有一个 Build LaTeX document，点击

点击右侧 Run workflow 开始编译，编译后的文档在 workflow 中的 Artifact 里面

有了这个功能你甚至可以直接在 github 写论文。。。

如果你提交了 tags，则会release一个版本，**请注意保护你的隐私**。

## 编辑器

推荐 vscode，其他自便，编译链：

xelatex -> bibtex -> xelatex^2

也可以一行命令解决问题（推荐）：

```bash
latexmk -f -xelatex -synctex=1 -file-line-error -interaction=nonstopmode main.tex 
```

## 欠揍说明

github 上面也有一些过去的模板，但是格式已经与现在的规定有些不符，建议优先选用这份模板。