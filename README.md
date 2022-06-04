# luacheck
luacheck for git

# 功能
* 提交`.lua`文件时使用`luacheck`检查脚本的语言规范
* 向Unity工程目录Assets下添加文件时，检查`.meta`或源文件是否提交（例如避免漏提`.meta`文件）
* 在Unity工程目录Assets下删除文件时，检查`.meta`或源文件是否删除（例如忘了删除`.meta`文件）

# 使用方法
1. 修改`pre-commit`文件，根据项目路径修改`luacheck`、`luacheckCfgFilePath`、`ASSETS_DIR`；
2. 修改`luacheckSetup.bat`文件（mac系统为`luacheckSetup.sh`），定位到项目的`.git/hooks`路径；
3. 执行`luacheckSetup.bat`（mac系统为`luacheckSetup.sh`）（或手动拷贝`pre-commit`文件到项目的`.git/hooks`目录）
4. 修改`custom_formatter.lua`文件，可自定义输入日志，目前只过滤有问题的`lua`文件，如果自定义输入日志，可参考[luacheck/format.lua](https://github.com/mpeterv/luacheck/blob/master/src/luacheck/format.lua)

# 注意
在mac系统中执行`luacheckSetup.sh`时会使用`homebrew`安装`lua`、`luarocks`、`luacheck`，如果已经安装了`lua环境`，则会再次安装，与原先安装好的`lua环境`不冲突

`luarocks`是`lua包管理工具`

`luacheck`需要使用`luarocks`来安装

`luarocks`依赖`lua`
