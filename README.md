# godev
Tools for login vps.

## 准备
1. 将脚本下载到一个合适的路径, 比如`/usr/local/bin`等目录,也可以是自定义的目录
2. 更改脚本中的`list`部分, 前面是标签,后半部分是完整机器名, 保存
3. 给文件赋予执行权限
```
chmod 777 path/to/shell/xxx.sh
```
4. 将该目录添加到shell当前使用的配置文件中, *nix或mac路径一般为`~/.bashrc`
```
# 修改~/.bashrc
vim ~/.bashrc

# 添加第一步中自定义的脚本路径, 这里距离为 path/to/shell
# 找到~/.bashrc中的exprot PATH之后, 把path/to/shell添加到配置之后,与之前的以`:`隔开,windows系统改环境变量自行搜索
# 完成之后如下:
exprot PATH="some/path:path/to/shell"

# 使配置文件生效
source ~/.bashrc

```

## 使用
- 登录机器
```
godev alafe4
```

- 展示列表
```
godev -l
```

- 获取帮助
```
godev -h
```


## MIT License

Copyright (c) 2017 Schoeu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
